#!/usr/bin/env python3
import pathlib,json,re,hashlib
R=pathlib.Path(__file__).resolve().parents[1]
data=(R/'metadata/api-metadata.json').read_bytes()
locked=json.loads((R/'dependency-lock.json').read_text())
if hashlib.sha256(data).hexdigest()!=locked['metadata_sha256']:raise ValueError('Frozen C public metadata mismatch')
meta=json.loads(data);models=meta['models'];arrays={}
def snake(s):
 s=re.sub(r'([A-Z]+)([A-Z][a-z])',r'\1_\2',s)
 return re.sub(r'([a-z0-9])([A-Z])',r'\1_\2',s).lower()
def unwrap(t):
 while any(t.startswith(x+'<') for x in ('Option','Nullable','Box')):t=t[t.index('<')+1:-1]
 return t
def cn(mod,t):
 t=unwrap(t)
 if t.startswith('crate::models::'):_,_,mod,t=t.split('::')
 if t.startswith('Vec<'):
  inner=t[4:-1];n='wm_array_'+mod+'_'+cn(mod,inner).removeprefix('wm_');arrays[n]=(mod,inner);return n
 return {'String':'char','i64':'int64_t','bool':'bool','Number':'wm_number','Scalar':'wm_scalar','Value':'wm_json','Map':'wm_map'}.get(t,'wm_'+mod+'_'+snake(t))
for m in models:
 for f in m['fields']:
  if f['type']!='Null':cn(m['module'],f['type'])
for o in meta['operations']:
 if o['returns'] not in ('crate::FileResponse','crate::FileOrRedirect'):cn(o['module'],o['returns'])
names=['wm_number','wm_json','wm_map','wm_scalar']+[cn(m['module'],m['name']) for m in models]+list(arrays)
ids={n:i for i,n in enumerate(names)}
def ref(n):return '&types['+str(ids[n])+']'
def fn(s):return 'field_'+s if s in 'auto case const continue default do else enum extern float for goto if inline int long register restrict return short signed sizeof static struct switch typedef union unsigned void volatile while'.split() else s
C=['/* Generated from hash-locked public C metadata. */','#include "internal.h"','#include <stdlib.h>','#include <string.h>']
D=[]
def emit(s):C.append(s)
def read(mod,t):
 b=unwrap(t)
 return {'String':'text','i64':'integer64(x)','bool':'boolean(x)'}[b] if b in ('String','i64','bool') else 'value_check(x,'+ref(cn(mod,t))+')->ptr'
def out(mod,t,call,length=None,union=False):
 b=unwrap(t);n=cn(mod,t)
 cleanup='wm_error_free(e);' if union else ''
 guard='if(s==WM_ABSENT)return R_NilValue;if(s==WM_NULL)return null_value();if(s!=WM_OK)return invalid();'
 if b=='String':return 'const char*out=NULL;wm_status s='+call+';'+cleanup+guard+'return text_value(out,'+(length or 'strlen(out)')+');'
 if b in ('i64','bool'):return n+' out=0;wm_status s='+call+';'+cleanup+guard+'return '+('integer_value(out)' if b=='i64' else 'Rf_ScalarLogical(out)')+';'
 return 'SEXP ans=PROTECT(value_alloc('+ref(n)+'));Value*r=any_value(ans);'+n+'*out=NULL;wm_status s='+call+';r->ptr=out;'+cleanup+'UNPROTECT(1);'+guard+'return ans;'
def adapt(n,i,create=False,parse=False,count=False,ext=False):
 a='t'+str(i)
 emit('static void '+a+'_free(void*p){'+n+'_free(p);}')
 emit('static char*'+a+'_json(const void*p){return '+n+'_to_json(p);}')
 if create:emit('static void*'+a+'_new(void){return '+n+'_new();}')
 if parse:emit('static void*'+a+'_parse(const char*s,size_t l,const wm_config*c,wm_error**e){return '+n+'_from_json(s,l,c,e);}')
 if count:emit('static size_t '+a+'_count(const void*p){return '+n+'_count(p);}')
 if ext:
  emit('static wm_status '+a+'_es(void*p,const char*k,size_t l,const wm_json*v){return '+n+'_set_extension_n(p,k,l,v);}')
  emit('static wm_json*'+a+'_eg(const void*p,const char*k,size_t l){return '+n+'_get_extension_n(p,k,l);}')
 return a
