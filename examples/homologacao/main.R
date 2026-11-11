# Optional homologation run (ambiente 2) of the installed R SDK: read-only
# checks, then NF-e and NFS-e issue -> consult -> files -> cancel -> consult.
#
# Configuration comes only from environment variables (README, "Teste em
# homologação"). Without WEBMANIA_LIVE=1 it prints {"result":"blocked"} and
# exits 77 before any network work. Output is one JSON line per step with a
# short reference (sha256 prefix) instead of identifiers; files appear as size,
# sha256 and detected format. Credentials, payloads and bytes are never
# printed. A mutation is never resent: an unknown outcome stops the run with
# exit code 1 and stays in the ledger for reconciliation by consult. Consults
# are repeated with backoff while a document is processing (after an NFS-e
# cancellation also while processando_cancelamento); only cancelado confirms a
# cancellation, and one still pending when the consults run out is ledgered as
# unknown.
# Exit codes: 0 all steps succeeded, 1 a step failed or is unknown, 77 not
# enabled or not configured.
quoted <- function(text) {
  text <- enc2utf8(as.character(text))
  text <- gsub("\\\\", "\\\\\\\\", text)
  text <- gsub("\"", "\\\\\"", text)
  paste0("\"", text, "\"")
}
blocked <- function(reason) {
  cat("{\"result\":\"blocked\",\"reason\":", quoted(reason), "}\n", sep = "")
  quit(save = "no", status = 77L, runLast = FALSE)
}
if (!identical(Sys.getenv("WEBMANIA_LIVE"), "1")) blocked("WEBMANIA_LIVE is not 1")
env <- function(name) { v <- Sys.getenv(name, unset = ""); if (nzchar(v)) v else NULL }

# SHA-256 (FIPS 180-4) on doubles kept below 2^32, for references and digests.
sha256 <- function(raw_bytes) {
  k <- c(0x428a2f98, 0x71374491, 0xb5c0fbcf, 0xe9b5dba5, 0x3956c25b, 0x59f111f1, 0x923f82a4, 0xab1c5ed5,
         0xd807aa98, 0x12835b01, 0x243185be, 0x550c7dc3, 0x72be5d74, 0x80deb1fe, 0x9bdc06a7, 0xc19bf174,
         0xe49b69c1, 0xefbe4786, 0x0fc19dc6, 0x240ca1cc, 0x2de92c6f, 0x4a7484aa, 0x5cb0a9dc, 0x76f988da,
         0x983e5152, 0xa831c66d, 0xb00327c8, 0xbf597fc7, 0xc6e00bf3, 0xd5a79147, 0x06ca6351, 0x14292967,
         0x27b70a85, 0x2e1b2138, 0x4d2c6dfc, 0x53380d13, 0x650a7354, 0x766a0abb, 0x81c2c92e, 0x92722c85,
         0xa2bfe8a1, 0xa81a664b, 0xc24b8b70, 0xc76c51a3, 0xd192e819, 0xd6990624, 0xf40e3585, 0x106aa070,
         0x19a4c116, 0x1e376c08, 0x2748774c, 0x34b0bcb5, 0x391c0cb3, 0x4ed8aa4a, 0x5b9cca4f, 0x682e6ff3,
         0x748f82ee, 0x78a5636f, 0x84c87814, 0x8cc70208, 0x90befffa, 0xa4506ceb, 0xbef9a3f7, 0xc67178f2)
  M <- 4294967296
  add <- function(...) sum(...) %% M
  bits32 <- function(x) as.logical(intToBits(as.integer(if (x >= 2^31) x - M else x)))
  from_bits <- function(b) { v <- sum(2^(which(b) - 1)); v }
  xor3 <- function(a, b, c) from_bits(xor(xor(bits32(a), bits32(b)), bits32(c)))
  ror <- function(x, n) ((x %/% 2^n) + (x %% 2^n) * 2^(32 - n)) %% M
  shr <- function(x, n) x %/% 2^n
  band <- function(a, b) from_bits(bits32(a) & bits32(b))
  bnot <- function(a) M - 1 - a
  len <- length(raw_bytes)
  bytes <- c(as.integer(raw_bytes), 128L, rep(0L, (55 - len) %% 64))
  bitlen <- len * 8
  bytes <- c(bytes, as.integer(rev(sapply(0:7, function(i) (bitlen %/% 256^i) %% 256))))
  h <- c(0x6a09e667, 0xbb67ae85, 0x3c6ef372, 0xa54ff53a, 0x510e527f, 0x9b05688c, 0x1f83d9ab, 0x5be0cd19)
  for (off in seq(1, length(bytes), by = 64)) {
    chunk <- bytes[off:(off + 63)]
    w <- numeric(64)
    for (i in 0:15) w[i + 1] <- sum(chunk[(4 * i + 1):(4 * i + 4)] * c(2^24, 2^16, 2^8, 1))
    for (i in 16:63) {
      s0 <- xor3(ror(w[i - 14], 7), ror(w[i - 14], 18), shr(w[i - 14], 3))
      s1 <- xor3(ror(w[i - 1], 17), ror(w[i - 1], 19), shr(w[i - 1], 10))
      w[i + 1] <- add(w[i - 15], s0, w[i - 6], s1)
    }
    v <- h
    for (i in 1:64) {
      S1 <- xor3(ror(v[5], 6), ror(v[5], 11), ror(v[5], 25))
      ch <- from_bits(xor(bits32(v[5]) & bits32(v[6]), bits32(bnot(v[5])) & bits32(v[7])))
      t1 <- add(v[8], S1, ch, k[i], w[i])
      S0 <- xor3(ror(v[1], 2), ror(v[1], 13), ror(v[1], 22))
      a <- bits32(v[1]); b <- bits32(v[2]); c <- bits32(v[3])
      maj <- from_bits(xor(xor(a & b, a & c), b & c))
      t2 <- add(S0, maj)
      v <- c(add(t1, t2), v[1:3], add(v[4], t1), v[5:7])
    }
    h <- (h + v) %% M
  }
  paste(sprintf("%04x%04x", as.integer(h %/% 65536), as.integer(h %% 65536)), collapse = "")
}
ref <- function(identifier) substr(sha256(charToRaw(enc2utf8(identifier))), 1, 12)

