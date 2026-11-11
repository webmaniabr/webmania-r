#include "internal.h"
#include <errno.h>
#include <limits.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_BYTES (40u * 1024u * 1024u)
/* This admits every syntactically possible tree within MAX_BYTES. The byte
 * limit remains authoritative; allocation failure never truncates a tree. */
#define MAX_MEMBERS (MAX_BYTES / 2u + 1u)
static _Thread_local wm_status serialization_error;

/* Ordered object storage is independent of its deterministic AVL lookup
 * index. Keys, including embedded NULs, compare as length-aware UTF-8 bytes.
 * No attacker-selected hash collision can degrade lookup into a linear scan. */
typedef struct member_index {
    size_t slot;
    int height;
    struct member_index *left, *right;
} member_index;

static char *copy_text(const char *s, size_t length) {
    if (length > MAX_BYTES) return NULL;
    char *out = malloc(length + 1);
    if (out) { memcpy(out, s, length); out[length] = 0; }
    return out;
}

static int utf8(const unsigned char *s, size_t length) {
    for (size_t i = 0; i < length;) {
        unsigned c = s[i++], needed, cp, minimum;
        if (c < 0x80) continue;
        if (c >= 0xc2 && c <= 0xdf) { needed=1; cp=c&31; minimum=0x80; }
        else if (c >= 0xe0 && c <= 0xef) { needed=2; cp=c&15; minimum=0x800; }
        else if (c >= 0xf0 && c <= 0xf4) { needed=3; cp=c&7; minimum=0x10000; }
        else return 0;
        if (needed > length-i) return 0;
        while (needed--) {
            c=s[i++];
            if ((c&0xc0)!=0x80) return 0;
            cp=(cp<<6)|(c&63);
        }
        if (cp<minimum || cp>0x10ffff || (cp>=0xd800 && cp<=0xdfff)) return 0;
    }
    return 1;
}

node *n_new(int kind) {
    node *out = calloc(1,sizeof(*out));
    if (out) out->kind=kind;
    return out;
}

static void index_free(member_index *index) {
    if (!index) return;
    index_free(index->left);
    index_free(index->right);
    free(index);
}

void n_free(void *value) {
    node *n=value;
    if (!n) return;
    for (size_t i=0;i<n->count;i++) {
        n_free(n->items[i]);
        if (n->keys) free(n->keys[i]);
    }
    index_free(n->member_root);
    free(n->items); free(n->keys); free(n->key_lengths);
    if (n->text) { memset(n->text,0,n->text_len); free(n->text); }
    if (n->bytes) { memset(n->bytes,0,n->bytes_len); free(n->bytes); }
    free(n);
}

node *n_tag(node *n,const char *type) {
    if (!n) return NULL;
    /* All callers are generated constructors/accessors with static names.
     * Publishing a typed reply must not allocate after a successful call. */
    n->type=type;
    return n;
}

node *n_text_n(const char *s,size_t length) {
    if (!s || length>MAX_BYTES || !utf8((const unsigned char*)s,length)) return NULL;
    node *n=n_new(N_STR);
    if (!n) return NULL;
    n->text=copy_text(s,length); n->text_len=length;
    if (!n->text) { n_free(n); return NULL; }
    return n;
}
node *n_text(const char *s) { return s?n_text_n(s,strlen(s)):NULL; }
node *n_integer(int64_t value) {
    char text[32];
    int length=snprintf(text,sizeof(text),"%lld",(long long)value);
    node *n=n_new(N_NUM);
    if (!n) return NULL;
    n->text=copy_text(text,(size_t)length); n->text_len=(size_t)length;
    if (!n->text) { n_free(n); return NULL; }
    return n;
}

