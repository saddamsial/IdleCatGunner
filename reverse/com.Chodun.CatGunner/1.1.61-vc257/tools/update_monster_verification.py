"""Accept a real completed Monster/full run; retain each earlier run independently."""
from pathlib import Path
import json,hashlib
R=Path(__file__).resolve().parents[1];P=R.parents[2]/'reconstruction/CatGunnerUnityClient'
# Keep later Raid acceptance when refreshing the older stage.
if (R/'reports/live-raid-assembly-final-status.json').exists():
 import runpy
 runpy.run_path(str(R/'tools/update_raid_verification.py'),run_name='__main__')
 raise SystemExit(0)
def report(name):
 d=json.loads((R/'reports'/name).read_text());return d.get('data',{}).get('result',d)
name='live-monster-assembly-final-status.json'
if not (R/'reports'/name).exists():raise SystemExit('Full Monster regression pending; no acceptance changed')
r=report(name);focused=report('live-monster-focused-final-status.json')
assert r['status']=='completed' and r['summary']['total']==101 and r['summary']['passed']==101 and r['summary']['failed']==0
assert focused['status']=='completed' and focused['summary']['total']==5 and focused['summary']['passed']==5
path=R/'reports/VERIFICATION.json';d=json.loads(path.read_text());u=d['unity_playmode'];current=u.get('latest_live_editor_assembly_run',{})
if current.get('report')!=name:u['prior_mine_live_editor_assembly_run']=current
u['latest_live_editor_assembly_run']={'report':name,**r}
d['acceptance']['implemented_slice_playmode']=f"101/101 actual current recovery assembly PlayMode cases; {r['duration']} seconds; no phone/player/backend acceptance"
d['acceptance']['monster']='Original240 monster pool/20 sprites/2000 health values, five quotas90/120/160/200/240, native spawn ellipse/intervals/catch-up, type3 original EnemyColl/health/bounce/slime5, inward Rigidbody movement and damage-ratio knockback, base HP/invasion replacement/freeze, mode4 radius14 automatic movement/clamp/offscreen hints and60 rays, ordinary30 petcoin per level exactly once, five-level wave rollover/save, cancellation/give-up/forest return. Actual zero-input Gun20 projectile first-level win and native single-life barrier failure independently tested. Offline wallet/lifecycle, decimal and Shapes/sprite rendering adapters explicit; paid/ad/sweep/rank/pixel/device acceptance pending.'
d['acceptance']['shooting_boundary']='Seven weapon types, forest/speedrun/Boss/Mine/Monster target and enemy lifecycles, ordinary companion AI. Raid/helper AI, stars/skins/relics/fish, online table/full original manager lifecycle pending.'
d['monster_evidence']={'contract':'original-monster-client-contract.json','scene':'monster-client-scene-restoration.json','focused_first':'live-monster-focused-first-status.json','focused_final':'live-monster-focused-final-status.json','full':name,'projectile':'monster-projectile-combat-observation.json','natural_breach':'monster-natural-breach-observation.json','literals':'monster-ui-literal-resolution.json','material_compatibility':'monster-material-compatibility.txt','original_preservation':'monster-original-preservation.json','save_preservation':'monster-user-save-after-tests.json','pre_monster_scene':'../checkpoints/pre-monster-client/RecoveredClient.unity','command_history':'monster-command-history.json'}
with (P/'Assets/Recovery/Scenes/RecoveredClient.unity').open('rb') as f:
 h=hashlib.sha256()
 for block in iter(lambda:f.read(8*1024*1024),b''):h.update(block)
d['current_client_scene_sha256']=h.hexdigest()
if (R/'reports/monster-editor-handoff.json').exists():d['monster_editor_handoff']=report('monster-editor-handoff.json')
path.write_text(json.dumps(d,ensure_ascii=False,indent=2)+'\n')
p=R/'reports/original-monster-client-contract.json';contract=json.loads(p.read_text());contract['validation']={'focused_first':'4/4,100.85seconds','focused_final':f"5/5,{focused['duration']}seconds",'full':f"101/101,{r['duration']}seconds",'visual_player_device':'unaccepted'};p.write_text(json.dumps(contract,ensure_ascii=False,indent=2)+'\n')
p=R/'reports/monster-client-scene-restoration.json';scene=json.loads(p.read_text());scene['runtime_validation']=f"101/101 recovery assembly PlayMode;5/5 Monster focused; no visual/player/device acceptance";p.write_text(json.dumps(scene,ensure_ascii=False,indent=2)+'\n')
print('Accepted real101/101 full and5/5 focused Monster runs; full original game still incomplete')