library(webmania)
failed <- FALSE
ledger <- NULL
line <- function(step, op, ok, http = NULL, outcome, kind = NULL, identifier = NULL, extra = "") {
  cat("{\"step\":", quoted(step), ",\"operation\":", quoted(op), ",\"ok\":", if (ok) "true" else "false",
      ",\"http_status\":", if (!is.null(http) && length(http) == 1L && !is.na(http) && http > 0) as.character(http) else "null",
      ",\"outcome\":", quoted(outcome), ",\"kind\":", if (is.null(kind)) "null" else quoted(kind),
      ",\"ref\":", if (is.null(identifier) || !nzchar(identifier)) "null" else quoted(ref(identifier)), extra, "}\n", sep = "")
  if (!ok) failed <<- TRUE
}
note <- function(step, op, ok, outcome, identifier = NULL) line(step, op, ok, NULL, outcome, NULL, identifier)
# Records an SDK failure; returns TRUE when the outcome is unknown (stop).
fail <- function(step, op, error, identifier = NULL) {
  unknown <- !is.null(error) && isTRUE(wm_outcome_unknown(error))
  line(step, op, FALSE, if (is.null(error)) NULL else wm_error_status(error), if (unknown) "unknown" else "failed",
       if (is.null(error)) "local" else wm_error_kind(error), identifier)
  if (!is.null(error)) wm_close(error)
  unknown
}
file_line <- function(step, op, file, identifier) {
  bytes <- wm_file_bytes(file)
  if (is.null(bytes)) bytes <- raw(0)
  line(step, op, TRUE, wm_file_status(file), "success", wm_file_kind(file), identifier,
       paste0(",\"size\":", length(bytes), ",\"sha256\":", quoted(sha256(bytes))))
}
record <- function(model, identifier, status, op) {
  if (is.null(ledger)) return(invisible())
  cat("{\"model\":", quoted(model), ",\"identifier\":", quoted(identifier), ",\"status\":", quoted(if (is.null(status)) "" else status),
      ",\"operation\":", quoted(op), "}\n", sep = "", file = ledger)
  flush(ledger)
}
call_task <- function(task) { result <- wm_await(task); wm_close(task); result }

