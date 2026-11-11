#define _GNU_SOURCE
#define _POSIX_C_SOURCE 200809L
#include "internal.h"
#include <errno.h>
#include <fcntl.h>
#include <limits.h>
#include <poll.h>
#include <signal.h>
#include <spawn.h>
#include <stdatomic.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <sys/wait.h>
#include <time.h>
#include <unistd.h>

#ifndef WM_WORKER_PATH
#define WM_WORKER_PATH "/usr/local/libexec/webmania-native-worker"
#endif
#define INPUT_LIMIT (32u*1024u*1024u)
#define OUTPUT_LIMIT (40u*1024u*1024u)
#define STOP_GRACE_MS 200
#define REAP_GRACE_MS 200

struct wm_config { node *value; char *worker; };
struct wm_cancel { atomic_int_fast64_t requested_at; };
typedef struct { node *value; char *worker; } client;
typedef enum stop_reason { STOP_NONE, STOP_CANCELLED, STOP_TIMEOUT } stop_reason;
typedef struct {
    const wm_cancel *cancel;
    int64_t deadline,stop_started;
    stop_reason reason;
} call_guard;
typedef struct { call_guard *guard; bool already_stopped; } reply_guard;
static const unsigned char *decode_file(const wm_file_response *,size_t *,call_guard *);

static int64_t now_ms(void) {
    struct timespec value;
    if (clock_gettime(CLOCK_MONOTONIC,&value)) return -1;
    return (int64_t)value.tv_sec*1000+value.tv_nsec/1000000;
}
static bool cancelled(const wm_cancel *cancel) {
    return cancel && atomic_load_explicit(&cancel->requested_at,memory_order_acquire)!=0;
}
static bool guard_running(void *context) {
    call_guard *guard=context;
    if (guard->reason!=STOP_NONE) return false;
    int64_t now=now_ms();
    int64_t requested=guard->cancel?atomic_load_explicit(&guard->cancel->requested_at,memory_order_acquire):0;
    if (requested && requested<=guard->deadline) guard->reason=STOP_CANCELLED;
    else if (now<0 || now>=guard->deadline) guard->reason=STOP_TIMEOUT;
    if (guard->reason!=STOP_NONE) guard->stop_started=now;
    return guard->reason==STOP_NONE;
}
static bool reply_running(void *context) {
    reply_guard *reply=context;
    if (!reply->already_stopped) return guard_running(reply->guard);
    int64_t now=now_ms();
    return now>=0 && now-reply->guard->stop_started<STOP_GRACE_MS;
}
static bool text_is(const node *value,const char *expected) {
    size_t length=strlen(expected);
    return value && value->kind==N_STR && value->text_len==length && !memcmp(value->text,expected,length);
}
static bool field_is(const node *object,const char *key,const char *expected) {
    return text_is(n_get(object,key),expected);
}
static const char *field_text(const void *value,const char *key) {
    node *field=n_field(value,key,N_STR);
    return field?field->text:NULL;
}
static char *duplicate(const char *value) {
    size_t length=strlen(value)+1;
    char *out=malloc(length);
    if (out) memcpy(out,value,length);
    return out;
}
static node *boolean(bool value) { node *n=n_new(N_BOOL); if (n) n->integer=value; return n; }
static node *error_node(const char *kind,const char *message) {
    node *n=n_new(N_OBJECT);
    if (!n) return NULL;
    if (n_set(n,"kind",n_text(kind))!=WM_OK || n_set(n,"message",n_text(message))!=WM_OK) {
        n_free(n); return NULL;
    }
    return n;
}
static wm_status failure(wm_error **out,const char *kind,const char *message) {
    if (!out) return WM_ERROR;
    *out=(wm_error*)error_node(kind,message);
    return *out?WM_ERROR:WM_NOMEM;
}
static wm_status uncertain_failure(wm_error **out,const char *kind,const char *message,bool uncertain) {
    wm_status status=failure(out,kind,message);
    if (status==WM_ERROR && uncertain && out && *out && n_set(*out,"outcome",n_text("unknown"))!=WM_OK) {
        n_free(*out); *out=NULL; return WM_NOMEM;
    }
    return status;
}
static wm_status stopped_failure(wm_error **out,const call_guard *guard,bool uncertain) {
    return uncertain_failure(out,guard->reason==STOP_CANCELLED?"cancelled":"timeout",
                             guard->reason==STOP_CANCELLED?"Call cancelled.":"Call deadline expired.",uncertain);
}
static bool canonical_integer(const node *n,int64_t minimum,int64_t maximum,int64_t *out) {
    if (!n || n->kind!=N_NUM || !n->text_len) return false;
    size_t position=n->text[0]=='-'?1:0;
    if (position==n->text_len) return false;
    for (size_t i=position;i<n->text_len;i++) if (n->text[i]<'0' || n->text[i]>'9') return false;
    errno=0; char *end=NULL;
    long long value=strtoll(n->text,&end,10);
    if (errno || !end || *end || value<minimum || value>maximum) return false;
    if (out) *out=(int64_t)value;
    return true;
}
static bool guard_init(call_guard *guard,const node *config,const wm_cancel *cancel,int64_t started) {
    int64_t timeout=30000;
    node *configured=n_get(config,"timeout_ms");
    if (configured && !canonical_integer(configured,1,86400000,&timeout)) return false;
    if (started<0 || started>INT64_MAX-timeout) return false;
    *guard=(call_guard){cancel,started+timeout,0,STOP_NONE};
    return true;
}

