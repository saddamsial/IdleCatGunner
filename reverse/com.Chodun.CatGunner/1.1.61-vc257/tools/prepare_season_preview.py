"""Protect current work and select five bounded vc257 season preview methods."""
from pathlib import Path
import bisect, hashlib, json, re, struct
R=Path(__file__).resolve().parents[1];Q=R/'reports';P=R.parents[2]/'reconstruction/CatGunnerUnityClient'
checkpoint=R/'checkpoints/season-preview-before';checkpoint.mkdir(parents=True,exist_ok=True)
assert not (checkpoint/'manifest.json').exists(), 'Do not overwrite an established checkpoint'
save=Path.home()/'Library/Application Support/DefaultCompany/CatGunnerUnityClient/RecoveredClient-vc257'
paths=[save/'NoSaveFile.json',save/'NoSaveFile.json.bak',P/'Assets/Recovery/Scenes/RecoveredClient.unity',P/'Assets/Recovery/Resources/StarChineseFallback.asset']
paths += [P/'Assets/Recovery/Scripts'/n for n in ['Mission_Reward_Item.cs','RecoveryClientPresentation.cs']]
assert all(f.exists() for f in paths),paths
files=[]
for i,f in enumerate(paths):
 data=f.read_bytes();backup=checkpoint/(str(i)+'-'+f.name);backup.write_bytes(data)
 files.append(dict(path=str(f),backup=str(backup),sha256=hashlib.sha256(data).hexdigest()))
metas={str(f):hashlib.sha256(f.read_bytes()).hexdigest() for f in (P/'Assets/Recovery').rglob('*.meta')}
(checkpoint/'manifest.json').write_text(json.dumps(dict(files=files,metas=metas),indent=2)+'\n')
# Reuse only the verified ELF reader definitions, without map_game_methods' writes.
s=(R/'tools/map_game_methods.py').read_text();exec(s[:s.index('module = ')].replace('ROOT = Path(__file__).resolve().parents[1]','ROOT = R'))
allrows=json.loads((Q/'all-method-address-index.json').read_text())['addresses']
managed=sorted({int(x['preferred_va'],16) for x in allrows if int(x['preferred_va'],16)})
eh=section('.eh_frame_hdr');d=native[eh['offset']:eh['offset']+eh['size']]
assert d[:4]==b'\x01\x1b\x03\x3b'
starts=[eh['va']+struct.unpack_from('<i',d,12+i*8)[0] for i in range(struct.unpack_from('<I',d,8)[0])]
rows=[];refs={}
for x in json.loads((Q/'game-method-map.json').read_text()):
 if (x['declaring_type'],x['name']) not in [('NewSeason_UI','OnEnable'),('NewSeason_UI','Reload'),('NewSeason_UI','.ctor'),('Mission_Reward_Item','First_Reload'),('Mission_Reward_Item','Value_Reload')]:continue
 va=int(x['preferred_va'],16);end=min(a[bisect.bisect_right(a,va)] for a in (managed,starts))
 rows.append([hex(va),re.sub('[^A-Za-z0-9_]','_',x['declaring_type']+'_'+x['name']),native[raw(va):raw(va)+16].hex(),hex(end)])
 for off in range(raw(va),raw(end),4):
  ins=struct.unpack_from('<I',native,off)[0]
  if ins>>26 not in (0x25,5):continue
  imm=ins&0x3ffffff;imm=imm-0x4000000 if imm&0x2000000 else imm
  target=va+off-raw(va)+imm*4;matches=[m for m in allrows if int(m['preferred_va'],16)==target]
  if len(matches)==1:
   m=matches[0];refs[target]=re.sub('[^A-Za-z0-9_]','_',m['type']+'_'+m['method']+'_'+m['token'])
assert len(rows)==5
helpers=(Q/'native-audio-queries.tsv').read_text().splitlines()[4:]
(Q/'native-season-preview-queries.tsv').write_text('\n'.join('\t'.join(x) for x in rows)+'\n'+'\n'.join(helpers)+'\n')
(Q/'native-season-preview-references.tsv').write_text('\n'.join(hex(a)+'\t'+n for a,n in sorted(refs.items()))+'\n')
print(dict(protectedFiles=len(files),metas=len(metas),methods=rows))
