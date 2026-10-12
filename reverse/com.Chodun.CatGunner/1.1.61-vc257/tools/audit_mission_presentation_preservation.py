from pathlib import Path
import json,hashlib
R=Path(__file__).resolve().parents[1];P=R.parents[2]/'reconstruction/CatGunnerUnityClient'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
rows=json.loads((R/'reports/checkpoints/mission-presentation-before/before.json').read_text())
saves=[]
for row in rows:
 if '/Library/Application Support/' in row['path']:
  current=sha(Path(row['path']));assert current==row['sha256'];saves.append({**row,'currentSha256':current,'unchanged':True})
old=json.loads((R/'reports/reward-presentation-preservation-audit.json').read_text())
frozen=[]
for row in old['frozen_inputs']:
 current=sha(Path(row['path']));assert current==row['sha256'];frozen.append({**row,'currentSha256':current})
metas=[]
for name in ['Mission_Reward_Item','Mission_Reward_Slot','Mission_Exp_Slider','Mission_Item_UI','Mission_manager','Currency','Bounce']:
 a=P/'Assets/Recovery/Scripts'/f'{name}.cs.meta';b=R/'assetripper-baseline/ExportedProject/Assets/Scripts/Assembly-CSharp'/f'{name}.cs.meta'
 if not b.exists():
  found=list((R/'assetripper-baseline/ExportedProject/Assets').rglob(f'{name}.cs.meta'));assert len(found)==1; b=found[0]
 assert a.read_bytes()==b.read_bytes();metas.append({'script':name,'guidMetaSha256':sha(a),'matchesFrozenMeta':True})
sources=[P/'Assets/Recovery/Scripts'/f'{n}.cs' for n in ['Mission_Reward_Item','Mission_Reward_Slot','Mission_Exp_Slider','Mission_Item_UI','Mission_manager','OriginalMissions']]+[P/'Assets/Recovery/Tests/PlayMode/OriginalMissionPresentationTests.cs',P/'Assets/Recovery/Editor/MissionPresentationClientEditor.cs']
report={'frozenInputs':frozen,'userSaves':saves,'originalMetas':metas,'sourceSha256':{str(p.relative_to(P)):sha(p) for p in sources},'sceneSha256':sha(P/'Assets/Recovery/Scenes/RecoveredClient.unity'),'scopeComplete':False}
(R/'reports/mission-presentation-preservation-audit.json').write_text(json.dumps(report,indent=2)+'\n')
print('user saves and metas verified')
