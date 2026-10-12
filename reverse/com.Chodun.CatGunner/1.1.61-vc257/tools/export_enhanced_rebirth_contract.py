from pathlib import Path
import json,csv,hashlib,struct
r=Path(__file__).resolve().parents[1];q=r/'reports';p=r/'tools/map_game_methods.py';ns={'__file__':str(p)};exec(p.read_text().split('module =')[0],ns);native,raw,pointer=ns['native'],ns['raw'],ns['pointer'];folder=r/'native-enhanced-rebirth-client-reviewed'
rows=list(csv.DictReader((folder/'status.tsv').open(),delimiter='\t'));assert len(rows)==20 and all(x['completed']=='true' and not x['error'] for x in rows)
methods=[]
for line in (q/'native-enhanced-rebirth-client-queries.tsv').read_text().splitlines():
 va,name,prefix,end=line.split('\t');start,stop=int(va,16),int(end,16);blob=native[raw(start):raw(start)+stop-start];assert native[raw(start):raw(start)+16].hex()==prefix
 methods.append({'preferredVa':va,'ghidraVa':hex(start+0x100000),'end':end,'name':name,'first16':prefix,'sha256':hashlib.sha256(blob).hexdigest(),'outputs':{str((folder/(name+'.'+ext)).relative_to(r)):hashlib.sha256((folder/(name+'.'+ext)).read_bytes()).hexdigest() for ext in ['c','asm']}})
usage=pointer(pointer(0x5d5d3e0));assert usage>>29==5;i=(usage&0x1fffffff)>>1;n,o=struct.unpack_from('<2I',(r/'transformed/region-0.decoded.bin').read_bytes(),i*8);date=(r/'transformed/region-4.decoded.bin').read_bytes()[o:o+n].decode();assert date=='yyyyMMdd'
schema=json.loads((q/'resolved-type-schema.json').read_text());fields={t['name']:{f['name']:f['native_offset'] for f in t['fields']} for t in schema if t['name'] in ['Rebirth_manager','Rebirth_Panel_UI','Rebirth_FX']}
assert fields['Rebirth_manager']['is_UpgradeRebirth']==72 and fields['Rebirth_manager']['is_UpgradeRebirth_IAP']==73
current={m['preferredVa'] for m in methods};previous=set()
for f in r.glob('native-*-reviewed/status.tsv'):
 if f.parent==folder:continue
 for row in csv.DictReader(f.open(),delimiter='\t'):
  if row['completed']=='true' and not row['error']:previous.add(row['preferred_va'])
new=current-previous;assert len(new)==4,new
out={'rule':57,'target':'com.Chodun.CatGunner 1.1.61 vc257 ARM64','nativeSha256':hashlib.sha256(native).hexdigest(),'businessMethods':14,'helpers':6,'allCompleted':True,'newUniqueMethods':sorted(new),'uniqueCompletedQueryAddressesAcrossAllFolders':len(previous|current),'methods':methods,'fields':fields,'dateLiteral':{'pointer':'0x5d5d3e0','usage':hex(usage),'index':i,'value':date},'rules':{'date':'Time_manager.Now formatted yyyyMMdd invariant; any unequal date key resets both use counters','ad':'UseCount <1; forest stage >=2; popup triple preview; ShowRewardAd type8; callback activates original FX','settlement':'original rebirth.anim event at2sec; reward3x when enhanced; ad count increments only on reset success; paid count incremented earlier at purchase completion','ui':'ad button if ad count<1; else IAP if Stage_Value_Max>989 and IAP count<1; else Used branch','preserve':'ordinary rebirth stays1x; keep collection/permanent upgrades; reset forest money and ordinary upgrade levels'},'adapters':['User-authorized asynchronous local ad/purchase success, no SDK/network/charge/receipt/production entitlement','Current Raid.Now local clock; trusted original time service unavailable','Legacy recovery ISO dates normalize to same yyyyMMdd day before native comparison, preserving used quotas','Pending reward flags committed only after authorized local completion; page revision/day/mode/startup guards; interrupted FX drops pending reward','Existing 5-significant-digit decimal reward adapter, not full commercial InfVal precision'], 'scopeComplete':False}
out['registeredQueryCount']={'before':868,'afterIncludingThisFolder':882,'newToDeclaredFolders':14,'firstQueryAcrossAllHistoricalFolders':4,'note':'Query addresses are not reviewed behavior counts or a game-recovery percentage; ten methods are re-exports.'}
(q/'enhanced-rebirth-native-contract.json').write_text(json.dumps(out,ensure_ascii=False,indent=2));print({'newUnique':len(new),'uniqueCompletedQueriesAcrossAllFolders':len(previous|current)})
