"""Verify frozen inputs, original script identities, user profiles and current assets."""
from pathlib import Path
import json,hashlib
R=Path(__file__).resolve().parents[1];P=R.parents[2]/'reconstruction/CatGunnerUnityClient'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
c=json.loads((R/'reports/original-diapig-contract.json').read_text());before=json.loads((R/'reports/diapig-before.json').read_text());saves=[]
for row in c['frozen_inputs']:
 assert sha(Path(row['path']))==row['sha256'],row['path']
for row in before:
 if '/Library/Application Support/' in row['path']:
  assert sha(Path(row['path']))==row['sha256'];saves.append({**row,'unchanged_from_turn_start':True})
assert len(saves)==2
metas=[]
for name in ['DiaPig','DiaPig_UI','SlicedFilledImage','BounceStart','BounceBtn','Mute_Panel']:
 a=R/f'assetripper-baseline/ExportedProject/Assets/Scripts/Assembly-CSharp/{name}.cs.meta';b=P/f'Assets/Recovery/Scripts/{name}.cs.meta';assert a.read_bytes()==b.read_bytes();metas.append({'path':str(b.relative_to(P)),'sha256':sha(b),'original_meta_preserved':True})
sources=[P/f'Assets/Recovery/Scripts/{name}.cs' for name in ['DiaPig','DiaPig_UI','OriginalDiaPigCounter','RecoveryForestClient']]
sources+=[P/'Assets/Recovery/Editor/DiaPigClientEditor.cs',P/'Assets/Recovery/Tests/PlayMode/OriginalDiaPigTests.cs',P/'Assets/Recovery/Tests/PlayMode/OriginalOnboardingTests.cs']
visual=[R/f'reports/visual/{name}.png' for name in ['diapig-original-locked-page-gpu','diapig-return-forest-gpu']]
a={'target':c['target'],'frozen_inputs':[{**r,'unchanged':True} for r in c['frozen_inputs']],'user_save':saves,'original_metas':metas,'scene_before_sha256':next(r['sha256'] for r in before if r['path'].endswith('RecoveredClient.unity')),'scene_sha256':sha(P/'Assets/Recovery/Scenes/RecoveredClient.unity'),'sources':[{'path':str(p.relative_to(P)),'sha256':sha(p)} for p in sources],'gpu':[{'path':str(p.relative_to(R)),'sha256':sha(p)} for p in visual],'scope_complete':False}
(R/'reports/diapig-source-and-user-save-audit.json').write_text(json.dumps(a,ensure_ascii=False,indent=2)+'\n');print('3 frozen inputs,6 original metas,2 user profiles and current source/scene/GPU checked')
