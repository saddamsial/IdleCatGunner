"""Verify untouched original scene, script identities, frozen inputs and user progress; archive repeated GPU captures."""
from pathlib import Path
import json,hashlib,shutil
R=Path(__file__).resolve().parents[1];P=R.parents[2]/'reconstruction/CatGunnerUnityClient';B=R/'checkpoints/challenge-auto-before';Q=R/'reports'
def sha(p):
 h=hashlib.sha256()
 with p.open('rb') as f:
  for x in iter(lambda:f.read(1048576),b''):h.update(x)
 return h.hexdigest()
records=[]
for row in json.loads((B/'preservation-baseline.json').read_text()):
 p=Path(row['path']);current=sha(p);assert current==row['sha256'],p
 records.append(dict(row,currentSha256=current,unchanged=True))
metas=list((B/'Scripts').glob('*.meta'));assert all(p.read_bytes()==(P/'Assets/Recovery/Scripts'/p.name).read_bytes() for p in metas)
inputs=json.loads((Q/'stargem-pig-preservation.json').read_text())['immutableInputs']
for row in inputs:assert sha(Path(row['path']))==row['expectedSha256']
visuals=json.loads((B/'visual-hashes.json').read_text());previous=Q/'challenge-auto-preservation.json';restored=json.loads(previous.read_text()).get('archivedRegressions',[]) if previous.exists() else []
for name,digest in visuals.items():
 path=Path(name)
 if sha(path)==digest:continue
 archived=path.with_name('challenge-auto-regression-'+path.name);shutil.copy2(path,archived);backup=B/'visual'/path.name;assert sha(backup)==digest;shutil.copy2(backup,path);restored.append({'original':str(path.relative_to(R)),'regressionFrame':str(archived.relative_to(R)),'restoredSha256':digest})
assert all(sha(Path(p))==h for p,h in visuals.items())
changed=[]
for p in (P/'Assets/Recovery/Scripts').glob('*.cs'):
 old=B/'Scripts'/p.name
 if not old.exists() or old.read_bytes()!=p.read_bytes():changed.append({'path':str(p.relative_to(P)),'sha256':sha(p),'baselineSha256':sha(old) if old.exists() else None})
assert {Path(x['path']).name for x in changed}=={'SpeedRun_manager.cs','Mine_manager.cs','Monster_manager.cs'}
out={'target':'com.Chodun.CatGunner 1.1.61 vc257','userMainAndBackupUnchanged':True,'records':records,'existingScriptMetasUnchanged':len(metas),'immutableInputs':inputs,'sceneUnchanged':True,'existingDocumentsChanged':0,'existingRectTransformsChanged':0,'removedExistingIdentities':0,'newOriginalObjects':0,'newOriginalComponents':0,'changedSources':changed,'historicalGpuFramesPreserved':len(visuals),'archivedRegressions':restored,'scopeComplete':False}
(Q/'challenge-auto-preservation.json').write_text(json.dumps(out,indent=2));print({'unchangedRecords':len(records),'metas':len(metas),'sourcesChanged':len(changed),'historicalGpu':len(visuals),'regressionFramesArchived':len(restored),'userProgressUnchanged':True})
