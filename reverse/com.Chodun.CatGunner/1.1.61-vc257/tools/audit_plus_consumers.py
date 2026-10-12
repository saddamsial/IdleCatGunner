"""Current PlusPack changes preserve user saves, normal scene and frozen inputs."""
from pathlib import Path
import json,hashlib
R=Path(__file__).resolve().parents[1];W=R.parents[2];P=W/'reconstruction/CatGunnerUnityClient';B=R/'checkpoints/plus-consumers-before'
def sha(p):
 h=hashlib.sha256()
 with p.open('rb') as f:
  for block in iter(lambda:f.read(1048576),b''):h.update(block)
 return h.hexdigest()
records=[]
for row in json.loads((B/'preservation-baseline.json').read_text()):
 current=sha(Path(row['path']));assert current==row['sha256'],row['path'];records.append(dict(row,currentSha256=current))
metas=list((B/'Scripts').glob('*.meta'));assert all((P/'Assets/Recovery/Scripts'/p.name).read_bytes()==p.read_bytes() for p in metas)
inputs=json.loads((R/'reports/playtest-issues-preservation.json').read_text())['immutableInputs']
for row in inputs:assert sha(Path(row['path']))==row['expectedSha256']
native=R/'extracted/split_config.arm64_v8a/lib/arm64-v8a/libil2cpp.so';assert sha(native)=='80eb8bcbebd058ffb4beac5d8d7d544066587a7a1abee8898874847ff13dc583'
changed=[]
for p in (P/'Assets/Recovery/Scripts').glob('*.cs'):
 old=B/'Scripts'/p.name
 if not old.exists() or p.read_bytes()!=old.read_bytes():changed.append({'path':str(p.relative_to(P)),'sha256':sha(p),'baselineSha256':sha(old) if old.exists() else None})
out={'target':'com.Chodun.CatGunner 1.1.61 vc257','userMainAndBackupUnchanged':True,'normalSceneByteUnchanged':True,'baselineAndCurrent':records,'existingScriptMetasUnchanged':len(metas),'frozenMainAndMetadataUnchanged':True,'nativeSha256':sha(native),'changedSource':changed,'originalFieldsManifest':'reports/plus-item-manifest.json','runtimeBridgeOnly':True,'scopeComplete':False}
(R/'reports/plus-consumers-preservation.json').write_text(json.dumps(out,indent=2)+'\n');print({k:v for k,v in out.items() if k not in ['baselineAndCurrent','changedSource']})
