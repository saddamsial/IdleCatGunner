"""Export exact vc257 progression caches, never a player save."""
from pathlib import Path
import json,hashlib
R=Path(__file__).resolve().parents[1]
P=R.parents[2]/'reconstruction/CatGunnerUnityClient'
sources=[]
def component(n):
    p=R/'serialized-components'/('level0-'+str(n)+'.json')
    sources.append({'path':str(p.relative_to(R)),'sha256':hashlib.sha256(p.read_bytes()).hexdigest()})
    return json.loads(p.read_text())['data']
m=component(124352);p=component(123446);r=component(124798)
static=json.loads((R/'reports/mission-high-tier-guns.json').read_text())
# Verify the static blob against its private implementation field hash again.
meta=(R/'extracted/base/assets/bin/Data/Managed/Metadata/global-metadata.dat').read_bytes()
blob=meta[9570896:9570896+32]
assert hashlib.sha256(blob).hexdigest().upper()=='0A692E8C75CA8B61E310C85ED97E1DE9C2762958B8551404A8219BDEFF29442D'
import struct
guns=list(struct.unpack('<8i',blob))
data={'Missions':[{k:v for k,v in x.items() if k in ['Name','type','MissionValue','ExpValue','is_VIP_Mission']} for x in m['Mission_list']],
      'Pets':p['Pet_list'],'RebirthPrice':r['Price_balance'],
      'RebirthValues':[{'Values':x['Value_balance']} for x in r['Upgrade_list']], 'HighTierGuns':guns}
assert len(data['Missions'])==23 and len(data['Pets'])==10 and len(data['RebirthPrice'])==20001
assert all(len(x['Values'])==20001 for x in data['RebirthValues'])
out=P/'Assets/Recovery/Resources/OriginalProgressionCatalogue.json'
out.write_text(json.dumps(data,ensure_ascii=False,indent=2)+'\n')
(R/'reports/progression-catalogue-export.json').write_text(json.dumps({'sources':sources,'output':str(out),'sha256':hashlib.sha256(out.read_bytes()).hexdigest(),
    'missions':23,'pets':10,'rebirth_cache_levels':20001,'high_tier_guns':guns,'static_blob_offset':9570896,'static_blob_sha256':hashlib.sha256(blob).hexdigest(),
    'static_resolution_report':str(R/'reports/mission-high-tier-guns.json')},indent=2)+'\n')
print('Exported 23 tasks, 10 pets, 20001 rebirth levels and 8 proven gun rewards')
