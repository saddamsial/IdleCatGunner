"""Accept completed actual Raid runs; never compose different runs into a pass."""
from pathlib import Path
import json,hashlib,datetime
R=Path(__file__).resolve().parents[1];P=R.parents[2]/'reconstruction/CatGunnerUnityClient'
if 'star_evidence' in json.loads((R/'reports/VERIFICATION.json').read_text()):
 raise SystemExit('Star continuation already accepted; use update_star_acceptance.py; historical Raid reports preserved')
def report(name):
 d=json.loads((R/'reports'/name).read_text());return d.get('data',{}).get('result',d)
name='live-raid-assembly-final-status.json'
if not (R/'reports'/name).exists():raise SystemExit('Raid full run pending; acceptance unchanged')
r=report(name);f=report('live-raid-focused-final-status.json')
assert r['status']=='completed' and r['summary']['total']==106 and r['summary']['passed']==106 and r['summary']['failed']==0
assert f['status']=='completed' and f['summary']['total']==5 and f['summary']['passed']==5 and f['summary']['failed']==0
handoff=report('raid-editor-handoff.json')['result']
assert handoff['persist'] and handoff['saveOverride'] is None and not handoff['visualClone']
assert not any(handoff[k] for k in ['playing','paused','compiling','dirty'])
assert handoff['missingScripts']==0 and handoff['bossColliderValid'] and handoff['raidAnimatorsValid']
assert json.loads((R/'reports/raid-user-save-after-tests.json').read_text())['all_unchanged']
path=R/'reports/VERIFICATION.json';d=json.loads(path.read_text());u=d['unity_playmode'];current=u.get('latest_live_editor_assembly_run',{})
if current.get('report')!=name:u['prior_monster_live_editor_assembly_run']=current
u['latest_live_editor_assembly_run']={'report':name,**r};d['updated_utc']=datetime.datetime.now(datetime.timezone.utc).isoformat()
d['acceptance']['implemented_slice_playmode']=f"106/106 actual current recovery assembly PlayMode cases; {r['duration']} seconds; no phone/player/backend acceptance"
d['acceptance']['raid']='Original Raid navigation/loadout/20 item cells/three slots/five Boss skins, exact runtime10m base and precision3 cache/precision2 return, native weak type10x damage, ordinary2 entries/day and60sec timer, mode5 auto-move/real projectiles/type5 health and death/HUD/continuous Boss reload, local season/high-score/by-type history and star gems once, cancellation/early exit/forest loadout restore/save codec. Original Gun30 independent zero-input60sec projectile run tested. Local calendar/truncation/text/font/sprite/lifecycle adapters explicit. Trusted time/rankings/upload/Raid missions/stars/paid helper/ad/IAP/time bonus/visual/player/device acceptance pending.'
d['acceptance']['shooting_boundary']='Seven weapon types, forest/speedrun/Boss/Mine/Monster/Raid target and enemy lifecycles, ordinary companion AI. Paid helper AI, stars/skins/relics/fish, online table/full original manager lifecycle pending.'
d['raid_evidence']={'contract':'original-raid-client-contract.json','scene':'raid-client-scene-restoration.json','focused_first_failure':'live-raid-focused-first-status.json','focused_second':'live-raid-focused-second-status.json','focused_final':'live-raid-focused-final-status.json','full':name,'projectile':'raid-projectile-combat-observation.json','preservation':'raid-original-preservation.json','save_preservation':'raid-user-save-after-tests.json','handoff':'raid-editor-handoff.json','pre_raid_checkpoint':'../checkpoints/pre-raid-client/RecoveredClient.unity','commands':'raid-command-history.json'}
d['current_client_scene_sha256']=hashlib.sha256((P/'Assets/Recovery/Scenes/RecoveredClient.unity').read_bytes()).hexdigest()
if (R/'reports/raid-editor-handoff.json').exists():d['raid_editor_handoff']=report('raid-editor-handoff.json')
path.write_text(json.dumps(d,ensure_ascii=False,indent=2)+'\n')
for filename in ['original-raid-client-contract.json','raid-client-scene-restoration.json']:
 p=R/'reports'/filename;c=json.loads(p.read_text());c['validation']={'focused':f"5/5,{f['duration']}seconds",'full':f"106/106,{r['duration']}seconds",'visual_player_device':'unaccepted'}
 if 'runtime_validation' in c:c['runtime_validation']='actual focused5/5 and full106/106 PlayMode completed; player/device/visual parity pending'
 p.write_text(json.dumps(c,ensure_ascii=False,indent=2)+'\n')
print('Accepted actual106/106 full and5/5 final focused Raid runs; whole game remains incomplete')
