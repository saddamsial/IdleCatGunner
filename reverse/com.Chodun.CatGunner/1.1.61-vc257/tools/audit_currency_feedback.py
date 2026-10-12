from pathlib import Path
import hashlib, json, re
R=Path(__file__).resolve().parents[1]
P=R.parents[2]/'reconstruction/CatGunnerUnityClient'
B=R/'assetripper-baseline/ExportedProject'
def sha(p):
    h=hashlib.sha256()
    with p.open('rb') as f:
        for chunk in iter(lambda:f.read(1024*1024),b''):h.update(chunk)
    return h.hexdigest()
before=json.loads((R/'reports/currency-feedback-before.json').read_text())
previous=json.loads((R/'reports/forest-feedback-source-and-user-save-audit.json').read_text())
saves=[]
for row in before['user_save']:
    p=Path(row['path']);current=sha(p)
    assert current==row['sha256'] and p.stat().st_size==row['bytes'],p
    saves.append({**row,'current_sha256':current,'unchanged':True})
frozen=[]
for row in previous['frozen_inputs']:
    current=sha(Path(row['path']));assert current==row['expected']
    frozen.append({'path':row['path'],'sha256':current,'unchanged':True})
resources=[]
paths=[row['path'] for row in previous['original_damage_resources']]+[
    'Assets/Texture2D/Fx_Cash.png','Assets/Material/Floor 3.mat',
    'Assets/Material/Sprite-Unlit-Default.mat','Assets/Material/SpriteFill.mat',
    'Assets/Sprite/0_6.asset','Assets/Texture2D/0.png',
    'Assets/Texture2D/sactx-0-4096x4096-ASTC 6x6-_UI-3277955d.png']
for path in paths:
    assert sha(P/path)==sha(B/path),path
    current_meta=(P/(path+'.meta')).read_text();original_meta=(B/(path+'.meta')).read_text()
    same=sha(P/(path+'.meta'))==sha(B/(path+'.meta'))
    guid=lambda text:re.search(r'^guid: ([0-9a-f]{32})$',text,re.M).group(1)
    assert guid(current_meta)==guid(original_meta),path+'.meta'
    if not same:assert path in ['Assets/Texture2D/0.png','Assets/Texture2D/sactx-0-4096x4096-ASTC 6x6-_UI-3277955d.png'],path
    resources.append({'path':path,'sha256':sha(P/path),'original_identical':True,'meta_identical':same,'original_guid_preserved':True,'meta_sha256':sha(P/(path+'.meta')),'meta_boundary':'Exact baseline bytes' if same else 'Existing Unity importer normalization; original GUID retained. Meta byte identity is not claimed.'})
metas=[]
for name in ['Currency','Ore','SpeedRun_manager','Boss_manager','Mine_manager','Tutorial_manager','DamageTextAnimation','DamageTextAnimationSetting','Particle_Polling','Tree','Tree_SpeedRun']:
    source=B/'Assets/Scripts/Assembly-CSharp'/(name+'.cs.meta');current=P/'Assets/Recovery/Scripts'/(name+'.cs.meta')
    assert sha(source)==sha(current),name
    metas.append({'class':name,'sha256':sha(current),'original_meta_identical':True})
checkpoint=R/'reports/checkpoints/currency-feedback-before/RecoveredClient-before-mine-renderers.unity'
assert sha(checkpoint)==before['scene_sha256']
sourcepaths=['Assets/Recovery/Editor/MineClientEditor.cs','Assets/Recovery/MineGroundCompatibility.shader','Assets/Recovery/MineGroundCompatibility.mat']
sourcepaths += ['Assets/Recovery/Scripts/'+n+'.cs' for n in ['RecoveryForestClient','RecoveryDamageTextPresenter','RecoveryRewardFeedback','OriginalDiamondReward','Currency','Ore','SpeedRun_manager','Boss_manager','Mine_manager','OriginalMissions','Tutorial_manager']]
sourcepaths += ['Assets/Recovery/Tests/PlayMode/'+n+'.cs' for n in ['OriginalCurrencyFeedbackTests','OriginalProgressionTests','OriginalBossTests']]
result={'target':'com.Chodun.CatGunner1.1.61vc257arm64','user_save':saves,'final_user_save_matches_turn_start':True,'frozen_inputs':frozen,'original_resources':resources,'original_metas':metas,'scene_before_sha256':before['scene_sha256'],'scene_sha256':sha(P/'Assets/Recovery/Scenes/RecoveredClient.unity'),'scene_checkpoint':str(checkpoint),'scene_changes':'Only3001 mine SpriteRenderer material assignments via UnityEditor API, followed by restoring ground14x7.48 tiling through a local compatibility material. Original material assets untouched.','current_sources':{s:sha(P/s) for s in sourcepaths},'save_boundary':'New feedback tests use random isolated temporary save directories. Related legacy tests disable persistence or use isolated directories before Initialize. Main and backup remain identical to turn-start hashes; no restoration/reset or counter migration this turn.','scope_complete':False}
(R/'reports/currency-feedback-source-and-user-save-audit.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n')
print('Verified two user saves, three frozen inputs, eleven script metas, nineteen original resources and current source/scene hashes.')
