"""Exact-build missile ABI, imported math, method and serialized evidence."""
import json, struct, hashlib
from map_game_methods import ROOT, native, raw, pointer, ends, section
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
P=ROOT.parents[2]/'reconstruction/CatGunnerUnityClient'
va=0x59fb2f0
adrp,ldr=struct.unpack_from('<II',native,raw(va))
assert adrp&0x9f00001f==0x90000010 and ldr&0xffc003ff==0xf9400211
imm=((adrp>>5)&0x7ffff)<<2|((adrp>>29)&3)
if imm&(1<<20):imm-=1<<21
got=(va&~4095)+(imm<<12)+((ldr>>10)&4095)*8
rel=section('.rela.plt');sym=section('.dynsym');strings=section('.dynstr')
entry=next(r for r in struct.iter_unpack('<QQq',native[rel['offset']:rel['offset']+rel['size']]) if r[0]==got)
nameoff=struct.unpack_from('<I',native,sym['offset']+(entry[1]>>32)*24)[0]
start=strings['offset']+nameoff
name=native[start:native.find(b'\0',start)].decode();assert name=='tanf'
schema=json.loads((ROOT/'reports/resolved-type-schema.json').read_text())
methods={m['index']:(t,m) for t in schema for m in t['methods']}
sig={int(t['pointer'],16):t['name'] for t in json.loads((ROOT/'reports/native-type-signatures.json').read_text())}
reg=[pointer(0x5c21d30+i*8) for i in range(16)]
enc=pointer(pointer(0x5d62770));idx=(enc&0x1fffffff)>>1;assert enc>>29==6
mi,ci,gi=struct.unpack_from('<3i',native,raw(reg[9])+idx*12);t,m=methods[mi]
ip=pointer(reg[3]+gi*8);count=struct.unpack_from('<I',native,raw(ip))[0];args=pointer(ip+8)
inst=[sig[pointer(args+i*8)] for i in range(count)]
assert t['full_name']=='UnityEngine.GameObject' and m['name']=='GetComponent' and ci==-1 and inst==['Bullet']
names={'Cat_TryFireMissile':0x2b421b4,'Cat_UpdateHandRotation':0x2b3b00c,'Cat_Attack':0x2b3d4ac,'Bullet_SpawnMissile':0x2b65958,'Bullet_Update':0x2b65c44}
rows=['\t'.join([hex(v),n,native[raw(v):raw(v)+16].hex(),hex(ends[v])]) for n,v in names.items()]
rows += [r for r in (ROOT/'reports/native-explosion-queries.tsv').read_text().splitlines() if r.split('\t')[1].startswith(('Throw_','Managed_'))]
(ROOT/'reports/native-missile-queries.tsv').write_text('\n'.join(rows)+'\n')
refs=(ROOT/'reports/native-explosion-references.tsv').read_text().splitlines()
refs=[r for r in refs if int(r.split('\t')[0],16) not in names.values()]
(ROOT/'reports/native-missile-references.tsv').write_text('\n'.join(refs)+'\n')
evidence=[]
for n,v in names.items():
 item={'name':n,'preferred_va':hex(v),'ghidra_va':hex(v+0x100000),'end_preferred_va':hex(ends[v]),'first16':native[raw(v):raw(v)+16].hex()}
 for ext in ['c','asm']:
  path=ROOT/'native-missile-reviewed'/(n+'.'+ext)
  if path.exists():item[ext+'_sha256']=sha(path)
 evidence.append(item)
source=ROOT/'serialized-components/level0-123082.json'
guns=json.loads(source.read_text())['data']['Gun_list']
selected=[{'gun':i,**{k:g[k] for k in ['type','Damage','AtkSpeed','MissileSpeed','MissileExplosionRadius','MissileElevationMin','MissileElevationMax']}} for i,g in enumerate(guns) if g['type']==5];assert len(selected)==9
contract={'target':'com.Chodun.CatGunner 1.1.61 vc257','native_sha256':hashlib.sha256(native).hexdigest(),'methods':evidence,
 'math_import':{'preferred_va':hex(va),'got':hex(got),'symbol':name,'proof':'AArch64 ADRP/LDR GOT target matched to ELF rela.plt/dynsym/dynstr'},
 'generic_identity':{'global_preferred_va':'0x5d62770','method_spec_index':idx,'type':t['full_name'],'method':m['name'],'token':m['token'],'instantiation':inst},
 'abi':{'TryFireMissile':'this x0, target x1, damage x2, text x3, critical w4; spawn s0-2, spread s3',
 'SpawnMissile':'this x0, gun w1, damage x2, text x3, critical w4, layer w5; start s0-2, target s3-5, radius s6, duration s7; arc multiplier0.4 on stack'},
 'fields':{'_msStart':'0xa8 Vector3','_msEnd':'0xb4 Vector3','_msArcHeight':'0xc0 Single','_msDuration':'0xc4 Single','_msTimer':'0xc8 Single'},
 'serialized_source':{'path':str(source.relative_to(ROOT)),'sha256':sha(source)},'guns':selected,
 'rules':['Acquire pool0 before scatter RNG; target transform position, else nearHitPoint',
 'Spread strictly>0.01: angle Range(0,360) then radius Range(0, XZdistance*tan(spread*Deg2Rad)); cos to X, sin to Z, preserve Y',
 'Duration final scattered XZdistance/max(MissileSpeed,0.1); arc height XZdistance*0.4; fixed endpoint, no homing',
 'Spawn kinematic; initial direction only if full delta squared>0.001; clone damage/text/critical; activate, particle Clear; Destroy invoke duration+0.5 without50-unit cap',
 'Scaled deltaTime; t Clamp01(timer/duration); position Lerp(start,end,t) with Y+=4*arcHeight*t*(1-t)',
 'LastPos previous full XYZ position; forward updated if movement squared>0.0001',
 'Endpoint Explode then SpawnFX then DieAndWait; early trigger uses LastPos ClosestPoint and same HitExplosive; dead guard prevents repeated expiry',
 'Hand aim deltaY+=4*(XZdistance*0.4), normalize, aimpoint hand+direction*10; common parent-local angle and interpolation; serialized elevation min/max unused here',
 'Attack performs one critical choice, missile-specific scatter, shared nonshot spread growth and recoil/muzzle/sound on success'],
 'implementation':[{'path':str(p.relative_to(P)),'sha256':sha(p)} for p in [P/'Assets/Recovery/Scripts'/n for n in ['Bullet.cs','CatCombat.cs','ForestCombatAcceptance.cs','CatMissile.cs']] if p.exists()],
 'differences':['Forest-only integration; forest hero auto movement follows original-auto-move-contract.json; full Cat.Update, AI, inventory/save selection and original manager lifecycle pending',
 'Independent DecimalAmount and forest damage/text/economy adapters; no original commercial library implementation',
 'Unity6 Editor acceptance separate from Player/device/original visual/backend parity']}
(ROOT/'reports/original-missile-contract.json').write_text(json.dumps(contract,ensure_ascii=False,indent=2)+'\n')
print('Missile: tanf import and GetComponent<Bullet> proved;5 native methods,9 serialized guns')
