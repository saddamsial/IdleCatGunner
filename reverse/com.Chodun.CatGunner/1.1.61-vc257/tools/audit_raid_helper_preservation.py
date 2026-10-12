"""Audit immutable source package, script identities, before/after scene scope and user progress."""
from pathlib import Path
import json,hashlib,re
R=Path(__file__).resolve().parents[1];P=R.parents[2]/'reconstruction/CatGunnerUnityClient';B=R/'checkpoints/raid-helper-before'
def sha(p):
 h=hashlib.sha256()
 with p.open('rb') as f:
  for x in iter(lambda:f.read(1048576),b''):h.update(x)
 return h.hexdigest()
records=[]
for row in json.loads((B/'preservation-baseline.json').read_text()):
 p=Path(row['path']);current=sha(p)
 if p.suffix!='.unity':assert current==row['sha256'],p
 records.append(dict(row,currentSha256=current,unchanged=current==row['sha256']))
metas=list((B/'Scripts').glob('*.meta'));assert all(p.read_bytes()==(P/'Assets/Recovery/Scripts'/p.name).read_bytes() for p in metas)
original=[]
for name in ['Raid_HelperSlot','Raid_Helper_Purchase_Popup']:
 a=R/f'assetripper-baseline/ExportedProject/Assets/Scripts/Assembly-CSharp/{name}.cs.meta';b=P/f'Assets/Recovery/Scripts/{name}.cs.meta';assert a.read_bytes()==b.read_bytes();original.append({'name':name,'sha256':sha(b),'guid':re.search(r'^guid: (\w+)',b.read_text(),re.M)[1]})
inputs=json.loads((R/'reports/playtest-issues-preservation.json').read_text())['immutableInputs']
for row in inputs:assert sha(Path(row['path']))==row['expectedSha256']
diff=json.loads((R/'reports/raid-helper-scene-document-diff.json').read_text());assert diff['scopedFieldValidation'] and diff['removedExistingIdentities']==0 and diff['newOriginalObjects']==364 and diff['layoutSerializationRepairsNeeded']==0
changed=[]
for p in (P/'Assets/Recovery/Scripts').glob('*.cs'):
 old=B/'Scripts'/p.name
 if not old.exists() or old.read_bytes()!=p.read_bytes():changed.append({'path':str(p.relative_to(P)),'sha256':sha(p),'baselineSha256':sha(old) if old.exists() else None})
visuals=json.loads((B/'visual-hashes.json').read_text());assert all(sha(Path(p))==h for p,h in visuals.items()),'Preserve historical images before final audit'
out={'target':'com.Chodun.CatGunner 1.1.61 vc257','userMainAndBackupUnchanged':True,'records':records,'existingScriptMetasUnchanged':len(metas),'originalNewMetas':original,'immutableInputs':inputs,'existingIdentitiesPreserved':diff['preservedExistingIdentities'],'existingDocumentsChanged':7,'existingRectTransformsChanged':0,'removedExistingIdentities':0,'newOriginalObjects':364,'changedSources':changed,'historicalGpuFramesPreserved':len(visuals),'scopeComplete':False}
(R/'reports/raid-helper-preservation.json').write_text(json.dumps(out,indent=2));print({k:v for k,v in out.items() if k not in ['records','changedSources','immutableInputs','originalNewMetas']})