const char *wm_version(void) { return "0.1.0-alpha.7"; }
wm_config *wm_config_new(void) {
    wm_config *out=calloc(1,sizeof(*out));
    if (!out) return NULL;
    out->value=n_new(N_OBJECT);
    if (!out->value) { free(out); return NULL; }
    return out;
}
void wm_config_free(wm_config *config) {
    if (config) { n_free(config->value); free(config->worker); free(config); }
}
wm_status wm_config_set_worker_path(wm_config *config,const char *path) {
    if (!config || !path || path[0]!='/') return WM_INVALID;
    char *copied=duplicate(path);
    if (!copied) return WM_NOMEM;
    free(config->worker); config->worker=copied; return WM_OK;
}
static wm_status config_text(wm_config *config,const char *key,const char *text) {
    if (!config || !text) return WM_INVALID;
    errno=0;
    node *value=n_text(text);
    if (!value) return errno==ENOMEM?WM_NOMEM:WM_INVALID;
    return n_set(config->value,key,value);
}
wm_status wm_config_set_base_url(wm_config *config,const char *url) { return config_text(config,"base_url",url); }
wm_status wm_config_set_ca_pem(wm_config *config,const char *pem) { return config_text(config,"ca_pem",pem); }
wm_status wm_config_trust_file_origin(wm_config *config,const char *origin) {
    if (!config || !origin) return WM_INVALID;
    errno=0;
    node *value=n_text(origin);
    if (!value) return errno==ENOMEM?WM_NOMEM:WM_INVALID;
    node *origins=n_get(config->value,"trusted_file_origins");
    if (origins) return n_append(origins,value);
    origins=n_new(N_ARRAY);
    if (!origins) { n_free(value); return WM_NOMEM; }
    if (n_append(origins,value)!=WM_OK) { n_free(origins); return WM_NOMEM; }
    return n_set(config->value,"trusted_file_origins",origins);
}
static wm_status config_integer(wm_config *config,const char *key,int64_t value,int64_t minimum,int64_t maximum) {
    if (!config || value<minimum || value>maximum) return WM_INVALID;
    node *n=n_integer(value);
    return n?n_set(config->value,key,n):WM_NOMEM;
}
wm_status wm_config_set_timeout_ms(wm_config *c,int64_t n) { return config_integer(c,"timeout_ms",n,1,86400000); }
wm_status wm_config_set_max_response_bytes(wm_config *c,int64_t n) { return config_integer(c,"max_response_bytes",n,1,16*1024*1024); }
wm_status wm_config_set_max_header_bytes(wm_config *c,int64_t n) { return config_integer(c,"max_header_bytes",n,256,1024*1024); }
wm_cancel *wm_cancel_new(void) {
    wm_cancel *out=malloc(sizeof(*out));
    if (out) atomic_init(&out->requested_at,0);
    return out;
}
void wm_cancel_request(wm_cancel *cancel) {
    if (!cancel) return;
    int64_t now=now_ms();
    if (now<=0) now=1;
    int_fast64_t expected=0;
    (void)atomic_compare_exchange_strong_explicit(&cancel->requested_at,&expected,now,memory_order_release,memory_order_relaxed);
}
void wm_cancel_free(wm_cancel *cancel) { free(cancel); }

