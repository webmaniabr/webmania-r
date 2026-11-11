import subprocess,signal,time,sys,pathlib
CONSUMER=pathlib.Path(__file__).resolve().parent/'consumer'
for mode in ['cancel','deadline','close','task_close','gc','interrupt']:
 p=subprocess.Popen(['Rscript',str(CONSUMER/'lifecycle.R'),str(CONSUMER/'slow.py'),mode],stdout=subprocess.PIPE,stderr=subprocess.PIPE,text=True)
 if mode=='interrupt':
  while True:
   line=p.stderr.readline()
   if line.strip()=='READY':break
   if p.poll() is not None:raise AssertionError(('interrupt early exit',line))
  time.sleep(.1);p.send_signal(signal.SIGINT)
 out,err=p.communicate(timeout=20);print(out,err,flush=True);assert p.returncode==0,(mode,p.returncode)
print('Native task cancellation/deadline/close/GC/real SIGINT PASS')
