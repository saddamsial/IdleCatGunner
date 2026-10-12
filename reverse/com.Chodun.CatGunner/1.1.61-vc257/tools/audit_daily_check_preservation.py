from pathlib import Path
import hashlib,json
R=Path('/Volumes/ZHITAI_1T/IdleCatGunner/reverse/com.Chodun.CatGunner/1.1.61-vc257');P=R.parents[2]/'reconstruction/CatGunnerUnityClient';cp=R/'reports/checkpoints/daily-check-before'
h=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
frozen=json.loads((R/'reports/diapig-source-and-user-save-audit.json').read_text())['frozen_inputs']
for f in frozen: f['unchanged']=h(Path(f['path']))==f['sha256'];assert f['unchanged']
saves=[]
for f in json.loads((cp/'before.json').read_text()):
 if '/Application Support/' in f['path']:
  f['unchanged']=h(Path(f['path']))==f['sha256'];assert f['unchanged'];saves.append(f)
metas=[]
for n in ['DailyCheck','DailyCheck_Reward']:
 a=P/f'Assets/Recovery/Scripts/{n}.cs.meta';b=R/f'assetripper-baseline/ExportedProject/Assets/Scripts/Assembly-CSharp/{n}.cs.meta';assert a.read_bytes()==b.read_bytes();metas.append({'path':str(a),'sha256':h(a),'original_meta_preserved':True})
sources=[]
for f in [P/'Assets/Recovery/Scripts/DailyCheck.cs',P/'Assets/Recovery/Scripts/DailyCheck_Reward.cs',P/'Assets/Recovery/Scripts/RecoveryForestClient.cs',P/'Assets/Recovery/Tests/PlayMode/OriginalDailyCheckTests.cs',P/'Assets/Recovery/Tests/PlayMode/OriginalStartupTests.cs',P/'Assets/Recovery/Tests/PlayMode/OriginalOnboardingTests.cs',P/'Assets/Recovery/Editor/DailyCheckClientEditor.cs']:
 sources.append({'path':str(f),'sha256':h(f)})
report={'frozen_inputs':frozen,'user_saves':saves,'original_metas':metas,'sources':sources,'scene_before_sha256':h(cp/'RecoveredClient.unity'),'scene_sha256':h(P/'Assets/Recovery/Scenes/RecoveredClient.unity'),'scope_complete':False}
(R/'reports/daily-check-preservation-audit.json').write_text(json.dumps(report,indent=2)+'\n');print('frozen input, original meta and user save hashes verified')
