"""Append current progression acceptance without replacing historical evidence."""
from pathlib import Path
import json,hashlib,datetime
R=Path(__file__).resolve().parents[1]
P=R.parents[2]/'reconstruction/CatGunnerUnityClient'
def report(name):return json.loads((R/'reports'/name).read_text())
path=R/'reports/VERIFICATION.json';d=json.loads(path.read_text())
d['updated_utc']=datetime.datetime.now(datetime.timezone.utc).isoformat();d['scope_complete']=False
for name in ['inventory-client-scene-restoration.json','progression-client-scene-restoration.json','speedrun-client-scene-restoration.json','progression-catalogue-export.json','inventory-progression-native-contract.json','progression-activation-repair.json','speedrun-projectile-combat-observation.json','companion-follow-physics-observation.json','progression-source-and-user-save-audit.json','progression-inventory-visual-state.json']:
    d[name[:-5]]=report(name)
for key,name in [('inventory_earlier_focused','live-inventory-tests-fixed-status.json'),('inventory_focused','live-inventory-tests-follow-fixture-status.json'),('progression_earlier_focused','live-progression-tests-final-status.json'),('progression_navigation_confirmation_current','live-progression-tests-after-activation-status.json'),('progression_assembly_current','live-progression-assembly-final-status.json')]:
    p=R/'reports'/name
    if not p.exists():continue
    r=report(name)
    if 'data' in r:r=r['data']['result']
    d['unity_playmode'][key]={'report':name,**r}
    if key=='progression_assembly_current':
        assert r['status']=='completed' and r['summary']['failed']==0
        d['unity_playmode'].setdefault('forest_client_earlier_assembly_run',d['unity_playmode']['latest_live_editor_assembly_run'])
        d['unity_playmode']['latest_live_editor_assembly_run']={'report':name,**r}
        d['acceptance']['implemented_slice_playmode']=str(r['summary']['passed'])+'/'+str(r['summary']['total'])+' current recovery assembly PlayMode cases; no phone/player/backend acceptance'
d['acceptance']['inventory_companions']='16-slot gun inventory, original draw costs/merge/equip/unequip/collection/save; three ordinary cats following/chasing/attacking through original rules and forest projectile bridge. Locks unlock and auto merge gates remain pending.'
d['acceptance']['pets_rebirth_missions']='16-slot pet inventory/three equipped pets, original draw/merge/buffs/follower physics/static sprite fallback; ordinary rebirth/reset and permanent upgrade caches;23 daily tasks/25 season rewards under original capacity, sequence, ad/VIP gates. Original normal confirmation animation event and petcoin UI restored.'
d['acceptance']['speedrun']='Original190-tree pool and native ring placement,60-second timer, automatic movement/attacks, normal30-dia win once, fail/return to forest and separate save stage. Automatic projectile clear is checked with original Gun5 as an explicit independent gear fixture, not starter Gun0. Other stages/device not accepted.'
d['acceptance']['shooting_boundary']='Seven tree weapon types, forest/speed-run automatic movement and ordinary companion AI. Boss/Mine/Monster/Raid enemy lifecycles, helper AI, stars/skins/relics/fish, online table/full original manager lifecycle remain pending.'
d['acceptance']['save_boundary']='Independent original-codec recovery profile preserves user progress; inventory/collections/pets/rebirth/missions/speedrun bound. Local daily clock and5s autosave are explicit adapters. No phone private save or original scheduler/server time acceptance.'
d['acceptance']['progression_visual_current']='Not accepted: actual inventory screenshot inspection found a stale initial forest frame; native window discovery then timed out. Original-profile clone observation ended and normal saved scene restored. Functional86/86 remains separate from new-panel pixel, Spine, phone and player acceptance.'
d['acceptance']['progression_boundary']='SDK/IAP/VIP/Luxury/ad-gated rewards unavailable; no fake success or extra grants. Spine pet animations/dispatch, UI locking unlock gates, auto merge, higher/lower pet-info navigation, rebirth upgrade hold, full modes/visual/phone parity pending.'
scene=P/'Assets/Recovery/Scenes/RecoveredClient.unity'
d['current_client_scene_sha256']=hashlib.sha256(scene.read_bytes()).hexdigest()
handoff=R/'reports/progression-editor-handoff.json'
if handoff.exists():d['progression-editor-handoff']=report(handoff.name)
path.write_text(json.dumps(d,ensure_ascii=False,indent=2)+'\n')
print('Progression verification updated; all-game scope remains incomplete')

if (R/'reports/live-boss-assembly-final-status.json').exists():
    import runpy
    runpy.run_path(str(R/'tools/update_boss_verification.py'),run_name='__main__')
