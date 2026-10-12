"""Exact-build linear penetrating forest rule contract and generic identity proof."""
import hashlib,json,struct
from pathlib import Path
from map_game_methods import ROOT,native,raw,pointer
P=ROOT.parents[2]/'reconstruction/CatGunnerUnityClient'
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
schema=json.loads((ROOT/'reports/resolved-type-schema.json').read_text())
methods={m['index']:(t,m) for t in schema for m in t['methods']}
sig={int(t['pointer'],16):t['name'] for t in json.loads((ROOT/'reports/native-type-signatures.json').read_text())}
reg=[pointer(0x5c21d30+i*8) for i in range(16)];identities=[]
for globalva in [0x5d639e0,0x5d639e8,0x5d5d560]:
 enc=pointer(pointer(globalva));idx=(enc&0x1fffffff)>>1
 assert enc>>29==6 and idx<reg[8]
 mi,ci,gi=struct.unpack_from('<3i',native,raw(reg[9])+idx*12);t,m=methods[mi]
 out={'global_preferred_va':hex(globalva),'method_spec_index':idx,'type':t['full_name'],'method':m['name'],'token':m['token'],'class_inst':ci,'method_inst':gi,'instantiations':[]}
 for ii in [ci,gi]:
  if ii<0:out['instantiations'].append(None);continue
  assert ii<reg[2];ip=pointer(reg[3]+ii*8);count=struct.unpack_from('<I',native,raw(ip))[0];args=pointer(ip+8)
  out['instantiations'].append([sig[pointer(args+j*8)] for j in range(count)])
 identities.append(out)
assert [(i['method'],i['instantiations']) for i in identities]==[('Add',[['System.Int32'],None]),('Contains',[['System.Int32'],None]),('GetComponent',[None,['EnemyColl']])]
(ROOT/'reports/penetrating-generic-identities.json').write_text(json.dumps(identities,indent=2)+'\n')
queries=[]
for line in (ROOT/'reports/native-penetrating-hit-queries.tsv').read_text().splitlines():
 va,name,head,end=line.split('\t');assert native[raw(int(va,16)):raw(int(va,16))+16].hex()==head
 if name.startswith('Bullet_'):
  queries.append({'name':name,'preferred_va':va,'end_preferred_va':end,'first_16_bytes':head,
    'c_sha256':sha(ROOT/'native-penetrating-hit-reviewed'/(name+'.c')),'asm_sha256':sha(ROOT/'native-penetrating-hit-reviewed'/(name+'.asm'))})
# Operator identity comes from module pointer index; excluded commercial InfVal body is not copied/decompiled here.
allmethods=json.loads((ROOT/'reports/all-method-address-index.json').read_text())['addresses']
comparison=next(m for m in allmethods if m['preferred_va']=='0x4554530');assert comparison['type']=='InfVal' and comparison['method']=='op_GreaterThanOrEqual'
source=ROOT/'serialized-components/level0-123082.json';guns=json.loads(source.read_text())['data']['Gun_list']
contract={'target':'com.Chodun.CatGunner 1.1.61 vc257','native_sha256':sha(ROOT/'extracted/split_config.arm64_v8a/lib/arm64-v8a/libil2cpp.so'),
 'methods':queries,'comparison_signature':comparison,'generic_identities':identities,
 'decompiler_repair':{'retained_old_output':'native-bullet-hit/Bullet_HitPierce.c','problem':'PIC construction at Ghidra0x2c66b10 absorbed HashSet<int>.Add thunk and removed native tail blocks',
 'repair':'Independent referenced function at preferred0x4182ae4, one-byte body and non-inline; caller complete native bounds retained. Reviewed output contains count/health/damage/FX/end branch matching ASM.',
 'reviewed_output':'native-penetrating-hit-reviewed/Bullet_HitPierce.c'},
 'fields':{'hit_ids':'0xd0','pierce_count':'0xd8','fx_spawned':'0xdc','first_hit_done':'0xcc','enemy_health_now':'0x28'},
 'serialized_source':{'path':str(source.relative_to(ROOT)),'sha256':sha(source)},
 'guns':[{'gun':i,'type':g['type'],'damage':g['Damage'],'interval':g['AtkSpeed'],'lifetime':g['PenetratingBulletLifetime']} for i,g in enumerate(guns) if g['type'] in [1,2]],
 'rules':['OnTrigger returns for dead bullet or recorded collider id; actual CompareTag Enemy controls branch',
 'PIERCE non-enemy: FX and death. Enemy missing EnemyColl/Enemy/dead records id only, with no damage/count/FX/death',
 'PIERCE live enemy: add id, increment count; lethal is damage >= health BEFORE damage dispatch; unchanged full damage for each target',
 'PIERCE first valid hit always continues; from second hit stop only on nonlethal target. Consecutive one-hit kills may pass more than two targets',
 'LASER enemy: record id, dispatch unchanged damage, continue regardless of count/health; non-enemy FX/death',
 'Both set fx_spawned BEFORE first enemy FX request, even if throttle rejects; repeated target FX requests are suppressed until respawn',
 'Native UI currentType5 forces death after valid hit; not part of the integrated forest slice',
 'Cat Attack types1/2: one strict critical roll, apply ordinary dynamic spread and grow on success; radius0 and gun PenetratingBulletLifetime',
 'SpawnEx lifetime min(requested,50/Max(speed,.1)); shared original pool, meshes, skins, death and delayed deactivate; reuse resets ids/count/FX'],
 'implementation':[{'path':str(p.relative_to(P)),'sha256':sha(p)} for p in [P/'Assets/Recovery/Scripts/Bullet.cs',P/'Assets/Recovery/Scripts/CatCombat.cs',P/'Assets/Recovery/Scripts/ForestCombatAcceptance.cs']],
 'differences':['Forest-only bridge: native UI mode5/Ore lifecycle not integrated; no claim that LASER/PIERCE work in all original modes',
 'Independent DecimalAmount compare/text, not commercial InfVal internals',
 'Package initial gun0 remains; test selected slots do not grant ownership or save',
 'Forest hero auto movement follows original-auto-move-contract.json; full Cat.Update/AI/economic settlement/main/backend/phone parity pending; missile forest follows original-missile-contract.json; explosive/BlastSniper forest follow original-explosion-contract.json']}
(ROOT/'reports/original-penetrating-contract.json').write_text(json.dumps(contract,ensure_ascii=False,indent=2)+'\n')
print('Penetrating contract: reviewed3 methods, generic Add/Contains/EnemyColl proven,23 configurations')
