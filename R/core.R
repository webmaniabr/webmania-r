# Reference objects; no implicit reveal or user-controlled conversion.
wm_null <- function() structure(list(), class = "webmania_null")
wm_text <- function(bytes) {
  if (!is.raw(bytes) || is.object(bytes)) stop("webmania: plain raw vector required", call. = FALSE)
  structure(bytes, class = c("webmania_text", "webmania_bytes", "webmania_sensitive"))
}
wm_integer64 <- function(lexeme) {
  if (!is.character(lexeme) || length(lexeme) != 1L || is.na(lexeme) || is.object(lexeme) ||
      !grepl("^-?[0-9]+$", lexeme)) stop("webmania: integer lexeme required", call. = FALSE)
  # The native path checks the exact signed64 range without Double conversion.
  structure(lexeme, class = "webmania_integer64")
}
wm_number <- function(lexeme) .Call(C_core, 0L, lexeme)
wm_json <- function(json) .Call(C_core, 1L, json)
wm_map <- function(json = NULL) .Call(C_core, if (is.null(json)) 3L else 2L, json)
wm_scalar_text <- function(value) .Call(C_core, 4L, value)
wm_scalar_number <- function(value) .Call(C_core, 5L, value)
wm_scalar_boolean <- function(value) .Call(C_core, 6L, value)
wm_scalar_null <- function() .Call(C_core, 7L, NULL)
wm_config <- function(worker_path = system.file("native/libexec/webmania-native-worker", package = "webmania"),
                      base_url = NULL, ca_pem = NULL, file_origins = character(),
                      timeout_ms = 30000L, max_response_bytes = NULL, max_header_bytes = NULL) {
  .Call(C_config, list(worker_path, base_url, ca_pem, file_origins, timeout_ms, max_response_bytes, max_header_bytes))
}
wm_company_credentials <- function(consumer_key, consumer_secret, access_token, access_token_secret)
  .Call(C_credential, 0L, list(consumer_key, consumer_secret, access_token, access_token_secret))
wm_reseller_credentials <- function(consumer_key, consumer_secret, access_token, access_token_secret)
  .Call(C_credential, 1L, list(consumer_key, consumer_secret, access_token, access_token_secret))
