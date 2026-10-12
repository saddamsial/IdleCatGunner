"""Exact vc257 Adventure serialized data and byte/hash-verified native initializers."""
from pathlib import Path
import json,struct,hashlib,re,yaml
from map_game_methods import ROOT as R,pointer,native,raw
P=R.parents[2]/'reconstruction/CatGunnerUnityClient';B=R/'assetripper-baseline/ExportedProject';meta=(R/'extracted/base/assets/bin/Data/Managed/Metadata/global-metadata.dat').read_bytes();h=(R/'transformed/header.decoded.bin').read_bytes();w=lambda o:struct.unpack_from('<i',h,o)[0];types=json.loads((R/'reports/resolved-type-schema.json').read_text());bv={t['byval_type_index']:t for t in types};defaults={i:(t,d) for i,t,d in struct.iter_unpack('<iii',meta[w(0x50)+5340:w(0x50)+5340+w(0)])};refs=list(struct.iter_unpack('<ii',meta[w(0x5c)-0x5fc:w(0x5c)-0x5fc+w(0x48)]))
blobs=[]
for va in [0x5d63018,0x5d63020]:
 e=pointer(pointer(va));assert e>>29==4;i=(e>>1)&0xfffffff;typ,local=refs[i];f=bv[typ]['fields'][local];offset=w(0x60)-4320+defaults[f['index']][1];blob=meta[offset:offset+20];assert hashlib.sha256(blob).hexdigest().upper()==f['name'];blobs.append({'preferred_pointer':hex(va),'field_reference':i,'token':f['token'],'metadata_offset':offset,'sha256':f['name'],'values':list(struct.unpack('<5i',blob))})
idx=json.loads((R/'reports/original-main-document-index.json').read_text());components={};wanted={t['name'] for t in types if t['name'].startswith('Adventure_')};guidnames={re.search(r'^guid: (\w+)',p.read_text(),re.M)[1]:p.name[:-8] for p in (B/'Assets/Scripts/Assembly-CSharp').glob('*.cs.meta') if p.name[:-8] in wanted}
with (B/'Assets/Scenes/Main.unity').open('rb') as file:
 for k,(cid,o,n) in idx.items():
  if cid!=114:continue
  file.seek(o);s=file.read(n).decode();g=re.search(r'm_Script: \{[^}]*guid: (\w+)',s)
  if g and g[1] in guidnames:components[k]={'type':guidnames[g[1]],'data':yaml.safe_load(s.split('\n',1)[1])['MonoBehaviour']}
manager=next(x['data'] for x in components.values() if x['type']=='Adventure_manager');exp=list(struct.unpack('<15i',bytes.fromhex(manager['Exp_balance'])));assert exp==[10,60,100,130,180,230,280,340,400,470,550,630,720,820,920]
# Keep the shipped table: Awake/Start do not call the optional Exp_Balance_Reload formula.
st=(R/'transformed/region-0.decoded.bin').read_bytes();sd=(R/'transformed/region-4.decoded.bin').read_bytes();literals={}
for p in (R/'native-adventure-client-reviewed').glob('*.c'):
 for ptr in set(re.findall(r'PTR_DAT_([a-f0-9]+)',p.read_text())):
  try:
   va=int(ptr,16)-0x100000;e=pointer(pointer(va))
   if e>>29==5:
    n,o=struct.unpack_from('<2I',st,((e&0x1fffffff)>>1)*8);literals[hex(va)]=sd[o:o+n].decode()
  except (StopIteration,ValueError,struct.error,UnicodeDecodeError):pass
status=[l.split('\t') for l in (R/'native-adventure-client-reviewed/status.tsv').read_text().splitlines()[1:]];assert len(status)==142 and all(s[3]=='true' for s in status)
p=R/'reports/original-adventure-client-contract.json';c=json.loads(p.read_text());c.update(native_status='136 selected business methods and6helpers all byte-verified completed',native_exports={'business':136,'helpers':6,'completed':142},initializer_blobs=blobs,serialized_components=components,literals=literals,rules={'duration_hours':blobs[0]['values'],'unlock_levels':blobs[1]['values'],'pet_slot_unlock_levels':[0,2,7],'core_reward':'int(single-precision sum(grade*0.1+1)*20*base duration hours)','exp_reward':'10*base hours*count of locked nonempty pets','exp_balance_shipped':exp,'optional_exp_reload_formula':'(20+3*Lv)*Lv+50; Awake/Start do not invoke; retain shipped table','ticket':'max20,4-hour intervals, cost selected count; first absent charge timestamp initialized Now; retain fractional interval; full-cap uses reset clock on spending','weekdays':'Forest Sun/Mon/Thu; Desert Sun/Tue/Fri; Tundra Sun/Wed/Sat; gates visible EnterAble UI only; finish/cancel still reachable on closed day','lock_group':'map index + map type*100, owned and equipped locks, selected candidates filtered unique/available and capped3; UI open slots byLv','start_boundary':'native manager only rejects entered/locked/zero valid pets; UI gates weekday/tickets/open slots; local transaction validates before spending to avoid race-loss','settlement':'must entered+Remaining<=0; calculate from live locked grades, core andExp, unlockgroup, clear entered, original popup; repeated claim no reward','cancel':'unlockgroup/clear entered, no refund/reward; local immediately persists (native function has no direct Save)','commercial':'PlusPack type2 would subtract16hours; absent entitlement ordinary duration retained; ad/time/cheat controls unavailable'})
p.write_text(json.dumps(c,ensure_ascii=False,indent=2)+'\n');(P/'Assets/Recovery/Resources/OriginalAdventureCatalogue.json').write_text(json.dumps({'DurationHours':blobs[0]['values'],'UnlockLevels':blobs[1]['values'],'PetSlotUnlockLevels':[0,2,7],'ExpBalance':exp,'CorePerHour':20,'ExpPerHour':10,'PetDegreeFactor':0.1},indent=2)+'\n');print('Native142 complete; durations',blobs[0]['values'],'unlock',blobs[1]['values'],'components',len(components),'literals',len(literals))
