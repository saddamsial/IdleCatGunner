from pathlib import Path
import csv,hashlib,json
from map_game_methods import ROOT as R,native,raw
q=R/'reports';folder=R/'native-monster-sweep-client-reviewed'
rows=list(csv.DictReader((folder/'status.tsv').open(),delimiter='\t'));assert len(rows)==21 and all(x['completed']=='true' and not x['error'] for x in rows)
methods=[]
for line in (q/'native-monster-sweep-client-queries.tsv').read_text().splitlines():
 va,name,prefix,end=line.split('\t');start,stop=int(va,16),int(end,16);blob=native[raw(start):raw(start)+stop-start];assert native[raw(start):raw(start)+16].hex()==prefix
 assert all((folder/(name+'.'+ext)).exists() for ext in ['c','asm'])
 methods.append(dict(preferredVa=va,name=name,end=end,first16=prefix,sha256=hashlib.sha256(blob).hexdigest(),completed=True))
assert 'cmp' in (folder/'Monster_manager_SweepTarget_return.asm').read_text()
schema=json.loads((q/'resolved-type-schema.json').read_text())
fields={t['name']:{f['name']:f['native_offset'] for f in t['fields']} for t in schema if t['name'] in ['Monster_manager','Monster_Start_UI']}
assert fields['Monster_manager']['PetCoin_Accum']==316 and fields['Monster_manager']['_sweepPending']==312
assert fields['Monster_manager']['Wave_Now']==32 and fields['Monster_manager']['SpawnIntervalPerLevel']==24
assert fields['Monster_Start_UI']['Stage_txt']==152 and fields['Monster_Start_UI']['Sweep_Fill']==168
rules={'gate':'PlusPack.Is_Active(2) and Power_Monster>=required current wave/level','required':'WaveBaseHealth_Pure*(100+40*level)/100 *150 / trunc(float32 SpawnIntervalPerLevel[level]*100), final precision5; count per level not used','power':'Active ordinary cats only; boss expected damage/cooldown exclude forest upgrades; targets SINGLE1 LASER7 PIERCE5 SHOTGUN max(1,pellets) EXPLOSIVE5 MISSILE5 BLAST_SNIPER10; expected*targets*100/trunc(cooldown*100); final precision5','target':'advance only while each successive threshold passed, cap100 cleared levels, wrap five levels; save next playable wave/level','reward':'30*Plus1 multiplier(2 or1), truncate before multiplying count; snapshot uses shared PetCoin_Accum field0x13c; base or automatic2x; no mine mission increment','bonus':'Original SweepBonus_AD_Show -> ad placement5; add PetCoin_Accum once; close','preview':'Plus2 swaps NonAuto/Auto; insufficient red current level plus percentage/fill; sufficient white next playable level/fill1','banner':'PlusPack.Banner_ShouldShow(2)','close':'pending false/hide; original interstitial placement4 omitted offline','online':'SendDgResult(sweep=true) and rank Wave*10+level not connected'}
data=dict(target='com.Chodun.CatGunner 1.1.61 vc257 ARM64',rule=54,verifiedNativeFields=fields,allQueriesCompleted=True,businessMethods=15,exceptionHelpers=6,methods=methods,nativeRules=rules,adapters=['Shared user-authorized local ads/purchases only; no real charge, SDK or receipts','Existing bounded DecimalAmount/InfVal adapter, not original implementation','Local page/mode/revision/in-flight guards protect duplicate/stale results','Local 0.25s observer handles purchase expiry and preview; no trusted server clock','Ranking/SendDgResult/FreeCash/close interstitial/production entitlements not restored'],scopeComplete=False)
(q/'monster-sweep-native-contract.json').write_text(json.dumps(data,ensure_ascii=False,indent=2));print({'completed':len(methods),'businessMethods':15,'sharedRewardOffset':316})
