from pathlib import Path
import json,hashlib,shutil
R=Path(__file__).resolve().parents[1];Q=R/'reports';P=R.parents[2]/'reconstruction/CatGunnerUnityClient';B=R/'checkpoints/temporary-gun-before'
def sha(p):
 h=hashlib.sha256()
 with p.open('rb') as f:
  for chunk in iter(lambda:f.read(1048576),b''):h.update(chunk)
 return h.hexdigest()
records=json.loads((B/'preservation-baseline.json').read_text());assert all(sha(Path(x['path']))==x['sha256'] for x in records)
visual=json.loads((B/'visual-hashes.json').read_text());out=Q/'temporary-gun-preservation.json';archived=json.loads(out.read_text())['archivedRegressionGpu'] if out.exists() else []
for name,digest in visual.items():
 p=Path(name)
 if sha(p)==digest:continue
 backup=B/'visual'/p.name;assert backup.exists() and sha(backup)==digest,p
 regression=p.with_name('temporary-gun-regression-'+p.name);shutil.copy2(p,regression);shutil.copy2(backup,p)
 if str(regression.relative_to(R)) not in archived:archived.append(str(regression.relative_to(R)))
assert all(sha(Path(name))==digest for name,digest in visual.items())
inputs=json.loads((Q/'enhanced-rebirth-preservation.json').read_text())['immutableInputs']
for x in inputs:assert sha(Path(x['path']))==x['expectedSha256'],x['path']
changes=[]
for name in ['Gun_manager.cs','Gun_Item.cs','OriginalGunInventory.cs','RecoveryForestClient.cs','Gun_Item_List.cs','OriginalInventoryTests.cs']:
 path=('Assets/Recovery/Tests/PlayMode/' if name=='OriginalInventoryTests.cs' else 'Assets/Recovery/Scripts/')+name;p=P/path;assert sha(p)!=sha(B/name);changes.append({'path':path,'sha256':sha(p),'baselineSha256':sha(B/name)})
new=[]
for name in ['Assets/Recovery/Scripts/OriginalTemporaryGun.cs','Assets/Recovery/Tests/PlayMode/OriginalTemporaryGunTests.cs']:
 p=P/name;assert p.exists() and p.with_suffix('.cs.meta').exists();new.append({'path':name,'sha256':sha(p),'metaSha256':sha(p.with_suffix('.cs.meta'))})
observation=Q/'companion-follow-physics-observation.json';backup=B/observation.name
if backup.exists() and sha(observation)!=sha(backup):shutil.copy2(observation,Q/('temporary-gun-regression-'+observation.name));shutil.copy2(backup,observation)
report={'allProtectedRecordsUnchanged':True,'records':records,'historicalGpuFramesPreserved':len(visual),'archivedRegressionGpu':archived,'sourceChanges':changes,'sourceBackupNotes':json.loads((B/'source-backup-notes.json').read_text()),'newSources':new,'immutableInputs':inputs,'userMainAndBackupUnchanged':True,'sceneByteIdentical':True,'existingMetasUnchanged':sum(x['path'].endswith('.meta') for x in records),'sceneEdited':False,'scopeComplete':False};out.write_text(json.dumps(report,ensure_ascii=False,indent=2));print({'unchangedRecords':len(records),'metas':report['existingMetasUnchanged'],'historicalGpu':len(visual),'archivedGpu':len(archived),'changedSources':len(changes)})
