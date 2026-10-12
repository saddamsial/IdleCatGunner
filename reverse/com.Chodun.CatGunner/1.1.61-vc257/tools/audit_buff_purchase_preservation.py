from pathlib import Path
import json,hashlib,shutil
R=Path(__file__).resolve().parents[1];Q=R/'reports';P=R.parents[2]/'reconstruction/CatGunnerUnityClient';B=R/'checkpoints/buff-purchase-before'
def sha(p):
 h=hashlib.sha256()
 with p.open('rb') as f:
  for b in iter(lambda:f.read(1048576),b''):h.update(b)
 return h.hexdigest()
records=json.loads((B/'preservation-baseline.json').read_text())
for x in records:assert sha(Path(x['path']))==x['sha256'],x['path']
visual=json.loads((B/'visual-hashes.json').read_text());archived=[]
for name,digest in visual.items():
 p=Path(name)
 if sha(p)==digest:continue
 backup=B/'visual'/p.name;assert backup.exists() and sha(backup)==digest,p
 regression=p.with_name('buff-purchase-regression-'+p.name);shutil.copy2(p,regression);shutil.copy2(backup,p);archived.append(str(regression.relative_to(R)))
assert all(sha(Path(name))==digest for name,digest in visual.items())
inputs=json.loads((Q/'short-buff-preservation.json').read_text())['immutableInputs']
for x in inputs:assert sha(Path(x['path']))==x['expectedSha256']
changed=[]
for name in ['RecoveryLocalStore.cs','RecoveryLocalPurchaseButton.cs','OriginalOfflineSimulation.cs']:
 p=P/'Assets/Recovery/Scripts'/name;old=B/name
 if not old.exists():old=R/'checkpoints/short-buff-before/Scripts'/name
 assert old.exists();changed.append({'path':str(p.relative_to(P)),'sha256':sha(p),'baselineSha256':sha(old)})
report={'allProtectedRecordsUnchanged':True,'records':records,'historicalGpuFramesPreserved':len(visual),'archivedRegressionGpu':archived,'sourceChanges':changed,'newTestSource':{'path':'Assets/Recovery/Tests/PlayMode/OriginalBuffPurchaseTests.cs','sha256':sha(P/'Assets/Recovery/Tests/PlayMode/OriginalBuffPurchaseTests.cs')},'immutableInputs':inputs,'userMainAndBackupUnchanged':True,'sceneByteIdentical':True,'existingMetasUnchanged':sum(x['path'].endswith('.meta') for x in records),'scopeComplete':False}
(Q/'buff-purchase-preservation.json').write_text(json.dumps(report,ensure_ascii=False,indent=2));print({'unchangedRecords':len(records),'metas':report['existingMetasUnchanged'],'historicalGpu':len(visual),'archivedGpu':len(archived)})
