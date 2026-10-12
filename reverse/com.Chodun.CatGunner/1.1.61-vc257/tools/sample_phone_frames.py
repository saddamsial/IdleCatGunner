from pathlib import Path
import subprocess,shlex,re,statistics,time,json,sys
Q=Path(__file__).resolve().parents[1]/'reports';ADB='/Users/rongdahuikeji/Library/Android/sdk/platform-tools/adb'
def adb(*args):return subprocess.run([ADB,'-s','85906d12',*args],capture_output=True,text=True,check=True).stdout
layers=adb('shell','dumpsys SurfaceFlinger --list').splitlines();layer=next(re.search(r'RequestedLayerState\{(.*?) parentId=',s)[1] for s in layers if 'catgunner.recovery' in s and '(BLAST)' in s)
rows={};raw=[]
for i in range(20):
 x=adb('shell','dumpsys SurfaceFlinger --latency '+shlex.quote(layer));raw.append(x)
 for line in x.splitlines()[1:]:
  cols=line.split()
  if len(cols)==3:
   v=int(cols[1])
   if 0<v<2**63-1:rows[v]=list(map(int,cols))
 if i<19:time.sleep(1)
a=sorted(rows);d=[(y-x)/1e6 for x,y in zip(a,a[1:]) if y>x]
r=dict(pollIntervalSeconds=1,polls=20,layer=layer,samples=len(a),durationMs=sum(d),medianMs=statistics.median(d),meanMs=statistics.mean(d),fps=1000/statistics.mean(d),p95Ms=sorted(d)[int(len(d)*.95)],over50ms=sum(x>50 for x in d),over100ms=sum(x>100 for x in d),boundary='Short physical-device SurfaceFlinger present timestamp sample; not sustained all-scene performance acceptance')
(Q/(sys.argv[1]+'-frames.json')).write_text(json.dumps(r,indent=2)+'\n');(Q/(sys.argv[1]+'-frames-raw.txt')).write_text('\n'.join(raw));print(r)
