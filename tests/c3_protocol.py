import copy,json,pathlib,subprocess,sys,tempfile
R=pathlib.Path(__file__).resolve().parents[1]
runner=sys.argv[1];D=pathlib.Path(tempfile.mkdtemp(prefix='r-protocol-'));good={'protocol':1,'ok':True,'result':{'kind':'pending','status':200,'media_type':'application/json','value':{'msg':'queued','big':9007199254740995}}};cases=[('valid',good,'pending')]
def change(name,fn):
 v=copy.deepcopy(good);fn(v['result']);cases.append((name,v,'protocol'))
for field in('status','media_type','value'):change('missing-'+field,lambda v,k=field:v.pop(k))
for field,value in[('bytes_hex','00'),('protected_location','https://example.invalid/never'),('file_kind','Html'),('projection_hints',{'format':'variant-preorder-u8-hex-v1','indices_hex':''})]:change('mixed-'+field,lambda v,k=field,x=value:v.__setitem__(k,x))
for value in(201,200.0,'200',True):change('status-'+repr(value),lambda v,x=value:v.__setitem__('status',x))
for value in('text/html','application/problem+json','application/json;charset=utf-8',None):change('mime-'+str(value),lambda v,x=value:v.__setitem__('media_type',x))
for value in({},{'msg':None},{'msg':42},[],{'msg':'queued','error':False},{'msg':'queued','success':False}):change('bad-model-'+str(len(cases)),lambda v,x=value:v.__setitem__('value',x))
cases.append(('sdk-business',{'protocol':1,'ok':False,'error':{'kind':'business','message':'Fixed SDK failure.','outcome':'unknown','operation':'fileGetNfsePdf'}},'business'))
cases.append(('unrequested-projection',{'protocol':1,'ok':False,'error':{'kind':'projection','message':'Fixed projection failure.','sdk_call_completed':True,'protected_result':good['result']}},'protocol'))
selected=set(sys.argv[2:]);cases=[case for case in cases if not selected or case[0]in selected]
for i,(name,reply,want)in enumerate(cases):
 p=D/('worker%02d'%i);p.write_text('''#!/usr/bin/python3
import json,struct,sys
r=sys.stdin.buffer;h=r.read(4)
assert len(h)==4
v=json.loads(r.read(struct.unpack('>I',h)[0]));assert 'projection_hints'not in v
reply='''+repr(reply)+'''
b=json.dumps(reply,separators=(',',':')).encode();sys.stdout.buffer.write(struct.pack('>I',len(b))+b);sys.stdout.buffer.flush()
''');p.chmod(0o755)
 result=subprocess.run([runner,str(R/'tests/consumer/protocol.R'),str(p),want],capture_output=True,timeout=20);assert result.returncode==0,(name,result.returncode,result.stderr.decode());print(name,want,'PASS',flush=True)
print(len(cases),'R Pending transport type/mixing/no projection opt-in controls PASS',flush=True)
