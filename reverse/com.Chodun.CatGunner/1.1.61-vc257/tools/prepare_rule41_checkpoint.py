from pathlib import Path
import json,hashlib,shutil
R=Path(__file__).resolve().parents[1];root=R.parents[2];P=root/'reconstruction/CatGunnerUnityClient';out=R/'reports/checkpoints/playtest-fixes-before';out.mkdir(exist_ok=False)
shutil.copytree(P/'Assets/Recovery/Scripts',out/'Scripts');shutil.copytree(P/'Assets/Recovery/Tests',out/'Tests')
paths=[P/'Assets/Recovery/Scenes/RecoveredClient.unity',root/'README.md',R/'reports/VERIFICATION.json',R/'reports/RECOVERY_PROGRESS.md']
save=Path('/Users/rongdahuikeji/Library/Application Support/DefaultCompany/CatGunnerUnityClient/RecoveredClient-vc257/NoSaveFile.json');paths+=[save,Path(str(save)+'.bak')];rows=[]
for p in paths:shutil.copy2(p,out/p.name);rows.append({'path':str(p),'sha256':hashlib.sha256(p.read_bytes()).hexdigest()})
(out/'before.json').write_text(json.dumps(rows,indent=2)+'\n');v=out/'visual';v.mkdir();rows=[]
for p in (R/'reports/visual').glob('*.png'):shutil.copy2(p,v/p.name);rows.append({'name':p.name,'sha256':hashlib.sha256(p.read_bytes()).hexdigest()})
(v/'baseline.json').write_text(json.dumps(rows,indent=2)+'\n')
c=json.loads((R/'reports/mission-rejection-contract.json').read_text());c['scope']=['user reported100-diamond weapon UI feedback and successful draw','speedrun/Boss/monster background shader repair','complete native client mission season reset and UI','native offline simulation with explicit local clock','user-authorized local rewarded-ad simulation for Editor/offline builds','remaining UI entry/settlement paths'];c['excluded']=['real ad SDK/advertiser callbacks','payments/production entitlements/live accounts','server source/trusted network time','Player/device until requested'];c['userAuthorizedLocalVariant']=True
(R/'reports/playtest-fixes-contract.json').write_text(json.dumps(c,ensure_ascii=False,indent=2)+'\n');print('Preserved scripts/tests, current scene and current user-save hashes')