wm_issuer_token <- function(token) .Call(C_credential, 2L, list(token))
wm_monitor_token <- function(token) .Call(C_credential, 3L, list(token))
wm_nfe_client <- function(credentials, config = wm_config()) .Call(C_client, 0L, credentials, config)
wm_reseller_client <- function(credentials, config = wm_config()) .Call(C_client, 1L, credentials, config)
wm_emitter_client <- function(credentials, config = wm_config()) .Call(C_client, 2L, credentials, config)
wm_monitor_client <- function(credentials, config = wm_config()) .Call(C_client, 3L, credentials, config)
wm_nfe_files_client <- function(credentials = NULL, config = wm_config()) .Call(C_client, 4L, credentials, config)
wm_emitter_files_client <- function(credentials = NULL, config = wm_config()) .Call(C_client, 5L, credentials, config)
wm_file_auth <- function(mode, token = NULL) {
  modes <- c("company", "issuer", "document_token", "anonymous", "public_report")
  if (!is.character(mode) || length(mode) != 1L || is.na(mode) || is.object(mode)) stop("webmania: auth mode required", call. = FALSE)
  i <- match(mode, modes)
  if (is.na(i)) stop("webmania: invalid auth mode", call. = FALSE)
  .Call(C_auth, i - 1L, token)
}
.model_new <- function(id, fields) {
  x <- .Call(C_new, id)
  if (length(fields)) {
    n <- names(fields)
    if (is.null(n) || anyNA(n) || any(!nzchar(n)) || anyDuplicated(n)) stop("webmania: unique named fields required", call. = FALSE)
    for (i in seq_along(fields)) wm_set(x, n[[i]], fields[[i]])
  }
  x
}
.array_new <- function(id, elements) { x <- .Call(C_new, id); for (v in elements) wm_append(x, v); x }
.union_new <- function(id, variant, value) .Call(C_union, id, variant, value)
wm_set <- function(x, field, value) { .Call(C_field, x, field, 0L, value, NULL); invisible(x) }
wm_get <- function(x, field, config = wm_config()) .Call(C_field, x, field, 1L, NULL, config)
wm_presence <- function(x, field) .Call(C_field, x, field, 2L, NULL, NULL)
wm_unset <- function(x, field) { .Call(C_field, x, field, 3L, NULL, NULL); invisible(x) }
wm_append <- function(x, value) { .Call(C_array, x, 0L, value); invisible(x) }
wm_at <- function(x, index) .Call(C_array, x, 1L, index)
wm_count <- function(x) .Call(C_array, x, 2L, NULL)
wm_to_json <- function(x) .Call(C_json, x)
wm_type <- function(x) .Call(C_info, x)
wm_from_json <- function(constructor, json, config = wm_config()) {
  if (!is.function(constructor)) stop("webmania: nominal constructor required", call. = FALSE)
  # Only exact generated constructors are admitted; never invoke user code.
  id <- .constructor_id(constructor)
  .Call(C_parse, id, json, config)
}
.constructor_id <- function(constructor) {
  for (name in .model_names) if (identical(constructor, get(name, envir = asNamespace("webmania"), inherits = FALSE))) return(.model_ids[[name]])
  stop("webmania: nominal model constructor required", call. = FALSE)
}
wm_clone <- function(x, config = wm_config()) {
  name <- wm_type(x)
  if (identical(name, "Number")) return(wm_number(wm_to_json(x)))
  if (identical(name, "Json")) return(wm_json(wm_to_json(x)))
  if (identical(name, "Map")) return(wm_map(wm_to_json(x)))
  if (startsWith(name, "wm_array_")) {
    constructor <- get(sub("^wm_", "", name), envir = asNamespace("webmania"), inherits = FALSE)
    y <- constructor()
    for (i in seq_len(wm_count(x))) {
      value <- wm_at(x, as.integer(i)); wm_append(y, value)
      if (inherits(value, "webmania_value")) wm_close(value)
    }
    return(y)
  }
  id <- .type_ids[[name]]
  if (is.null(id)) stop("webmania: cloning unavailable for this type", call. = FALSE)
  .Call(C_parse, id, wm_to_json(x), config)
}
wm_set_extension <- function(x, key, value) { .Call(C_extension, x, key, value, 0L); invisible(x) }
wm_get_extension <- function(x, key) .Call(C_extension, x, key, NULL, 1L)
wm_key_at <- function(x, index) .Call(C_extension, x, index, NULL, 2L)
wm_close <- function(x) invisible(.Call(C_close, x))
wm_cancel <- function(task) { .Call(C_task, task, 2L); invisible(task) }
wm_poll <- function(task) .Call(C_task, task, 0L)
wm_await <- function(task) .Call(C_task, task, 1L)
wm_error_kind <- function(error) .Call(C_error, error, 0L)
wm_outcome_unknown <- function(error) .Call(C_error, error, 1L)
wm_error_status <- function(error) .Call(C_error, error, 2L)
wm_error_message <- function(error) .Call(C_error, error, 3L)
wm_reveal_location <- function(x) if (inherits(x, "Error")) .Call(C_error, x, 4L) else .Call(C_file, x, 5L)
wm_reveal_recovery <- function(error) .Call(C_error, error, 5L)
wm_file_status <- function(file) .Call(C_file, file, 0L)
wm_file_media_type <- function(file) .Call(C_file, file, 1L)
wm_file_kind <- function(file) .Call(C_file, file, 2L)
wm_file_bytes <- function(file) .Call(C_file, file, 3L)
wm_is_redirect <- function(file) .Call(C_file, file, 4L)
wm_is_pending <- function(x) .Call(C_pending, x, 3L)
wm_pending_status <- function(pending) .Call(C_pending, pending, 0L)
wm_pending_media_type <- function(pending) .Call(C_pending, pending, 1L)
wm_pending_value <- function(pending) .Call(C_pending, pending, 2L)
print.webmania_sensitive <- function(x, ...) { cat("<webmania [redacted]>\n"); invisible(x) }
format.webmania_sensitive <- function(x, ...) "<webmania [redacted]>"
as.character.webmania_sensitive <- function(x, ...) "<webmania [redacted]>"
str.webmania_sensitive <- function(object, ...) { cat("<webmania [redacted]>\n"); invisible(NULL) }
print.webmania_integer64 <- print.webmania_sensitive
format.webmania_integer64 <- format.webmania_sensitive
as.character.webmania_integer64 <- as.character.webmania_sensitive
str.webmania_integer64 <- str.webmania_sensitive
print.webmania_null <- function(x, ...) { cat("<webmania null>\n"); invisible(x) }
wm_pages <- function(fetch, first, limit, next_id, max_items = 10000L, count = function(page) if (inherits(page, "webmania_value")) wm_count(page) else length(page)) {
  if (!is.function(fetch) || !is.function(next_id) || !is.integer(limit) || length(limit) != 1L || is.na(limit) || limit < 1L || limit > 10000L || !is.integer(max_items) || length(max_items) != 1L || is.na(max_items) || max_items < 1L || max_items > 100000L) stop("webmania: finite helper bounds required", call. = FALSE)
  id <- first; seen <- character(); out <- list(); total <- 0L
  for (i in seq_len(limit)) {
    if (!is.character(id) || length(id) != 1L || is.na(id) || is.object(id) || id %in% seen) stop("webmania: opaque ID or page cycle", call. = FALSE)
    seen <- c(seen, id); page <- fetch(id); out[[i]] <- page
    size <- count(page)
    if (!is.integer(size) || length(size) != 1L || is.na(size) || size < 0L || size > max_items - total) stop("webmania: aggregate limit", call. = FALSE)
    total <- total + size
    id <- next_id(page)
    if (is.null(id)) return(out)
  }
  out
}
wm_poll_until <- function(fetch, finished, attempts, now = function() unname(proc.time()[["elapsed"]]), sleep = Sys.sleep) {
  if (!is.integer(attempts) || length(attempts) != 1L || is.na(attempts) || attempts < 1L || attempts > 10000L || !is.function(fetch) || !is.function(finished) || !is.function(now) || !is.function(sleep)) stop("webmania: finite helper bounds required", call. = FALSE)
  for (i in seq_len(attempts)) {
    result <- fetch(); done <- finished(result)
    if (!is.logical(done) || length(done) != 1L || is.na(done)) stop("webmania: completion predicate required", call. = FALSE)
    if (done || i == attempts) return(result)
    start <- now(); sleep(5); end <- now()
    if (!is.numeric(start) || length(start) != 1L || !is.finite(start) || !is.numeric(end) || length(end) != 1L || !is.finite(end) || end - start < 5) stop("webmania: polling interval below five seconds", call. = FALSE)
  }
}
