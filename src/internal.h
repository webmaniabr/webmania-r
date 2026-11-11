#ifndef WEBMANIA_R_INTERNAL_H
#define WEBMANIA_R_INTERNAL_H
#define R_NO_REMAP
#include <R.h>
#include <Rinternals.h>
#include <R_ext/Utils.h>
#include <R_ext/Callbacks.h>
#include <pthread.h>
#include <stdatomic.h>
#include <stdint.h>
#include <webmania/webmania.h>
typedef struct Value Value;
typedef struct Type Type;
typedef struct Task Task;
typedef struct Owner Owner;
typedef SEXP (*field_fn)(Value*, SEXP, const wm_config*);
typedef struct Field { const char *name,*schema; field_fn set,get,presence,unset,construct; } Field;
struct Type {
 const char *name; void *(*create)(void); void (*destroy)(void*); char *(*json)(const void*);
 void *(*parse)(const char*,size_t,const wm_config*,wm_error**);
 const Field *fields; size_t nfields; field_fn append,at; size_t (*count)(const void*);
 wm_status (*ext_set)(void*,const char*,size_t,const wm_json*); wm_json*(*ext_get)(const void*,const char*,size_t);
};
struct Value {void *ptr; const Type *type; int aux; char *secret;};
typedef struct Arg {char *text;int64_t integer;void *ptr;void (*release)(void*);} Arg;
struct Task {
 pthread_t thread; atomic_bool done; bool started,joined,closed,published,interrupted;
 Owner *owner; Task *next; wm_cancel *cancel; wm_error *error; wm_status status;
 void *result;const Type *result_type;int result_kind;Arg args[5];void (*invoke)(Task*);
};
struct Owner {void *client;wm_config *config;int scope;bool closed;unsigned refs;Task*tasks;};
extern const Type types[];extern const size_t type_count;extern const int operation_count;
extern const Type file_type,redirect_type,error_type,auth_type;
SEXP value_alloc(const Type*); Value *value_check(SEXP,const Type*); Value *any_value(SEXP);
SEXP invalid(void);SEXP status_value(wm_status);SEXP presence_value(wm_presence);
const char *strict_string(SEXP,size_t*);const char *cstring(SEXP);int64_t integer64(SEXP);bool boolean(SEXP);
SEXP text_value(const char*,size_t);SEXP integer_value(int64_t);SEXP null_value(void);bool is_null(SEXP);
const wm_config *config_arg(SEXP);Owner *owner_check(SEXP,int);
SEXP task_alloc(Owner*);Task *task_check(SEXP);SEXP task_launch(SEXP);
void model_snapshot(Task*,int,SEXP,const Type*);void *auth_snapshot(SEXP);void auth_free(void*);
SEXP generated_operation(int,SEXP,SEXP);
#endif
