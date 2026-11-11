#ifndef WEBMANIA_CORE_H
#define WEBMANIA_CORE_H
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#ifdef __cplusplus
extern "C" {
#endif
typedef enum wm_status { WM_OK=0, WM_INVALID=1, WM_ABSENT=2, WM_NULL=3, WM_ERROR=4, WM_NOMEM=5 } wm_status;
typedef enum wm_presence { WM_MISSING=0, WM_PRESENT_NULL=1, WM_PRESENT=2 } wm_presence;
typedef struct wm_json wm_json;
typedef struct wm_map wm_map;
typedef struct wm_number wm_number;
typedef struct wm_scalar wm_scalar;
typedef struct wm_error wm_error;
typedef struct wm_config wm_config;
typedef struct wm_cancel wm_cancel;
typedef struct wm_company_credentials wm_company_credentials;
typedef struct wm_reseller_credentials wm_reseller_credentials;
typedef struct wm_issuer_token wm_issuer_token;
typedef struct wm_monitor_token wm_monitor_token;
typedef struct wm_file_auth wm_file_auth;
typedef struct wm_file_response wm_file_response;
typedef struct wm_file_or_redirect wm_file_or_redirect;
typedef struct wm_api2_emitter_files_nfse_pdf_pending wm_api2_emitter_files_nfse_pdf_pending;
typedef struct wm_nfe_client wm_nfe_client;
typedef struct wm_reseller_client wm_reseller_client;
typedef struct wm_emitter_client wm_emitter_client;
typedef struct wm_monitor_client wm_monitor_client;
typedef struct wm_nfe_files_client wm_nfe_files_client;
typedef struct wm_emitter_files_client wm_emitter_files_client;
/* All constructors/setters COPY inputs. Model/array getters return owned
 * copies; text getters borrow until the containing value is freed/mutated.
 * Every returned allocation has its matching free function. No shared model
 * mutation across threads; independent clients/calls are safe to share. */
void wm_string_free(char *value);
wm_json *wm_json_parse(const char *utf8,size_t length);
char *wm_json_to_string(const wm_json *value);
void wm_json_free(wm_json *value);
wm_map *wm_map_new(void);
wm_status wm_map_set(wm_map *,const char *name,const wm_json *value);
wm_status wm_map_set_n(wm_map *,const char *name,size_t name_length,const wm_json *value);
wm_json *wm_map_get(const wm_map *,const char *name);
wm_json *wm_map_get_n(const wm_map *,const char *name,size_t name_length);
size_t wm_map_count(const wm_map *);
const char *wm_map_key_at(const wm_map *,size_t index,size_t *name_length);
wm_map *wm_map_from_json(const char *,size_t length);
char *wm_map_to_json(const wm_map *);
void wm_map_free(wm_map *);
wm_number *wm_number_parse(const char *exact_lexeme);
const char *wm_number_lexeme(const wm_number *value);
void wm_number_free(wm_number *value);
wm_scalar *wm_scalar_text(const char *utf8);
wm_scalar *wm_scalar_text_n(const char *utf8,size_t length);
wm_scalar *wm_scalar_number(const wm_number *number);
wm_scalar *wm_scalar_boolean(bool value);
wm_scalar *wm_scalar_null(void);
char *wm_scalar_to_json(const wm_scalar *value);
void wm_scalar_free(wm_scalar *value);
wm_cancel *wm_cancel_new(void);
void wm_cancel_request(wm_cancel *token);
void wm_cancel_free(wm_cancel *token);
wm_config *wm_config_new(void);
wm_status wm_config_set_worker_path(wm_config *,const char *absolute_path);
wm_status wm_config_set_base_url(wm_config *,const char *url);
wm_status wm_config_set_ca_pem(wm_config *,const char *pem);
wm_status wm_config_trust_file_origin(wm_config *,const char *origin);
wm_status wm_config_set_timeout_ms(wm_config *,int64_t milliseconds);
wm_status wm_config_set_max_response_bytes(wm_config *,int64_t bytes);
wm_status wm_config_set_max_header_bytes(wm_config *,int64_t bytes);
void wm_config_free(wm_config *);
wm_company_credentials *wm_company_credentials_new(const char *,const char *,const char *,const char *);
wm_reseller_credentials *wm_reseller_credentials_new(const char *,const char *,const char *,const char *);
wm_issuer_token *wm_issuer_token_new(const char *);
wm_monitor_token *wm_monitor_token_new(const char *);
void wm_company_credentials_free(wm_company_credentials *);
void wm_reseller_credentials_free(wm_reseller_credentials *);
void wm_issuer_token_free(wm_issuer_token *);
void wm_monitor_token_free(wm_monitor_token *);
wm_file_auth *wm_file_auth_company(void);
wm_file_auth *wm_file_auth_issuer(void);
wm_file_auth *wm_file_auth_document_token(const char *);
wm_file_auth *wm_file_auth_anonymous(void);
wm_file_auth *wm_file_auth_public_report(void);
void wm_file_auth_free(wm_file_auth *);
wm_nfe_client *wm_nfe_client_new(const wm_company_credentials *,const wm_config *);
wm_reseller_client *wm_reseller_client_new(const wm_reseller_credentials *,const wm_config *);
wm_emitter_client *wm_emitter_client_new(const wm_issuer_token *,const wm_config *);
wm_monitor_client *wm_monitor_client_new(const wm_monitor_token *,const wm_config *);
wm_nfe_files_client *wm_nfe_files_client_new(const wm_company_credentials *,const wm_config *);
wm_emitter_files_client *wm_emitter_files_client_new(const wm_issuer_token *,const wm_config *);
void wm_nfe_client_free(wm_nfe_client *);
void wm_reseller_client_free(wm_reseller_client *);
void wm_emitter_client_free(wm_emitter_client *);
void wm_monitor_client_free(wm_monitor_client *);
void wm_nfe_files_client_free(wm_nfe_files_client *);
void wm_emitter_files_client_free(wm_emitter_files_client *);
const char *wm_error_kind(const wm_error *);
const char *wm_error_message(const wm_error *);
bool wm_error_outcome_unknown(const wm_error *);
int wm_error_status(const wm_error *);
/* Deliberate sensitive access: these values must not be logged. */
const char *wm_error_reveal_location(const wm_error *);
wm_json *wm_error_reveal_recovery(const wm_error *);
void wm_error_free(wm_error *);
int wm_file_response_status(const wm_file_response *);
const char *wm_file_response_media_type(const wm_file_response *);
const char *wm_file_response_kind(const wm_file_response *);
/* Kind names include Html: exact opaque bytes, never rendered or executed. */
const unsigned char *wm_file_response_bytes(const wm_file_response *,size_t *length);
void wm_file_response_free(wm_file_response *);
bool wm_file_or_redirect_is_redirect(const wm_file_or_redirect *);
bool wm_file_or_redirect_is_pending(const wm_file_or_redirect *);
int wm_file_or_redirect_pending_status(const wm_file_or_redirect *);
const char *wm_file_or_redirect_pending_media_type(const wm_file_or_redirect *);
/* An independent owned model copy; free with the nominal model's _free. */
wm_api2_emitter_files_nfse_pdf_pending *wm_file_or_redirect_pending(const wm_file_or_redirect *);
const char *wm_file_or_redirect_reveal_location(const wm_file_or_redirect *);
wm_file_response *wm_file_or_redirect_file(const wm_file_or_redirect *);
void wm_file_or_redirect_free(wm_file_or_redirect *);
const char *wm_version(void);
#ifdef __cplusplus
}
#endif
#endif
