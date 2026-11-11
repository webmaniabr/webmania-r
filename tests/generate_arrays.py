import json,pathlib,re
R=pathlib.Path(__file__).resolve().parents[1];meta=json.loads((R/'metadata/api-metadata.json').read_text());values={c['model']:c['value']for c in json.loads((R/'tests/fixtures/model-corpus.json').read_text())['cases']};arrays={}
def unwrap(t):
 while any(t.startswith(x+'<')for x in('Option','Nullable','Box')):t=t[t.index('<')+1:-1]
 return t
def snake(s):
 s=re.sub(r'([A-Z]+)([A-Z][a-z])',r'\1_\2',s);return re.sub(r'([a-z0-9])([A-Z])',r'\1_\2',s).lower()
def cn(mod,t):
 t=unwrap(t)
 if t.startswith('crate::models::'):_,_,mod,t=t.split('::')
 if t.startswith('Vec<'):
  inner=t[4:-1];n='wm_array_'+mod+'_'+cn(mod,inner).removeprefix('wm_');arrays[n]=(mod,inner);return n
 return {'String':'char','i64':'int64_t','bool':'bool','Number':'wm_number','Scalar':'wm_scalar','Value':'wm_json','Map':'wm_map'}.get(t,'wm_'+mod+'_'+snake(t))
for m in meta['models']:
 for f in m['fields']:
  if f['type']!='Null':cn(m['module'],f['type'])
for o in meta['operations']:
 if o['returns']not in('crate::FileResponse','crate::FileOrRedirect'):cn(o['module'],o['returns'])
def lit(x):return json.dumps(x,ensure_ascii=True)
def sample(mod,t):
 t=unwrap(t)
 if t.startswith('crate::models::'):_,_,mod,t=t.split('::')
 if t.startswith('Vec<'):return cn(mod,t).removeprefix('wm_')+'('+sample(mod,t[4:-1])+')'
 if t=='String':return 'wm_text(as.raw(c(97L,0L,195L,169L)))'
 if t=='i64':return 'wm_integer64("-9223372036854775808")'
 if t=='bool':return 'FALSE'
 if t=='Number':return 'wm_number("9007199254740993.000000000000000001")'
 if t=='Scalar':return 'wm_scalar_null()'
 if t=='Value':return 'wm_json("null")'
 if t=='Map':return 'wm_map("{\\"x\\":null}")'
 return 'wm_from_json('+mod+'_'+t+','+lit(json.dumps(values[mod+'::'+t],ensure_ascii=False,separators=(',',':')))+',cfg)'
A=['library(webmania)','cfg<-wm_config()','n<-0L','dispose<-function(x)if(inherits(x,"webmania_value"))wm_close(x)']
for name,(mod,t)in arrays.items():
 ctor=name.removeprefix('wm_');A+=['a<-'+ctor+'();stopifnot(wm_count(a)==0L);v<-'+sample(mod,t)+';wm_append(a,v);dispose(v);before<-wm_to_json(a);stopifnot(wm_count(a)==1L,is.null(wm_at(a,2L)));y<-wm_at(a,1L);b<-'+ctor+'(y);dispose(y);wm_close(a);stopifnot(wm_to_json(b)==before);wm_close(b);n<-n+1L']
A+=['wm_close(cfg);stopifnot(n=='+str(len(arrays))+'L);cat(n,"typed array constructors/appends/independent getters/copies PASS\\n")'];(R/'tests/arrays.R').write_text('\n'.join(A)+'\n')