for m in models:
 mod=m['module'];n=cn(mod,m['name']);i=ids[n];ext=m['kind']=='struct' and bool(m['pointer']);a=adapt(n,i,m['kind']=='struct',True,ext=ext);fields=[]
 for j,f in enumerate(m['fields']):
  field,t=f['name'],f['type'];b=unwrap(t);ff=fn(field);z='f'+str(i)+'_'+str(j)
  prefix='size_t length;const char*text=strict_string(x,&length);' if b=='String' else ''
  if m['kind']=='struct':
   call=n+'_set_'+ff+('_n' if b=='String' else '')+'(v->ptr,'+read(mod,t)+(',length' if b=='String' else '')+')'
   null='if(is_null(x))return status_value('+n+'_set_'+ff+'_null(v->ptr));' if 'Nullable<' in t else ''
   emit('static SEXP '+z+'_s(Value*v,SEXP x,const wm_config*c){(void)c;'+null+prefix+'return status_value('+call+');}')
   emit('static SEXP '+z+'_g(Value*v,SEXP x,const wm_config*c){(void)x;(void)c;'+out(mod,t,n+'_get_'+ff+'(v->ptr,&out)',n+'_length_'+ff+'(v->ptr)' if b=='String' else None)+'}')
   emit('static SEXP '+z+'_p(Value*v,SEXP x,const wm_config*c){(void)x;(void)c;return presence_value('+n+'_presence_'+ff+'(v->ptr));}')
   un='NULL'
   if t.startswith('Option<'):
    emit('static SEXP '+z+'_u(Value*v,SEXP x,const wm_config*c){(void)x;(void)c;return status_value('+n+'_unset_'+ff+'(v->ptr));}');un=z+'_u'
   fields.append('{'+','.join([json.dumps(field),json.dumps(t),z+'_s',z+'_g',z+'_p',un,'NULL'])+'}')
  else:
   call=n+'_from_'+ff+'()' if t=='Null' else n+'_from_'+ff+('_n' if b=='String' else '')+'('+read(mod,t)+(',length' if b=='String' else '')+')'
   emit('static SEXP '+z+'_c(Value*v,SEXP x,const wm_config*c){(void)v;(void)c;'+prefix+'SEXP ans=PROTECT(value_alloc('+ref(n)+'));any_value(ans)->ptr='+call+';if(!any_value(ans)->ptr)invalid();UNPROTECT(1);return ans;}')
   body='wm_error*e=NULL;'
   if t=='Null':body+='wm_status s='+n+'_get_'+ff+'(v->ptr,c,&e);wm_error_free(e);if(s!=WM_OK)return invalid();return null_value();'
   else:body+=out(mod,t,n+'_get_'+ff+'(v->ptr,c,&out,&e)',n+'_length_'+ff+'(v->ptr)' if b=='String' else None,True)
   emit('static SEXP '+z+'_g(Value*v,SEXP x,const wm_config*c){(void)x;'+body+'}')
   fields.append('{'+','.join([json.dumps(field),json.dumps(t),'NULL',z+'_g','NULL','NULL',z+'_c'])+'}')
 emit('static const Field fields'+str(i)+'[]={'+','.join(fields)+'};')
 D.append('{'+','.join([json.dumps(mod+'.'+m['name']),a+'_new' if m['kind']=='struct' else 'NULL',a+'_free',a+'_json',a+'_parse','fields'+str(i),str(len(fields)),'NULL','NULL','NULL',a+'_es' if ext else 'NULL',a+'_eg' if ext else 'NULL'])+'}')
