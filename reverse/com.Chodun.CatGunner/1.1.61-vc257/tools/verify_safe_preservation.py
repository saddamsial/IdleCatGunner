from pathlib import Path
import hashlib,json,datetime,re
R=Path(__file__).resolve().parents[1];root=R.parents[2];P=root/'reconstruction/CatGunnerUnityClient';reports=R/'reports';B=R/'assetripper-baseline/ExportedProject'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def write(n,d):(reports/n).write_text(json.dumps(d,ensure_ascii=False,indent=2)+'\n')
inputs=[(B/'Assets/Scenes/Main.unity','e672f743a687af8268ef45408c922d6ddc7edce2cf40b9b2531fe3ede23aba7b'),(R/'extracted/split_config.arm64_v8a/lib/arm64-v8a/libil2cpp.so','80eb8bcbebd058ffb4beac5d8d7d544066587a7a1abee8898874847ff13dc583')]
# Native hash read from the verified matching contract, never guessed from a report count.
c=json.loads((reports/'original-adventure-client-contract.json').read_text());inputs[1]=(inputs[1][0],c['native_sha256'])
metadata=next((R/'extracted').rglob('global-metadata.dat'));inputs.append((metadata,c['metadata_sha256']))
rows=[dict(path=str(p),sha256=sha(p),expected=e,unchanged=sha(p)==e) for p,e in inputs]
names=['Safe_manager','Safe_UI','Safe_HUD','Safe_Slot']
metas=[dict(name=n,source=sha(B/('Assets/Scripts/Assembly-CSharp/'+n+'.cs.meta')),working=sha(P/('Assets/Recovery/Scripts/'+n+'.cs.meta'))) for n in names]
assert all(x['unchanged'] for x in rows) and all(x['source']==x['working'] for x in metas)
write('safe-original-preservation.json',dict(frozen_inputs_unchanged=True,inputs=rows,original_metas_verified=len(metas),metas=metas,working_scene_sha256=sha(P/'Assets/Recovery/Scenes/RecoveredClient.unity'),scene_restoration='safe-client-scene-restoration.json',old_scene_snapshot='../checkpoints/pre-safe-client/RecoveredClient.unity'))
folder=Path.home()/'Library/Application Support/DefaultCompany/CatGunnerUnityClient/RecoveredClient-vc257';checkpoint=R/'checkpoints/pre-safe-client'
files=[dict(name=n,before=sha(checkpoint/n),after=sha(folder/n)) for n in ['NoSaveFile.json','NoSaveFile.json.bak']]
assert all(x['before']==x['after'] for x in files)
write('safe-user-save-after-tests.json',dict(whole_turn_hashes_unchanged=True,files=files,recorded_utc=datetime.datetime.now(datetime.timezone.utc).isoformat(),boundary='Started in clean EditMode. Tests use memory or unique temporary folders; no user profile injection/reset/rollback.'))
print('Frozen Main/native/metadata and4original metas verified; user main/backup whole-turn unchanged')