static int key_compare(const char *a,size_t alen,const char *b,size_t blen) {
    size_t length=alen<blen?alen:blen;
    int order=memcmp(a,b,length);
    return order?order:alen<blen?-1:alen>blen?1:0;
}
static member_index *index_find(const node *owner,const char *key,size_t length) {
    member_index *entry=owner->member_root;
    while (entry) {
        int order=key_compare(key,length,owner->keys[entry->slot],owner->key_lengths[entry->slot]);
        if (!order) return entry;
        entry=order<0?entry->left:entry->right;
    }
    return NULL;
}
static int height(const member_index *n) { return n?n->height:0; }
static void update_height(member_index *n) {
    int left=height(n->left),right=height(n->right);
    n->height=1+(left>right?left:right);
}
static member_index *rotate_left(member_index *n) {
    member_index *next=n->right;
    n->right=next->left; next->left=n;
    update_height(n); update_height(next);
    return next;
}
static member_index *rotate_right(member_index *n) {
    member_index *next=n->left;
    n->left=next->right; next->right=n;
    update_height(n); update_height(next);
    return next;
}
static member_index *balance(member_index *n) {
    if (!n) return NULL;
    update_height(n);
    int difference=height(n->left)-height(n->right);
    if (difference>1) {
        if (height(n->left->left)<height(n->left->right)) n->left=rotate_left(n->left);
        return rotate_right(n);
    }
    if (difference < -1) {
        if (height(n->right->right)<height(n->right->left)) n->right=rotate_right(n->right);
        return rotate_left(n);
    }
    return n;
}
static member_index *index_insert(node *owner,member_index *root,member_index *entry) {
    if (!root) return entry;
    int order=key_compare(owner->keys[entry->slot],owner->key_lengths[entry->slot],
                          owner->keys[root->slot],owner->key_lengths[root->slot]);
    if (order<0) root->left=index_insert(owner,root->left,entry);
    else root->right=index_insert(owner,root->right,entry);
    return balance(root);
}
static member_index *index_delete(node *owner,member_index *root,const char *key,size_t length) {
    if (!root) return NULL;
    int order=key_compare(key,length,owner->keys[root->slot],owner->key_lengths[root->slot]);
    if (order<0) root->left=index_delete(owner,root->left,key,length);
    else if (order>0) root->right=index_delete(owner,root->right,key,length);
    else if (!root->left || !root->right) {
        member_index *child=root->left?root->left:root->right;
        free(root); return child;
    } else {
        member_index *successor=root->right;
        while (successor->left) successor=successor->left;
        root->slot=successor->slot;
        root->right=index_delete(owner,root->right,owner->keys[successor->slot],owner->key_lengths[successor->slot]);
    }
    return balance(root);
}
static void index_shift(member_index *root,size_t removed) {
    if (!root) return;
    if (root->slot>removed) root->slot--;
    index_shift(root->left,removed); index_shift(root->right,removed);
}

node *n_get_n(const void *value,const char *key,size_t length) {
    const node *n=value;
    if (!n || n->kind!=N_OBJECT || !key || length>MAX_BYTES) return NULL;
    member_index *entry=index_find(n,key,length);
    return entry?n->items[entry->slot]:NULL;
}
node *n_get(const void *value,const char *key) { return key?n_get_n(value,key,strlen(key)):NULL; }

static int reserve_members(node *n,size_t needed) {
    if (needed>MAX_MEMBERS) return 0;
    if (needed<=n->capacity) return 1;
    size_t capacity=n->capacity?n->capacity:4;
    while (capacity<needed) capacity=capacity>MAX_MEMBERS/2?MAX_MEMBERS:capacity*2;
    node **items=realloc(n->items,capacity*sizeof(*items));
    if (!items) return 0;
    n->items=items;
    if (n->kind==N_OBJECT) {
        char **keys=realloc(n->keys,capacity*sizeof(*keys));
        if (!keys) return 0;
        n->keys=keys;
        size_t *lengths=realloc(n->key_lengths,capacity*sizeof(*lengths));
        if (!lengths) return 0;
        n->key_lengths=lengths;
    }
    /* Capacity commits only when every required array has grown. On failure
     * the old logical size/capacity and all owned members remain valid. */
    n->capacity=capacity;
    return 1;
}

