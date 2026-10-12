from pathlib import Path
import json,hashlib
R=Path(__file__).resolve().parents[1]
P=R.parents[2]/'reconstruction/CatGunnerUnityClient'
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
checkpoint=json.loads((R/'reports/checkpoints/weekly-raid-before/snapshot.json').read_text())
saves=[]
for row in checkpoint[1:]:
 p=Path(row['path']);x={**row,'current_sha256':sha(p),'current_bytes':p.stat().st_size};x['unchanged']=x['current_sha256']==row['sha256'] and x['current_bytes']==row['bytes'];assert x['unchanged'];saves.append(x)
contract=json.loads((R/'reports/original-weekly-raid-contract.json').read_text())
inputs=[]
for row in contract['inputs']:
 x={**row,'current_sha256':sha(Path(row['path']))};x['unchanged']=x['current_sha256']==row['expected'];assert x['unchanged'];inputs.append(x)
runtime=[]
for path,expected in contract['runtime_sources'].items():
 x={'path':path,'sha256':sha(P/path),'expected':expected};assert x['sha256']==expected;runtime.append(x)
metas=[]
for row in contract['original_monoscript_metas']:
 p=P/'Assets/Recovery/Scripts'/(row['class']+'.cs.meta');assert sha(p)==row['sha256'];metas.append(row)
result={'target':contract['target'],'user_save':saves,'frozen_inputs':inputs,'runtime_sources':runtime,'original_monoscript_metas':metas,'scene_sha256':sha(P/'Assets/Recovery/Scenes/RecoveredClient.unity'),'whole_turn_user_save_unchanged':False,'final_user_save_matches_turn_start':True,'restoration_report':'weekly-raid-user-save-restoration.json','scope_complete':False}
(R/'reports/weekly-raid-source-and-user-save-audit.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n')
print('Original inputs, nine meta identities, runtime sources and both user save hashes match; scene',result['scene_sha256'])
