#!/usr/bin/env python3
"""Actual R C3 File/Redirect/Pending projection over local HTTP/TLS only."""
import pathlib,socket,ssl,threading,subprocess,sys,tempfile
R=pathlib.Path(__file__).resolve().parents[1];runner,worker=sys.argv[1:3];out=pathlib.Path(tempfile.mkdtemp(prefix='r-c3-'));path=out/'html.bin'
HTML=b'\0\xff<!doctype html><script>fetch("CANARY_URL")</script><iframe src="CANARY_URL"></iframe>opaque\xe7\xa7\x81'
PENDING=b'{"msg":"queued\\u0000\xc3\xa1\xf0\x9f\x98\x80","big":9007199254740995,"tiny":1.2300e-200,"Case":null,"case":[true,{"x":"extension"}]}'
cases=[('pending',PENDING,'application/json','success')]
for op in('file_get_nfse_pdf','file_get_nfse_rps_pdf','file_get_cte_pdf','file_get_cte_correction_pdf','file_get_mdfe_pdf','file_get_nfcom_pdf','file_get_dce_pdf'):cases.append(('html:'+op,HTML,'TeXt/HtMl; Charset=ISO-8859-1','success'))
for name,body,want in [('bad-scalar',b'{"msg":false}','response_schema'),('business-false',b'{"msg":"x","error":false}','business'),('duplicate',b'{"msg":"a","msg":"b"}','protocol')]:cases.append((name,body,'application/json',want))
prefix=b'{"msg":"queued\\u0000\xc3\xa1\xf0\x9f\x98\x80","x":"';suffix=b'"}';large=prefix+b'a'*(16*1024*1024-len(prefix)-len(suffix))+suffix
count=0
for tls in(False,True):
 for mode,payload,media,want in cases+([]if tls else[('pending16',large,'application/json','success'),('html:file_get_nfse_pdf:16',b'H'*(16*1024*1024),'text/html','success')]):
  listener=socket.socket();listener.bind(('127.0.0.1',0));listener.listen(3);listener.settimeout(20);port=listener.getsockname()[1];base=('https://localhost:'if tls else'http://127.0.0.1:')+str(port);records=[];errors=[];payload=payload.replace(b'CANARY_URL',(base+'/never').encode());path.write_bytes(payload)
  def serve():
   try:
    conn,_=listener.accept();conn.settimeout(20)
    if tls:
     ctx=ssl.SSLContext(ssl.PROTOCOL_TLS_SERVER);ctx.load_cert_chain(str(R/'tests/fixtures/tls/leaf.pem'),str(R/'tests/fixtures/tls/leaf.key'));conn=ctx.wrap_socket(conn,server_side=True)
    with conn:
     data=b''
     while b'\r\n\r\n'not in data:data+=conn.recv(65536)
     records.append(data.split(b'\r\n',1)[0]);conn.sendall(f'HTTP/1.1 200 OK\r\nContent-Type: {media}\r\nContent-Length: {len(payload)}\r\nConnection: close\r\n\r\n'.encode()+payload)
    listener.settimeout(.25)
    try:conn,_=listener.accept();conn.close();records.append(b'SECONDARY')
    except socket.timeout:pass
   except Exception as e:errors.append(repr(e))
  thread=threading.Thread(target=serve);thread.start();p=subprocess.run([runner,str(R/'tests/consumer/c3_variants.R'),mode,base,worker,str(R/'tests/fixtures/tls/ca.pem'),want,str(path)],capture_output=True,timeout=90);thread.join(21);listener.close();assert p.returncode==0,(mode,tls,p.returncode,p.stderr.decode());assert not thread.is_alive()and not errors and len(records)==1,(mode,errors,records);count+=1;print(('TLS 'if tls else'HTTP ')+mode+' '+want+' PASS',flush=True)
print(f'{count} actual R C3 variant lanes PASS; opaque exact HTML, owned Pending, no hidden poll/follow/replay',flush=True)
listener=socket.socket();listener.bind(('127.0.0.1',0));listener.listen();listener.settimeout(1);port=listener.getsockname()[1];records=[]
def no_http():
 try:conn,_=listener.accept();records.append(1);conn.close()
 except socket.timeout:pass
thread=threading.Thread(target=no_http);thread.start();p=subprocess.run([runner,str(R/'tests/consumer/snapshot.R'),worker,f'http://127.0.0.1:{port}'],capture_output=True,timeout=30);thread.join(2);listener.close();assert p.returncode==0,(p.returncode,p.stderr.decode());assert not records;print('1 synchronous invalid snapshot before Task return; zero HTTP PASS',flush=True)