wm_status n_append(void *array,node *owned) {
    node *n=array;
    if (!n || n->kind!=N_ARRAY || !owned) { n_free(owned); return WM_INVALID; }
    if (!reserve_members(n,n->count+1)) { n_free(owned); return WM_NOMEM; }
    n->items[n->count++]=owned;
    return WM_OK;
}
wm_status n_set_n(void *object,const char *key,size_t length,node *owned) {
    node *n=object;
    if (!n || n->kind!=N_OBJECT || !key || length>MAX_BYTES || !owned || !utf8((const unsigned char*)key,length)) {
        n_free(owned); return WM_INVALID;
    }
    member_index *existing=index_find(n,key,length);
    if (existing) { n_free(n->items[existing->slot]); n->items[existing->slot]=owned; return WM_OK; }
    char *copied=copy_text(key,length);
    member_index *entry=calloc(1,sizeof(*entry));
    if (!copied || !entry || !reserve_members(n,n->count+1)) {
        free(copied); free(entry); n_free(owned); return WM_NOMEM;
    }
    size_t slot=n->count;
    n->keys[slot]=copied; n->key_lengths[slot]=length; n->items[slot]=owned;
    entry->slot=slot; entry->height=1;
    n->member_root=index_insert(n,n->member_root,entry);
    n->count++;
    return WM_OK;
}
wm_status n_set(void *object,const char *key,node *owned) {
    if (!key) { n_free(owned); return WM_INVALID; }
    return n_set_n(object,key,strlen(key),owned);
}
node *n_take(void *object,const char *key) {
    node *n=object;
    if (!n || n->kind!=N_OBJECT || !key) return NULL;
    size_t length=strlen(key);
    member_index *entry=index_find(n,key,length);
    if (!entry) return NULL;
    size_t slot=entry->slot;
    node *taken=n->items[slot];
    n->member_root=index_delete(n,n->member_root,key,length);
    free(n->keys[slot]);
    size_t tail=n->count-slot-1;
    memmove(n->items+slot,n->items+slot+1,tail*sizeof(*n->items));
    memmove(n->keys+slot,n->keys+slot+1,tail*sizeof(*n->keys));
    memmove(n->key_lengths+slot,n->key_lengths+slot+1,tail*sizeof(*n->key_lengths));
    n->count--; index_shift(n->member_root,slot);
    return taken;
}
wm_status n_remove(void *object,const char *key) {
    node *n=object;
    if (!n || n->kind!=N_OBJECT || !key) return WM_INVALID;
    node *taken=n_take(n,key);
    if (!taken) return WM_ABSENT;
    n_free(taken); return WM_OK;
}

static node *clone_node(const node *n,unsigned depth) {
    if (!n || depth>68) return NULL;
    node *out=n_new(n->kind);
    if (!out) return NULL;
    out->integer=n->integer;
    if (n->text) {
        out->text=copy_text(n->text,n->text_len); out->text_len=n->text_len;
        if (!out->text) goto failed;
    }
    out->type=n->type;
    for (size_t i=0;i<n->count;i++) {
        node *child=clone_node(n->items[i],depth+1);
        wm_status status=n->kind==N_OBJECT?n_set_n(out,n->keys[i],n->key_lengths[i],child):n_append(out,child);
        if (status!=WM_OK) goto failed;
    }
    return out;
failed:
    n_free(out); return NULL;
}
node *n_clone(const void *value) { return clone_node(value,0); }

typedef struct {
    char *data;
    size_t length,capacity,next_check;
    int failed;
    bool (*guard)(void *);
    void *guard_context;
} buffer;
static int buffer_append(buffer *b,const char *s,size_t length) {
    if (b->failed) return 0;
    if (b->guard && b->length>=b->next_check) {
        b->next_check=b->length+4096;
        if (!b->guard(b->guard_context)) { b->failed=WM_ERROR; return 0; }
    }
    if (length>MAX_BYTES-b->length) { b->failed=WM_INVALID; return 0; }
    size_t required=b->length+length+1;
    if (required>b->capacity) {
        size_t capacity=b->capacity?b->capacity:32;
        while (capacity<required) capacity=capacity>(MAX_BYTES+1u)/2?MAX_BYTES+1u:capacity*2;
        char *data=realloc(b->data,capacity);
        if (!data) { b->failed=WM_NOMEM; return 0; }
        b->data=data; b->capacity=capacity;
    }
    memcpy(b->data+b->length,s,length); b->length+=length; b->data[b->length]=0;
    return 1;
}
static int buffer_byte(buffer *b,unsigned value) { char c=(char)value; return buffer_append(b,&c,1); }

