"""Preserve frozen game inputs, user progress, script GUIDs and historical GPU bytes."""
from pathlib import Path
import json,hashlib,shutil
R=Path(__file__).resolve().parents[1];P=R.parents[2]/'reconstruction/CatGunnerUnityClient';B=R/'checkpoints/short-buff-before';Q=R/'reports'
def sha(p):
 h=hashlib.sha256()
 with p.open('rb') as f:
  for b in iter(lambda:f.read(1048576),b''):h.update(b)
 return h.hexdigest()
scene=P/'Assets/Recovery/Scenes/RecoveredClient.unity';records=[]
for row in json.loads((B/'preservation-baseline.json').read_text()):
 p=Path(row['path'])
 if p==scene:continue
 current=sha(p);assert current==row['sha256'],p;records.append(dict(row,currentSha256=current,unchanged=True))
metas=list((B/'Scripts').glob('*.meta'));assert all(p.read_bytes()==(P/'Assets/Recovery/Scripts'/p.name).read_bytes() for p in metas)
testmetas=list((B/'Tests').glob('*.meta'));assert all(p.read_bytes()==(P/'Assets/Recovery/Tests/PlayMode'/p.name).read_bytes() for p in testmetas)
inputs=json.loads((Q/'stargem-pig-preservation.json').read_text())['immutableInputs']
for row in inputs:assert sha(Path(row['path']))==row['expectedSha256']
visuals=json.loads((B/'visual-hashes.json').read_text());previous=Q/'short-buff-preservation.json';archived=json.loads(previous.read_text()).get('archivedRegressions',[]) if previous.exists() else []
for name,digest in visuals.items():
 path=Path(name)
 if sha(path)==digest:continue
 regression=path.with_name('short-buff-regression-'+path.name);shutil.copy2(path,regression);backup=B/'visual'/path.name;assert sha(backup)==digest;shutil.copy2(backup,path);archived.append({'original':str(path.relative_to(R)),'regressionFrame':str(regression.relative_to(R)),'restoredSha256':digest})
assert all(sha(Path(p))==h for p,h in visuals.items())
changed=[]
for p in (P/'Assets/Recovery/Scripts').glob('*.cs'):
 old=B/'Scripts'/p.name
 if not old.exists() or old.read_bytes()!=p.read_bytes():changed.append({'path':str(p.relative_to(P)),'sha256':sha(p),'baselineSha256':sha(old) if old.exists() else None})
expected={'Buff_Type.cs','Buff_manager.cs','Buff_Panel.cs','Buff_Btn.cs','Buff_Menu_Btn.cs','OriginalShortBuffRules.cs','RecoveryForestClient.cs','OriginalEquipmentCatalogue.cs','Boss_manager.cs','Monster_manager.cs','SpeedRun_manager.cs','Mine_Start_UI.cs','Upgrade_Ingame.cs'};assert {Path(x['path']).name for x in changed}==expected
sc=json.loads((Q/'short-buff-scene-document-diff.json').read_text());assert sc['scopedFieldValidation'] and sc['existingRectValuesUnchanged'] and sc['newOriginalObjects']==120 and sc['removedExistingObjectsOrComponents']==0
out={'userMainAndBackupUnchanged':True,'records':records,'sceneChangedIntentionally':True,'sceneDocumentAudit':sc,'existingScriptMetasUnchanged':len(metas),'existingTestMetasUnchanged':len(testmetas),'immutableInputs':inputs,'changedSources':changed,'historicalGpuFramesPreserved':len(visuals),'archivedRegressions':archived,'scopeComplete':False};(Q/'short-buff-preservation.json').write_text(json.dumps(out,indent=2));print({'unchangedRecords':len(records),'scriptMetas':len(metas),'testMetas':len(testmetas),'sources':len(changed),'historicalGpu':len(visuals),'regressionsArchived':len(archived)})