for n,(mod,t) in arrays.items():
 i=ids[n];a=adapt(n,i,True,count=True);b=unwrap(t);z='a'+str(i);prefix='size_t length;const char*text=strict_string(x,&length);' if b=='String' else ''
 null='if(is_null(x))return status_value('+n+'_append_null(v->ptr));' if 'Nullable<' in t else ''
 emit('static SEXP '+z+'_append(Value*v,SEXP x,const wm_config*c){(void)c;'+null+prefix+'return status_value('+n+'_append'+('_n' if b=='String' else '')+'(v->ptr,'+read(mod,t)+(',length' if b=='String' else '')+'));}')
 emit('static SEXP '+z+'_at(Value*v,SEXP x,const wm_config*c){(void)c;int64_t i=integer64(x);if(i<1)return invalid();'+out(mod,t,n+'_get(v->ptr,(size_t)(i-1),&out)',n+'_length_at(v->ptr,(size_t)(i-1))' if b=='String' else None)+'}')
 D.append('{'+','.join([json.dumps(n),a+'_new',a+'_free',a+'_json','NULL','NULL','0',z+'_append',z+'_at',a+'_count','NULL','NULL'])+'}')
C+=['static void number_free(void*p){wm_number_free(p);}','static void json_free(void*p){wm_json_free(p);}','static char*json_json(const void*p){return wm_json_to_string(p);}','static void*map_new(void){return wm_map_new();}','static void map_free(void*p){wm_map_free(p);}','static char*map_json(const void*p){return wm_map_to_json(p);}','static size_t map_count(const void*p){return wm_map_count(p);}','static wm_status map_set(void*p,const char*k,size_t n,const wm_json*v){return wm_map_set_n(p,k,n,v);}','static wm_json*map_get(const void*p,const char*k,size_t n){return wm_map_get_n(p,k,n);}','static void scalar_free(void*p){wm_scalar_free(p);}','static char*scalar_json(const void*p){return wm_scalar_to_json(p);}']
core=['{"Number",NULL,number_free,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL}','{"Json",NULL,json_free,json_json,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL}','{"Map",map_new,map_free,map_json,NULL,NULL,0,NULL,NULL,map_count,map_set,map_get}','{"Scalar",NULL,scalar_free,scalar_json,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL}']
C+=['const Type types[]={'+',\n'.join(core+D)+'};','const size_t type_count='+str(len(core+D))+';','const int operation_count='+str(len(meta['operations']))+';']
scopes={'NfeClient':0,'ResellerClient':1,'EmitterClient':2,'MonitorClient':3,'NfeFilesClient':4,'EmitterFilesClient':5}
for oi,o in enumerate(meta['operations']):
 if not o['enabled']:
  emit('static SEXP op'+str(oi)+'(SEXP client,SEXP args){(void)client;(void)args;Rf_error("webmania capability: operation not available in this SDK release");return R_NilValue;}');continue
 args=['t->owner->client'];start=[]
 for j,p in enumerate(o['params']):
  t=p['type'];x='VECTOR_ELT(args,'+str(j)+')';dest='t->args['+str(j)+']'
  if t.startswith('&crate::models::'):
   start.append('model_snapshot(t,'+str(j)+','+x+','+ref(cn(o['module'],t[1:]))+');');args.append(dest+'.ptr')
  elif t=='&crate::FileAuth':start.append(dest+'.release=auth_free;'+dest+'.ptr=auth_snapshot('+x+');');args.append(dest+'.ptr')
  elif t=='&str':start.append(dest+'.text=strdup(cstring('+x+'));if(!'+dest+'.text)invalid();');args.append(dest+'.text')
  elif t=='i64':start.append(dest+'.integer=integer64('+x+');');args.append(dest+'.integer')
 ret=o['returns'];rn={'crate::FileResponse':'wm_file_response','crate::FileOrRedirect':'wm_file_or_redirect'}.get(ret) or cn(o['module'],ret)
 emit('static void invoke'+str(oi)+'(Task*t){'+rn+'*result=NULL;t->status=wm_'+snake(o['id'])+'('+','.join(args+['t->cancel','&result','&t->error'])+');t->result=result;}')
 emit('static SEXP op'+str(oi)+'(SEXP client,SEXP args){if(XLENGTH(args)!='+str(len(o['params']))+')return invalid();Owner*o=owner_check(client,'+str(scopes[o['client']])+');SEXP ans=PROTECT(task_alloc(o));Task*t=task_check(ans);'+''.join(start)+'t->invoke=invoke'+str(oi)+';'+('t->result_type='+ref(rn)+';' if ret not in ('crate::FileResponse','crate::FileOrRedirect') else 't->result_kind='+('1' if ret=='crate::FileResponse' else '2')+';')+'task_launch(ans);UNPROTECT(1);return ans;}')