scope <- if (is.null(env("WEBMANIA_LIVE_SCOPE"))) "readonly" else env("WEBMANIA_LIVE_SCOPE")
do_nfe <- scope %in% c("nfe", "all"); do_nfse <- scope %in% c("nfse", "all")
if (!do_nfe && !do_nfse && !identical(scope, "readonly")) blocked("unsupported WEBMANIA_LIVE_SCOPE")
# Most consults of one poll; the optional WEBMANIA_LIVE_POLL_ATTEMPTS can only lower it.
max_attempts <- 20L
attempts <- max_attempts
if (!is.null(env("WEBMANIA_LIVE_POLL_ATTEMPTS"))) {
  text <- env("WEBMANIA_LIVE_POLL_ATTEMPTS")
  attempts <- if (grepl("^[0-9]{1,2}$", text)) as.integer(text) else 0L
  if (attempts < 1L || attempts > max_attempts) blocked(paste0("WEBMANIA_LIVE_POLL_ATTEMPTS must be 1 to ", max_attempts))
}
api1 <- if (is.null(env("WEBMANIA_API1_BASE_URL"))) "https://webmania.com.br/api" else env("WEBMANIA_API1_BASE_URL")
files_base <- if (is.null(env("WEBMANIA_FILES_BASE_URL"))) "https://nfe.webmania.com.br" else env("WEBMANIA_FILES_BASE_URL")
api2 <- if (is.null(env("WEBMANIA_API2_BASE_URL"))) "https://api.webmania.com.br" else env("WEBMANIA_API2_BASE_URL")
host_of <- function(origin) tolower(sub("[/:?#].*$", "", sub("^[A-Za-z][A-Za-z0-9+.-]*://", "", origin)))
origin_only <- function(base) sub("^([A-Za-z][A-Za-z0-9+.-]*://[^/]*).*$", "\\1", base)
# The allow list is required: without it no origin is trusted (fail closed, before any credential).
allowed <- env("WEBMANIA_LIVE_ALLOWED_HOSTS")
hosts <- if (is.null(allowed)) character() else tolower(trimws(strsplit(allowed, ",", fixed = TRUE)[[1]]))
hosts <- hosts[nzchar(hosts)]
if (!length(hosts)) blocked("WEBMANIA_LIVE_ALLOWED_HOSTS not configured")
for (origin in c(api1, files_base, api2)) if (!(host_of(origin) %in% hosts)) blocked("configured origin outside WEBMANIA_LIVE_ALLOWED_HOSTS")
config <- function(base, files) {
  cfg <- try(wm_config(base_url = base, file_origins = if (files) origin_only(base) else character(), timeout_ms = 60000L), silent = TRUE)
  if (inherits(cfg, "try-error")) blocked("invalid base URL configuration")
  cfg
}
c1 <- config(api1, FALSE); cf <- config(files_base, TRUE); c2 <- config(api2, FALSE); c2f <- config(api2, TRUE)
payload <- function(variable) {
  path <- env(variable)
  if (is.null(path)) blocked("payload not configured")
  text <- tryCatch(paste(readLines(path, warn = FALSE, encoding = "UTF-8"), collapse = "\n"), error = function(e) NULL)
  if (is.null(text)) blocked("payload unreadable")
  # The decoded top-level "ambiente" must be the JSON integer 2 (homologation). The SDK's own
  # parser decodes escapes, so this is the value the request will carry, not a byte pattern.
  map <- tryCatch(wm_map(text), error = function(e) NULL)
  ambiente <- if (is.null(map)) NULL else tryCatch(wm_get_extension(map, "ambiente"), error = function(e) NULL)
  homologation <- !is.null(ambiente) && identical(wm_to_json(ambiente), "2")
  if (!is.null(ambiente)) wm_close(ambiente)
  if (!is.null(map)) wm_close(map)
  if (!homologation) blocked("payload ambiente must be 2")
  text
}
nfe_json <- if (do_nfe) payload("WEBMANIA_LIVE_NFE_PAYLOAD") else NULL
nfse_json <- if (do_nfse) payload("WEBMANIA_LIVE_NFSE_PAYLOAD") else NULL
# An unknown outcome is recorded only in the ledger: it must be writable before any mutation.
ledger_path <- env("WEBMANIA_LIVE_LEDGER")
if ((do_nfe || do_nfse) && is.null(ledger_path)) blocked("WEBMANIA_LIVE_LEDGER not configured")
if (!is.null(ledger_path)) {
  Sys.umask("077")
  ledger <- tryCatch(file(ledger_path, open = "a"), error = function(e) NULL, warning = function(w) NULL)
  if (is.null(ledger)) blocked("ledger unwritable")
}
creds <-c(env("WEBMANIA_CONSUMER_KEY"), env("WEBMANIA_CONSUMER_SECRET"), env("WEBMANIA_ACCESS_TOKEN"), env("WEBMANIA_ACCESS_TOKEN_SECRET"))
if (length(creds) != 4L) blocked("company credentials not configured")
if (is.null(env("WEBMANIA_ISSUER_TOKEN"))) blocked("issuer token not configured")
company <- wm_company_credentials(creds[[1]], creds[[2]], creds[[3]], creds[[4]])
issuer <- wm_issuer_token(env("WEBMANIA_ISSUER_TOKEN"))
nfe <- wm_nfe_client(company, c1); nfe_files <- wm_nfe_files_client(company, cf)
emitter <- wm_emitter_client(issuer, c2); emitter_files <- wm_emitter_files_client(issuer, c2f)
# Statuses of a document that is still being processed; after an NFS-e cancellation the
# document can also stay in processando_cancelamento until a later consult completes it.
processing <- c("processando", "processamento", "pendente")
cancelling <- c(processing, "processando_cancelamento")
pending <- function(status, set) is.null(status) || !nzchar(status) || status %in% set
# Consults while the status is empty or pending, at most `attempts` times, waiting 1, 2, 4, 8
# and then 10 seconds between consults. Only consults are repeated, never a mutation.
# `consult` returns list(status = ...) or list(error = ...); the last status and the error
# that ended the poll, if any, are returned.
poll <- function(set, consult) {
  status <- NULL
  for (attempt in seq_len(attempts)) {
    polled <- consult()
    if (!is.null(polled$error)) return(list(status = status, error = polled$error))
    status <- polled$status
    if (!pending(status, set) || attempt == attempts) break
    Sys.sleep(min(10, 2^(attempt - 1)))
  }
  list(status = status)
}
# The consult after a cancellation: only cancelado is success. A document still pending when
# the consults run out, or a consult that failed, leaves the cancellation unknown: it is
# ledgered as unknown for reconciliation by consult, and the cancel is never resent.
cancel_settled <- function(model, op, cancel_op, set, uuid, polled) {
  step <- paste0(model, ".consult_cancelled")
  status <- polled$status
  if (!is.null(polled$error)) {
    fail(step, op, polled$error, uuid)
    record(model, uuid, "unknown", cancel_op)
  } else if (identical(status, "cancelado")) {
    record(model, uuid, status, op)
    note(step, op, TRUE, "success", uuid)
  } else if (pending(status, set)) {
    if (!is.null(status) && nzchar(status)) record(model, uuid, status, op)
    record(model, uuid, "unknown", cancel_op)
    note(step, op, FALSE, "unknown", uuid)
  } else {
    record(model, uuid, status, op)
    note(step, op, FALSE, "not_cancelled", uuid)
  }
}