static bool credential(const char *s) {
    if (!s || !*s || strlen(s)>8192) return false;
    for (const unsigned char *p=(const unsigned char*)s;*p;p++) if (*p<33 || *p>126) return false;
    return true;
}
static node *four_credentials(const char *kind,const char *a,const char *b,const char *c,const char *d) {
    if (!credential(a) || !credential(b) || !credential(c) || !credential(d)) return NULL;
    node *n=n_new(N_OBJECT);
    if (!n) return NULL;
    if (n_set(n,"kind",n_text(kind))!=WM_OK || n_set(n,"consumer_key",n_text(a))!=WM_OK ||
        n_set(n,"consumer_secret",n_text(b))!=WM_OK || n_set(n,"access_token",n_text(c))!=WM_OK ||
        n_set(n,"access_token_secret",n_text(d))!=WM_OK) { n_free(n); return NULL; }
    return n;
}
static node *bearer(const char *kind,const char *token) {
    if (!credential(token)) return NULL;
    node *n=n_new(N_OBJECT);
    if (!n) return NULL;
    if (n_set(n,"kind",n_text(kind))!=WM_OK || n_set(n,"token",n_text(token))!=WM_OK) { n_free(n); return NULL; }
    return n;
}
wm_company_credentials *wm_company_credentials_new(const char*a,const char*b,const char*c,const char*d) { return (wm_company_credentials*)four_credentials("company",a,b,c,d); }
wm_reseller_credentials *wm_reseller_credentials_new(const char*a,const char*b,const char*c,const char*d) { return (wm_reseller_credentials*)four_credentials("reseller",a,b,c,d); }
wm_issuer_token *wm_issuer_token_new(const char*s) { return (wm_issuer_token*)bearer("issuer",s); }
wm_monitor_token *wm_monitor_token_new(const char*s) { return (wm_monitor_token*)bearer("monitor",s); }
void wm_company_credentials_free(wm_company_credentials *n) { n_free(n); }
void wm_reseller_credentials_free(wm_reseller_credentials *n) { n_free(n); }
void wm_issuer_token_free(wm_issuer_token *n) { n_free(n); }
void wm_monitor_token_free(wm_monitor_token *n) { n_free(n); }
static node *file_auth(const char *mode) {
    node *out=n_new(N_OBJECT);
    if (!out) return NULL;
    if (n_set(out,"mode",n_text(mode))!=WM_OK) { n_free(out); return NULL; }
    return out;
}
wm_file_auth *wm_file_auth_company(void) { return (wm_file_auth*)file_auth("company"); }
wm_file_auth *wm_file_auth_issuer(void) { return (wm_file_auth*)file_auth("issuer"); }
wm_file_auth *wm_file_auth_anonymous(void) { return (wm_file_auth*)file_auth("anonymous"); }
wm_file_auth *wm_file_auth_public_report(void) { return (wm_file_auth*)file_auth("capability"); }
wm_file_auth *wm_file_auth_document_token(const char *token) {
    if (!credential(token)) return NULL;
    node *out=file_auth("document_token");
    if (out && n_set(out,"token",n_text(token))!=WM_OK) { n_free(out); out=NULL; }
    return (wm_file_auth*)out;
}
void wm_file_auth_free(wm_file_auth *auth) { n_free(auth); }
static client *new_client(const void *credentials,const wm_config *config,const char *scope,const char *kind,bool optional) {
    const node *given=credentials;
    if ((!optional && !given) || (given && !field_is(given,"kind",kind))) return NULL;
    client *out=calloc(1,sizeof(*out));
    if (!out) return NULL;
    out->value=n_new(N_OBJECT);
    out->worker=duplicate(config && config->worker?config->worker:WM_WORKER_PATH);
    if (!out->value || !out->worker || n_set(out->value,"client_scope",n_text(scope))!=WM_OK ||
        n_set(out->value,"credentials",given?n_clone(given):n_new(N_NULL))!=WM_OK ||
        n_set(out->value,"config",config?n_clone(config->value):n_new(N_OBJECT))!=WM_OK) {
        n_free(out->value); free(out->worker); free(out); return NULL;
    }
    return out;
}
static void free_client(void *value) { client *c=value; if (c) { n_free(c->value); free(c->worker); free(c); } }
#define CLIENT(N,T,S,K,O) wm_##N##_client *wm_##N##_client_new(const wm_##T *credentials,const wm_config *config) { return (wm_##N##_client*)new_client(credentials,config,S,K,O); } void wm_##N##_client_free(wm_##N##_client *c) { free_client(c); }
CLIENT(nfe,company_credentials,"Nfe","company",false)
CLIENT(reseller,reseller_credentials,"Reseller","reseller",false)
CLIENT(emitter,issuer_token,"Emitter","issuer",false)
CLIENT(monitor,monitor_token,"Monitor","monitor",false)
CLIENT(nfe_files,company_credentials,"NfeFiles","company",true)
CLIENT(emitter_files,issuer_token,"EmitterFiles","issuer",true)

const char *wm_error_kind(const wm_error *e) { return field_text(e,"kind"); }
const char *wm_error_message(const wm_error *e) { return field_text(e,"message"); }
bool wm_error_outcome_unknown(const wm_error *e) { return field_is((const node*)e,"outcome","unknown"); }
int wm_error_status(const wm_error *e) { node *n=n_field(e,"status",N_NUM); return n?atoi(n->text):0; }
const char *wm_error_reveal_location(const wm_error *e) { return field_text(e,"protected_location"); }
wm_json *wm_error_reveal_recovery(const wm_error *e) { return (wm_json*)n_clone(n_get(e,"protected_recovery")); }
void wm_error_free(wm_error *e) { n_free(e); }
wm_status wm_blocked_internal(wm_error **error) { return failure(error,"capability","Operation not available in this SDK release."); }

