from pathlib import Path
import json,struct,re
from map_game_methods import ROOT as R,pointer,native,raw
st=(R/'transformed/region-0.decoded.bin').read_bytes();sd=(R/'transformed/region-4.decoded.bin').read_bytes();literals={}
for p in list((R/'native-weekly-raid-ui-reviewed').glob('*.c'))+list((R/'native-weekly-gun-ui-reviewed').glob('*.c')):
 for ptr in set(re.findall(r'PTR_DAT_([a-f0-9]+)',p.read_text())):
  try:
   va=int(ptr,16)-0x100000;e=pointer(pointer(va))
   if e>>29==5:
    n,o=struct.unpack_from('<2I',st,((e&0x1fffffff)>>1)*8);literals[hex(va)]=sd[o:o+n].decode()
  except (StopIteration,ValueError,struct.error,UnicodeDecodeError):pass
(R/'reports/weekly-raid-literals.json').write_text(json.dumps(literals,indent=2));print(json.dumps(literals,indent=2))
for a in [0x1070310,0x106f920,0x106fc20,0x10703c8,0x1070198,0x106fc28,0x106ff48]:print(hex(a),struct.unpack_from('<ii',native,raw(a)))

meta=(R/'extracted/base/assets/bin/Data/Managed/Metadata/global-metadata.dat').read_bytes();h=(R/'transformed/header.decoded.bin').read_bytes();w=lambda o:struct.unpack_from('<i',h,o)[0];types=json.loads((R/'reports/resolved-type-schema.json').read_text());bv={t['byval_type_index']:t for t in types};defaults={i:(t,d) for i,t,d in struct.iter_unpack('<iii',meta[w(0x50)+5340:w(0x50)+5340+w(0)])};refs=list(struct.iter_unpack('<ii',meta[w(0x5c)-0x5fc:w(0x5c)-0x5fc+w(0x48)]))
for va in [0x5d63f20,0x5d63f28,0x5d63f30]:
 e=pointer(pointer(va));assert e>>29==4;i=(e>>1)&0xfffffff;typ,local=refs[i];f=bv[typ]['fields'][local];offset=w(0x60)-4320+defaults[f['index']][1];blob=meta[offset:offset+12];print(hex(va),struct.unpack('<3i',blob))
