from pathlib import Path
import csv,hashlib,json,struct
from map_game_methods import ROOT as R,native,raw
q=R/'reports';folder=R/'native-mine-sweep-client-reviewed'
rows=list(csv.DictReader((folder/'status.tsv').open(),delimiter='\t'));assert len(rows)==16 and all(x['completed']=='true' and not x['error'] for x in rows)
methods=[]
for line in (q/'native-mine-sweep-client-queries.tsv').read_text().splitlines():
 va,name,prefix,end=line.split('\t');start,stop=int(va,16),int(end,16);blob=native[raw(start):raw(start)+stop-start];assert native[raw(start):raw(start)+16].hex()==prefix
 assert all((folder/(name+'.'+ext)).exists() for ext in ['c','asm'])
 methods.append(dict(preferredVa=va,name=name,end=end,first16=prefix,sha256=hashlib.sha256(blob).hexdigest(),completed=True))
for name in ['Mine_manager_Game_Sweep','Mine_manager_SweepReward_return']:
 asm=(folder/(name+'.asm')).read_text();assert 'fmul s0' in asm and 'fcvtzs w9,s0' in asm and 'lsl w' in asm
schema=json.loads((q/'resolved-type-schema.json').read_text())
fields={t['name']:{f['name']:f['native_offset'] for f in t['fields']} for t in schema if t['name'] in ['Mine_manager','Mine_Start_UI','Shop_manager']}
assert fields['Mine_manager']['Best_Reward']==96 and fields['Mine_manager']['TicketUse_Count']==80 and fields['Mine_manager']['Reward_Value']==208 and fields['Mine_manager']['_sweepPending']==264
assert fields['Mine_Start_UI']['Value_txt']==72 and fields['Shop_manager']['Is_Mine_Pack']==13
data=dict(target='com.Chodun.CatGunner 1.1.61 vc257 ARM64',rule=53,verifiedNativeFields={k:fields[k] for k in ['Mine_manager','Mine_Start_UI']},shopMinePackStaticOffset=13,allQueriesCompleted=True,businessMethods=10,exceptionHelpers=6,methods=methods,nativeRules={'gate':'PlusPack.Is_Active(2) && Best_Reward>0; no combat power gate','ticket':'Ticket_Reload; TicketUse_Count<2 (Mine pack6); increment once; exhausted alert and MineTicket purchase panel unless Mine pack','baseReward':'float32 Best_Reward * PlusPack.Reward_Mult_Mine (Plus1=1.5 otherwise1), truncate to int','settlement':'base or base*4 when Is_RewardBonus_Auto; popup base and base*4; mission3 +1; Best_Reward unchanged; forest/game mode unchanged','bonus':'ad placement3; add Reward_Value*3 then close; original serialized button actually Bonus_AD_Show','preview':'Mine_Start_UI switches NonAuto/Auto by is_SweepAble; sprite1 reward preview includes automatic4x','banner':'Only Is_Mine_Pack (Shop static offset13), no ticket-purchase popup, and Plus1 Banner_ShouldShow; ordinary non-pack player hides banner','close':'pending false; hide popup; native interstitial placement1 if no rewarded watch and not auto'},adapters=['User-authorized shared local ads and purchases only, no real SDK/production receipts','Local page/mode/revision/in-flight guards for duplicates and stale rewards','Existing local date ticket rollover; trusted server clock not restored','SendDgResult, FreeCash/production entitlement and close interstitial not restored','Local observer updates seven-day expiry/reward preview'],scopeComplete=False)
(q/'mine-sweep-native-contract.json').write_text(json.dumps(data,ensure_ascii=False,indent=2));print({'completed':len(methods),'businessMethods':10})
