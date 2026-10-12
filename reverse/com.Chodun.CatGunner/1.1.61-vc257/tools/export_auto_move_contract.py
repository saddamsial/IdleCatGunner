"""Exact-build forest hero movement contract; keep native proof and integration distinct."""
import hashlib,json,struct,csv
from map_game_methods import ROOT,native,raw,pointer
P=ROOT.parents[2]/'reconstruction/CatGunnerUnityClient'
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
schema=json.loads((ROOT/'reports/resolved-type-schema.json').read_text())
methods={m['index']:(t,m) for t in schema for m in t['methods']}
sig={int(t['pointer'],16):t['name'] for t in json.loads((ROOT/'reports/native-type-signatures.json').read_text())}
reg=[pointer(0x5c21d30+i*8) for i in range(16)]
identities=[]
for va in [0x5d613d0,0x5d63228]:
 enc=pointer(pointer(va));idx=(enc&0x1fffffff)>>1;assert enc>>29==6
 mi,ci,gi=struct.unpack_from('<3i',native,raw(reg[9])+idx*12);t,m=methods[mi];args=[]
 for ii in [ci,gi]:
  if ii<0:args.append(None);continue
  ip=pointer(reg[3]+ii*8);count=struct.unpack_from('<I',native,raw(ip))[0];table=pointer(ip+8)
  args.append([sig[pointer(table+j*8)] for j in range(count)])
 identities.append({'global_preferred_va':hex(va),'type':t['full_name'],'method':m['name'],'token':m['token'],'instantiations':args})
assert [(x['method'],x['instantiations']) for x in identities]==[('GetComponent',[None,['UnityEngine.Collider']]),('GetComponentInChildren',[None,['UnityEngine.Collider']])]
enc=pointer(0x5eb0c88);assert enc>>29==1 and sig[pointer(reg[7]+((enc&0x1fffffff)>>1)*8)]=='UnityEngine.Vector3'
vector=next(t for t in schema if t['full_name']=='UnityEngine.Vector3');back=next(f for f in vector['fields'] if f['name']=='backVector');assert back['native_offset']==0x54
fallback={'preferred_va':'0x2b432dc','type_usage':'0x5eb0c88','type':'UnityEngine.Vector3','field':'backVector','static_offset':'0x54','proof':'ASM ldp s0,s1 [static+0x54], ldr s2 [static+0x5c]; metadata static field backVector=84; all XYZ registers reviewed'}
constants={hex(va):struct.unpack_from('<f',native,raw(va))[0] for va in [0x106c1b8,0x106c200,0x106c268,0x106c088,0x106c094,0x106c190,0x106bea0,0x106c060,0x106bf18]}
assert abs(constants['0x106c1b8']-.5773502588272095)<1e-9
assert abs(constants['0x106bea0']-.9)<1e-6
assert abs(constants['0x106c060']-.2)<1e-6
assert abs(constants['0x106bf18']-.78539816)<1e-6
# .cctor assigns ScreenSpeedK using mov/movk 0x3f99999a, str static+0x60.
cctor=(ROOT/'native-auto-move-reviewed/Cat__cctor.asm').read_text();assert 'movk w9,#0x3f99' in cctor and 'str w9,[x8, #0x60]' in cctor
queries=[]
for line in (ROOT/'reports/native-auto-move-queries.tsv').read_text().splitlines():
 va,name,head,end=line.split('\t');assert native[raw(int(va,16)):raw(int(va,16))+16].hex()==head
 if name.startswith('Cat_') or name.startswith('AutoRetreat_'):
  queries.append({'name':name,'preferred_va':va,'end_preferred_va':end,'first_16_bytes':head,'c_sha256':sha(ROOT/'native-auto-move-reviewed'/(name+'.c')),'asm_sha256':sha(ROOT/'native-auto-move-reviewed'/(name+'.asm'))})
with (ROOT/'native-auto-move-reviewed/status.tsv').open() as f:statuses=list(csv.DictReader(f,delimiter='\t'))
assert len(statuses)==17 and all(x['completed']=='true' for x in statuses)
sources=[]
for path in sorted((ROOT/'serialized-components').glob('level0-*.json')):
 data=json.loads(path.read_text())['data']
 if 'AutoStopDistance' in data:
  sources.append({'path':str(path.relative_to(ROOT)),'sha256':sha(path),'fields':{k:v for k,v in data.items() if k.startswith('Auto') or k in ['MinEnemyDist','is_AI','moveSpeed','VelocitySmoothSpeed']}})