typedef struct {
    const unsigned char *input;
    size_t length,position,last_string_length,nodes_remaining;
    unsigned max_depth;
    bool (*guard)(void *);
    void *guard_context;
    size_t next_check;
} parser;
static bool parser_running(void *context) {
    parser *p=context;
    if (!p->guard || p->position<p->next_check) return true;
    p->next_check=p->position+4096;
    return p->guard(p->guard_context);
}
static void whitespace(parser *p) {
    while (p->position<p->length) {
        unsigned c=p->input[p->position];
        if (c!=' ' && c!='\n' && c!='\r' && c!='\t') break;
        p->position++;
    }
}
static int digit(unsigned c) { return c>='0' && c<='9'; }
static int hex(unsigned c) {
    if (c>='0' && c<='9') return (int)(c-'0');
    if (c>='a' && c<='f') return (int)(c-'a'+10);
    if (c>='A' && c<='F') return (int)(c-'A'+10);
    return -1;
}
static int codepoint4(parser *p,unsigned *out) {
    if (p->length-p->position<4) return 0;
    *out=0;
    for (int i=0;i<4;i++) {
        int value=hex(p->input[p->position++]);
        if (value<0) return 0;
        *out=(*out<<4)|(unsigned)value;
    }
    return 1;
}
static char *parse_string(parser *p) {
    if (p->position>=p->length || p->input[p->position++]!='"') return NULL;
    buffer out={0}; out.guard=parser_running; out.guard_context=p;
    while (p->position<p->length) {
        unsigned c=p->input[p->position++];
        if (c=='"') {
            if (!out.data && !buffer_append(&out,"",0)) goto failed;
            if (!utf8((const unsigned char*)out.data,out.length)) goto failed;
            p->last_string_length=out.length;
            return out.data;
        }
        if (c<32) goto failed;
        if (c=='\\') {
            if (p->position>=p->length) goto failed;
            c=p->input[p->position++];
            switch (c) {
            case '"': case '\\': case '/': break;
            case 'b': c=8; break;
            case 'f': c=12; break;
            case 'n': c=10; break;
            case 'r': c=13; break;
            case 't': c=9; break;
            case 'u': {
                unsigned cp;
                if (!codepoint4(p,&cp)) goto failed;
                if (cp>=0xd800 && cp<=0xdbff) {
                    if (p->length-p->position<2 || p->input[p->position++]!='\\' || p->input[p->position++]!='u') goto failed;
                    unsigned low;
                    if (!codepoint4(p,&low) || low<0xdc00 || low>0xdfff) goto failed;
                    cp=0x10000+((cp-0xd800)<<10)+(low-0xdc00);
                } else if (cp>=0xdc00 && cp<=0xdfff) goto failed;
                unsigned char encoded[4]; size_t length;
                if (cp<0x80) { encoded[0]=(unsigned char)cp; length=1; }
                else if (cp<0x800) { encoded[0]=(unsigned char)(0xc0|(cp>>6)); encoded[1]=(unsigned char)(0x80|(cp&63)); length=2; }
                else if (cp<0x10000) { encoded[0]=(unsigned char)(0xe0|(cp>>12)); encoded[1]=(unsigned char)(0x80|((cp>>6)&63)); encoded[2]=(unsigned char)(0x80|(cp&63)); length=3; }
                else { encoded[0]=(unsigned char)(0xf0|(cp>>18)); encoded[1]=(unsigned char)(0x80|((cp>>12)&63)); encoded[2]=(unsigned char)(0x80|((cp>>6)&63)); encoded[3]=(unsigned char)(0x80|(cp&63)); length=4; }
                if (!buffer_append(&out,(const char*)encoded,length)) goto failed;
                continue;
            }
            default: goto failed;
            }
        }
        if (!buffer_byte(&out,c)) goto failed;
    }
failed:
    free(out.data); return NULL;
}
static int number_bounded(const unsigned char *s,size_t length) {
    size_t i=0,integer_digits=0,total=0,leading=0,last=0;
    int nonzero=0;
    if (s[i]=='-') i++;
    while (i<length && digit(s[i])) {
        unsigned d=s[i++]-'0'; integer_digits++; total++;
        if (!nonzero && !d) leading++;
        if (d) { nonzero=1; last=total; }
    }
    if (i<length && s[i]=='.') {
        i++;
        while (i<length && digit(s[i])) {
            unsigned d=s[i++]-'0'; total++;
            if (!nonzero && !d) leading++;
            if (d) { nonzero=1; last=total; }
        }
    }
    int64_t exponent=0;
    if (i<length) {
        i++; int negative=0;
        if (s[i]=='+' || s[i]=='-') { negative=s[i]=='-'; i++; }
        while (i<length) {
            exponent=exponent*10+s[i++]-'0';
            if (exponent>1000000000000LL) exponent=1000000000000LL;
        }
        if (negative) exponent=-exponent;
    }
    if (!nonzero) return 1;
    int64_t position=(int64_t)integer_digits+exponent-(int64_t)leading;
    return last-leading<=4096 && position>=-4096 && position<=4096;
}
static node *parse_value(parser *p,unsigned depth) {
    whitespace(p);
    if (!parser_running(p) || depth>p->max_depth || p->position>=p->length || !p->nodes_remaining) return NULL;
    p->nodes_remaining--;
    unsigned c=p->input[p->position];
    node *n=NULL;
    if (c=='"') {
        n=n_new(N_STR); if (!n) return NULL;
        n->text=parse_string(p); n->text_len=p->last_string_length;
        if (!n->text) goto failed;
        return n;
    }
    if (c=='{' || c=='[') {
        p->position++; n=n_new(c=='{'?N_OBJECT:N_ARRAY);
        if (!n) return NULL;
        whitespace(p); unsigned end=c=='{'?'}':']';
        if (p->position<p->length && p->input[p->position]==end) { p->position++; return n; }
        while (p->position<p->length) {
            char *key=NULL; size_t length=0;
            if (c=='{') {
                whitespace(p); key=parse_string(p); length=p->last_string_length;
                if (!key || n_get_n(n,key,length)) { free(key); goto failed; }
                whitespace(p);
                if (p->position>=p->length || p->input[p->position++]!=':') { free(key); goto failed; }
            }
            node *child=parse_value(p,depth+1);
            if (!child) { free(key); goto failed; }
            wm_status status=c=='{'?n_set_n(n,key,length,child):n_append(n,child);
            free(key);
            if (status!=WM_OK) goto failed;
            whitespace(p);
            if (p->position>=p->length) goto failed;
            unsigned separator=p->input[p->position++];
            if (separator==end) return n;
            if (separator!=',') goto failed;
        }
        goto failed;
    }
    if (c=='n' && p->length-p->position>=4 && !memcmp(p->input+p->position,"null",4)) { p->position+=4; return n_new(N_NULL); }
    if (c=='t' && p->length-p->position>=4 && !memcmp(p->input+p->position,"true",4)) { p->position+=4; n=n_new(N_BOOL); if (n) n->integer=1; return n; }
    if (c=='f' && p->length-p->position>=5 && !memcmp(p->input+p->position,"false",5)) { p->position+=5; return n_new(N_BOOL); }
    if (c=='-' || digit(c)) {
        size_t start=p->position;
        if (c=='-') p->position++;
        if (p->position>=p->length) goto failed;
        if (p->input[p->position]=='0') p->position++;
        else {
            if (p->input[p->position]<'1' || p->input[p->position]>'9') goto failed;
            while (p->position<p->length && digit(p->input[p->position])) p->position++;
        }
        if (p->position<p->length && p->input[p->position]=='.') {
            size_t first=++p->position;
            while (p->position<p->length && digit(p->input[p->position])) p->position++;
            if (first==p->position) goto failed;
        }
        if (p->position<p->length && (p->input[p->position]=='e' || p->input[p->position]=='E')) {
            p->position++;
            if (p->position<p->length && (p->input[p->position]=='+' || p->input[p->position]=='-')) p->position++;
            size_t first=p->position;
            while (p->position<p->length && digit(p->input[p->position])) p->position++;
            if (first==p->position) goto failed;
        }
        size_t length=p->position-start;
        if (!number_bounded(p->input+start,length)) goto failed;
        n=n_new(N_NUM); if (!n) return NULL;
        n->text=copy_text((const char*)p->input+start,length); n->text_len=length;
        if (!n->text) goto failed;
        return n;
    }
failed:
    n_free(n); return NULL;
}
static node *parse_depth(const char *s,size_t length,unsigned depth,bool (*guard)(void *),void *context) {
    if (!s || !length || length>MAX_BYTES || (guard && !guard(context)) || !utf8((const unsigned char*)s,length) || (guard && !guard(context))) return NULL;
    if (length>=3 && !memcmp(s,"\xef\xbb\xbf",3)) { s+=3; length-=3; }
    parser p={(const unsigned char*)s,length,0,0,length/2+1,depth,guard,context,0};
    node *n=parse_value(&p,0);
    whitespace(&p);
    if (p.position!=p.length) { n_free(n); return NULL; }
    return n;
}
node *n_parse(const char *s,size_t length) { return parse_depth(s,length,64,NULL,NULL); }
node *n_parse_frame(const char *s,size_t length) { return parse_depth(s,length,68,NULL,NULL); }
node *n_parse_frame_guarded(const char *s,size_t length,bool (*guard)(void *),void *context) { return parse_depth(s,length,68,guard,context); }

