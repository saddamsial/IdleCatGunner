"""Matching vc257 content gate initializer, methods, UI references and adapters."""
from pathlib import Path
import csv, hashlib, json, struct
from map_game_methods import ROOT as R, native, raw, pointer
P=R.parents[2]/'reconstruction/CatGunnerUnityClient'
B=R/'assetripper-baseline/ExportedProject'
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
schema=json.loads((R/'reports/resolved-type-schema.json').read_text())
meta=(R/'extracted/base/assets/bin/Data/Managed/Metadata/global-metadata.dat').read_bytes()
h=(R/'transformed/header.decoded.bin').read_bytes();w=lambda offset:struct.unpack_from('<i',h,offset)[0]
defaults={i:(t,d) for i,t,d in struct.iter_unpack('<iii',meta[w(0x50)+5340:w(0x50)+5340+w(0)])}
refs=list(struct.iter_unpack('<ii',meta[w(0x5c)-0x5fc:w(0x5c)-0x5fc+w(0x48)]));byval={t['byval_type_index']:t for t in schema}
usage=pointer(pointer(0x5d5e4e0));assert usage>>29==4
typ,local=refs[(usage>>1)&0xfffffff];field=byval[typ]['fields'][local]
offset=w(0x60)-4320+defaults[field['index']][1];blob=meta[offset:offset+32]
assert hashlib.sha256(blob).hexdigest().upper()==field['name']
balance=list(struct.unpack('<8i',blob));assert balance==[3,4,6,10,12,12,35,40]
enum=next(t for t in schema if t['name']=='Content_Type')
values=[]
for f in enum['fields']:
    if f['name']=='value__':continue
    o=w(0x60)-4320+defaults[f['index']][1]
    # Metadata29 field defaults use compressed signed integers. These eight
    # nonnegative constants are single-byte zigzag values, not raw int32 blobs.
    encoded=meta[o];assert encoded<128 and encoded%2==0
    values.append({'name':f['name'],'encoded_byte':encoded,'value':encoded>>1})
assert [v['value'] for v in values]==list(range(8))
status=list(csv.DictReader((R/'native-content-unlock-ui-reviewed/status.tsv').open(),delimiter='\t'))
assert len(status)==26 and all(row['completed']=='true' for row in status)
maprows=json.loads((R/'reports/game-method-map.json').read_text());methods=[]
for line in (R/'reports/native-content-unlock-ui-queries.tsv').read_text().splitlines():
    va,name,expected,end=line.split('\t');assert native[raw(int(va,16)):raw(int(va,16))+16].hex()==expected
    row=next((x for x in maprows if int(x['preferred_va'],16)==int(va,16)),None)
    methods.append({'preferred_va':va,'ghidra_va':hex(int(va,16)+0x100000),'end':end,'name':name,'token':row['token'] if row else None,'input16':expected,'outputs':{name+suffix:sha(R/'native-content-unlock-ui-reviewed'/(name+suffix)) for suffix in ['.c','.asm']}})
inputs=[]
for row in json.loads((R/'reports/original-detail-hold-contract.json').read_text())['inputs']:
    current=sha(Path(row['path']));assert current==row['expected'];inputs.append({**row,'sha256':current,'unchanged':True})
src=B/'Assets/Scripts/Assembly-CSharp/Contents_Unlock_manager.cs.meta';dst=P/'Assets/Recovery/Scripts/Contents_Unlock_manager.cs.meta'
assert sha(src)==sha(dst)
contract={'target':'com.Chodun.CatGunner1.1.61 vc257 arm64','inputs':inputs,'native_methods':methods,'completed':26,'business':20,'exception_helpers':6,
    'initializer':{'preferred_pointer':'0x5d5e4e0','field_token':field['token'],'metadata_offset':offset,'sha256':field['name'],'values':balance},'enum':values,
    'serialized_manifest':'Assets/Recovery/Editor/OriginalContentUnlock.json','serialized_manifest_sha256':sha(P/'Assets/Recovery/Editor/OriginalContentUnlock.json'),'original_monoscript_meta':{'sha256':sha(dst),'unchanged':True},
    'rules':{'max_stage':'Tree_manager.Stage_Value_Max / 10 + 1; absent tree manager ->0; current stage/rebirth do not replace historical frontier',
             'unlocked':'MaxStage_Display >= Unlock_Stage_return(type)', 'next':'minimum threshold across all locked enum types; none -> -1; tied Pet/Monster both displayed',
             'reload':'tutorial present and CurrentStep !=5: hide all Content_list.Btn_obj; otherwise display unlocked OR next, activate Locked_obj only for next',
             'try_open':'reject locked before panel mutation, show original Alert with stage formatting; no resource/reward mutation',
             'callbacks':'original single Content_Btn_* callback and original manager script identity restored for all8 button roots'},
    'adapters':['Existing RecoveryForestClient owns stage/backend/controller binding; explicit Update detects changed display stage/tutorial predicate in place of unrecovered UI_manager refresh loop.',
                'Original Tutorial_manager is absent; native absence branch is false. Injectable tutorial step used only for isolated tests, no player tutorial completion written.',
                'Eight native callback gates dispatch to existing recovered local panel entry methods so each already-restored controller owns refresh/lifecycle.',
                'Original Alert object and Animator reused; English Unlock at Stage N text until complete I2/localization restoration.'],
    'runtime_sources':{str((P/'Assets/Recovery/Scripts'/(name+'.cs')).relative_to(P)):sha(P/'Assets/Recovery/Scripts'/(name+'.cs')) for name in ['Contents_Unlock_manager','Content_Type','Content_Info','RecoveryForestClient']},
    'boundary':'Ordinary content-entry gates restored only. Tutorial steps/WeeklyShop/full UI/particles/offline relic consumers/Player/device/online/commercial still pending. No recovery percentage inferred from26 export completions.'}
(R/'reports/original-content-unlock-contract.json').write_text(json.dumps(contract,ensure_ascii=False,indent=2)+'\n')
print('26/26 native input byte checks; original initializer SHA; eight enum values; original MonoScript GUID retained')
