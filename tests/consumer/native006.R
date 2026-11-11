library(webmania)
stopifnot(as.character(packageVersion('webmania'))=='0.1.0.9005')
a<-commandArgs(TRUE);url<-a[[1]];worker<-a[[2]];limit<-as.integer(a[[3]]);timeout<-as.integer(a[[4]]);control<-a[[5]];operation<-a[[6]]
baseline<-function() c(fd=length(list.files('/proc/self/fd')),threads=length(list.files('/proc/self/task')),children=length(scan(paste0('/proc/self/task/',Sys.getpid(),'/children'),quiet=TRUE)))
invisible(gc());before<-baseline()
cfg<-wm_config(worker_path=worker,base_url=url,file_origins=url,timeout_ms=timeout,max_response_bytes=limit)
credentials<-wm_company_credentials('InertC6Key','InertC6Secret','InertC6Access','InertC6AccessSecret')
body<-query<-auth<-NULL
uuid<-'00000000-0000-4000-8000-000000000006'
if(operation=='xml'){
 client<-wm_nfe_files_client(NULL,cfg);query<-api1_files_NfeDownloadXmlQuery();auth<-wm_file_auth('document_token','InertC6Document');task<-nfe_download_xml(client,uuid,query,auth)
}else{
 client<-wm_nfe_client(credentials,cfg);body<-api1_fiscal_NfeCancelRequest(uuid=uuid,motivo='Ordinary synthetic C6 cancellation context.');task<-nfe_cancel_document(client,body)
}
if(control=='cancel'){input<-file('stdin','rb');signal<-readBin(input,'raw',1L);close(input);stopifnot(identical(signal,charToRaw('C')));wm_cancel(task)}
r<-wm_await(task)
encode<-function(x){s<-wm_scalar_text(x);on.exit(wm_close(s));wm_to_json(s)}
if(!is.null(r$value)){
 cat('{"ok":true,"kind":',encode(wm_file_kind(r$value)),',"bytes":',length(wm_file_bytes(r$value)),'}',sep='');wm_close(r$value)
}else{
 stopifnot(!is.null(r$error));recovery<-wm_reveal_recovery(r$error);cat('{"ok":false,"kind":',encode(wm_error_kind(r$error)),',"status":',wm_error_status(r$error),',"unknown":',if(wm_outcome_unknown(r$error))'true' else 'false',',"message":',encode(wm_error_message(r$error)),',"recovery":',if(is.null(recovery))'null' else wm_to_json(recovery),'}',sep='');if(!is.null(recovery))wm_close(recovery);wm_close(r$error)
}
wm_close(task);wm_close(client);wm_close(credentials);wm_close(cfg);if(!is.null(body))wm_close(body);if(!is.null(query))wm_close(query);if(!is.null(auth))wm_close(auth)
invisible(gc());stopifnot(identical(before,baseline()))
