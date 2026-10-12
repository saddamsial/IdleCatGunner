from pathlib import Path
import hashlib, json

R = Path(__file__).resolve().parents[1]
P = R.parents[2] / 'reconstruction/CatGunnerUnityClient'
B = R / 'assetripper-baseline/ExportedProject'
def sha(p):
    with p.open('rb') as f:
        h = hashlib.sha256()
        for block in iter(lambda: f.read(1024*1024), b''): h.update(block)
        return h.hexdigest()

before = json.loads((R/'reports/forest-input-fx-before.json').read_text())
saves = []
for row in before['files'][1:]:
    p = Path(row['path'])
    entry = {**row, 'current_sha256': sha(p), 'current_bytes': p.stat().st_size}
    entry['unchanged'] = entry['current_sha256'] == row['sha256'] and entry['current_bytes'] == row['bytes']
    assert entry['unchanged'], entry
    saves.append(entry)
frozen = []
previous = json.loads((R/'reports/weekly-raid-source-and-user-save-audit.json').read_text())
for row in previous['frozen_inputs']:
    entry = {**row, 'current_sha256': sha(Path(row['path']))}
    entry['unchanged'] = entry['current_sha256'] == row['expected']
    assert entry['unchanged'], entry
    frozen.append(entry)
metas = []
for name in ['DamageTextAnimation', 'DamageTextAnimationSetting', 'Particle_Polling', 'Tree', 'Tree_SpeedRun']:
    source = next((B/'Assets').rglob(name+'.cs.meta'))
    work = P/'Assets/Recovery/Scripts'/(name+'.cs.meta')
    entry = {'class': name, 'source': str(source), 'sha256': sha(work), 'original_meta_identical': sha(work) == sha(source)}
    assert entry['original_meta_identical'], entry
    metas.append(entry)
resources = []
for name in ['Money_Cri', 'Damage', 'Dia', 'Damage (Cri)']:
    for folder, suffix in [('GameObject','.prefab'), ('Font','.asset'), ('Texture2D','.png')]:
        rel = Path('Assets')/folder/(name+suffix)
        entry = {'path': str(rel), 'sha256': sha(P/rel), 'source_identical': sha(P/rel) == sha(B/rel), 'meta_identical': sha(P/(str(rel)+'.meta')) == sha(B/(str(rel)+'.meta'))}
        assert entry['source_identical'] and entry['meta_identical'], entry
        resources.append(entry)
rel = Path('Assets/Texture2D/Fx_Cash.png')
assert sha(P/rel) == sha(B/rel)
result = {'target':'com.Chodun.CatGunner 1.1.61 vc257 arm64', 'user_save':saves, 'final_user_save_matches_turn_start':True, 'frozen_inputs':frozen, 'original_script_metas':metas, 'original_damage_resources':resources, 'cash_texture_sha256':sha(P/rel), 'scene_before_sha256':before['files'][0]['sha256'], 'scene_sha256':sha(P/'Assets/Recovery/Scenes/RecoveredClient.unity'), 'save_boundary':'Isolated temporary archive tests; ordinary Play check used unsaved Persist=false. Original main/backup hashes match before, intermediate checks and final; no save restoration this turn.', 'scope_complete':False}
(R/'reports/forest-feedback-source-and-user-save-audit.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n')
print('Verified both user saves, three frozen inputs, five original script metas and twelve original damage resources.')
