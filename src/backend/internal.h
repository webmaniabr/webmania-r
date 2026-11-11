#ifndef WM_INTERNAL_H
#define WM_INTERNAL_H
#include "webmania/core.h"
struct member_index;
typedef struct node {
    int kind;
    char *text;
    size_t text_len;
    int64_t integer;
    struct node **items;
    char **keys;
    size_t *key_lengths;
    size_t count;
    size_t capacity;
    struct member_index *member_root;
    const char *type; /* Generated static type name; never caller-owned text. */
    unsigned char *bytes;
    size_t bytes_len;
} node;
enum {N_NULL,N_BOOL,N_NUM,N_STR,N_ARRAY,N_OBJECT};
node *n_new(int kind);
void n_free(void *);
node *n_clone(const void *);
node *n_text(const char *);
node *n_text_n(const char *,size_t);
node *n_integer(int64_t);
node *n_get(const void *,const char *);
node *n_get_n(const void *,const char *,size_t);
wm_status n_set_n(void *,const char *,size_t,node *owned);
wm_status n_set(void *,const char *,node *owned);
wm_status n_remove(void *,const char *);
node *n_take(void *,const char *);
wm_status n_append(void *,node *owned);
node *n_parse(const char *,size_t);
node *n_parse_frame(const char *,size_t);
node *n_parse_frame_guarded(const char *,size_t,bool (*)(void *),void *);
char *n_serialize(const void *);
char *n_serialize_guarded(const void *,bool (*)(void *),void *);
wm_status n_serialization_error(void);
node *n_tag(node *,const char *);
node *n_field(const void *,const char *,int);
wm_status n_put(void *,const char *,const void *,int,const char *);
wm_presence n_presence(const void *,const char *);
wm_status n_null(void *,const char *);
wm_status n_extension(void *,const char *,const void *,const char *const *,size_t);
wm_status wm_validate_internal(const char *,const void *,const wm_config *,wm_error **);
node *wm_project_internal(const char *,const void *,const wm_config *,wm_error **);
wm_status wm_union_variant_internal(const char *,const void *,const char *,const wm_config *,wm_error **);
typedef enum wm_expected_result { WM_EXPECT_JSON, WM_EXPECT_FILE, WM_EXPECT_FILE_OR_REDIRECT } wm_expected_result;
typedef enum wm_effect_policy { WM_EFFECT_NONE, WM_EFFECT_ALWAYS, WM_EFFECT_REFRESH, WM_EFFECT_REPORT } wm_effect_policy;
wm_status wm_invoke_internal(const void *,const char *,wm_effect_policy,wm_expected_result,const char *,node *,const void *,const void *,const void *,const wm_cancel *,node **,wm_error **);
wm_status wm_blocked_internal(wm_error **);
bool wm_shape_c_type(const char *,const node *);
bool wm_shape_model(const char *,const node *);
bool wm_model_has_variants(const char *);
bool wm_model_variant_shape(const char *,const char *,const node *);
void wm_shape_guard(bool (*)(void *),void *);
#endif