static void quote(buffer *out,const char *s,size_t length) {
    buffer_byte(out,'"');
    for (size_t i=0;i<length && !out->failed;i++) {
        unsigned c=(unsigned char)s[i]; char encoded[7];
        if (c=='"') buffer_append(out,"\\\"",2);
        else if (c=='\\') buffer_append(out,"\\\\",2);
        else if (c=='\b') buffer_append(out,"\\b",2);
        else if (c=='\f') buffer_append(out,"\\f",2);
        else if (c=='\n') buffer_append(out,"\\n",2);
        else if (c=='\r') buffer_append(out,"\\r",2);
        else if (c=='\t') buffer_append(out,"\\t",2);
        else if (c<32) { snprintf(encoded,sizeof(encoded),"\\u%04x",c); buffer_append(out,encoded,6); }
        else buffer_byte(out,c);
    }
    buffer_byte(out,'"');
}
static void emit(buffer *out,const node *n,unsigned depth) {
    if (!n || depth>68) { out->failed=WM_INVALID; return; }
    switch (n->kind) {
    case N_NULL: buffer_append(out,"null",4); break;
    case N_BOOL: buffer_append(out,n->integer?"true":"false",n->integer?4:5); break;
    case N_NUM: buffer_append(out,n->text,n->text_len); break;
    case N_STR: quote(out,n->text,n->text_len); break;
    case N_ARRAY: case N_OBJECT:
        buffer_byte(out,n->kind==N_ARRAY?'[':'{');
        for (size_t i=0;i<n->count && !out->failed;i++) {
            if (i) buffer_byte(out,',');
            if (n->kind==N_OBJECT) { quote(out,n->keys[i],n->key_lengths[i]); buffer_byte(out,':'); }
            emit(out,n->items[i],depth+1);
        }
        buffer_byte(out,n->kind==N_ARRAY?']':'}'); break;
    default: out->failed=WM_INVALID;
    }
}
char *n_serialize(const void *value) {
    buffer out={0}; emit(&out,value,0);
    serialization_error=(wm_status)out.failed;
    if (out.failed) { free(out.data); return NULL; }
    return out.data;
}
char *n_serialize_guarded(const void *value,bool (*guard)(void *),void *context) {
    buffer out={0}; out.guard=guard; out.guard_context=context;
    emit(&out,value,0);
    if (!out.failed && guard && !guard(context)) out.failed=WM_ERROR;
    serialization_error=(wm_status)out.failed;
    if (out.failed) { free(out.data); return NULL; }
    return out.data;
}
wm_status n_serialization_error(void) { return serialization_error; }

