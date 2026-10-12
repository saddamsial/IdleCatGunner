"""Stage exact serialized numeric caches from the matching Main scene."""
from pathlib import Path
import json,hashlib
R=Path(__file__).resolve().parents[1]
P=R.parents[2]/'reconstruction/CatGunnerUnityClient'
u=json.loads((R/'serialized-components/level0-124056.json').read_text())['data']
t=json.loads((R/'serialized-components/level0-124872.json').read_text())['data']
output={k:u[k] for k in ['Price_balance','Power_balance','Money_balance','Speed_balance']}
output.update({k:t[k] for k in ['Stage_Health_Balance','Stage_Money_Balance']})
for k,v in output.items():assert len(v)==(5000 if k.startswith('Stage_') else 10001)
p=P/'Assets/Recovery/Resources/OriginalBalanceCatalogue.json';p.parent.mkdir(parents=True,exist_ok=True)
p.write_text(json.dumps(output,separators=(',',':'))+'\n')
summary={'asset':str(p),'sha256':hashlib.sha256(p.read_bytes()).hexdigest(),'source_components':['level0-124056','level0-124872'],'counts':{k:len(v) for k,v in output.items()},'evidence':'exact-serialized; native Balance_Reload and Upgrade reviewed; no replacement growth formula'}
(R/'reports/balance-catalogue-export.json').write_text(json.dumps(summary,indent=2)+'\n')
print('Staged',sum(map(len,output.values())),'original numeric entries')
