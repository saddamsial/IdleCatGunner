import json, subprocess, pathlib, hashlib
root=pathlib.Path(__file__).resolve().parent
assets=root.parents[2]/'reconstruction/CatGunnerUnityClient/Assets/Recovery/PenguinAudio'
workbench='/Users/rongdahuikeji/.codex/skills/game-sfx-design/scripts/sfx_workbench.py'
# Newly authored event sequences; no reference audio samples are mixed in.
rows=[
('Pop',.26,[(0,76,.7,.11),(.055,83,.45,.09)],.34),
('Button',.16,[(0,81,.7,.065)],.40),
('Spawn',.48,[(0,72,.6,.15),(.09,79,.6,.16),(.17,84,.4,.14)],.40),
('Fusion',.74,[(0,67,.6,.15),(.1,74,.5,.14),(.21,79,.7,.2),(.33,86,.4,.2)],.46),
('Upgrade',.47,[(0,72,.7,.13),(.09,79,.6,.12),(.19,84,.75,.17)],.44),
('Dont',.28,[(0,65,.55,.08),(.10,60,.5,.1)],.38),
('Rebirth',1.75,[(0,60,.5,.3),(.17,67,.6,.25),(.37,74,.6,.27),(.65,79,.8,.35),(.9,84,.6,.4)],.48),
('Purchase',.60,[(0,79,.5,.13),(.11,76,.55,.12),(.23,84,.7,.24)],.46),
('Shoot',.105,[(0,60,.7,.032)],.16),
('Select',.21,[(0,76,.65,.09),(.055,81,.45,.08)],.38),
('Enter',.66,[(0,67,.6,.15),(.1,72,.6,.16),(.23,79,.6,.24)],.40),
('Win',1.75,[(0,72,.7,.2),(.15,79,.55,.18),(.36,76,.6,.2),(.57,84,.75,.3),(.85,88,.45,.36)],.52),
('Fail',.91,[(0,72,.55,.17),(.18,67,.5,.16),(.40,60,.5,.24)],.43),
('UnSelect',.22,[(0,76,.5,.08),(.06,69,.5,.08)],.35),
('Tick',.11,[(0,86,.5,.045)],.26),
('StarUpgrade_Success',1.12,[(0,76,.6,.16),(.13,83,.5,.17),(.32,88,.6,.2),(.52,91,.55,.3)],.50),
('StarUpgrade_Fail',.54,[(0,70,.6,.13),(.13,65,.5,.16)],.40),
]
manifest=[]
for i,(name,duration,events,volume) in enumerate(rows):
 weights={'water':.60,'toy':.25,'magic':.15}
 if name=='Shoot': weights={'wood':.35,'toy':.6,'water':.05}
 if name in ('Dont','Fail','StarUpgrade_Fail'): weights={'wood':.25,'water':.65,'magic':.10}
 spec=dict(sample_rate=44100,duration=duration,seed=13100+i,weights=weights,active_rms=.105 if name!='Shoot' else .075,peak_cap=.64,fade_out=min(.06,duration/3),events=[dict(start=t,midi=n,velocity=v,decay=d,pan=0) for t,n,v,d in events])
 score=root/'scores'/f'{i:02d}-{name}.json';score.write_text(json.dumps(spec,indent=2)+'\n')
 out=assets/f'Ice_{name}.wav'
 subprocess.run(['python3',workbench,'render','--spec',str(score),'--out',str(out)],check=True,capture_output=True)
 manifest.append(dict(id=i,type=name,path=str(out.relative_to(assets.parent.parent.parent.parent)),duration=duration,volume=volume,sha256=hashlib.sha256(out.read_bytes()).hexdigest()))
(root/'manifest.json').write_text(json.dumps(dict(style='Cute crisp water drops, soft toy attacks and ice chimes',source='New event-score synthesis; no original audio samples used',clips=manifest),indent=2)+'\n')
for title,names in [('ui-preview',['Button','Pop','Select','UnSelect','Dont','Upgrade','Purchase']),('all-sfx-preview',[r[0] for r in rows])]:
 subprocess.run(['python3',workbench,'preview',*[str(assets/f'Ice_{n}.wav') for n in names],'--gap','.35','--out',str(root/f'{title}.wav')],check=True,capture_output=True)
print('Generated',len(rows),'clips and two audition chains')
