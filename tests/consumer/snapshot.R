library(webmania)
a<-commandArgs(TRUE);cfg<-wm_config(worker_path=a[[1]],base_url=a[[2]],timeout_ms=2000L);c<-wm_nfe_client(wm_company_credentials('s','s','s','s'),cfg);body<-api1_fiscal_NfeCancelRequest();returned<-FALSE
r<-try({task<-nfe_cancel_document(c,body);returned<-TRUE;wm_close(task)},silent=TRUE);stopifnot(inherits(r,'try-error'),!returned);wm_close(body);wm_close(c);wm_close(cfg);gc()
