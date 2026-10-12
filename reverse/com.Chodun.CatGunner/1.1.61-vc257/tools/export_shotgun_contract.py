"""Record exact-build shotgun native, ABI, constants and serialized provenance."""
from pathlib import Path
import json,hashlib,struct
from map_game_methods import ROOT,native,raw
P=ROOT.parents[2]/'reconstruction/CatGunnerUnityClient'
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
methods=[]
for row in (ROOT/'reports/native-cat-initialization-queries.tsv').read_text().splitlines():
 fields=row.split('\t')
 if fields[1] not in ['Cat_Attack','Cat_TryFireShotgun']:continue
 va,name,head,end=fields
 assert native[raw(int(va,16)):raw(int(va,16))+16].hex()==head
 methods.append({'name':name,'preferred_va':va,'ghidra_va':hex(int(va,16)+0x100000),'end_preferred_va':end,
  'first_16_bytes':head,'c_sha256':sha(ROOT/'native-cat-initialization'/(name+'.c')),'asm_sha256':sha(ROOT/'native-cat-initialization'/(name+'.asm'))})
assert len(methods)==2
source=ROOT/'serialized-components/level0-123082.json'
guns=json.loads(source.read_text())['data']['Gun_list']
shotguns=[{'gun':i,'pellets':g['ShotgunPelletCount'],'spread_degrees':g['ShotgunSpreadAngle'],
 'damage_coefficient':g['Damage']['s_digits'],'damage_exponent':g['Damage']['s_exponent'],'interval':g['AtkSpeed']}
 for i,g in enumerate(guns) if g['type']==3]
assert [g['gun'] for g in shotguns]==[3,4,7,12,16]
contract={'target':'com.Chodun.CatGunner 1.1.61 vc257','native_sha256':hashlib.sha256(native).hexdigest(),
 'evidence':'Matching existing bounded native output, verified bytes and ARM64 ABI; no new build or external game used',
 'methods':methods,'serialized_source':{'path':str(source.relative_to(ROOT)),'sha256':sha(source)},
 'native_parameters':{'TryFireShotgun':'this x0; spawnPos s0-s2; baseDir s3-s5; InfVal pointer x1; string x2; bool w3'},
 'constants':{'minimum_pellets':1,'lifespan':{'preferred_va':'0x106c218','value':struct.unpack_from('<f',native,raw(0x106c218))[0]},
  'degrees_to_radians':{'preferred_va':'0x106c26c','value':struct.unpack_from('<f',native,raw(0x106c26c))[0]}},
 'rules':['Random.value critical selection once per Attack, shared amount/text/bool across all pellets',
 'No ApplySpread and no spread growth for SHOTGUN',
 'Count max(1, ShotgunPelletCount); independent Random.Range(-angle,+angle), not evenly spaced',
 'Acquire pool0 before angle sampling; zero pellets false; any emitted pellet true on pool shortage, no rollback',
 'Each pellet SpawnEx original gun id, position, rotated direction, full damage, SHOTGUN3, radius0, enemyLayer, lifetime.7',
 'One recoil/muzzle/sound feedback phase after any successful emission; none on zero-pellet failure',
 'Shared native cooldown: zero emission retry next frame, partial success consumes regular cooldown'],
 'serialized_shotguns':shotguns,
 'implementation': [{'path':str(p.relative_to(P)),'sha256':sha(p)} for p in [P/'Assets/Recovery/Scripts/CatCombat.cs',P/'Assets/Recovery/Scripts/CatShotgun.cs',P/'Assets/Recovery/Scripts/ForestCombatAcceptance.cs']],
 'differences':['ForestCombatAcceptance substitutes full Cat.Update; equipped-slot fixtures only, no inventory grant/save',
 'Independent DecimalAmount/text and local sound gates; original global mute/background checks pending',
 'Forest auto movement follows original-auto-move-contract.json; AI, economic settlement and full Main pending; missile forest follows original-missile-contract.json; linear/explosive/BlastSniper forest follow original-penetrating-contract.json and original-explosion-contract.json',
 'Native shaders/phone parity not accepted']}
(ROOT/'reports/original-shotgun-contract.json').write_text(json.dumps(contract,ensure_ascii=False,indent=2)+'\n')
print('Shotgun contract: 2 matching native methods, 5 original configurations, 3 implementation hashes')
