"""Verify immutable inputs, scene identities, original material files and user save preservation."""
from pathlib import Path
import json,hashlib,re,mmap
R=Path(__file__).resolve().parents[1];W=R.parents[2];P=W/'reconstruction/CatGunnerUnityClient';B=R/'assetripper-baseline/ExportedProject';checkpoint=Path('/private/tmp/catgunner-playtest-issues-before')
def sha(p):
 h=hashlib.sha256()
 with p.open('rb') as f:
  for blob in iter(lambda:f.read(1048576),b''):h.update(blob)
 return h.hexdigest()
def ids(p):
 with p.open('rb') as f,mmap.mmap(f.fileno(),0,access=mmap.ACCESS_READ) as data:
  return {int(m[2]):int(m[1]) for m in re.finditer(rb'^--- !u!(\d+) &(-?\d+)\r?$',data,re.M)}
a=ids(checkpoint/'RecoveredClient.unity');b=ids(P/'Assets/Recovery/Scenes/RecoveredClient.unity');assert all(b.get(k)==v for k,v in a.items())
original_materials=['Sprite-Unlit-Default.mat','glow1_ADD.mat','glow1_Alpha.mat','ice_spikes_ADD 1.mat','magic_line_ADD.mat','magic_orb2_ADD.mat'];materials=[]
for name in original_materials:
 p=P/'Assets/Material'/name;base=B/'Assets/Material'/name;record={'asset':str(p.relative_to(P)),'sha256':sha(p),'baselineSha256':sha(base)};assert record['sha256']==record['baselineSha256'];materials.append(record)
inputs=[]
for p,expected in [(B/'Assets/Scenes/Main.unity','e672f743a687af8268ef45408c922d6ddc7edce2cf40b9b2531fe3ede23aba7b'),(R/'extracted/base/assets/bin/Data/Managed/Metadata/global-metadata.dat','86af4f8faf83d791c0a8679d3643056d8a643ce9d41bf71afd2c4e100f466884')]:
 record={'path':str(p),'sha256':sha(p),'expectedSha256':expected};assert record['sha256']==expected;inputs.append(record)
base=json.loads((checkpoint/'user-save-baseline.json').read_text());saves=[dict(v,currentSha256=sha(Path(v['path']))) for v in base];assert all(v['sha256']==v['currentSha256'] for v in saves)
scene_report=json.loads((R/'reports/playtest-issues-scene-restoration.json').read_text());assert scene_report['missingScripts']==0
out={'sceneIdentityPreserved':len(a),'beforeObjects':sum(v==1 for v in a.values()),'afterObjects':sum(v==1 for v in b.values()),'newObjects':sum(v==1 for k,v in b.items() if k not in a),'originalMaterialsPreserved':materials,'immutableInputs':inputs,'userMainAndBackupUnchanged':True,'userSaveHashes':saves,'sceneSha256':sha(P/'Assets/Recovery/Scenes/RecoveredClient.unity'),'boundOriginalPurchaseButtons':len(scene_report['bound']),'unintegratedOriginalPurchaseBranches':scene_report['absentOriginalBranches'],'inputPackage':'com.Chodun.CatGunner 1.1.61 vc257','realPayment':False}
(R/'reports/playtest-issues-preservation.json').write_text(json.dumps(out,indent=2)+'\n');print({k:v for k,v in out.items() if k not in ['originalMaterialsPreserved','immutableInputs','userSaveHashes','unintegratedOriginalPurchaseBranches']})
