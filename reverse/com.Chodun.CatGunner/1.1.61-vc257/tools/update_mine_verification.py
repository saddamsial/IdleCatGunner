"""Accept completed Mine regression while retaining all failures and earlier runs."""
from pathlib import Path
import json,hashlib
R=Path(__file__).resolve().parents[1];P=R.parents[2]/'reconstruction/CatGunnerUnityClient'
def report(name):
 d=json.loads((R/'reports'/name).read_text());return d.get('data',{}).get('result',d)
name='live-mine-assembly-final-status.json'
if not (R/'reports'/name).exists():raise SystemExit('Mine full regression pending; no acceptance changed')
r=report(name);assert r['status']=='completed' and r['summary']['total']==96 and r['summary']['failed']==0
path=R/'reports/VERIFICATION.json';d=json.loads(path.read_text());u=d['unity_playmode'];current=u.get('latest_live_editor_assembly_run',{})
if not (R/'reports/live-monster-assembly-final-status.json').exists():
 if current.get('report')!=name:u['prior_boss_live_editor_assembly_run']=current
 u['latest_live_editor_assembly_run']={'report':name,**r}
d['acceptance']['implemented_slice_playmode']=f"96/96 current recovery assembly PlayMode cases; {r['duration']} seconds; no phone/player/backend acceptance"
d['acceptance']['mine']='Original1000 ore pool/two sprites/health bars/bounce/dust, normal2 daily tickets, exact4-unit annulus/Perlin-ranked layout/100 rare cap, mode2 automatic ore search/movement/actual projectiles, hit1 regardless gun damage, normal3/rare5 health,60sec natural timeout, floor(score/10) diamonds once/Best_Reward/ticket save/mission3, cancel and forest return. Gun20 independent fixture; local offline daily clock and rendering/text compatibility explicit. Native floating diamond text/paid/ad/sweep/backend/pixel/device acceptance pending.'
d['acceptance']['shooting_boundary']='Seven weapon types, forest/speedrun/Boss/Mine target and enemy lifecycles, ordinary companion AI. Monster/Raid, helper AI, stars/skins/relics/fish, online table/full original manager lifecycle pending.'
d['mine_evidence']={'contract':'original-mine-client-contract.json','scene':'mine-client-scene-restoration.json','references':'mine-ore-reference-repair.json','focused':'live-mine-focused-third-status.json','projectile':'mine-projectile-combat-observation.json','historical_failure':'live-mine-focused-second-status.json','command_history':'mine-command-history.json','dust_compatibility':'mine-dust-material-compatibility.txt','original_preservation':'mine-original-preservation.json','save_preservation':'mine-user-save-after-tests.json','pre_mine_scene':'../checkpoints/pre-mine-RecoveredClient.unity'}
d['current_client_scene_sha256']=hashlib.sha256((P/'Assets/Recovery/Scenes/RecoveredClient.unity').read_bytes()).hexdigest()
if (R/'reports/mine-editor-handoff.json').exists():d['mine_editor_handoff']=report('mine-editor-handoff.json')
path.write_text(json.dumps(d,ensure_ascii=False,indent=2)+'\n')
p=R/'reports/original-mine-client-contract.json';contract=json.loads(p.read_text());contract['validation']={'focused':'5/5,91.76seconds','full':f"96/96,{r['duration']}seconds",'visual_player_device':'unaccepted'};p.write_text(json.dumps(contract,ensure_ascii=False,indent=2)+'\n')
p=R/'reports/mine-client-scene-restoration.json';scene=json.loads(p.read_text());scene['runtime_validation']='96/96 recovery assembly PlayMode;5/5 Mine focused; no visual/player/device acceptance';scene['reference_repair']='All1000 original spriteRenderer/DustSpawn_trans restored through source-subtree Editor API mapping';p.write_text(json.dumps(scene,ensure_ascii=False,indent=2)+'\n')
print('Accepted Mine full96/96 regression; no full-game/device/backend parity claim')

# Preserve later Monster acceptance when refreshing older Mine evidence.
if (R/"reports/live-monster-assembly-final-status.json").exists():
 import runpy
 runpy.run_path(str(R/"tools/update_monster_verification.py"),run_name="__main__")
