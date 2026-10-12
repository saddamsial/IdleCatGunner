"""Rule 41: exact input/selected-method checks, safe literals and offline array blobs."""
from pathlib import Path
import csv,json,hashlib,struct,re
from map_game_methods import ROOT as R,native,raw,pointer
sha=lambda b:hashlib.sha256(b).hexdigest()
meta=(R/'extracted/base/assets/bin/Data/Managed/Metadata/global-metadata.dat').read_bytes()
assert sha(meta)=='86af4f8faf83d791c0a8679d3643056d8a643ce9d41bf71afd2c4e100f466884'
main=R/'assetripper-baseline/ExportedProject/Assets/Scenes/Main.unity'
assert sha(main.read_bytes())=='e672f743a687af8268ef45408c922d6ddc7edce2cf40b9b2531fe3ede23aba7b'
scopes={}
for scope in ['offline-simulation','local-reward-paths','offline-dependencies']:
 rows=list(csv.reader((R/f'reports/native-{scope}-queries.tsv').read_text().splitlines(),delimiter='\t'))
 status=list(csv.DictReader((R/f'native-{scope}-reviewed/status.tsv').read_text().splitlines(),delimiter='\t'))
 assert len(rows)==len(status) and all(s['completed']=='true' for s in status)
 proofs=[]
 for va,name,first,end in rows:
  a,z=int(va,16),int(end,16);assert native[raw(a):raw(a)+16].hex()==first
  proofs.append({'name':name,'preferredVA':va,'boundEnd':end,'sha256':sha(native[raw(a):raw(z)]),'completed':True})
 scopes[scope]={'total':len(rows),'business':len(rows)-6,'exceptionHelpers':6,'methods':proofs}
header=(R/'transformed/header.decoded.bin').read_bytes();w=lambda o:struct.unpack_from('<i',header,o)[0]
schema=json.loads((R/'reports/resolved-type-schema.json').read_text());bv={t['byval_type_index']:t for t in schema}
defaults={i:(t,d) for i,t,d in struct.iter_unpack('<iii',meta[w(0x50)+5340:w(0x50)+5340+w(0)])}
refs=list(struct.iter_unpack('<ii',meta[w(0x5c)-0x5fc:w(0x5c)-0x5fc+w(0x48)]))
arrays=[]
for va,size,fmt in [(0x5d620c8,32,'<4d'),(0x5d620d0,32,'<4d'),(0x5d620e0,80,'<20f')]:
 e=pointer(pointer(va));assert e>>29==4;i=(e>>1)&0xfffffff;typ,local=refs[i];field=bv[typ]['fields'][local];offset=w(0x60)-4320+defaults[field['index']][1];blob=meta[offset:offset+size]
 assert field['name'].lower()==sha(blob).lower()
 arrays.append({'pointer':hex(va),'declaringType':bv[typ]['name'],'field':field['name'],'metadataOffset':offset,'bytes':size,'sha256':sha(blob),'values':struct.unpack(fmt,blob)})
literals={};st=(R/'transformed/region-0.decoded.bin').read_bytes();sd=(R/'transformed/region-4.decoded.bin').read_bytes()
for scope in scopes:
 for p in (R/f'native-{scope}-reviewed').glob('*.c'):
  for ptr in set(re.findall(r'PTR_DAT_([a-f0-9]+)',p.read_text())):
   try:
    va=int(ptr,16)-0x100000;e=pointer(pointer(va))
    if e>>29==5:
     n,o=struct.unpack_from('<2I',st,((e&0x1fffffff)>>1)*8);literals[hex(va)]=sd[o:o+n].decode()
   except (StopIteration,ValueError,struct.error,UnicodeDecodeError):pass
# Only UI/rule constants. No user profile or authentication payload is inspected.
constants={hex(a):struct.unpack_from(fmt,native,raw(a))[0] for a,fmt in [(0x106c094,'<f'),(0x106c1b4,'<f'),(0x106c174,'<f'),(0x106c088,'<f'),(0x106f660,'<d')]}
result={'target':'com.Chodun.CatGunner 1.1.61 vc257 ARM64','nativeSha256':sha(native),'metadataSha256':sha(meta),'mainSha256':sha(main.read_bytes()),'scopes':scopes,'offlineArrays':arrays,'nativeConstants':constants,'safeUILiterals':literals,'interpretation':'Static native/serialized evidence. DecimalAmount, local clock and local ad completion remain adapters; not live SDK or device proof.'}
(R/'reports/playtest-fixes-native-evidence.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n')
print(json.dumps({'scopes':{k:{x:v[x] for x in ['total','business','exceptionHelpers']} for k,v in scopes.items()},'arrays':arrays,'constants':constants},ensure_ascii=False,indent=2))