node *n_field(const void *value,const char *key,int kind) {
    node *n=n_get(value,key);
    return n && (kind<0 || n->kind==kind)?n:NULL;
}
wm_status n_put(void *object,const char *key,const void *value,int kind,const char *type) {
    const node *n=value;
    if (!n || (kind>=0 && n->kind!=kind) || (type && (!n->type || strcmp(type,n->type)))) return WM_INVALID;
    node *copied=n_clone(n);
    return copied?n_set(object,key,copied):WM_NOMEM;
}
wm_presence n_presence(const void *object,const char *key) {
    node *n=n_get(object,key);
    return !n?WM_MISSING:n->kind==N_NULL?WM_PRESENT_NULL:WM_PRESENT;
}
wm_status n_null(void *object,const char *key) {
    node *n=n_new(N_NULL);
    return n?n_set(object,key,n):WM_NOMEM;
}
wm_status n_extension(void *object,const char *key,const void *value,const char *const *fields,size_t count) {
    if (!key) return WM_INVALID;
    for (size_t i=0;i<count;i++) if (!strcmp(key,fields[i])) return WM_INVALID;
    return n_put(object,key,value,-1,NULL);
}

void wm_string_free(char *value) { free(value); }
wm_json *wm_json_parse(const char *s,size_t length) { return (wm_json*)n_parse(s,length); }
char *wm_json_to_string(const wm_json *value) { return n_serialize(value); }
void wm_json_free(wm_json *value) { n_free(value); }
wm_number *wm_number_parse(const char *s) {
    if (!s) return NULL;
    node *n=n_parse(s,strlen(s));
    if (n && n->kind!=N_NUM) { n_free(n); n=NULL; }
    return (wm_number*)n;
}
const char *wm_number_lexeme(const wm_number *value) { const node *n=(const void*)value; return n&&n->kind==N_NUM?n->text:NULL; }
void wm_number_free(wm_number *value) { n_free(value); }
wm_scalar *wm_scalar_text(const char *s) { return (wm_scalar*)n_text(s); }
wm_scalar *wm_scalar_text_n(const char *s,size_t length) { return (wm_scalar*)n_text_n(s,length); }
wm_scalar *wm_scalar_number(const wm_number *value) { return (wm_scalar*)n_clone(value); }
wm_scalar *wm_scalar_boolean(bool value) { node *n=n_new(N_BOOL); if (n) n->integer=value; return (wm_scalar*)n; }
wm_scalar *wm_scalar_null(void) { return (wm_scalar*)n_new(N_NULL); }
char *wm_scalar_to_json(const wm_scalar *value) { return n_serialize(value); }
void wm_scalar_free(wm_scalar *value) { n_free(value); }
wm_map *wm_map_new(void) { return (wm_map*)n_new(N_OBJECT); }
wm_status wm_map_set(wm_map *map,const char *key,const wm_json *value) { return n_put(map,key,value,-1,NULL); }
wm_status wm_map_set_n(wm_map *map,const char *key,size_t length,const wm_json *value) {
    node *copy=n_clone(value); return copy?n_set_n(map,key,length,copy):WM_NOMEM;
}
wm_json *wm_map_get(const wm_map *map,const char *key) { return (wm_json*)n_clone(n_get(map,key)); }
wm_json *wm_map_get_n(const wm_map *map,const char *key,size_t length) { return (wm_json*)n_clone(n_get_n(map,key,length)); }
wm_map *wm_map_from_json(const char *s,size_t length) {
    node *n=n_parse(s,length);
    if (n && n->kind!=N_OBJECT) { n_free(n); return NULL; }
    return (wm_map*)n;
}
char *wm_map_to_json(const wm_map *map) { return n_serialize(map); }
void wm_map_free(wm_map *map) { n_free(map); }
size_t wm_map_count(const wm_map *map) { const node *n=(const void*)map; return n&&n->kind==N_OBJECT?n->count:0; }
const char *wm_map_key_at(const wm_map *map,size_t index,size_t *length) {
    const node *n=(const void*)map;
    if (length) *length=0;
    if (!n || n->kind!=N_OBJECT || index>=n->count) return NULL;
    if (length) *length=n->key_lengths[index];
    return n->keys[index];
}
