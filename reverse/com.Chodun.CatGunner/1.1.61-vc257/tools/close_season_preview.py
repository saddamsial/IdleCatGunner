"""Restore only test-generated outputs/cache, then audit current protected files."""
from pathlib import Path
import hashlib,json,sys
R=Path(__file__).resolve().parents[1];Q=R/'reports';P=R.parents[2]/'reconstruction/CatGunnerUnityClient';B=R/'checkpoints/season-preview-before'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
manifest=json.loads((B/'manifest.json').read_text())
if sys.argv[1]=='restore':
 historical=json.loads((B/'historical/manifest.json').read_text())
 for row in historical:
  f=Path(row['path']);backup=Path(row['backup']);assert sha(backup)==row['sha256']
  copy=Q/('season-preview-regression-'+f.name);copy.write_bytes(f.read_bytes());f.write_bytes(backup.read_bytes());assert sha(f)==row['sha256']
 font=manifest['files'][3];f=Path(font['path']);backup=Path(font['backup']);assert sha(backup)==font['sha256']
 result=dict(path=str(f),before=font['sha256'],testGenerated=sha(f),restored=font['sha256']);f.write_bytes(backup.read_bytes())
 (Q/'season-preview-font-cache.json').write_text(json.dumps(result,indent=2)+'\n')
 print(dict(restoredHistorical=len(historical),fontCache=result))
elif sys.argv[1]=='audit':
 files=[]
 for i,row in enumerate(manifest['files']):
  after=sha(Path(row['path']));changed=after!=row['sha256'];assert not changed or i in (4,5),row['path']
  files.append({**row,'after':after,'unchanged':not changed,'expectedCodeChange':i in (4,5)})
 changed=[path for path,before in manifest['metas'].items() if not Path(path).exists() or sha(Path(path))!=before]
 assert not changed,changed
 new=[str(f.relative_to(P)) for f in (P/'Assets/Recovery').rglob('*.meta') if str(f) not in manifest['metas']]
 assert len(new)==4,new
 out=dict(files=files,existingMetaCount=len(manifest['metas']),existingMetasChanged=changed,newMetas=new)
 (Q/'season-preview-preservation.json').write_text(json.dumps(out,indent=2)+'\n');print(dict(existingMetas=len(manifest['metas']),newMetas=new))
else:raise ValueError('restore or audit')
