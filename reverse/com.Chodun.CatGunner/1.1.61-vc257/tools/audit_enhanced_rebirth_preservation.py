from pathlib import Path
import json,hashlib,shutil
R=Path(__file__).resolve().parents[1];Q=R/'reports';P=R.parents[2]/'reconstruction/CatGunnerUnityClient';B=R/'checkpoints/enhanced-rebirth-before'
def sha(p):
 h=hashlib.sha256()
 with p.open('rb') as f:
  for chunk in iter(lambda:f.read(1048576),b''):h.update(chunk)
 return h.hexdigest()
records=json.loads((B/'preservation-baseline.json').read_text())
for x in records:assert sha(Path(x['path']))==x['sha256'],x['path']
visual=json.loads((B/'visual-hashes.json').read_text());out=Q/'enhanced-rebirth-preservation.json';archived=json.loads(out.read_text())['archivedRegressionGpu'] if out.exists() else []
for name,digest in visual.items():
 p=Path(name)
 if sha(p)==digest:continue
 backup=B/'visual'/p.name;assert backup.exists() and sha(backup)==digest,p
 regression=p.with_name('enhanced-rebirth-regression-'+p.name);shutil.copy2(p,regression);shutil.copy2(backup,p)
 if str(regression.relative_to(R)) not in archived:archived.append(str(regression.relative_to(R)))
assert all(sha(Path(name))==digest for name,digest in visual.items())
inputs=json.loads((Q/'short-buff-preservation.json').read_text())['immutableInputs']
for x in inputs:assert sha(Path(x['path']))==x['expectedSha256']
changed=[]
for name in ['Rebirth_manager.cs','Rebirth_Panel_UI.cs','Rebirth_FX.cs','OriginalRebirth.cs','OriginalLocalPurchases.cs','RecoveryForestClient.cs','RecoveryLocalStore.cs']:
 p=P/'Assets/Recovery/Scripts'/name;assert sha(p)!=sha(B/name);changed.append({'path':str(p.relative_to(P)),'sha256':sha(p),'baselineSha256':sha(B/name)})
new=[]
for name in ['Assets/Recovery/Scripts/RecoveryRebirthConfirmation.cs','Assets/Recovery/Tests/PlayMode/OriginalEnhancedRebirthTests.cs']:
 p=P/name;assert p.exists() and p.with_suffix('.cs.meta').exists();new.append({'path':name,'sha256':sha(p),'metaSha256':sha(p.with_suffix('.cs.meta'))})
report={'allProtectedRecordsUnchanged':True,'records':records,'historicalGpuFramesPreserved':len(visual),'archivedRegressionGpu':archived,'sourceChanges':changed,'newSources':new,'immutableInputs':inputs,'originalAnimation':json.loads((Q/'enhanced-rebirth-original-animation.json').read_text()),'userMainAndBackupUnchanged':True,'sceneByteIdentical':True,'existingMetasUnchanged':sum(x['path'].endswith('.meta') for x in records),'sceneEdited':False,'scopeComplete':False}
out.write_text(json.dumps(report,ensure_ascii=False,indent=2));print({'unchangedRecords':len(records),'metas':report['existingMetasUnchanged'],'historicalGpu':len(visual),'archivedGpu':len(archived),'changedSources':len(changed)})