assert any(s['fields']['is_AI']==False and s['fields']['AutoMove']==True for s in sources)
contract={'target':'com.Chodun.CatGunner 1.1.61 vc257 arm64','native_sha256':sha(ROOT/'extracted/split_config.arm64_v8a/lib/arm64-v8a/libil2cpp.so'),
 'scope':'Forest hero mode0; not companion AI or other modes','evidence':'exact-native with exact-serialized fields; explicit forest integration bridge',
 'methods':queries,'export_queries':17,'completed_queries':17,'generic_identities':identities,'degenerate_retreat':fallback,'float_constants':constants,'screen_speed_k':struct.unpack('<f',struct.pack('<I',0x3f99999a))[0],
 'serialized_sources':sources,
 'native_review_notes':['Ghidra +0x100000 vs preferred ELF VA; exact first16 bytes and unwind end checked',
 'ARM64 HFA XYZ/Quaternion s0-s3 results reviewed; decompiled scalar expressions alone are insufficient',
 'FindNearestTreeByGrid outer rank w29 and inner slot x26 are separate; C aliases variables across loops',
 'Old native-cat-initialization Cat__cctor C lost tail after managed write barrier; bounded auto export supplies non-inline reference, full body plus ASM retained',
 'ScreenSpeedMultiplier uses rotated X/Z, projection0.57735026 and static K1.2; retreat helper reads Vector3.back, not guessed forward'],
 'rules':['Frame order: ray timer, ResolveAttackTarget, spread, movement, hands, face, attack cooldown',
 'Auto enabled and input squared<0.0001 selects automatic movement; otherwise ClearAutoTarget then manual. Resolver allows equality to use auto target',
 'Search every0.3 seconds or null target, inactive target immediately reselected. Stable grid Z bounds and strict tree score ties; boss participates only at wave4 after nonempty active grids',
 'Tree score=XZ distance; beyond8 radius add0.4*max(0,forwardZ). Active tree and active Enemy are required, no invented health or death flag filter',
 'Automatic attack target chooses Collider then child Collider, closest point, valid viewport and full3D distance<=40; out-of-range clears attack/lock but retains closest point',
 'Approach target Z offset interpolates0 to-15 with distance3..10 and caps magnitude to0.9*stopDistance; serialized AutoStopRatio0.8 unused in this method',
 'Distance uses nearHitPoint XZ when attack target exists, otherwise movement targetXZ. Stop<=10; near attack point<5 retreats toward distance5.5, degenerate direction Vector3.back, movement cutoff<=0.05',
 'Approach desired displacement<0.3 smooth-stops; distance10..12 uses cubic smoothstep blended with0.2 floor',
 'Desired velocity uses moveSpeed15*ratio*screen multiplier; Vector3.Lerp dt*8; body always preserves current Y. Smooth-stop snaps squared speed<0.01; ClearAutoTarget clears smooth velocity only if squared>0.001',
 'No-input forest gameplay follows recovered update ordering. Manual-only fallback remains for independently disabled targeting fixtures; movement disabled fixture prevents combat bridge writing body'],
 'implementation':[{'path':str(p.relative_to(P)),'sha256':sha(p)} for p in [P/'Assets/Recovery/Scripts/Cat.cs',P/'Assets/Recovery/Scripts/CatAutoMovement.cs',P/'Assets/Recovery/Scripts/CatCombat.cs',P/'Assets/Recovery/Scripts/ForestMovementAcceptance.cs',P/'Assets/Recovery/Scripts/ForestCombatAcceptance.cs']],
 'differences':['Full original Cat.Update breadcrumb/leader-history and companion AI not integrated',
 'Other native modes SpeedRun/Boss/Ore/Monster/Arena target providers remain separate; forest boss tree wave4 supported',
 'Original Gamemanager startup, wave settlement/progression/economy/equipment ownership/save/UI remain pending',
 'Local Unity6 PlayMode and visual evidence are separate from original phone/device/performance/backend parity']}
(ROOT/'reports/original-auto-move-contract.json').write_text(json.dumps(contract,ensure_ascii=False,indent=2)+'\n')
print('Auto movement contract:11 business/native helper outputs,6 exception helpers; Collider identities and Vector3.back proven')
