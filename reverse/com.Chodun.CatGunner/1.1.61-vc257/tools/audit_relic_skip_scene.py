"""Compare individual Unity YAML document bytes; read only, no serialized mutation."""
from pathlib import Path
import mmap,re,hashlib,json
R=Path(__file__).resolve().parents[1];P=R.parents[2]/'reconstruction/CatGunnerUnityClient'
def docs(path):
 out={}
 with path.open('rb') as f,mmap.mmap(f.fileno(),0,access=mmap.ACCESS_READ) as m:
  matches=list(re.finditer(rb'^--- !u!(\d+) &(\d+)\n',m,re.M))
  for i,x in enumerate(matches):
   end=matches[i+1].start() if i+1<len(matches) else len(m);view=memoryview(m)[x.start():end];h=hashlib.sha256(view).hexdigest();view.release();out[x[2].decode()]={'type':int(x[1]),'sha256':h}
 return out
old=docs(R/'reports/checkpoints/relic-skip-before/RecoveredClient.unity');new=docs(P/'Assets/Recovery/Scenes/RecoveredClient.unity')
changed=[{'id':k,'type':new[k]['type']} for k in old.keys()&new.keys() if old[k]['sha256']!=new[k]['sha256']];added=[{'id':k,'type':new[k]['type']} for k in new.keys()-old.keys()];removed=list(old.keys()-new.keys())
d={'changed':changed,'added':added,'removed':removed,'oldDocuments':len(old),'newDocuments':len(new)}
(R/'reports/relic-skip-scene-document-diff.json').write_text(json.dumps(d,indent=2)+'\n')
assert {x['id'] for x in changed}=={'1184','1309','1986'} and all(x['type']==1 for x in changed) and len(added)==3 and all(x['type']==114 for x in added) and not removed
print('Only three original GameObject component lists changed and three Scrolling documents added')
