"""Read-only audit for Rule 42; never decodes or prints private profile data."""
from pathlib import Path
import json,hashlib
R=Path(__file__).resolve().parents[1];P=R.parents[2]/'reconstruction/CatGunnerUnityClient';B=R/'assetripper-baseline/ExportedProject';C=R/'reports/checkpoints/auto-upgrade-before'
def sha(p):
 h=hashlib.sha256()
 with p.open('rb') as f:
  for block in iter(lambda:f.read(1024*1024),b''):h.update(block)
 return h.hexdigest()
inputs=[]
for row in json.loads((R/'reports/mission-rejection-preservation-audit.json').read_text())['inputs']:
 value=sha(Path(row['path']));assert value==row['sha256'];inputs.append({**row,'unchanged':True})
saves=[]
for row in json.loads((C/'latest-user-play-baseline-user-save.json').read_text()):
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
for name in ['AutoUpgrade_UI']:
 meta=P/'Assets/Recovery/Scripts'/(name+'.cs.meta');original=next(B.rglob(name+'.cs.meta'));assert meta.read_bytes()==original.read_bytes();metas.append({'script':name,'metaSha256':sha(meta),'matchesFrozen':True})
mat=json.loads((R/'reports/challenge-material-repair.json').read_text());materials=[]
for path,expected in mat['originals'].items():
 value=sha(P/path);assert value==expected;materials.append({'path':path,'sha256':value,'unchanged':True})
testsChanged=[];testsAdded=[]
for current in (P/'Assets/Recovery/Tests').rglob('*'):
 if not current.is_file():continue
 rel=current.relative_to(P/'Assets/Recovery/Tests');old=C/'Tests'/rel
 if old.exists():
  if current.suffix=='.meta':assert old.read_bytes()==current.read_bytes(),current
  elif old.read_bytes()!=current.read_bytes():testsChanged.append(str(current.relative_to(P)))
 else:testsAdded.append(str(current.relative_to(P)))
assert changed==['Assets/Recovery/Scripts/RecoveryForestClient.cs'],changed
assert testsChanged==['Assets/Recovery/Tests/PlayMode/OriginalOnboardingTests.cs'],testsChanged
report={'inputs':inputs,'saves':saves,'saveBaseline':'User confirmed resumed gameplay and requested preserving new progress. Final tests compare latest-user-play-baseline-user-save.json after stable stop; initial pause snapshot is historical only.','originalMetas':metas,'existingScriptMetasUnchanged':True,'originalMaterials':materials,'changedExistingSources':changed,'addedSourcesAndMetas':added,'changedExistingTests':testsChanged,'addedTests':testsAdded,'sceneSha256':sha(P/'Assets/Recovery/Scenes/RecoveredClient.unity'),'sourceSha256':{path:sha(P/path) for path in changed+added+testsChanged+testsAdded}}
(R/'reports/auto-upgrade-preservation-audit.json').write_text(json.dumps(report,indent=2)+'\n');print({'inputsUnchanged':len(inputs),'savesUnchanged':len(saves),'originalMetas':len(metas),'originalMaterials':len(materials),'changedSources':len(changed),'changedExistingTests':testsChanged})
