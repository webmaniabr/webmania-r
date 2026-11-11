#!/usr/bin/env python3
"""Actual loopback auth/Unknown/boundaries/redirect/TLS through the Lua facade."""
import json,pathlib,socket,ssl,threading,subprocess,sys,time,urllib.parse,tempfile
R=pathlib.Path(__file__).resolve().parents[1]
runner,worker=sys.argv[1:]
from file_fixtures import PDF,pdf_with_stream
XML=b'<?xml version="1.0"?>\n<nfeProc><NFe/></nfeProc>'
fixture=json.loads((R/'tests/fixtures/operations.json').read_text())['cases']
for tls in (False,True):
 for mode in ('legacy_document','issuer_document','anonymous','wrong_auth','redirect','mutation_cancel','mutation_interrupt','mutation_close','mutation_task_close','request8','request8_over','json16','file16'):
  listener=socket.socket();listener.bind(('127.0.0.1',0));listener.listen(4);listener.settimeout(.4 if mode in ('wrong_auth','request8_over') else 10);port=listener.getsockname()[1];base=('https://localhost:' if tls else 'http://127.0.0.1:')+str(port);records=[];errors=[];flag=pathlib.Path(tempfile.mkdtemp(prefix='webmania-integration-'))/'accepted';flag.unlink(missing_ok=True)
  def serve():
   try:
    conn,_=listener.accept();conn.settimeout(10)
    if tls:
     ctx=ssl.SSLContext(ssl.PROTOCOL_TLS_SERVER);ctx.load_cert_chain(str(R/'tests/fixtures/tls/leaf.pem'),str(R/'tests/fixtures/tls/leaf.key'));conn=ctx.wrap_socket(conn,server_side=True)
    with conn:
     data=b''
     while b'\r\n\r\n'not in data:data+=conn.recv(65536)
     head,body=data.split(b'\r\n\r\n',1);parts=head.decode().split('\r\n');method,target,_=parts[0].split();headers={k.lower():v.strip() for k,v in (x.split(':',1) for x in parts[1:])};size=int(headers.get('content-length','0'))
     while len(body)<size:body+=conn.recv(min(size-len(body),65536))
     records.append((method,target,headers,body));flag.write_text('accepted')
     if mode in ('mutation_cancel','mutation_interrupt','mutation_close','mutation_task_close'):time.sleep(.5);return
     status=200;extra=b''
     if mode=='request8':
      assert len(body)==8*1024*1024;assert json.loads(body)['uuid']=='00000000-0000-4000-8000-000000000001';reply=json.dumps(next(c['response'] for c in fixture if c['operation']=='nfeQueryDocument'),separators=(',',':')).encode();media='application/json'
     elif mode=='json16':
      prefix=b'{"status":"online","padding":"';suffix=b'"}';reply=prefix+b'a'*(16*1024*1024-len(prefix)-len(suffix))+suffix;media='application/json'
     elif mode=='file16':
      reply=pdf_with_stream(16*1024*1024,((4096,0),(4097,255)));media='application/octet-stream'
     elif mode=='redirect':reply=b'';media='application/pdf';status=302;extra=('Location: '+base+'/private-marker?token=private-marker\r\n').encode()
     else:reply=PDF if mode=='legacy_document' else XML;media='application/pdf' if mode=='legacy_document' else 'text/xml'
     conn.sendall(f'HTTP/1.1 {status} OK\r\nContent-Type: {media}\r\nContent-Length: {len(reply)}\r\nConnection: close\r\n'.encode()+extra+b'\r\n'+reply)
    # A retry or redirect transfer would create a second connection.
    listener.settimeout(.2)
    try:conn,_=listener.accept();conn.close();records.append(('REPLAY',))
    except socket.timeout:pass
   except socket.timeout:pass
   except Exception as e:errors.append(repr(e))
  thread=threading.Thread(target=serve);thread.start();p=subprocess.Popen([runner,str(R/'tests/consumer/integration.R'),mode,base,worker,str(R/'tests/fixtures/tls/ca.pem'),str(flag)],stdout=subprocess.PIPE,stderr=subprocess.PIPE)
  if mode=='mutation_interrupt':
   import signal
   until=time.monotonic()+10
   while not flag.exists() and p.poll() is None and time.monotonic()<until:time.sleep(.005)
   assert flag.exists(),mode
   time.sleep(.03);p.send_signal(signal.SIGINT)
  stdout,stderr=p.communicate(timeout=40);thread.join(11);listener.close();assert p.returncode==0,(mode,tls,p.returncode,stderr.decode());assert not thread.is_alive();assert not errors,(mode,errors)
  if mode in ('wrong_auth','request8_over'):assert not records,(mode,records)
  else:
   assert len(records)==1,(mode,len(records));method,target,headers,body=records[0]
   if mode in ('legacy_document','issuer_document','anonymous','redirect'):
    assert 'authorization' not in headers and 'x-consumer-key' not in headers
    query=urllib.parse.parse_qs(urllib.parse.urlsplit(target).query)
    assert query.get('token')==(['synthetic-document'] if mode.endswith('_document') else None)
  print(('TLS ' if tls else 'HTTP ')+mode+' PASS',flush=True)
# Unknown CA and wrong hostname are rejected by the unchanged C/Rust TLS lane.
for label,certificate in [('unknown-ca','unknown-leaf'),('wrong-host','other')]:
 listener=socket.socket();listener.bind(('127.0.0.1',0));listener.listen();port=listener.getsockname()[1]
 def reject_tls():
  conn,_=listener.accept();ctx=ssl.SSLContext(ssl.PROTOCOL_TLS_SERVER);ctx.load_cert_chain(str(R/'tests/fixtures/tls'/f'{certificate}.pem'),str(R/'tests/fixtures/tls'/f'{certificate}.key'))
  try:ctx.wrap_socket(conn,server_side=True).close()
  except ssl.SSLError:conn.close()
 thread=threading.Thread(target=reject_tls);thread.start();p=subprocess.run([runner,str(R/'tests/consumer/integration.R'),'bad_tls',f'https://localhost:{port}',worker,str(R/'tests/fixtures/tls/ca.pem')],capture_output=True,timeout=10);thread.join(5);listener.close();assert p.returncode==0,(label,p.stderr.decode());assert not thread.is_alive();print(label+' PASS',flush=True)
print('28 auth/Unknown/boundary/redirect/TLS integration lanes PASS')
# The homologation example and its run.sh, offline: no request is ever made.
subprocess.run([sys.executable,str(R/'tests/homologacao.py'),runner],check=True,timeout=900)
