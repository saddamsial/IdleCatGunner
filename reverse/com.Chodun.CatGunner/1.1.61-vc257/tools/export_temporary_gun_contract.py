from pathlib import Path
import json,csv,hashlib,struct
r=Path(__file__).resolve().parents[1];q=r/'reports';p=r/'tools/map_game_methods.py';ns={'__file__':str(p)};exec(p.read_text().split('module =')[0],ns);native,raw,pointer=ns['native'],ns['raw'],ns['pointer'];folder=r/'native-temporary-gun-client-reviewed'
rows=list(csv.DictReader((folder/'status.tsv').open(),delimiter='\t'));assert len(rows)==32 and all(x['completed']=='true' and not x['error'] for x in rows)
methods=[]
for line in (q/'native-temporary-gun-client-queries.tsv').read_text().splitlines():
 va,name,prefix,end=line.split('\t');a,b=int(va,16),int(end,16);assert native[raw(a):raw(a)+16].hex()==prefix
 methods.append({'preferredVa':va,'ghidraVa':hex(a+0x100000),'end':end,'name':name,'first16':prefix,'sha256':hashlib.sha256(native[raw(a):raw(a)+b-a]).hexdigest(),'outputs':{str((folder/(name+'.'+ext)).relative_to(r)):hashlib.sha256((folder/(name+'.'+ext)).read_bytes()).hexdigest() for ext in ['c','asm']}})
u=pointer(pointer(0x5d63b78));assert u>>29==5;i=(u&0x1fffffff)>>1;n,o=struct.unpack_from('<2I',(r/'transformed/region-0.decoded.bin').read_bytes(),i*8);fmt=(r/'transformed/region-4.decoded.bin').read_bytes()[o:o+n].decode();assert fmt=='{0:00}:{1:00}';assert struct.unpack_from('<f',native,raw(0x106c060))[0]>0.1999
s=json.loads((q/'resolved-type-schema.json').read_text());fields={t['name']:{f['name']:f['native_offset'] for f in t['fields']} for t in s if t['name'] in ['Gun_manager','Gun_Item']};assert fields['Gun_manager']['AD_Gun_EndUtcTicks']==200 and fields['Gun_manager']['AD_Gun_Event_Given']==216
previous=set()
for f in r.glob('native-*-reviewed/status.tsv'):
 if f.parent==folder:continue
 for row in csv.DictReader(f.open(),delimiter='\t'):
  if row['completed']=='true' and not row['error']:previous.add(row['preferred_va'])
current={m['preferredVa'] for m in methods};new=current-previous
out={'rule':58,'target':'com.Chodun.CatGunner 1.1.61 vc257 ARM64','nativeSha256':hashlib.sha256(native).hexdigest(),'businessMethods':26,'helpers':6,'allCompleted':True,'firstQueriesAcrossHistoricalFolders':sorted(new),'historicalQueryAddressUnion':len(previous|current),'methods':methods,'fields':fields,'timerLiteral':{'pointer':'0x5d63b78','index':i,'value':fmt},'itemRefreshSeconds':struct.unpack_from('<f',native,raw(0x106c060))[0],'rules':json.loads((q/'temporary-gun-reconstruction-contract.json').read_text())['exactNative'],'dependencyEvidence':['native-inventory-dependencies-reviewed/Gun_Item_List_FuseItems.c: successful merge sets Has_Merged then CheckAdGunEvent','native-adventure-save-load-reviewed/LoadData_Load.c: imports AD fields then AD_Gun_OnLoaded','native-offline-dependencies-reviewed/_Reward_Get_d__70_MoveNext.c: placement9 acquire versus placement10 daily weapon'],'scopeComplete':False}
declared=set()
for entry in json.loads((q/'VERIFICATION.json').read_text())['native_outputs']:
 if entry['folder']=='native-temporary-gun-client-reviewed':continue
 for row in csv.DictReader((r/entry['folder']/'status.tsv').open(),delimiter='\t'):
  if row['completed']=='true':declared.add(row['preferred_va'])
out['registeredQueryCount']={'before':len(declared),'afterIncludingThisFolder':len(declared|current),'newToDeclaredFolders':len(current-declared),'firstQueryAcrossAllHistoricalFolders':len(new),'note':'Query addresses are not reviewed behavior counts or a game-recovery percentage.'}
(q/'temporary-gun-native-contract.json').write_text(json.dumps(out,ensure_ascii=False,indent=2));print({'nativeQueries':32,'firstAcrossHistory':len(new),'historicalQueryUnion':len(previous|current)})
