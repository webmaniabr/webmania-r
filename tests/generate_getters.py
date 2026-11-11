import pathlib,json,re
R=pathlib.Path(__file__).resolve().parents[1];meta=json.loads((R/'metadata/api-metadata.json').read_text());models={m['module']+'::'+m['name']:m for m in meta['models']}
def unwrap(t):
 while any(t.startswith(x+'<') for x in ['Option','Nullable','Box']):t=t[t.index('<')+1:-1]
 return t
def snake(s):
 s=re.sub(r'([A-Z]+)([A-Z][a-z])',r'\1_\2',s);return re.sub(r'([a-z0-9])([A-Z])',r'\1_\2',s).lower()
def cn(mod,t):
 t=unwrap(t)
 if t.startswith('crate::models::'):_,_,mod,t=t.split('::')
 if t.startswith('Vec<'):return 'wm_array_'+mod+'_'+cn(mod,t[4:-1]).removeprefix('wm_')
 return {'String':'char','i64':'int64_t','bool':'bool','Number':'wm_number','Value':'wm_json','Map':'wm_map','Scalar':'wm_scalar'}.get(t,'wm_'+mod+'_'+snake(t))
def expected(mod,t):
 t=unwrap(t)
 if t in ['Null','String','i64','bool']:return t
 if t in ['Number','Value','Map','Scalar']:return {'Value':'Json'}.get(t,t)
 if t.startswith('Vec<'):return cn(mod,t)
 if t.startswith('crate::models::'):_,_,mod,t=t.split('::')
 return mod+'.'+t
A=['library(webmania)','cfg<-wm_config()','checked<-0L','verify<-function(value,kind){if(is.null(value)||inherits(value,"webmania_null"))return(invisible(NULL));if(kind=="String")stopifnot(is.character(value)||inherits(value,"webmania_text")) else if(kind=="i64")stopifnot(is.integer(value)||inherits(value,"webmania_integer64")) else if(kind=="bool")stopifnot(is.logical(value),!is.na(value)) else if(kind=="Null")stop("wrong null") else {stopifnot(inherits(value,kind));wm_close(value)}}']
for case in json.loads((R/'tests/fixtures/model-corpus.json').read_text())['cases']:
 m=models[case['model']];name=m['module']+'_'+m['name'];s=json.dumps(json.dumps(case['value'],ensure_ascii=False,separators=(',',':')),ensure_ascii=True)
 A+=['x<-wm_from_json('+name+','+s+',cfg)','matched<-0L']
 for f in m['fields']:
  call='wm_get(x,'+json.dumps(f['name'])+',cfg)';kind=expected(m['module'],f['type'])
  if m['kind']=='enum':A+=['value<-try('+call+',silent=TRUE);if(!inherits(value,"try-error")){matched<-matched+1L;verify(value,'+json.dumps(kind)+');checked<-checked+1L}']
  else:A+=['verify('+call+','+json.dumps(kind)+');checked<-checked+1L']
 if m['kind']=='enum':A+=['stopifnot(matched>0L)']
 A+=['wm_close(x)']
A+=['wm_close(cfg);cat("Typed model getters:",checked,"PASS\\n")'];(R/'tests/getters.R').write_text('\n'.join(A)+'\n')