static bool only_members(const node *object,const char *const *allowed,size_t count) {
    if (!object || object->kind!=N_OBJECT) return false;
    for (size_t i=0;i<object->count;i++) {
        bool found=false;
        for (size_t j=0;j<count;j++) {
            size_t length=strlen(allowed[j]);
            if (object->key_lengths[i]==length && !memcmp(object->keys[i],allowed[j],length)) { found=true; break; }
        }
        if (!found) return false;
    }
    return true;
}
static bool ordinary_text(const node *n,size_t maximum) {
    return n && n->kind==N_STR && n->text_len<=maximum && !memchr(n->text,0,n->text_len);
}
static bool error_shape(const node *error,const char *operation) {
    static const char *const fields[]={"kind","message","status","outcome","protected_recovery","protected_location","correlation_id","request_id","operation","details"};
    static const char *const kinds[]={"configuration","validation","capability","cancelled","timeout","transport","tls","protocol","headers_limit","body_limit","request_limit","http","business","response_schema","redirect","protected_file","pagination","polling_timeout"};
    if (!only_members(error,fields,sizeof(fields)/sizeof(*fields))) return false;
    node *kind=n_get(error,"kind"); bool known=false;
    for (size_t i=0;i<sizeof(kinds)/sizeof(*kinds);i++) if (text_is(kind,kinds[i])) { known=true; break; }
    if (!known || !ordinary_text(n_get(error,"message"),4096)) return false;
    node *field=n_get(error,"status");
    if (field && !canonical_integer(field,0,65535,NULL)) return false;
    field=n_get(error,"outcome"); if (field && !text_is(field,"unknown")) return false;
    field=n_get(error,"protected_location"); if (field && !ordinary_text(field,1024*1024)) return false;
    for (size_t i=0;i<2;i++) { field=n_get(error,i?"request_id":"correlation_id"); if (field && !ordinary_text(field,16384)) return false; }
    field=n_get(error,"operation"); if (field && (!operation || !text_is(field,operation))) return false;
    field=n_get(error,"protected_recovery");
    if (field) {
        static const char *const selectors[]={"uuid","ID","id","chave","fd","company"};
        if (field->kind!=N_OBJECT || field->count!=1 || !only_members(field,selectors,sizeof(selectors)/sizeof(*selectors)) || field->items[0]->kind!=N_STR) return false;
    }
    return true;
}
static bool result_shape(const node *result,wm_expected_result expected,const char *type,const char *model,const char *operation,reply_guard *guard) {
    if (!result || result->kind!=N_OBJECT) return false;
    if (field_is(result,"kind","json")) {
        static const char *const fields[]={"kind","value","variant"};
        bool variant=model && wm_model_has_variants(model);
        if (expected!=WM_EXPECT_JSON || result->count!=(variant?3u:2u) || !only_members(result,fields,variant?3:2)) return false;
        node *value=n_get(result,"value");
        if (!value || (model && !wm_shape_model(model,value)) || (type && !wm_shape_c_type(type,value))) return false;
        node *choice=n_get(result,"variant");
        return !variant || (ordinary_text(choice,512) && wm_model_variant_shape(model,choice->text,value));
    }
    if (field_is(result,"kind","file")) {
        static const char *const fields[]={"kind","status","media_type","file_kind","bytes_hex"};
        static const char *const formats[]={"Pdf","ProtectedPdf","Xml","Zip","ProtectedZip","Csv","Xlsx","Html"};
        if (expected==WM_EXPECT_JSON || result->count!=5 || !only_members(result,fields,5) || !canonical_integer(n_get(result,"status"),200,299,NULL)) return false;
        node *media=n_get(result,"media_type"),*bytes=n_get(result,"bytes_hex");
        if (!ordinary_text(media,1024) || !media->text_len || !bytes || bytes->kind!=N_STR || bytes->text_len>32u*1024u*1024u || bytes->text_len%2) return false;
        bool known=false;
        for (size_t i=0;i<sizeof(formats)/sizeof(*formats);i++) if (field_is(result,"file_kind",formats[i])) { known=true; break; }
        if (!known) return false;
        for (size_t i=0;i<bytes->text_len;i++) {
            if (!(i&4095u) && !reply_running(guard)) return false;
            if (!((bytes->text[i]>='0' && bytes->text[i]<='9') || (bytes->text[i]>='a' && bytes->text[i]<='f'))) return false;
        }
        return true;
    }
    if (field_is(result,"kind","redirect")) {
        static const char *const fields[]={"kind","protected_location"};
        return expected==WM_EXPECT_FILE_OR_REDIRECT && result->count==2 && only_members(result,fields,2) && ordinary_text(n_get(result,"protected_location"),1024*1024);
    }
    if (field_is(result,"kind","pending")) {
        static const char *const fields[]={"kind","status","media_type","value"};
        if (expected!=WM_EXPECT_FILE_OR_REDIRECT || !operation || strcmp(operation,"fileGetNfsePdf") ||
            result->count!=4 || !only_members(result,fields,4) || !canonical_integer(n_get(result,"status"),200,200,NULL) ||
            !field_is(result,"media_type","application/json")) return false;
        node *value=n_get(result,"value");
        if (!wm_shape_c_type("wm_api2_emitter_files_nfse_pdf_pending",value)) return false;
        /* Error envelopes remain errors, including an explicit error:false.
         * This is variant disambiguation, not a second HTTP/schema engine. */
        node *success=n_get(value,"success");
        return !n_get(value,"error") && !(success && success->kind==N_BOOL && !success->integer);
    }
    return false;
}
static bool envelope_shape(const node *response,wm_expected_result expected,const char *type,const char *model,const char *operation,reply_guard *guard) {
    static const char *const success[]={"protocol","ok","result"},*const failure_fields[]={"protocol","ok","error"};
    if (!response || response->kind!=N_OBJECT || response->count!=3) return false;
    node *protocol=n_get(response,"protocol"),*ok=n_get(response,"ok");
    if (!protocol || protocol->kind!=N_NUM || protocol->text_len!=1 || protocol->text[0]!='1' || !ok || ok->kind!=N_BOOL) return false;
    if (ok->integer) return only_members(response,success,3) && result_shape(n_get(response,"result"),expected,type,model,operation,guard);
    return only_members(response,failure_fields,3) && error_shape(n_get(response,"error"),operation);
}

