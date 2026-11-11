library(webmania)
a<-commandArgs(TRUE);base<-a[[1]];worker<-a[[2]];ca<-a[[3]];want<-a[[4]];kind<-a[[5]];path<-a[[6]]
cfg<-wm_config(worker_path=worker,base_url=base,ca_pem=paste(readLines(ca),collapse='\n'),file_origins=base,timeout_ms=10000L)
client<-wm_nfe_files_client(NULL,cfg);task<-fiscal_download_report(client,'00000000-0000-4000-8000-000000000001',wm_file_auth('public_report'));result<-wm_await(task)
wm_close(task);wm_close(client);wm_close(cfg)
if(want=='file'){
 stopifnot(is.null(result$error),!is.null(result$value),wm_file_kind(result$value)==kind,wm_file_status(result$value)==200L)
 exact<-readBin(path,'raw',n=file.info(path)$size);bytes<-wm_file_bytes(result$value);copy<-wm_file_bytes(result$value);stopifnot(identical(bytes,exact),identical(copy,exact))
 if(length(bytes)){bytes[[1]]<-as.raw(bitwXor(as.integer(bytes[[1]]),255L));stopifnot(identical(copy,exact))}
 wm_close(result$value);invisible(gc());stopifnot(identical(copy,exact))
}else{stopifnot(is.null(result$value),!is.null(result$error),wm_error_kind(result$error)==want);wm_close(result$error)}
invisible(gc());cat('R file gate',want,'owned copied bytes PASS\n')
