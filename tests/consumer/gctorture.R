library(webmania)
args<-commandArgs(trailingOnly=FALSE)
script<-sub('^--file=', '', args[grepl('^--file=', args)])
companion<-file.path(dirname(normalizePath(script)), 'c3_companion.py')
cfg<-wm_config(worker_path=companion,base_url='http://127.0.0.1:9',timeout_ms=2000L);c<-wm_emitter_files_client(NULL,cfg);auth<-wm_file_auth('anonymous')
gctorture2(as.integer(Sys.getenv('WM_GC_STEP','1')))
for(i in 1:3){t<-file_get_nfse_pdf(c,'00000000-0000-4000-8000-000000000001',auth);r<-wm_await(t);stopifnot(is.null(r$error));v<-r$value;x<-wm_pending_value(v);y<-wm_pending_value(v);wm_close(t);wm_close(v);wm_set(x,'msg','changed');stopifnot(!identical(wm_get(x,'msg'),wm_get(y,'msg')));wm_to_json(y);wm_close(x);wm_close(y)}
gctorture(FALSE);wm_close(c);wm_close(auth);wm_close(cfg);gc();cat('3 Pending handoff/copy/close GC torture cycles PASS\n')