static bool nonblocking(int fd) {
    int flags=fcntl(fd,F_GETFL);
    return flags>=0 && fcntl(fd,F_SETFL,flags|O_NONBLOCK)==0;
}
static int reap_once(pid_t pid,int *status) {
    pid_t result=waitpid(pid,status,WNOHANG);
    if (result==pid) return 1;
    if (result<0 && errno==ECHILD) return 1;
    return result<0 && errno!=EINTR?-1:0;
}
static bool terminate_and_reap(pid_t pid) {
    /* No waitpid(...,0): even a nonreading companion cannot block cleanup.
     * The process group is created atomically by posix_spawn, before exec. */
    (void)kill(-pid,SIGKILL);
    int status=0; int64_t started=now_ms();
    int64_t end=started<0?-1:started+REAP_GRACE_MS;
    for (unsigned attempt=0;;attempt++) {
        int result=reap_once(pid,&status);
        if (result) return result>0;
        int64_t now=now_ms();
        if ((now>=0 && end>=0 && now>=end) || attempt>=REAP_GRACE_MS) return reap_once(pid,&status)>0;
        (void)poll(NULL,0,1);
    }
}
static bool replace_stop_error(node *error,const call_guard *guard) {
    if (guard->reason==STOP_NONE) return true;
    const char *kind=guard->reason==STOP_CANCELLED?"cancelled":"timeout";
    if (field_is(error,"kind",kind)) return true;
    return n_set(error,"kind",n_text(kind))==WM_OK &&
           n_set(error,"message",n_text(guard->reason==STOP_CANCELLED?"Call cancelled.":"Call deadline expired."))==WM_OK;
}

