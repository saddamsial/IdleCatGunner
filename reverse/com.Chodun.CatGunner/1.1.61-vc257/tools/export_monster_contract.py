"""Re-check the exact vc257 Monster initializers and UI literals; never player state."""
from pathlib import Path
import json,hashlib,struct
from map_game_methods import ROOT,pointer
R=ROOT
metadata=(R/'extracted/base/assets/bin/Data/Managed/Metadata/global-metadata.dat').read_bytes()
assert hashlib.sha256(metadata).hexdigest()=='86af4f8faf83d791c0a8679d3643056d8a643ce9d41bf71afd2c4e100f466884'
types=json.loads((R/'reports/metadata-type-index.json').read_text())
contract=json.loads((R/'reports/original-monster-client-contract.json').read_text())
for va,expected_index,blob in zip([0x5d63548,0x5d63550],[33,25],contract['initializer_blobs']):
 encoded=pointer(pointer(va));assert encoded>>29==4
 index=(encoded&0x1fffffff)>>1;assert index==expected_index
 raw_type,field_index=struct.unpack_from('<2i',metadata,0xf72694+index*8)
 owner=next(t for t in types if t['byval_type_index']==raw_type)
 field=owner['fields'][field_index]
 offset=blob['metadata_offset'];data=metadata[offset:offset+20]
 assert hashlib.sha256(data).hexdigest().upper()==field['name']==blob['sha256']
 assert list(struct.unpack('<5i' if blob['name']=='counts' else '<5f',data))==blob['values']
 blob.update(preferred_field_pointer=hex(va),encoded_source=hex(encoded),fieldref_index=index,token=field['token'])
table=(R/'transformed/region-0.decoded.bin').read_bytes();data=(R/'transformed/region-4.decoded.bin').read_bytes()
literals=[]
for va in [0x5d625b8,0x5d63338]:
 encoded=pointer(pointer(va));assert encoded>>29==5
 index=(encoded&0x1fffffff)>>1;n,offset=struct.unpack_from('<2I',table,index*8)
 literals.append({'preferred_pointer':hex(va),'kind':5,'literal_index':index,'length':n,'data_offset':offset,'literal':data[offset:offset+n].decode()})
assert [x['literal'] for x in literals]==['Wave {0}-{1}','{0}%']
(R/'reports/monster-ui-literal-resolution.json').write_text(json.dumps(literals,indent=2)+'\n')
contract['ui_literals']=literals
(R/'reports/original-monster-client-contract.json').write_text(json.dumps(contract,ensure_ascii=False,indent=2)+'\n')
print('Rechecked exact initializer FieldInfo encodings, both SHA256 blobs and native UI literals')
