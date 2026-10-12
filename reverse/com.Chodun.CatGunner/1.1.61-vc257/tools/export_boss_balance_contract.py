# -*- coding: utf-8 -*-
"""Verify original vc257 ARM64 bounds and explicit Boss actual-combat balance branch."""
from pathlib import Path
import csv,hashlib,json,struct
from map_game_methods import ROOT as R,native,raw
Q=R/'reports';D=R/'native-boss-balance-client-reviewed'
rows=list(csv.DictReader((D/'status.tsv').open(),delimiter='\t'))
assert len(rows)==15 and all(x['completed']=='true' and not x['error'] for x in rows)
methods=[]
for va,label,prefix,end in [x.split('\t') for x in (Q/'native-boss-balance-client-queries.tsv').read_text().splitlines()]:
 start=int(va,16);stop=int(end,16);blob=native[raw(start):raw(start)+stop-start]
 assert native[raw(start):raw(start)+16].hex()==prefix
 for ext in ['c','asm']:assert (D/f'{label}.{ext}').exists()
 methods.append({'preferredVa':va,'end':end,'name':label,'first16':prefix,'sha256':hashlib.sha256(blob).hexdigest(),'completed':True})
types=json.loads((Q/'resolved-type-schema.json').read_text())
f=next(f for x in types if x['name']=='UI_manager' for f in x['fields'] if f['name']=='currentType')
assert f['native_offset']==32 and f['signature']['name']=='UI_type'
minimum=struct.unpack_from('<f',native,raw(0x106c094))[0];assert abs(minimum-.05)<1e-8
out={'target':'com.Chodun.CatGunner 1.1.61 vc257 ARM64','businessMethods':9,'exceptionHelpers':6,'allQueriesCompleted':True,'methods':methods,'currentUiTypeField':f,'bossModeProof':'Boss_manager.Game_Enter explicitly invokes UI_manager.UI_Reload(3) before Cat_manager.Balance_Reload; UI_Reload assigns its parameter to instance currentType+0x20','nativeRules':{'skipForestUpgrades':'Cat.Balance_Reload: unsigned(currentType-3)<3 -> gun base damage, no Upgrade_manager.Power_return; same condition passes skipUpgrade=true to CalculateAtkCoolMax','modeScope':'Boss3, Monster4, Raid5 skip forest power/speed; original existing raid-specific modifiers remain separate','damage':'Boss retains rebirth, skin, fish, relic percentages -> discard fraction -> power buff -> compact-slot star; critical applies125+fishCritical then relicCritical and discard','cooldown':'skinSpeed+rebirthSpeed-200; ignore forest speed/wave; clamp100..10000; (baseInterval/speed)*100 / speedBuff; clamp0.05..2','previewParity':'Cat.AtkCool_Boss_return explicitly calls CalculateAtkCoolMax(baseInterval,this,1,0,0), matching actual Boss currentType3','forestReturn':'Boss.Game_Exit calls UI_Reload(0), reloads ordinary cat balance; existing client Restart clears Boss mode and restores retained upgrades'},'minimumCooldown':{'preferredVa':'0x106c094','float32':minimum,'bytes':native[raw(0x106c094):raw(0x106c094)+4].hex()},'adapters':['Existing local DecimalAmount and original 65-gun data adapter; not full native InfVal implementation','Existing local rewarded-ad/payment simulators authorized by user; no real ad/store/receipt/server integration','Independent runtime fixtures equip shipped guns and specified upgrades; not starter-equipment or user-profile progression acceptance'],'scopeComplete':False}
(Q/'boss-balance-native-contract.json').write_text(json.dumps(out,ensure_ascii=False,indent=2))
print({'completed':len(methods),'business':9,'exceptionHelpers':6,'minimumCooldown':minimum})