static wm_status worker(node *envelope,const char *program,call_guard *guard,bool effects,wm_expected_result expected,const char *type,const char *model,node **result,wm_error **error) {
    if (result) *result=NULL;
    if (error) *error=NULL;
    if (!guard_running(guard)) return stopped_failure(error,guard,false);
    char *json=n_serialize_guarded(envelope,guard_running,guard);
    if (!json) return guard->reason!=STOP_NONE?stopped_failure(error,guard,false):n_serialization_error()==WM_NOMEM?WM_NOMEM:failure(error,"validation","Expected bounded exact JSON.");
    size_t length=strlen(json);
    if (length>INPUT_LIMIT) { free(json); return failure(error,"request_limit","Frame exceeds 32 MiB."); }
    int input[2]={-1,-1},output[2]={-1,-1}; pid_t pid=-1;
    posix_spawn_file_actions_t actions; posix_spawnattr_t attributes;
    bool actions_ready=false,attributes_ready=false,reaped=false,complete=false,notified=false,eof=false;
    int exit_status=0;
    unsigned char header[4]={(unsigned char)(length>>24),(unsigned char)(length>>16),(unsigned char)(length>>8),(unsigned char)length};
    unsigned char incoming_header[4]; unsigned char *bytes=NULL;
    size_t sent=0,header_read=0,body_read=0,body_length=0;
    node *response=NULL; wm_status status=WM_ERROR;
    const char *failure_kind="protocol",*failure_message="Native worker protocol failed.";
    if (socketpair(AF_UNIX,SOCK_STREAM|SOCK_CLOEXEC,0,input) || socketpair(AF_UNIX,SOCK_STREAM|SOCK_CLOEXEC,0,output) ||
        !nonblocking(input[0]) || !nonblocking(output[0])) goto system_failure;
    if (posix_spawn_file_actions_init(&actions)) goto system_failure;
    actions_ready=true;
    if (posix_spawnattr_init(&attributes)) goto system_failure;
    attributes_ready=true;
    if (posix_spawnattr_setpgroup(&attributes,0) || posix_spawnattr_setflags(&attributes,POSIX_SPAWN_SETPGROUP) ||
        posix_spawn_file_actions_adddup2(&actions,input[1],STDIN_FILENO) ||
        posix_spawn_file_actions_adddup2(&actions,output[1],STDOUT_FILENO) ||
        posix_spawn_file_actions_addopen(&actions,STDERR_FILENO,"/dev/null",O_WRONLY,0) ||
        posix_spawn_file_actions_addclosefrom_np(&actions,3)) goto system_failure;
    if (!guard_running(guard)) goto stopped;
    char *const argv[]={(char*)program,NULL}; char *const envp[]={NULL};
    if (posix_spawn(&pid,program,&actions,&attributes,argv,envp)) goto system_failure;
    posix_spawn_file_actions_destroy(&actions); actions_ready=false;
    posix_spawnattr_destroy(&attributes); attributes_ready=false;
    close(input[1]); input[1]=-1; close(output[1]); output[1]=-1;
    for (;;) {
        if (!reaped) { int state=reap_once(pid,&exit_status); if (state<0) goto protocol_failure; reaped=state>0; }
        if (complete && eof && reaped) break;
        if (!guard_running(guard)) {
            if (sent<length+4) goto stopped;
            if (!notified) {
                /* C is legal only after the complete frame has been written.
                 * EOF also cancels the existing worker token-only controller. */
                unsigned char cancel_byte='C';
                (void)send(input[0],&cancel_byte,1,MSG_NOSIGNAL|MSG_DONTWAIT);
                (void)shutdown(input[0],SHUT_WR); notified=true;
            }
            int64_t stopping_now=now_ms();
            if (stopping_now<0 || stopping_now-guard->stop_started>=STOP_GRACE_MS) goto stopped;
        }
        int64_t remaining=guard->reason==STOP_NONE?guard->deadline-now_ms():guard->stop_started+STOP_GRACE_MS-now_ms();
        int wait=remaining>20?20:remaining>0?(int)remaining:0;
        struct pollfd pollers[2]={{sent<length+4?input[0]:-1,POLLOUT,0},{eof?-1:output[0],POLLIN,0}};
        int ready=poll(pollers,2,wait);
        if (ready<0 && errno==EINTR) continue;
        if (ready<0) goto protocol_failure;
        if (!ready) continue;
        if (pollers[1].revents&(POLLIN|POLLHUP|POLLERR|POLLNVAL)) {
            if (sent<length+4) goto protocol_failure;
            unsigned char extra;
            unsigned char *destination=complete?&extra:header_read<4?incoming_header+header_read:bytes+body_read;
            size_t wanted=complete?1:header_read<4?4-header_read:body_length-body_read;
            ssize_t received=read(output[0],destination,wanted);
            if (received<0 && (errno==EINTR || errno==EAGAIN || errno==EWOULDBLOCK)) continue;
            if (received<0) goto protocol_failure;
            if (!received) {
                if (!complete) goto protocol_failure;
                eof=true;
            } else if (complete) goto protocol_failure; /* No second frame, whitespace or trailer. */
            else if (header_read<4) {
                header_read+=(size_t)received;
                if (header_read==4) {
                    body_length=((size_t)incoming_header[0]<<24)|((size_t)incoming_header[1]<<16)|((size_t)incoming_header[2]<<8)|incoming_header[3];
                    if (!body_length || body_length>OUTPUT_LIMIT) goto protocol_failure;
                    bytes=malloc(body_length);
                    if (!bytes) { status=WM_NOMEM; goto done; }
                }
            } else {
                body_read+=(size_t)received;
                complete=body_read==body_length;
            }
        }
        if (sent<length+4 && pollers[0].revents&(POLLOUT|POLLHUP|POLLERR|POLLNVAL)) {
            if (!guard_running(guard)) continue;
            const unsigned char *source=sent<4?header+sent:(const unsigned char*)json+sent-4;
            size_t wanted=sent<4?4-sent:length+4-sent;
            if (wanted>65536) wanted=65536;
            ssize_t wrote=send(input[0],source,wanted,MSG_NOSIGNAL|MSG_DONTWAIT);
            if (wrote<0 && (errno==EINTR || errno==EAGAIN || errno==EWOULDBLOCK)) continue;
            if (wrote<=0) { failure_kind="transport"; failure_message="Native worker input stream failed."; goto protocol_failure; }
            sent+=(size_t)wrote;
        }
    }
    if (!WIFEXITED(exit_status) || WEXITSTATUS(exit_status)!=0) goto protocol_failure;
    reply_guard decoding={guard,guard->reason!=STOP_NONE};
    response=n_parse_frame_guarded((const char*)bytes,body_length,reply_running,&decoding);
    wm_shape_guard(reply_running,&decoding);
    bool valid=response && envelope_shape(response,expected,type,model,field_text(envelope,"operation"),&decoding);
    wm_shape_guard(NULL,NULL);
    if (!valid) { if (guard->reason!=STOP_NONE) goto stopped; goto protocol_failure; }
    if (n_get(response,"ok")->integer) {
        if (guard->reason!=STOP_NONE) goto stopped;
        *result=n_take(response,"result"); status=WM_OK;
    } else {
        node *given=n_take(response,"error");
        if (!replace_stop_error(given,guard)) { n_free(given); status=WM_NOMEM; goto done; }
        if (error) *error=(wm_error*)given; else n_free(given);
        status=WM_ERROR;
    }
    goto done;
system_failure:
    status=failure(error,"configuration","Unable to start isolated native worker."); goto done;
protocol_failure:
    status=uncertain_failure(error,failure_kind,failure_message,effects && sent==length+4); goto done;
stopped:
    status=stopped_failure(error,guard,effects && sent==length+4);
done:
    if (actions_ready) posix_spawn_file_actions_destroy(&actions);
    if (attributes_ready) posix_spawnattr_destroy(&attributes);
    for (int i=0;i<2;i++) { if (input[i]>=0) close(input[i]); if (output[i]>=0) close(output[i]); }
    if (pid>0 && !reaped && !terminate_and_reap(pid)) {
        if (error) { n_free(*error); *error=NULL; }
        status=uncertain_failure(error,"transport","Native worker termination did not complete.",effects && sent==length+4);
    }
    memset(json,0,length); free(json); free(bytes); n_free(response);
    return status;
}

