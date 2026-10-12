from pathlib import Path
import csv, hashlib, json, struct

R=Path(__file__).resolve().parents[1]
P=R.parents[2]/'reconstruction/CatGunnerUnityClient'
B=R/'assetripper-baseline/ExportedProject'
def sha(path): return hashlib.sha256(path.read_bytes()).hexdigest()
# Import the exact-image helpers without regenerating unrelated method maps.
p=R/'tools/map_game_methods.py';ns={'__file__':str(p)}
exec(p.read_text().split('module =')[0],ns)
table=(R/'transformed/region-0.decoded.bin').read_bytes()
data=(R/'transformed/region-4.decoded.bin').read_bytes()
literals=[]
for va in [0x5d5d528,0x5d594b0,0x5d5d530,0x5d5d538,0x5d63470,0x5d63478]:
    encoded=ns['pointer'](ns['pointer'](va));assert encoded>>29==5
    index=(encoded&0x1fffffff)>>1;n,offset=struct.unpack_from('<2I',table,index*8)
    literals.append({'preferred_pointer':hex(va),'literal':data[offset:offset+n].decode()})
assert [row['literal'] for row in literals]==['+','money','+{0}','dia','+1','+0.1']
delay=struct.unpack_from('<f',ns['native'],ns['raw'](0x106c060))[0]
assert abs(delay-.2)<1e-7
folder=R/'native-currency-feedback-reviewed'
rows=list(csv.DictReader((folder/'status.tsv').open(),delimiter='\t'))
assert len(rows)==21 and all(row['completed']=='true' for row in rows)
asm=(folder/'Gamemanager_Get_Dia_0x6000078.asm').read_text()
assert 'add w8,w19,w19, LSL #0x1' in asm and 'add w0,w0,w8' in asm
calls={
    'speedrun':'native-speedrun-client-reviewed/SpeedRun_manager_Game_Win.c',
    'boss':'native-boss-client-reviewed/Boss_manager_Game_Win.c',
    'mine':'native-mine-client-reviewed-v2/Mine_manager_Reward_Panel_Reload.c',
    'mission':'native-inventory-progression-reviewed/Mission_manager_Reward_Get_Value.c',
}
for file in calls.values():assert 'Gamemanager_Get_Dia_0x6000078' in (R/file).read_text()
metas=[]
for name in ['Currency','Ore','SpeedRun_manager','Boss_manager','Mine_manager','Tutorial_manager']:
    source=B/'Assets/Scripts/Assembly-CSharp'/(name+'.cs.meta')
    current=P/'Assets/Recovery/Scripts'/(name+'.cs.meta')
    assert sha(source)==sha(current)
    metas.append({'class':name,'sha256':sha(current),'original_meta_identical':True})
runtime={}
for name in ['RecoveryForestClient','RecoveryDamageTextPresenter','RecoveryRewardFeedback','OriginalDiamondReward','Currency','Ore','SpeedRun_manager','Boss_manager','Mine_manager','OriginalMissions','Tutorial_manager']:
    path='Assets/Recovery/Scripts/'+name+'.cs';runtime[path]=sha(P/path)
previous=json.loads((R/'reports/forest-feedback-source-and-user-save-audit.json').read_text())
inputs=[]
for row in previous['frozen_inputs']:
    assert sha(Path(row['path']))==row['expected'];inputs.append({'path':row['path'],'sha256':row['expected']})
result={
    'target':'com.Chodun.CatGunner 1.1.61 vc257 arm64','inputs':inputs,
    'native_scope':'currency-feedback; 15 business +6 exception helpers, all21 byte/bound checked query exports; not source or feature percentage',
    'native_rows':rows,'literals':literals,'money_throttle_seconds':delay,
    'native_diamond_counter':'Dia += amount; _getDia += amount*3;32bit integer arithmetic. Existing counters are retained; future grants only.',
    'native_counter_instructions':['preferred0x2a7ed94: add w8,w19,w19,LSL#1','preferred0x2a7ed9c: add w0,w0,w8'],
    'ordinary_get_dia_callers':calls,
    'money_order':'Multiplier/value -> wallet and Money_Accum credit -> wallet notification -> +formatted-value text; presentation never credits again.',
    'ore_order':'Dust5 -> +0.1 for _diaValue1, +1 otherwise -> Ore_Destroyed score -> deactivate. Wallet unchanged until integer score/10 settlement.',
    'wallet_ui':'Original Currency OnEnable/OnDisable subscription lifecycle; current local event combines the native money and diamond events.',
    'runtime_sources':runtime,'original_metas':metas,
    'adapters':['Existing DecimalAmount formatting rather than complete InfVal_change/abbreviation.','Local reusable mesh presenter; original font/curve/texture/native display parameters.','Existing single-camera world anchor; original mesh GPU cache/multi-camera conversion not fully reconstructed.','Local archive/autosave lifecycle; native ObscuredInt and original save-time throttle not replicated.'],
    'pending':['Unused Get_Dia(position) integer popup consumer and full native DamageTextManager internals.','Other numeric consumers, including remaining _useDia paths and money abbreviation.','Physical mouse/touch, Player/device and full visual parity.'],
    'scope_complete':False
}
(R/'reports/original-currency-feedback-contract.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n')
print('Verified currency literals, native0.2s gate, triple counter, four ordinary callers, six original metas and source hashes.')
