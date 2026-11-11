library(webmania)
n<-0L
check<-function(x){stopifnot(x);n<<-n+1L}
reject<-function(expr)check(inherits(try(force(expr),silent=TRUE),'try-error'))
cfg<-wm_config()
order<-api1_fiscal_NfeOrder();check(is.null(wm_get(order,'frete'))&&wm_presence(order,'frete')=='missing')
text<-wm_text(as.raw(c(120,0,195,169,240,159,152,128)));lex<-'-9007199254740993.000000000000000001e+12'
values<-list(wm_scalar_boolean(FALSE),wm_scalar_boolean(TRUE),wm_scalar_null(),wm_scalar_text(text),wm_scalar_number(wm_number(lex)))
want<-c('false','true','null','"x\\u0000é😀"',lex)
for(i in seq_along(values)){
 s<-values[[i]];check(identical(wm_to_json(s),want[[i]]));wm_set(order,'frete',s);wm_close(s)
 check(wm_presence(order,'frete')==if(i==3L)'null'else'present');v<-wm_get(order,'frete');check(inherits(v,'Scalar')&&wm_to_json(v)==want[[i]]);wm_close(v)
}
wm_unset(order,'frete');check(is.null(wm_get(order,'frete')))
for(v in list(NA,0L,0,factor('x'),NULL))reject(wm_scalar_boolean(v))
for(v in list(NA_character_,factor('x'),1,FALSE))reject(wm_scalar_text(v))
reject(wm_scalar_number(1));reject(wm_set(order,'frete',wm_null()))
company<-api1_b2b_ResellerCreatedCompany();field<-'bearer_access_token_recovery_queued'
check(is.null(wm_get(company,field)));wm_set(company,field,FALSE);check(identical(wm_get(company,field),FALSE));wm_set(company,field,wm_null());check(inherits(wm_get(company,field),'webmania_null')&&wm_presence(company,field)=='null');wm_unset(company,field);check(wm_presence(company,field)=='missing')
item<-api1_fiscal_TaxClassListItem();check(wm_presence(item,'type')=='missing');reject(wm_set_extension(item,'type',wm_json('null')))
wm_set_extension(item,'TYPE',wm_json('false'));wm_set(item,'type',text);check(identical(unclass(wm_get(item,'type')),unclass(text)));check(wm_presence(item,'type')=='present');check(wm_to_json(wm_get_extension(item,'TYPE'))=='false');reject(wm_set_extension(item,'type',wm_json('false')))
for(v in list(factor('x'),NA_character_,1,FALSE))reject(wm_set(item,'type',v))
m<-wm_map();wm_set_extension(m,text,wm_json('{"false":false,"null":null,"zero":0}'));v<-wm_get_extension(m,text);wm_close(m);check(wm_to_json(v)=='{"false":false,"null":null,"zero":0}');wm_close(v)
# JSON semantic integers use public FromJson, never host Double coercion.
for(lex in c('1.0','100e-2','-0.000e0')){
 v<-wm_from_json(api1_b2b_ResellerProcessedRequests,paste0('{"total_notas_processadas":',lex,',"empresas":[]}'),cfg)
 check(identical(wm_get(v,'total_notas_processadas'),if(lex=='-0.000e0')0L else 1L));wm_close(v)
}
reject(wm_from_json(api1_b2b_ResellerProcessedRequests,'{"total_notas_processadas":1.25,"empresas":[]}',cfg))
for(v in list(1,NA_integer_,factor('1'),TRUE))reject(wm_set(order,'presenca',v))
for(lex in c('-9223372036854775808','9223372036854775807')){wm_set(order,'presenca',wm_integer64(lex));check(identical(unclass(wm_get(order,'presenca')),lex))}
wide<-wm_integer64('9223372036854775807')
check(!any(grepl('9223372036854775807',capture.output(print(wide)),fixed=TRUE)))
check(identical(format(wide),'<webmania [redacted]>'))
check(!any(grepl('9223372036854775807',capture.output(str(wide)),fixed=TRUE)))
check(identical(as.character(wide),'<webmania [redacted]>'))
check(identical(unclass(wide),'9223372036854775807'))
reject(wm_set(order,'presenca',as.character(wide)))
for(x in list(order,company,item,cfg))wm_close(x)
gc();cat(n,'manual common Scalar BOOL/NULL/TEXT/NUMBER, Nullable/presence/maps/type/NUL/case/i64 checks PASS\n')