for (step in list(
  list("readonly.sefaz_status", "nfeGetSefazStatus", function() nfe_get_sefaz_status(nfe)),
  list("readonly.certificate", "nfeGetCertificateValidity", function() nfe_get_certificate_validity(nfe)),
  list("readonly.tax_classes", "nfeListTaxClasses", function() nfe_list_tax_classes(nfe)),
  list("readonly.nfse_provider", "emitterGetNfseProviderStatus", function()
    emitter_get_nfse_provider_status(emitter, wm_from_json(api2_emitter_reads_EmitterGetNfseProviderStatusQuery, "{}", c2))))) {
  result <- call_task(step[[3]]())
  if (is.null(result$error)) { note(step[[1]], step[[2]], TRUE, "success"); wm_close(result$value) } else fail(step[[1]], step[[2]], result$error)
}

nfe_status <- function(uuid) {
  query <- wm_from_json(api1_fiscal_NfeGetDocumentQuery, paste0("{\"uuid\":", quoted(uuid), "}"), c1)
  result <- call_task(nfe_get_document(nfe, query))
  wm_close(query)
  if (!is.null(result$error)) return(list(error = result$error))
  doc <- try(wm_get(result$value, "NfeDocument", c1), silent = TRUE)
  if (inherits(doc, "try-error")) {
    list_value <- wm_get(result$value, "List", c1)
    doc <- if (wm_count(list_value) > 0L) wm_at(list_value, 1L) else NULL
  }
  status <- if (is.null(doc)) NULL else wm_get(doc, "status")
  wm_close(result$value)
  list(status = status)
}

