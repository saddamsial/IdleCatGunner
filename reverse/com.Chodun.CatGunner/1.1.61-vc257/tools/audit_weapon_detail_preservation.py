from pathlib import Path
import json,hashlib,shutil
R=Path(__file__).resolve().parents[1];Q=R/'reports';P=R.parents[2]/'reconstruction/CatGunnerUnityClient';B=R/'checkpoints/weapon-detail-before'
def sha(p):
 h=hashlib.sha256()
 with p.open('rb') as f:
  for b in iter(lambda:f.read(1048576),b''):h.update(b)
 return h.hexdigest()
records=json.loads((B/'preservation-baseline.json').read_text());assert all(sha(Path(x['path']))==x['sha256'] for x in records if 'allowedLocalChange' not in x)
cacheChanges=[{**x,'currentSha256':sha(Path(x['path']))} for x in records if 'allowedLocalChange' in x]
assert len(cacheChanges)==1 and 'm_ClearDynamicDataOnBuild: 1' in Path(cacheChanges[0]['path']).read_text()
assert 'm_AtlasPopulationMode: 1' in Path(cacheChanges[0]['path']).read_text()
visual=json.loads((B/'visual-hashes.json').read_text());out=Q/'weapon-detail-preservation.json';archived=json.loads(out.read_text())['archivedRegressionGpu'] if out.exists() else []
for name,digest in visual.items():
 p=Path(name)
 if sha(p)==digest:continue
 backup=B/'visual'/p.name;assert backup.exists() and sha(backup)==digest,p
 regression=p.with_name('weapon-detail-regression-'+p.name);shutil.copy2(p,regression);shutil.copy2(backup,p)
 rel=str(regression.relative_to(R))
 if rel not in archived:archived.append(rel)
assert all(sha(Path(name))==digest for name,digest in visual.items())
for name in ['companion-follow-physics-observation.json','playtest-fixes-startup-legacy-profile-observation.json']:
 p=Q/name;backup=B/name
 if sha(p)!=sha(backup):shutil.copy2(p,Q/('weapon-detail-regression-'+name));shutil.copy2(backup,p)
inputs=json.loads((Q/'temporary-gun-preservation.json').read_text())['immutableInputs']
for x in inputs:assert sha(Path(x['path']))==x['expectedSha256']
changes=[]
for name in ['Gun_Item.cs','Gun_Info_UI.cs','Gun_manager.cs','NewGun_UI.cs','Gun_Item_Demo.cs','Gun_Slot.cs','Mission_Reward_Item.cs','Raid_GunSlot.cs','Raid_HelperSlot.cs']:
 p=P/'Assets/Recovery/Scripts'/name;changes.append({'path':str(p),'sha256':sha(p),'baselineSha256':sha(B/name)});assert changes[-1]['sha256']!=changes[-1]['baselineSha256']
new=[]
for name in ['Assets/Recovery/Scripts/OriginalWeaponText.cs','Assets/Recovery/Scripts/RecoveryWeaponTextStyle.cs','Assets/Recovery/Tests/PlayMode/OriginalWeaponPresentationTests.cs','Assets/Recovery/Resources/OriginalWeaponText.json']:
 p=P/name;new.append({'path':name,'sha256':sha(p),'metaSha256':sha(Path(str(p)+'.meta'))})
data={'allProtectedOriginalAndProfileRecordsUnchanged':True,'localCompatibilityFontCacheChanges':cacheChanges,'records':records,'historicalGpuFramesPreserved':len(visual),'archivedRegressionGpu':archived,'sourceChanges':changes,'newSources':new,'immutableInputs':inputs,'userMainAndBackupUnchanged':True,'sceneByteIdentical':True,'existingMetasUnchanged':sum(x['path'].endswith('.meta') for x in records),'sceneEdited':False,'originalAnimationAssetsByteIdentical':True,'scopeComplete':False};out.write_text(json.dumps(data,ensure_ascii=False,indent=2));print({'records':len(records),'metas':data['existingMetasUnchanged'],'historicalGpu':len(visual),'archivedGpu':len(archived)})
