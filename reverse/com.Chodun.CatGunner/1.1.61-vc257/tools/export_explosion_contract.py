"""Exact-build explosive and first-blast sniper forest contracts; no excluded SDK bodies."""
import json,hashlib,struct
from map_game_methods import ROOT,native,raw
P=ROOT.parents[2]/'reconstruction/CatGunnerUnityClient';sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
methods=[]
for line in (ROOT/'reports/native-explosion-queries.tsv').read_text().splitlines():
 va,name,head,end=line.split('\t');assert native[raw(int(va,16)):raw(int(va,16))+16].hex()==head
 if not name.startswith('Bullet_'):continue
 methods.append({'name':name,'preferred_va':va,'ghidra_va':hex(int(va,16)+0x100000),'end_preferred_va':end,'first_16_bytes':head,
 'c_sha256':sha(ROOT/'native-explosion-reviewed'/(name+'.c')),'asm_sha256':sha(ROOT/'native-explosion-reviewed'/(name+'.asm'))})
assert len(methods)==7
source=ROOT/'serialized-components/level0-123082.json';guns=json.loads(source.read_text())['data']['Gun_list']
schema=json.loads((ROOT/'reports/resolved-type-schema.json').read_text());physics=next(t for t in schema if t['full_name']=='UnityEngine.Physics')
overlap=next(m for m in physics['methods'] if m['token']=='0x600004d');assert overlap['parameter_count']==3
params=[p['signature']['name'] for p in overlap['parameters']];assert params==['UnityEngine.Vector3','System.Single','System.Int32']
cat_query=next(line for line in (ROOT/'reports/native-cat-initialization-queries.tsv').read_text().splitlines() if line.split('\t')[1]=='Cat_Attack');va,name,head,end=cat_query.split('\t');assert native[raw(int(va,16)):raw(int(va,16))+16].hex()==head
selected=[{'gun':i,'type':g['type'],'damage':g['Damage'],'interval':g['AtkSpeed'],'explosion_radius':g['ExplosionRadius'],'blast_sniper_radius':g['BlastSniperExplosionRadius'],'penetrating_lifetime':g['PenetratingBulletLifetime']} for i,g in enumerate(guns) if g['type'] in [4,6]]
assert len(selected)==19 and sum(g['type']==4 for g in selected)==11
contract={'target':'com.Chodun.CatGunner 1.1.61 vc257','native_sha256':hashlib.sha256(native).hexdigest(),'native_methods':methods,
 'caller':{'preferred_va':va,'end_preferred_va':end,'first_16_bytes':head,'c_sha256':sha(ROOT/'native-cat-initialization/Cat_Attack.c'),'asm_sha256':sha(ROOT/'native-cat-initialization/Cat_Attack.asm')},
 'abi':{'Explode':'this x0; center s0/s1/s2','HitExplosive':'this x0; hit position s0/s1/s2','HitBlastSniper':'this x0, other x1, isEnemy w2, id w3; hit position s0/s1/s2'},
 'overlap_signature':{'image':physics['image'],'token':overlap['token'],'method':overlap['name'],'parameters':params,'behavior':'three-argument Physics.OverlapSphere, allocating Collider[] with global query trigger setting; no sorting/dedup by enemy'},
 'generic_identity_proof':'penetrating-generic-identities.json; same Add/Contains/EnemyColl metadata usages, reviewed aliases',
 'fields':{'explosion_radius':'0x9c','enemy_layer':'0xa0','first_hit_done':'0xcc','hit_ids':'0xd0','pierce_count':'0xd8','fx_spawned':'0xdc'},
 'serialized_source':{'path':str(source.relative_to(ROOT)),'sha256':sha(source)},'guns':selected,
 'rules':['Explode only if radius>0; query center/radius/mask; process original array order, skip null or currently inactive colliders',
 'Each previously unseen collider ID recorded before ClosestPoint(center) and full damage/text/critical dispatch; no distance falloff and no Enemy identity dedup',
 'Distinct colliders linked to one surviving Enemy may each damage it; if prior dispatch deactivates the object later entries skip',
 'HitExplosive ignores enemy tag for detonation: Explode(hit point), SpawnFX, DieAndWait; no additional direct-hit damage',
 'Destroy: dead guard; types4/5 explode at current position and SpawnFX then DieAndWait. Type6 expires without explosion. Missile flight follows original-missile-contract.json',
 'BlastSniper firstHitDone set before validation; live Enemy initial damage>=pre-hit health allows continuation; otherwise stops after explosion/first FX',
 'First blast records all queried IDs; later already splashed colliders do not hit again; subsequent unseen contacts use HitPierce and start count0',
 'Blast first FX uses shared fx_spawned; original pierce rule/splash survivor suppression and reset on reuse retained',
 'Cat Attack4 applies ordinary spread, original ExplosionRadius, request1.5s; Attack6 applies ordinary spread, BlastSniperExplosionRadius, original PenetratingBulletLifetime',
 'One critical choice/full damage for all splash colliders; pool-full failure/retry and feedback on success unchanged;50-unit travel cap applies'],
 'implementation':[{'path':str(p.relative_to(P)),'sha256':sha(p)} for p in [P/'Assets/Recovery/Scripts/Bullet.cs',P/'Assets/Recovery/Scripts/CatCombat.cs',P/'Assets/Recovery/Scripts/ForestCombatAcceptance.cs']],
 'differences':['Ordinary forest only; forest hero auto movement follows original-auto-move-contract.json; full Cat.Update/AI and original manager/UI mode5/Ore not integrated',
 'Independent DecimalAmount and text/ForestDamageDispatch adapters; damage text UI/economy pending',
 'Missile movement/aim forest follows original-missile-contract.json; full original Main/backend/phone/visual parity pending',
 'Initial package slot gun0 remains; test equipment/targets never saved as player ownership/progress']}
(ROOT/'reports/original-explosion-contract.json').write_text(json.dumps(contract,ensure_ascii=False,indent=2)+'\n')
print('Explosion contract:',len(methods),'native Bullet queries + Cat caller;',len(selected),'gun configurations (11 explosive/8 blast sniper)')