# Returns FALSE when an unknown outcome stopped the run.
nfe_cycle <- function(json) {
  body <- try(wm_from_json(api1_fiscal_NfeIssueRequest, json, c1), silent = TRUE)
  if (inherits(body, "try-error")) { note("nfe.issue", "nfeIssueDocument", FALSE, "invalid_payload"); return(TRUE) }
  issued <- call_task(nfe_issue_document(nfe, body)); wm_close(body)
  if (!is.null(issued$error)) {
    if (fail("nfe.issue", "nfeIssueDocument", issued$error)) { record("nfe", "", "unknown", "nfeIssueDocument"); return(FALSE) }
    return(TRUE)
  }
  doc <- try(wm_get(issued$value, "NfeDocument", c1), silent = TRUE)
  uuid <- if (inherits(doc, "try-error")) NULL else wm_get(doc, "uuid")
  if (!is.null(uuid)) record("nfe", uuid, wm_get(doc, "status"), "nfeIssueDocument")
  wm_close(issued$value)
  if (is.null(uuid)) { note("nfe.issue", "nfeIssueDocument", FALSE, "not_a_document"); return(TRUE) }
  note("nfe.issue", "nfeIssueDocument", TRUE, "success", uuid)
  polled <- poll(processing, function() nfe_status(uuid))
  if (!is.null(polled$error) && fail("nfe.consult", "nfeGetDocument", polled$error, uuid)) return(FALSE)
  status <- polled$status
  record("nfe", uuid, status, "nfeGetDocument")
  if (!identical(status, "aprovado")) {
    # Still processing: reconciliation consults it later, never a blind cancel or
    # resend. Rejected or denied documents need no cancellation.
    note("nfe.consult", "nfeGetDocument", FALSE, "not_approved", uuid)
    return(TRUE)
  }
  note("nfe.consult", "nfeGetDocument", TRUE, "success", uuid)
  lookup <- wm_from_json(api1_fiscal_NfeLookupRequest, paste0("{\"uuid\":", quoted(uuid), "}"), c1)
  q <- call_task(nfe_query_document(nfe, lookup)); wm_close(lookup)
  if (is.null(q$error)) { note("nfe.query", "nfeQueryDocument", TRUE, "success", uuid); wm_close(q$value) } else fail("nfe.query", "nfeQueryDocument", q$error, uuid)
  auth <- wm_file_auth("company")
  download <- function(step, op, task) {
    r <- call_task(task)
    if (is.null(r$error)) { file_line(step, op, r$value, uuid); wm_close(r$value) } else fail(step, op, r$error, uuid)
  }
  download("nfe.danfe", "nfeDownloadDanfe", nfe_download_danfe(nfe_files, uuid, auth))
  download("nfe.danfe_simple", "nfeDownloadSimpleDanfe", nfe_download_simple_danfe(nfe_files, uuid, auth))
  download("nfe.xml", "nfeDownloadXml", nfe_download_xml(nfe_files, uuid, wm_from_json(api1_files_NfeDownloadXmlQuery, "{}", cf), auth))
  # Cancellation is attempted for every approved document, even after a failed read.
  cancel <- wm_from_json(api1_fiscal_NfeCancelRequest, paste0("{\"uuid\":", quoted(uuid), ",\"motivo\":\"Cancelamento de teste em homologacao\"}"), c1)
  cancelled <- call_task(nfe_cancel_document(nfe, cancel)); wm_close(cancel)
  if (!is.null(cancelled$error)) {
    if (fail("nfe.cancel", "nfeCancelDocument", cancelled$error, uuid)) { record("nfe", uuid, "unknown", "nfeCancelDocument"); return(FALSE) }
    return(TRUE)
  }
  record("nfe", uuid, wm_get(cancelled$value, "status"), "nfeCancelDocument"); wm_close(cancelled$value)
  note("nfe.cancel", "nfeCancelDocument", TRUE, "success", uuid)
  cancel_settled("nfe", "nfeGetDocument", "nfeCancelDocument", processing, uuid, poll(processing, function() nfe_status(uuid)))
  download("nfe.cancellation_xml", "nfeDownloadCancellationXml",
           nfe_download_cancellation_xml(nfe_files, uuid, wm_from_json(api1_files_NfeDownloadCancellationXmlQuery, "{}", cf), auth))
  TRUE
}

