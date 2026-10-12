from pathlib import Path
import json,struct,re,hashlib
R=Path(__file__).resolve().parents[1];p=R/'tools/map_game_methods.py';ns={'__file__':str(p)};exec(p.read_text().split('module =')[0],ns);pointer,raw,native=ns['pointer'],ns['raw'],ns['native']
st=(R/'transformed/region-0.decoded.bin').read_bytes();sd=(R/'transformed/region-4.decoded.bin').read_bytes();literals={}
for folder in ['native-local-purchase-content-reviewed','native-local-purchase-dependencies-reviewed','native-local-purchase-perks-reviewed']:
 for p in (R/folder).glob('*.c'):
  for ptr in set(re.findall(r'PTR_DAT_([a-f0-9]+)',p.read_text())):
   try:
    va=int(ptr,16)-0x100000;e=pointer(pointer(va))
    if e>>29==5:
     n,o=struct.unpack_from('<2I',st,((e&0x1fffffff)>>1)*8);literals[hex(va)]=sd[o:o+n].decode()
   except (StopIteration,ValueError,struct.error,UnicodeDecodeError):pass
meta=(R/'extracted/base/assets/bin/Data/Managed/Metadata/global-metadata.dat').read_bytes();h=(R/'transformed/header.decoded.bin').read_bytes();w=lambda o:struct.unpack_from('<i',h,o)[0];types=json.loads((R/'reports/resolved-type-schema.json').read_text());bv={t['byval_type_index']:t for t in types};defaults={i:(t,d) for i,t,d in struct.iter_unpack('<iii',meta[w(0x50)+5340:w(0x50)+5340+w(0)])};refs=list(struct.iter_unpack('<ii',meta[w(0x5c)-0x5fc:w(0x5c)-0x5fc+w(0x48)]));arrays={}
for folder in ['native-local-purchase-content-reviewed','native-local-purchase-dependencies-reviewed','native-local-purchase-perks-reviewed']:
 for p in (R/folder).glob('*cctor.c'):
  for ptr in set(re.findall(r'PTR_DAT_([a-f0-9]+)',p.read_text())):
   try:
    va=int(ptr,16)-0x100000;e=pointer(pointer(va))
    if e>>29!=4:continue
    i=(e>>1)&0xfffffff;typ,local=refs[i];f=bv[typ]['fields'][local];off=w(0x60)-4320+defaults[f['index']][1];sig=f['signature']['name'];n=int(re.search(r'Size=(\d+)',sig)[1])
    blob=meta[off:off+n];assert hashlib.sha256(blob).hexdigest().upper()==f['name'];arrays[hex(va)]={'source':p.name,'field':f['name'],'bytes':blob.hex(),'int32':list(struct.unpack('<'+str(n//4)+'i',blob))}
   except (TypeError,KeyError,IndexError,AttributeError,StopIteration,ValueError,struct.error):pass
# Known Core_Amount_return indexed native jump/data table.
cores=list(struct.unpack_from('<7i',native,raw(0x10b0538)));enums={}
for t in types:
 if t['name'] in ['InApp_Type','InApp_Core_Type','PlusPack_Type','Kind','VIP_Type'] and t['image']=='Assembly-CSharp.dll':
  values={}
  for f in t['fields'][1:]:
   if f['index'] in defaults:
    off=w(0x60)-4320+defaults[f['index']][1];encoded=meta[off];assert encoded<128;values[f['name']]=(encoded>>1)^(-(encoded&1))
  enums[t['name']]=values
(R/'reports/local-purchase-literals.json').write_text(json.dumps({'literals':literals,'arrays':arrays,'coreAmounts':cores,'enums':enums},indent=2)+'\n');print('Products', {k:v for k,v in literals.items() if 'catgunner' in v.lower() or 'pack' in v.lower() or 'core_' in v.lower() or 'vip' in v.lower() or 'dia_' in v.lower()});print('arrays',arrays);print('cores',cores,'enums',enums)
