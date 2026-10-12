"""Read-only frozen inputs, current source, original GUIDs and user-save audit."""
from pathlib import Path
import json,hashlib
R=Path(__file__).resolve().parents[1];P=R.parents[2]/'reconstruction/CatGunnerUnityClient';B=R/'assetripper-baseline/ExportedProject'
def sha(p):
 h=hashlib.sha256()
 with p.open('rb') as f:
  for block in iter(lambda:f.read(1024*1024),b''):h.update(block)
 return h.hexdigest()
previous=json.loads((R/'reports/mission-presentation-preservation-audit.json').read_text());inputs=[]
for row in previous['frozenInputs']:
 value=sha(Path(row['path']));assert value==row['sha256'];inputs.append({'path':row['path'],'sha256':value,'unchanged':True})
saves=[]
for row in json.loads((R/'reports/checkpoints/mission-sorting-before/before.json').read_text()):
 if 'NoSaveFile.json' not in row['path']:continue
 value=sha(Path(row['path']));assert value==row['sha256'];saves.append({**row,'currentSha256':value,'unchanged':True})
metas=[]
for name in ['Mission_manager']:
 meta=P/'Assets/Recovery/Scripts'/(name+'.cs.meta');original=next(B.rglob(name+'.cs.meta'));assert meta.read_bytes()==original.read_bytes();metas.append({'script':name,'metaSha256':sha(meta),'matchesFrozen':True})
paths=[P/'Assets/Recovery/Scripts'/(n+'.cs') for n in ['Mission_manager','OriginalMissions','RecoveryWeeklyUiTween']]+[P/'Assets/Recovery/Tests/PlayMode/OriginalMissionSortingTests.cs']
checkpoint=json.loads((R/'reports/checkpoints/mission-sorting-before/before.json').read_text());oldscene=next(x for x in checkpoint if x['path'].endswith('/RecoveredClient.unity'));assert sha(P/'Assets/Recovery/Scenes/RecoveredClient.unity')==oldscene['sha256'];assert (P/'Assets/Recovery/Scripts/RecoveryWeeklyUiTween.cs').read_bytes()==(R/'reports/checkpoints/mission-sorting-before/RecoveryWeeklyUiTween.cs').read_bytes()
report={'sceneUnchanged':True,'pulseSourceUnchanged':True,'inputs':inputs,'saves':saves,'metas':metas,'sourceSha256':{str(x.relative_to(P)):sha(x) for x in paths},'sceneSha256':sha(P/'Assets/Recovery/Scenes/RecoveredClient.unity')}
(R/'reports/mission-sorting-preservation-audit.json').write_text(json.dumps(report,indent=2)+'\n');print('Frozen inputs, original GUIDs and both user saves unchanged')