# Returns FALSE when an unknown outcome stopped the run.
nfse_cycle <- function(json) {
  body <- try(wm_from_json(api2_nfse_issuance_EmitterIssueNfsePayload, json, c2), silent = TRUE)
  if (inherits(body, "try-error")) { note("nfse.issue", "emitterIssueNfse", FALSE, "invalid_payload"); return(TRUE) }
  issued <- call_task(emitter_issue_nfse(emitter, body)); wm_close(body)
  if (!is.null(issued$error)) {
    if (fail("nfse.issue", "emitterIssueNfse", issued$error)) { record("nfse", "", "unknown", "emitterIssueNfse"); return(FALSE) }
    return(TRUE)
  }
  uuid <- wm_get(issued$value, "uuid")
  if (!is.null(uuid)) record("nfse", uuid, wm_get(issued$value, "status"), "emitterIssueNfse")
  wm_close(issued$value)
  if (is.null(uuid)) { note("nfse.issue", "emitterIssueNfse", FALSE, "not_a_document"); return(TRUE) }
  note("nfse.issue", "emitterIssueNfse", TRUE, "success", uuid)
  nfse_status <- function() {
    r <- call_task(emitter_get_nfse(emitter, uuid))
    if (!is.null(r$error)) return(list(error = r$error))
    status <- wm_get(r$value, "status"); wm_close(r$value)
    list(status = status)
  }
  polled <- poll(processing, nfse_status)
  if (!is.null(polled$error) && fail("nfse.consult", "emitterGetNfse", polled$error, uuid)) return(FALSE)
  status <- polled$status
  record("nfse", uuid, status, "emitterGetNfse")
  if (!identical(status, "aprovado")) { note("nfse.consult", "emitterGetNfse", FALSE, "not_approved", uuid); return(TRUE) }
  note("nfse.consult", "emitterGetNfse", TRUE, "success", uuid)
  auth <- wm_file_auth("issuer")
  x <- call_task(file_get_nfse_xml(emitter_files, uuid, auth))
  if (is.null(x$error)) { file_line("nfse.xml", "fileGetNfseXml", x$value, uuid); wm_close(x$value) } else fail("nfse.xml", "fileGetNfseXml", x$error, uuid)
  p <- call_task(file_get_nfse_pdf(emitter_files, uuid, auth))
  if (is.null(p$error)) {
    if (identical(wm_file_kind(p$value), "NfsePdfPending") || isTRUE(wm_is_redirect(p$value))) note("nfse.pdf", "fileGetNfsePdf", TRUE, "pending_or_redirect", uuid)
    else file_line("nfse.pdf", "fileGetNfsePdf", p$value, uuid)
    wm_close(p$value)
  } else fail("nfse.pdf", "fileGetNfsePdf", p$error, uuid)
  rps <- call_task(file_get_nfse_rps_pdf(emitter_files, uuid, auth))
  if (is.null(rps$error)) { file_line("nfse.rps_pdf", "fileGetNfseRpsPdf", rps$value, uuid); wm_close(rps$value) } else fail("nfse.rps_pdf", "fileGetNfseRpsPdf", rps$error, uuid)
  cancel <- wm_from_json(api2_nfse_issuance_EmitterCancelNfsePayload, paste0("{\"uuid\":", quoted(uuid), ",\"motivo\":1,\"justificativa\":\"Cancelamento de teste em homologacao\"}"), c2)
  cancelled <- call_task(emitter_cancel_nfse(emitter, cancel)); wm_close(cancel)
  if (!is.null(cancelled$error)) {
    if (fail("nfse.cancel", "emitterCancelNfse", cancelled$error, uuid)) { record("nfse", uuid, "unknown", "emitterCancelNfse"); return(FALSE) }
    return(TRUE)
  }
  record("nfse", uuid, wm_get(cancelled$value, "status"), "emitterCancelNfse"); wm_close(cancelled$value)
  note("nfse.cancel", "emitterCancelNfse", TRUE, "success", uuid)
  # Consulted again while processando_cancelamento; the cancel itself is never resent.
  cancel_settled("nfse", "emitterGetNfse", "emitterCancelNfse", cancelling, uuid, poll(cancelling, nfse_status))
  TRUE
}

stop_run <- FALSE
if (!is.null(nfe_json) && !nfe_cycle(nfe_json)) stop_run <- TRUE
if (!stop_run && !is.null(nfse_json) && !nfse_cycle(nfse_json)) stop_run <- TRUE
if (!is.null(ledger)) close(ledger)
quit(save = "no", status = if (stop_run || failed) 1L else 0L, runLast = FALSE)