C+=['SEXP generated_operation(int i,SEXP client,SEXP args){switch(i){'+''.join('case '+str(i)+':return op'+str(i)+'(client,args);' for i in range(len(meta['operations'])))+'default:return invalid();}}']
# Small units bound compiler memory under the documented 1536MiB budget.
decl=['/* Generated public-adapter declarations. */','#include "internal.h"']
units=[]
for line in C:
 if line.startswith('/*') or line.startswith('#include'):continue
 if line.startswith('static const Field '):
  line=line.removeprefix('static ');decl.append('extern '+line.split('=')[0]+';')
 elif line.startswith('static '):
  line=line.removeprefix('static ');decl.append(line.split('{',1)[0]+';')
 units.append(line)
(R/'src/generated_decl.h').write_text('\n'.join(decl)+'\n')
for old in (R/'src').glob('generated*.c'):old.unlink()
for k in range(12):
 (R/'src'/('generated%02d.c'%k)).write_text('#include "generated_decl.h"\n#include <stdlib.h>\n#include <string.h>\n'+'\n'.join(units[k::12])+'\n')

# Constructors are nominal and operations have real named R formals.
A=['# Generated nominal constructors and named operations.']
exports=[]
for m in models:
 name=m['module']+'_'+m['name'];i=ids[cn(m['module'],m['name'])];exports.append(name)
 if m['kind']=='struct':A.append(name+' <- function(...) .model_new('+str(i)+'L, list(...))')
 else:A.append(name+' <- function(variant, value = wm_null()) .union_new('+str(i)+'L, variant, value)')
for n in arrays:
 name=n.removeprefix('wm_');exports.append(name);A.append(name+' <- function(...) .array_new('+str(ids[n])+'L, list(...))')
for oi,o in enumerate(meta['operations']):
 name=snake(o['id']);exports.append(name);params=[p['name'] for p in o['params']]
 A.append(name+' <- function('+', '.join(['client']+params)+') '+('.Call(C_operation, '+str(oi)+'L, client, list('+', '.join(params)+'))' if o['enabled'] else 'stop("webmania capability: operation not available in this SDK release", call. = FALSE)'))
(R/'R/generated.R').write_text('\n'.join(A)+'\n')
(R/'NAMESPACE').write_text('useDynLib(webmania, .registration=TRUE, .fixes="C_")\nimportFrom(utils,str)\n'+''.join('export('+x+')\n' for x in exports))
(R/'man/generated.Rd').write_text('\\name{webmania-models}\n'+''.join('\\alias{'+x+'}\n' for x in exports)+'\\title{Nominal models and named operations}\n\\description{Generated complete model and operation surface from the frozen public contract. See the installed metadata and README for typed fields and ownership. Model constructors accept named fields. Union constructors take a named variant and its typed value. Named operations return a cancellable Task.}\n\\details{Builders are reference objects. Getters return independently owned values. Use wm_clone for explicit cloning and wm_close for deterministic cleanup. All ordinary display is redacted.}\n')
(R/'inst/api-metadata.json').write_bytes(data)
print(len(models),len(arrays),len(meta['operations']))
