library(webmania)
a<-commandArgs(TRUE);worker<-a[[1]];mode<-a[[2]]
config<-wm_config(worker_path=worker,base_url="http://127.0.0.1:9",timeout_ms=if(mode=="deadline")50L else 5000L)
creds<-wm_company_credentials("secret-marker","s","t","u");client<-wm_nfe_client(creds,config);wm_close(creds);wm_close(config)
baseline<-function() c(fd=length(list.files("/proc/self/fd")),threads=length(list.files("/proc/self/task")),children=length(scan(paste0("/proc/self/task/",Sys.getpid(),"/children"),quiet=TRUE)))
gc();before<-baseline()
for(i in seq_len(if(mode=="interrupt")1L else 20L)) {
 task<-nfe_get_sefaz_status(client)
 stopifnot(!wm_poll(task)$ready)
 if(mode=="interrupt") {cat("READY\n",file=stderr());flush(stderr())}
 if(mode=="cancel")wm_cancel(task)
 if(mode=="task_close"){r<-wm_close(task);stopifnot(r$ready,is.null(r$value),!is.null(r$error));wm_close(r$error);wm_close(task);stopifnot(identical(before,baseline()));next}
 if(mode=="close")wm_close(client)
 if(mode=="gc") {rm(task);gc();stopifnot(identical(before,baseline()));next}
 r<-wm_await(task);stopifnot(r$ready,is.null(r$value),!is.null(r$error),!wm_outcome_unknown(r$error))
 if(mode=="interrupt")stopifnot(r$interrupted)
 if(mode=="deadline")stopifnot(wm_error_kind(r$error)=="timeout")
 if(mode=="cancel")stopifnot(wm_error_kind(r$error)=="cancelled")
 wm_close(r$error);wm_close(task);stopifnot(identical(before,baseline()))
 if(mode=="close")break
}
wm_close(client);gc();stopifnot(identical(before,baseline()));cat(mode,"task/thread/fd/child baseline PASS\n")
