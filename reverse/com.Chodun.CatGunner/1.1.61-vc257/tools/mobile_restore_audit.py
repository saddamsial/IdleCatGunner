from pathlib import Path
import json,hashlib,sys
R=Path(__file__).resolve().parents[1];Q=R/'reports';P=R.parents[2]/'reconstruction/CatGunnerUnityClient';B=R/'checkpoints/mobile-ui-before';m=json.loads((B/'manifest.json').read_text())
def sha(f):return hashlib.sha256(f.read_bytes()).hexdigest()
if sys.argv[1]=='restore':
 for row in m['historical']:
  f=Path(row['path']);b=Path(row['backup']);assert sha(b)==row['sha256'];(Q/('mobile-regression-'+f.name)).write_bytes(f.read_bytes());f.write_bytes(b.read_bytes());assert sha(f)==row['sha256']
 row=m['files'][3];f=Path(row['path']);result=dict(before=row['sha256'],generated=sha(f),restored=row['sha256']);f.write_bytes(Path(row['backup']).read_bytes());(Q/'mobile-font-cache.json').write_text(json.dumps(result,indent=2)+'\n');print(dict(historicalRestored=len(m['historical']),font=result))
else:
 files=[]
 for i,row in enumerate(m['files']):
  after=sha(Path(row['path']));assert after==row['sha256'] or i in (4,6,8),row['path'];files.append({**row,'after':after,'unchanged':after==row['sha256'],'allowedChange':i in (4,6,8)})
 changed=[f for f,s in m['metas'].items() if not Path(f).exists() or sha(Path(f))!=s];assert not changed,changed
 new=[str(f.relative_to(P)) for f in (P/'Assets/Recovery').rglob('*.meta') if str(f) not in m['metas']];assert len(new)==3,new
 for row in m['historical']:assert sha(Path(row['path']))==row['sha256']
 x=dict(files=files,existingMetas=len(m['metas']),existingMetasChanged=changed,newMetas=new,historicalRestored=len(m['historical']));(Q/'mobile-preservation.json').write_text(json.dumps(x,indent=2)+'\n');print(dict(existingMetas=len(m['metas']),newMetas=new,protectedMainAndBackup=True,sceneUnchanged=True))