static wm_status encode(node *envelope,const char *key,const void *value,call_guard *guard) {
    if (!value) return WM_OK;
    char *json=n_serialize_guarded(value,guard_running,guard);
    if (!json) return guard->reason==STOP_NONE?n_serialization_error():WM_ERROR;
    node *text=n_new(N_STR);
    if (!text) { free(json); return WM_NOMEM; }
    /* The guarded serializer already produced valid UTF-8. Transfer its
     * allocation instead of cloning a potentially 16 MiB encoded payload. */
    text->text=json; text->text_len=strlen(json);
    return n_set(envelope,key,text);
}
static bool possible_effects(wm_effect_policy policy,const node *query,const node *body) {
    if (policy==WM_EFFECT_REPORT) return n_get(body,"relatorio")!=NULL;
    if (policy==WM_EFFECT_REFRESH) {
        node *value=n_get(query,"atualizar_status");
        return value && ((value->kind==N_BOOL && value->integer) ||
                         ((value->kind==N_STR || value->kind==N_NUM) &&
                          ((value->text_len==1 && value->text[0]=='1') || (value->text_len==4 && !memcmp(value->text,"true",4)))));
    }
    return policy==WM_EFFECT_ALWAYS;
}
wm_status wm_invoke_internal(const void *handle,const char *operation,wm_effect_policy policy,wm_expected_result expected,const char *type,node *path,const void *query,const void *body,const void *auth,const wm_cancel *cancel,node **result,wm_error **error) {
    if (error) *error=NULL;
    if (result) *result=NULL;
    int64_t started=now_ms();
    const client *c=handle;
    if (!c) { n_free(path); return failure(error,"configuration","Expected typed client."); }
    call_guard guard;
    if (!guard_init(&guard,n_get(c->value,"config"),cancel,started)) { n_free(path); return failure(error,"configuration","Invalid call deadline."); }
    if (!guard_running(&guard)) { n_free(path); return stopped_failure(error,&guard,false); }
    bool effects=possible_effects(policy,query,body);
    node *envelope=n_clone(c->value);
    if (!envelope) { n_free(path); return WM_NOMEM; }
    if (n_set(envelope,"protocol",n_integer(1))!=WM_OK || n_set(envelope,"action",n_text("call"))!=WM_OK ||
        n_set(envelope,"operation",n_text(operation))!=WM_OK || n_set(envelope,"cancelled",boolean(cancelled(cancel)))!=WM_OK) {
        n_free(envelope); n_free(path); return WM_NOMEM;
    }
    wm_status status=encode(envelope,"path_json",path,&guard); n_free(path);
    if (status==WM_OK) status=encode(envelope,"query_json",query,&guard);
    if (status==WM_OK) status=encode(envelope,"body_json",body,&guard);
    if (status==WM_OK && auth) status=n_set(envelope,"file_auth",n_clone(auth));
    if (status!=WM_OK) { n_free(envelope); return guard.reason!=STOP_NONE?stopped_failure(error,&guard,false):status==WM_NOMEM?WM_NOMEM:failure(error,"validation","Expected bounded typed model."); }
    status=worker(envelope,c->worker,&guard,effects,expected,type,NULL,result,error);
    n_free(envelope);
    if (status==WM_OK && field_is(*result,"kind","file") && !decode_file((wm_file_response*)*result,NULL,&guard)) {
        n_free(*result); *result=NULL;
        return guard.reason==STOP_NONE?uncertain_failure(error,"body_limit","Unable to retain file bytes.",effects):stopped_failure(error,&guard,effects);
    }
    return status;
}
static wm_status validate_call(const char *model,const void *value,const wm_config *config,node **result,wm_error **error) {
    if (error) *error=NULL;
    call_guard guard;
    if (!guard_init(&guard,config?config->value:NULL,NULL,now_ms())) return failure(error,"configuration","Invalid call deadline.");
    node *envelope=n_new(N_OBJECT);
    if (!envelope) return WM_NOMEM;
    if (n_set(envelope,"protocol",n_integer(1))!=WM_OK || n_set(envelope,"action",n_text("validate"))!=WM_OK ||
        n_set(envelope,"model",n_text(model))!=WM_OK) { n_free(envelope); return WM_NOMEM; }
    wm_status status=encode(envelope,"value_json",value,&guard);
    if (status==WM_OK) status=worker(envelope,config && config->worker?config->worker:WM_WORKER_PATH,&guard,false,WM_EXPECT_JSON,NULL,model,result,error);
    else if (guard.reason!=STOP_NONE) status=stopped_failure(error,&guard,false);
    else if (status!=WM_NOMEM) status=failure(error,"validation","Expected bounded typed model.");
    n_free(envelope); return status;
}
wm_status wm_validate_internal(const char *model,const void *value,const wm_config *config,wm_error **error) {
    node *result=NULL; wm_status status=validate_call(model,value,config,&result,error); n_free(result); return status;
}
node *wm_project_internal(const char *model,const void *value,const wm_config *config,wm_error **error) {
    node *result=NULL; wm_status status=validate_call(model,value,config,&result,error);
    node *projected=status==WM_OK?n_take(result,"value"):NULL;
    n_free(result); return projected;
}
wm_status wm_union_variant_internal(const char *model,const void *value,const char *variant,const wm_config *config,wm_error **error) {
    node *result=NULL; wm_status status=validate_call(model,value,config,&result,error);
    if (status==WM_OK && !field_is(result,"variant",variant)) status=WM_INVALID;
    n_free(result); return status;
}

