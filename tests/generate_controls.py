import pathlib,json,re
R=pathlib.Path(__file__).resolve().parents[1];m=json.loads((R/'metadata/api-metadata.json').read_text());a=['library(webmania)','bad <- wm_json("{}")','checked <- 0L','expect_error <- function(expr) stopifnot(inherits(try(force(expr),silent=TRUE),"try-error"))']
for model in m['models']:
 if model['kind']!='struct':continue
 a+=['x <- '+model['module']+'_'+model['name']+'()']
 for f in model['fields']:
  if re.sub(r'Option<|Nullable<|Box<|>', '', f['type'])=='Value':continue
  a+=['expect_error(wm_set(x,'+json.dumps(f['name'])+',bad));checked <- checked+1L']
 a+=['wm_close(x)']
a+=['wm_close(bad)','cat("Nominal wrong-type fields:",checked,"PASS\\n")'];(R/'tests/typed.R').write_text('\n'.join(a)+'\n')
