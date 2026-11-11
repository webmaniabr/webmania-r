library(webmania)
a<-commandArgs(TRUE);cfg<-wm_config(worker_path=a[[1]],base_url='http://127.0.0.1:9',timeout_ms=2000L);c<-wm_emitter_files_client(NULL,cfg);t<-file_get_nfse_pdf(c,'00000000-0000-4000-8000-000000000001',wm_file_auth('anonymous'));r<-wm_await(t);wm_close(t);wm_close(c);wm_close(cfg)
if(a[[2]]=='pending'){stopifnot(is.null(r$error),inherits(r$value,'NfsePdfPending'),wm_pending_status(r$value)==200L);p<-wm_pending_value(r$value);wm_close(r$value);stopifnot(inherits(p,'api2_emitter_files.NfsePdfPending'),wm_get(p,'msg')=='queued');wm_close(p)}else{stopifnot(is.null(r$value),inherits(r$error,'Error'),wm_error_kind(r$error)==a[[2]]);wm_close(r$error)}
gc()
