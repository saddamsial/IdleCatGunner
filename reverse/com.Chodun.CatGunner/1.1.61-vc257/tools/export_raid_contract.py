"""Revalidate vc257 Raid native hashes, metadata initializers and literals."""
from pathlib import Path
import json,hashlib,struct
from map_game_methods import ROOT,pointer
R=ROOT
m=(R/'extracted/base/assets/bin/Data/Managed/Metadata/global-metadata.dat').read_bytes()
assert hashlib.sha256(m).hexdigest()=='86af4f8faf83d791c0a8679d3643056d8a643ce9d41bf71afd2c4e100f466884'
c=json.loads((R/'reports/original-raid-client-contract.json').read_text());types=json.loads((R/'reports/metadata-type-index.json').read_text())
for va,blob in zip([0x5d63750,0x5d63f30],c['initializer_blobs']):
 encoded=pointer(pointer(va));assert encoded>>29==4;idx=(encoded&0x1fffffff)>>1
 rawtype,fieldidx=struct.unpack_from('<2i',m,0xf72694+idx*8);owner=next(t for t in types if t['byval_type_index']==rawtype);field=owner['fields'][fieldidx]
 b=m[blob['metadata_offset']:blob['metadata_offset']+12]
 assert list(struct.unpack('<3i',b))==blob['values'];assert hashlib.sha256(b).hexdigest().upper()==field['name']==blob['sha256']
 blob.update(preferred_field_pointer=hex(va),fieldref_index=idx,token=field['token'])
table=(R/'transformed/region-0.decoded.bin').read_bytes();data=(R/'transformed/region-4.decoded.bin').read_bytes()
for lit in c['ui_literals']:
 encoded=pointer(pointer(int(lit['preferred_pointer'],16)));assert encoded>>29==5;idx=(encoded&0x1fffffff)>>1
 n,off=struct.unpack_from('<2I',table,idx*8);assert idx==lit['index'] and data[off:off+n].decode()==lit['literal']
(R/'reports/original-raid-client-contract.json').write_text(json.dumps(c,ensure_ascii=False,indent=2)+'\n')
print('Raid initializer FieldInfo tokens, both SHA blobs and eight native literals revalidated')
