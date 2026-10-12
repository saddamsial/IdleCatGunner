"""Append Boss acceptance without converting Editor tests into device or backend parity."""
from pathlib import Path
import json,hashlib
R=Path(__file__).resolve().parents[1];P=R.parents[2]/'reconstruction/CatGunnerUnityClient'
path=R/'reports/VERIFICATION.json';d=json.loads(path.read_text())
def report(name):
 r=json.loads((R/'reports'/name).read_text())
 return r.get('data',{}).get('result',r)
name='live-boss-assembly-final-status.json'
if (R/'reports'/name).exists() and not (R/'reports/live-mine-assembly-final-status.json').exists():
 r=report(name)
 assert r['status']=='completed' and r['summary']['failed']==0
 current=d['unity_playmode'].get('latest_live_editor_assembly_run',{})
 if current.get('report')!=name:d['unity_playmode']['prior_progression_live_editor_assembly_run']=current
 d['unity_playmode']['latest_live_editor_assembly_run']={'report':name,**r}
 d['acceptance']['implemented_slice_playmode']=f"{r['summary']['passed']}/{r['summary']['total']} current recovery assembly PlayMode cases; no phone/player/backend acceptance"
d['acceptance']['boss']='Original 1000-entry health cache, nine animated skins, wander/avoidance, automatic cat target provider, 60-second normal timer, enemy-type2 health and death dispatch, ordinary150-dia once, fail/return, Boss_Stage save. Actual automatic projectile win uses independent original Gun20 fixture, not user save or starter gear. Full pixels/phone and beyond-cache InfVal precision unaccepted.'
d['acceptance']['shooting_boundary']='Seven weapon types, forest/speedrun/Boss target and enemy lifecycles, ordinary companion AI. Mine/Monster/Raid, helper AI, stars/skins/relics/fish, online table/full original manager lifecycle pending.'
d['acceptance']['save_boundary']='Independent original-codec recovery save retains player wallet, gear and forest/Boss progress. Legacy absent/empty pet collection and rebirth upgrade arrays initialize to neutral empty records; malformed populated arrays still rejected. Local daily clock and5s autosave explicit adapters. No phone private save/server schedule acceptance.'
d['acceptance']['boss_visual']='Original460-object slice integrated through Editor APIs and original GUIDs; one Canvas and nine original Animator controllers verified. Full Boss screen pixel comparison and device acceptance pending; no synthetic visual accepted.'
d['boss_evidence']={'contract':'original-boss-client-contract.json','scene':'boss-client-scene-restoration.json','focused':'live-boss-focused-second-status.json','projectile':'boss-projectile-combat-observation.json','historical_failure':'live-boss-focused-first-status.json','pre_boss_scene':'../checkpoints/pre-boss-RecoveredClient.unity'}
d['current_client_scene_sha256']=hashlib.sha256((P/'Assets/Recovery/Scenes/RecoveredClient.unity').read_bytes()).hexdigest()
if (R/'reports/boss-editor-handoff.json').exists():d['boss_editor_handoff']=report('boss-editor-handoff.json')
path.write_text(json.dumps(d,ensure_ascii=False,indent=2)+'\n')
print('Boss evidence updated; complete original client/device/backend parity remains open')

# Preserve later Mine acceptance when refreshing older Boss evidence.
if (R/"reports/live-mine-assembly-final-status.json").exists():
 import runpy
 runpy.run_path(str(R/"tools/update_mine_verification.py"),run_name="__main__")
