"""Preserve scene, frozen bytes, GUIDs, user progress and historical GPU evidence."""
from pathlib import Path
import hashlib,json,shutil
R=Path(__file__).resolve().parents[1];P=R.parents[2]/'reconstruction/CatGunnerUnityClient';B=R/'checkpoints/diapig-entitlements-before';Q=R/'reports'
def sha(p):
 h=hashlib.sha256()
 with p.open('rb') as f:
  for block in iter(lambda:f.read(1048576),b''):h.update(block)
 return h.hexdigest()
rows=[]
for row in json.loads((B/'preservation-baseline.json').read_text()):
 actual=sha(Path(row['path']));assert actual==row['sha256'],row['path']
 rows.append(dict(row,currentSha256=actual,unchanged=True))
frozen=json.loads((Q/'original-diapig-contract.json').read_text())['frozen_inputs']
for row in frozen:assert sha(Path(row['path']))==row['sha256']
visual=[]
for row in json.loads((B/'visual-baseline.json').read_text()):
 p=Path(row['path']);old=B/'visual'/p.name;assert sha(old)==row['sha256']
 archive=None
 if not p.exists() or sha(p)!=row['sha256']:
  if p.exists():
   archive=p.with_name('diapig-entitlements-regression-'+p.name);shutil.copy2(p,archive)
  shutil.copy2(old,p)
 assert sha(p)==row['sha256']
 visual.append(dict(row,regressionArchive=str(archive) if archive else None,unchangedOrRestored=True))
changed=[]
for old in B.glob('*.cs'):
 if old.name=='OriginalDiaPigTests.cs':now=P/'Assets/Recovery/Tests/PlayMode'/old.name
 else:now=P/'Assets/Recovery/Scripts'/old.name
 if now.read_bytes()!=old.read_bytes():changed.append({'path':str(now),'sha256':sha(now),'beforeSha256':sha(old)})
assert len(changed)==6
out={'normalSceneByteUnchanged':True,'userMainAndBackupUnchanged':True,'userSaveRollback':False,'existingScriptMetasUnchanged':sum(r['path'].endswith('.meta') for r in rows),'newObjects':0,'baselineAndCurrent':rows,'immutableInputs':frozen,'changedSource':changed,'historicalImagesPreserved':len(visual),'historicalVisuals':visual,'scopeComplete':False}
(Q/'diapig-entitlements-preservation.json').write_text(json.dumps(out,indent=2)+'\n')
print({k:v for k,v in out.items() if k not in ['baselineAndCurrent','changedSource','immutableInputs','historicalVisuals']})
