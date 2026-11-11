library(webmania)
a <- commandArgs(TRUE);mode<-a[[1]];base<-a[[2]];worker<-a[[3]];ca<-a[[4]];flag<-if(length(a)>4)a[[5]] else NULL
cfg<-wm_config(worker_path=worker,base_url=base,ca_pem=paste(readLines(ca),collapse="\n"),file_origins=base,timeout_ms=3000L)
company<-function() wm_nfe_client(wm_company_credentials("synthetic","private-marker","synthetic","private-marker"),cfg)
if(mode %in% c("mutation_cancel","mutation_interrupt","mutation_close","mutation_task_close","mutation_deadline")) {
 c<-company();body<-api1_fiscal_NfeCancelRequest(uuid="00000000-0000-4000-8000-000000000001",motivo="Synthetic cancellation fixture only")
 task<-nfe_cancel_document(c,body);wm_close(body)
 start<-proc.time()[["elapsed"]];while(!file.exists(flag)){stopifnot(proc.time()[["elapsed"]]-start<2);Sys.sleep(.005)}
 if(mode=="mutation_cancel") wm_cancel(task)
 if(mode=="mutation_close") wm_close(c)
 result<-if(mode=="mutation_task_close")wm_close(task) else wm_await(task);stopifnot(is.null(result$value),!is.null(result$error),wm_outcome_unknown(result$error))
 if(mode=="mutation_interrupt")stopifnot(result$interrupted)
 recovery<-wm_reveal_recovery(result$error);stopifnot(!is.null(recovery),grepl("00000000",wm_to_json(recovery)))
 stopifnot(!grepl("00000000",wm_error_message(result$error)));wm_close(recovery);wm_close(result$error);wm_close(task);wm_close(c)
 cat(mode,"Unknown/recovery PASS\n");quit(status=0)
}
if(mode %in% c("request8","request8_over")) {
 c<-company();body<-api1_fiscal_NfeLookupRequest(uuid="00000000-0000-4000-8000-000000000001")
 wm_set_extension(body,"padding",wm_json('""'));size<-8L*1024L*1024L+if(mode=="request8_over")1L else 0L
 pad<-paste(rep("a",size-nchar(wm_to_json(body),type="bytes")),collapse="");wm_set_extension(body,"padding",wm_json(paste0('"',pad,'"')));stopifnot(nchar(wm_to_json(body),type="bytes")==size)
 task<-try(nfe_query_document(c,body),silent=TRUE)
 if(mode=="request8_over"){if(!inherits(task,"try-error")){r<-wm_await(task);stopifnot(is.null(r$value),!is.null(r$error));wm_close(task)}}else{stopifnot(!inherits(task,"try-error"));r<-wm_await(task);stopifnot(is.null(r$error),!is.null(r$value));wm_close(task)}
 wm_close(body);wm_close(c);cat(mode,"PASS\n");quit(status=0)
}
if(mode=="json16") {c<-company();task<-nfe_get_sefaz_status(c);r<-wm_await(task);stopifnot(is.null(r$error),nchar(wm_to_json(r$value),type="bytes")==16L*1024L*1024L)} else if(mode=="file16") {c<-wm_monitor_client(wm_monitor_token("synthetic"),cfg);task<-monitor_download_report(c,"00000000-0000-4000-8000-000000000001");r<-wm_await(task);stopifnot(is.null(r$error));bytes<-wm_file_bytes(r$value);stopifnot(length(bytes)==16L*1024L*1024L,identical(bytes[4097:4098],as.raw(c(0,255))))} else if(mode=="redirect") {c<-wm_emitter_files_client(NULL,cfg);task<-file_get_nfse_pdf(c,"00000000-0000-4000-8000-000000000001",wm_file_auth("anonymous"));r<-wm_await(task);stopifnot(is.null(r$error),wm_is_redirect(r$value),grepl("private-marker",wm_reveal_location(r$value)),!grepl("private",format(r$value)));stopifnot(inherits(try(wm_file_bytes(r$value),silent=TRUE),"try-error"))} else if(mode=="legacy_document") {c<-wm_nfe_files_client(NULL,cfg);task<-nfe_download_danfe(c,"00000000-0000-4000-8000-000000000001",wm_file_auth("document_token","synthetic-document"));rm(c);gc();r<-wm_await(task);stopifnot(is.null(r$error),length(wm_file_bytes(r$value))>0)} else if(mode %in% c("issuer_document","anonymous")) {c<-wm_emitter_files_client(NULL,cfg);task<-file_get_cte_xml(c,"00000000-0000-4000-8000-000000000001",if(mode=="anonymous")wm_file_auth("anonymous") else wm_file_auth("document_token","synthetic-document"));rm(c);gc();r<-wm_await(task);stopifnot(is.null(r$error),length(wm_file_bytes(r$value))>0)} else if(mode=="wrong_auth") {c<-wm_emitter_files_client(NULL,cfg);task<-file_get_mdfe_xml(c,"00000000-0000-4000-8000-000000000001",wm_file_auth("anonymous"));r<-wm_await(task);stopifnot(is.null(r$value),wm_error_kind(r$error)=="capability")} else if(mode=="bad_tls") {c<-company();task<-nfe_get_sefaz_status(c);r<-wm_await(task);stopifnot(is.null(r$value),wm_error_kind(r$error)=="tls")} else stop("unknown mode")
wm_close(task);cat(mode,"PASS\n")
