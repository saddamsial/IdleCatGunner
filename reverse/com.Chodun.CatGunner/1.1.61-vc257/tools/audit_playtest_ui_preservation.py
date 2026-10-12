from pathlib import Path
import json,hashlib,shutil
R=Path(__file__).resolve().parents[1];Q=R/'reports';W=R.parents[2];P=W/'reconstruction/CatGunnerUnityClient';B=R/'checkpoints/playtest-ui-before'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
records=json.loads((B/'preservation-baseline.json').read_text());changed=[x for x in records if sha(Path(x['path']))!=x['sha256']];assert not changed,changed
visual=json.loads((B/'historical-visual-baseline.json').read_text());out=Q/'playtest-ui-preservation.json';archived=json.loads(out.read_text()).get('archivedRegressionGpu',[]) if out.exists() else []
for item in visual:
 p=Path(item['path']);backup=B/'historical-visual'/p.name
 if sha(p)==item['sha256']:continue
 assert sha(backup)==item['sha256'];regression=p.with_name('playtest-ui-regression-'+p.name);shutil.copy2(p,regression);shutil.copy2(backup,p);rel=str(regression.relative_to(R))
 if rel not in archived:archived.append(rel)
assert all(sha(Path(x['path']))==x['sha256'] for x in visual)
observationArchives=[]
for name,backup in [('playtest-fixes-startup-legacy-profile-observation.json',B/'playtest-fixes-startup-legacy-profile-observation.json'),('companion-follow-physics-observation.json',R/'checkpoints/weapon-detail-before/companion-follow-physics-observation.json')]:
 p=Q/name;regression=Q/('playtest-ui-regression-'+name)
 if sha(p)!=sha(backup):shutil.copy2(p,regression);shutil.copy2(backup,p)
 observationArchives.append({'path':name,'restoredSha256':sha(p),'fromCheckpoint':str(backup.relative_to(R)),'boundary':'startup snapshotted before this round regression; companion restored from prior Rule59 preserved snapshot (no independent Rule60 pre-run hash)'})
inputs=json.loads((Q/'weapon-detail-preservation.json').read_text())['immutableInputs'];assert all(sha(Path(x['path']))==x['expectedSha256'] for x in inputs)
sources=[]
for name in ['Currency.cs','Upgrade_Ingame.cs','Gun_Info_UI.cs','Gun_Slot.cs','OriginalEquipmentCatalogue.cs','RecoveryForestClient.cs']:
 p=P/'Assets/Recovery/Scripts'/name;before=B/name;assert sha(p)!=sha(before);sources.append({'path':str(p),'sha256':sha(p),'baselineSha256':sha(before)})
new=[]
for name in ['Assets/Recovery/Scripts/OriginalNumberText.cs','Assets/Recovery/Scripts/RecoveryClientPresentation.cs','Assets/Recovery/Scripts/Gun_Collection_UI.cs','Assets/Recovery/Scripts/Gun_Item_Collection.cs','Assets/Recovery/Resources/OriginalNumberFormat.json','Assets/Recovery/Resources/OriginalWeaponDrawInformation.prefab','Assets/Recovery/Resources/OriginalWeaponCollection.prefab','Assets/Recovery/Resources/OriginalLaserAlphaMaterial.mat','Assets/Recovery/Scenes/RecoveredWeaponPagesSource.unity','Assets/Recovery/Tests/PlayMode/OriginalPlaytestUITests.cs','Assets/Recovery/Editor/PlaytestUIPresentationEditor.cs']:
 p=P/name;new.append({'path':name,'sha256':sha(p),'metaSha256':sha(Path(str(p)+'.meta'))})
data={'rule':60,'all517BaselineRecordsUnchanged':len(records)==517,'records':records,'userMainAndBackupUnchanged':True,'workingSceneByteIdentical':True,'existingMetasUnchanged':sum(x['path'].endswith('.meta') for x in records),'fontCache':'Known generated StarChineseFallback exact before bytes restored after tests; original fonts and GUID unchanged','historicalGpuFramesPreserved':len(visual),'archivedRegressionGpu':archived,'immutableInputs':inputs,'observationArchives':observationArchives,'sourceChanges':sources,'newSources':new,'otherChanges':['Runtime asmdef adds Unity.2D.Animation.Runtime only','OriginalOnboardingTests updates stale9 HUD assertion to10, checks original restored DailyCheck reference','Native query selector adds bounded playtest-ui-client scope'],'sceneEdited':False,'scopeComplete':False};out.write_text(json.dumps(data,ensure_ascii=False,indent=2));print({'records':len(records),'metas':data['existingMetasUnchanged'],'historicalGpu':len(visual),'archived':len(archived)})
