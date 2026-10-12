"""Read-only audit for Rule 41; never decodes or prints private profile data."""
from pathlib import Path
import json,hashlib
R=Path(__file__).resolve().parents[1];P=R.parents[2]/'reconstruction/CatGunnerUnityClient';B=R/'assetripper-baseline/ExportedProject';C=R/'reports/checkpoints/playtest-fixes-before'
def sha(p):
 h=hashlib.sha256()
 with p.open('rb') as f:
  for block in iter(lambda:f.read(1024*1024),b''):h.update(block)
 return h.hexdigest()
inputs=[]
for row in json.loads((R/'reports/mission-rejection-preservation-audit.json').read_text())['inputs']:
 value=sha(Path(row['path']));assert value==row['sha256'];inputs.append({**row,'unchanged':True})
saves=[]
for row in json.loads((C/'before.json').read_text()):
 if 'NoSaveFile.json' not in row['path']:continue
 value=sha(Path(row['path']));assert value==row['sha256'];saves.append({**row,'currentSha256':value,'unchanged':True})
changed=[];added=[];metas=[]
for current in (P/'Assets/Recovery/Scripts').glob('*'):
 if not current.is_file():continue
 old=C/'Scripts'/current.name
 if old.exists():
  if current.suffix=='.meta':assert current.read_bytes()==old.read_bytes(),current
  elif current.read_bytes()!=old.read_bytes():changed.append(str(current.relative_to(P)))
 else:added.append(str(current.relative_to(P)))
for name in ['OfflineProgressManager','Offline_Panel_UI','Mission_manager','Mission_UI','Adventure_Map_info_item','Gun_manager','Pet_manager','Fish_manager','Raid_Start_UI']:
 meta=P/'Assets/Recovery/Scripts'/(name+'.cs.meta');original=next(B.rglob(name+'.cs.meta'));assert meta.read_bytes()==original.read_bytes();metas.append({'script':name,'metaSha256':sha(meta),'matchesFrozen':True})
mat=json.loads((R/'reports/challenge-material-repair.json').read_text());materials=[]
for path,expected in mat['originals'].items():
 value=sha(P/path);assert value==expected;materials.append({'path':path,'sha256':value,'unchanged':True})
report={'inputs':inputs,'saves':saves,'originalMetas':metas,'existingScriptMetasUnchanged':True,'originalMaterials':materials,'changedExistingSources':changed,'addedSourcesAndMetas':added,'sceneSha256':sha(P/'Assets/Recovery/Scenes/RecoveredClient.unity'),'sourceSha256':{path:sha(P/path) for path in changed+added}}
(R/'reports/playtest-fixes-preservation-audit.json').write_text(json.dumps(report,indent=2)+'\n');print({'inputsUnchanged':len(inputs),'savesUnchanged':len(saves),'originalMetas':len(metas),'originalMaterials':len(materials),'changedSources':len(changed)})
