library(webmania)
n<-0L;check<-function(x){stopifnot(x);n<<-n+1L};reject<-function(expr)check(inherits(try(force(expr),silent=TRUE),'try-error'))
cfg<-wm_config();ctor<-api2_nfcom_issuance_NfcomDocumentedGroup2114;g<-ctor()
check(wm_type(g)=='api2_nfcom_issuance.NfcomDocumentedGroup2114')
fields<-c('substituicao_chave_nfcom_substituida','substituicao_motivo','substituicao_nf_referenciada');wire<-c('substituicao.chave_nfcom_substituida','substituicao.motivo','substituicao.nf_referenciada.*')
for(i in seq_along(fields)){check(wm_presence(g,fields[[i]])=='missing');reject(wm_set_extension(g,wire[[i]],wm_json('null')))}
text<-wm_text(as.raw(c(107,101,121,0,195,161)));mapkey<-wm_text(as.raw(c(107,0,42)));m<-wm_map();wm_set_extension(m,'modelo',wm_json('21'));wm_set_extension(m,mapkey,wm_json('"v\\u0000*"'))
wm_set(g,fields[[1]],text);wm_set(g,fields[[2]],'01');wm_set(g,fields[[3]],m);wm_close(m)
for(field in fields){check(wm_presence(g,field)=='present');wm_set_extension(g,field,wm_json('false'))}
encoded<-wm_to_json(g);for(name in wire)check(grepl(paste0('"',name,'"'),encoded,fixed=TRUE))
clone<-wm_from_json(ctor,encoded,cfg);check(wm_type(clone)==wm_type(g));wm_close(g)
check(identical(unclass(wm_get(clone,fields[[1]])),unclass(text)));check(wm_get(clone,fields[[2]])=='01')
v<-wm_get(clone,fields[[3]]);check(wm_type(v)=='Map');check(wm_to_json(wm_get_extension(v,'modelo'))=='21');check(wm_to_json(wm_get_extension(v,mapkey))=='"v\\u0000*"');wm_close(v)
for(field in fields)check(wm_to_json(wm_get_extension(clone,field))=='false')
other<-api1_fiscal_TaxClassListItem();reject(wm_set(clone,fields[[3]],other));reject(wm_set(other,fields[[2]],'01'));wm_close(other)
for(i in seq_along(fields)){wm_unset(clone,fields[[i]]);check(wm_presence(clone,fields[[i]])=='missing');reject(wm_set_extension(clone,wire[[i]],wm_json('null')))}
reject(wm_from_json(ctor,'{"substituicao.motivo":false}',cfg));check(as.character(packageVersion('webmania'))=='0.1.0.9005')
wm_close(clone);wm_close(cfg);invisible(gc());cat('R C6 aliases',n,'nominal/wire/presence/unset/collision/NUL/star-map checks PASS HTTP=0\n')