int wm_file_response_status(const wm_file_response *file) { node *n=n_field(file,"status",N_NUM); return n?atoi(n->text):0; }
const char *wm_file_response_media_type(const wm_file_response *file) { return field_text(file,"media_type"); }
const char *wm_file_response_kind(const wm_file_response *file) { return field_text(file,"file_kind"); }
static const unsigned char *decode_file(const wm_file_response *file,size_t *length,call_guard *guard) {
    node *n=(void*)file;
    if (length) *length=0;
    if (!n) return NULL;
    if (!n->bytes) {
        node *hex=n_field(n,"bytes_hex",N_STR);
        if (!hex || hex->text_len%2 || hex->text_len>32u*1024u*1024u) return NULL;
        size_t count=hex->text_len/2;
        unsigned char *bytes=malloc(count?count:1);
        if (!bytes) return NULL;
        for (size_t i=0;i<count;i++) {
            if (guard && !(i&4095u) && !guard_running(guard)) { free(bytes); return NULL; }
            unsigned a=(unsigned char)hex->text[i*2],b=(unsigned char)hex->text[i*2+1];
            if (!((a>='0' && a<='9') || (a>='a' && a<='f')) || !((b>='0' && b<='9') || (b>='a' && b<='f'))) { free(bytes); return NULL; }
            a=a<='9'?a-'0':a-'a'+10; b=b<='9'?b-'0':b-'a'+10;
            bytes[i]=(unsigned char)((a<<4)|b);
        }
        n->bytes=bytes; n->bytes_len=count;
    }
    if (length) *length=n->bytes_len;
    return n->bytes;
}
const unsigned char *wm_file_response_bytes(const wm_file_response *file,size_t *length) { return decode_file(file,length,NULL); }
void wm_file_response_free(wm_file_response *file) { n_free(file); }
bool wm_file_or_redirect_is_redirect(const wm_file_or_redirect *file) { return field_is((const node*)file,"kind","redirect"); }
bool wm_file_or_redirect_is_pending(const wm_file_or_redirect *file) { return field_is((const node*)file,"kind","pending"); }
int wm_file_or_redirect_pending_status(const wm_file_or_redirect *file) { return wm_file_or_redirect_is_pending(file)?wm_file_response_status((const wm_file_response*)file):0; }
const char *wm_file_or_redirect_pending_media_type(const wm_file_or_redirect *file) { return wm_file_or_redirect_is_pending(file)?field_text(file,"media_type"):NULL; }
wm_api2_emitter_files_nfse_pdf_pending *wm_file_or_redirect_pending(const wm_file_or_redirect *file) {
    if (!wm_file_or_redirect_is_pending(file)) return NULL;
    node *copy=n_clone(n_get(file,"value"));
    return (wm_api2_emitter_files_nfse_pdf_pending*)n_tag(copy,"wm_api2_emitter_files_nfse_pdf_pending");
}
const char *wm_file_or_redirect_reveal_location(const wm_file_or_redirect *file) { return wm_file_or_redirect_is_redirect(file)?field_text(file,"protected_location"):NULL; }
wm_file_response *wm_file_or_redirect_file(const wm_file_or_redirect *file) {
    if (!field_is((const node*)file,"kind","file")) return NULL;
    wm_file_response *copy=(wm_file_response*)n_clone(file);
    if (copy && !wm_file_response_bytes(copy,NULL)) { n_free(copy); return NULL; }
    return copy;
}
void wm_file_or_redirect_free(wm_file_or_redirect *file) { n_free(file); }
