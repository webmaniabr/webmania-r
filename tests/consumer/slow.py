#!/usr/bin/python3
import sys,struct,json,select
r=sys.stdin.buffer;h=r.read(4)
if len(h)!=4:sys.exit(2)
n=struct.unpack('>I',h)[0];v=json.loads(r.read(n))
while True:
 ready,_,_=select.select([r],[],[],.1)
 if ready and r.read(1)in(b'C',b''):break
reply={'protocol':1,'ok':False,'error':{'kind':'cancelled','message':'Call cancelled.'}}
b=json.dumps(reply,separators=(',',':')).encode();sys.stdout.buffer.write(struct.pack('>I',len(b))+b);sys.stdout.buffer.flush()
