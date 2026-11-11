import pathlib,json,re
R=pathlib.Path(__file__).resolve().parents[1];meta=json.loads((R/'metadata/api-metadata.json').read_text());cases={c['operation']:c for c in json.loads((R/'tests/fixtures/operations.json').read_text())['cases']}
def snake(s):
 s=re.sub(r'([A-Z]+)([A-Z][a-z])',r'\1_\2',s);return re.sub(r'([a-z0-9])([A-Z])',r'\1_\2',s).lower()
def literal(x):return json.dumps(x,ensure_ascii=True)
def jsonlit(x):return literal(json.dumps(x,ensure_ascii=False,separators=(',',':')))
def ctor(t):return t.replace('&crate::models::','').replace('::','_')
lines=['library(webmania)','a <- commandArgs(TRUE)','cfg <- wm_config(base_url=a[[2]], ca_pem=paste(readLines(a[[3]]),collapse="\\n"), worker_path=a[[4]], file_origins=a[[2]])','company <- wm_company_credentials("synthetic-company-key","synthetic-secret","synthetic-token","synthetic-secret2")','reseller <- wm_reseller_credentials("synthetic-reseller-key","synthetic-secret","synthetic-token","synthetic-secret2")','issuer <- wm_issuer_token("synthetic-issuer")','monitor <- wm_monitor_token("synthetic-monitor")','clients <- list(wm_nfe_client(company,cfg),wm_reseller_client(reseller,cfg),wm_emitter_client(issuer,cfg),wm_monitor_client(monitor,cfg),wm_nfe_files_client(company,cfg),wm_emitter_files_client(issuer,cfg))','for(x in list(company,reseller,issuer,monitor)) wm_close(x)']
scopes={'Nfe':1,'Reseller':2,'Emitter':3,'Monitor':4,'NfeFiles':5,'EmitterFiles':6}
for i,o in enumerate(meta['operations']):
 c=cases[o['id']];lines+=['if (a[[1]] == "'+str(i)+'") {'];args=['clients[['+str(scopes[o['scope']])+']]']
 for p in o['params']:
  n,t=p['name'],p['type']
  if n in ('query','body'):
   lines+=[n+' <- wm_from_json('+ctor(t)+','+jsonlit(c['query'] if n=='query' else c['request'])+',cfg)'];args.append(n)
  elif n=='auth':args.append('wm_file_auth("'+('public_report' if o['id']=='fiscalDownloadReport' else 'company' if o['scope']=='NfeFiles' else 'issuer')+'")')
  else:args.append(literal(str(c['path_params'][n])) if t=='&str' else str(c['path_params'][n])+'L')
 call=snake(o['id'])+'('+','.join(args)+')'
 if not o['enabled']:lines+=['stopifnot(inherits(try('+call+',silent=TRUE),"try-error"));cat("blocked")']
 else:
  lines+=['task <- '+call,'result <- wm_await(task)','if(!is.null(result$error)) stop(wm_error_kind(result$error))','stopifnot(result$ready,!is.null(result$value))']
  if c['binary']:lines+=['cat(paste(sprintf("%02x",as.integer(wm_file_bytes(result$value))),collapse=""))']
  else:lines+=['cat(wm_to_json(result$value))']
  lines+=['wm_close(result$value);wm_close(task)']
 lines+=['}']
lines+=['for(x in clients) wm_close(x)'];(R/'tests/consumer/matrix.R').write_text('\n'.join(lines)+'\n')
# All nominal model projections plus the same pinned mapped semantic corpus.
lookup={m['module']+'::'+m['name']:m for m in meta['models']};pointers={(m['module'],m['pointer']):m for m in meta['models'] if m['pointer']}
corpus=json.loads((R/'tests/fixtures/model-corpus.json').read_text());assert len(corpus['cases'])==len(json.loads((R/'metadata/api-metadata.json').read_text())['models']) and not corpus['unsampled']
cs=[(lookup[c['model']],c['value'],True,c['model']) for c in corpus['cases']]
for c in json.loads((R/'tests/fixtures/semantic_cases.json').read_text())['cases']:
 m=pointers.get((c['module'],c['pointer']))
 if m:cs.append((m,c['instance'],c['valid'],c['id']))
a=['library(webmania)','cfg <- wm_config()','checked <- 0L']
for m,value,valid,label in cs:
 name=m['module']+'_'+m['name'];a+=['x <- try(wm_from_json('+name+','+jsonlit(value)+',cfg),silent=TRUE)','if(inherits(x,"try-error") == '+('TRUE' if valid else 'FALSE')+') stop('+literal(label)+')']
 if valid:
  a+=['stopifnot(inherits(x,'+literal(m['module']+'.'+m['name'])+')); stopifnot(is.character(wm_to_json(x)));wm_close(x)']
 a+=['checked <- checked + 1L']
a+=['wm_close(cfg)','cat("Nominal/semantic cases:",checked,"PASS\\n")'];(R/'tests/models.R').write_text('\n'.join(a)+'\n')
print('Generated matrix',len(meta['operations']),'models',len(cs))
