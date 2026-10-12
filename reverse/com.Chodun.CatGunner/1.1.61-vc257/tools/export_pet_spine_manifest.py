from pathlib import Path
import json,re,yaml,struct,sys
r=Path(__file__).resolve().parents[1];p=r.parents[2]/'reconstruction/CatGunnerUnityClient';b=r/'assetripper-baseline/ExportedProject';idx=json.loads((r/'reports/original-main-document-index.json').read_text());f=(b/'Assets/Scenes/Main.unity').open('rb');cache={}
def read(k):
 k=str(k)
 if k not in cache:
  c,o,n=idx[k];f.seek(o);cache[k]=f.read(n).decode()
 return cache[k]
def load(k):return yaml.safe_load(read(k).split('\n',1)[1])
gos={};ts={}
for k,v in idx.items():
 if v[0]==1:gos[int(k)]={'m_Name':re.search(r'  m_Name: (.*)',read(k))[1]}
 elif v[0] in [4,224]:
  d=read(k);ts[int(k)]={'m_GameObject':{'fileID':int(re.search(r'm_GameObject: \{fileID: (-?\d+)\}',d)[1])},'m_Father':{'fileID':int(re.search(r'm_Father: \{fileID: (-?\d+)\}',d)[1])},'m_Children':[{'fileID':int(x)} for x in re.findall(r'\{fileID: (-?\d+)\}',d[d.index('  m_Children:'):d.index('  m_Father:')])]}
bygo={v['m_GameObject']['fileID']:k for k,v in ts.items()}
roots=[k for k in gos if ts[bygo[k]]['m_Father']['fileID']==0]
def path(go):
 t=ts[bygo[go]];parent=t['m_Father']['fileID'];peers=[ts[x['fileID']]['m_GameObject']['fileID'] for x in ts[parent]['m_Children']] if parent else roots
 name=gos[go]['m_Name'];ordinal=[x for x in peers if gos[x]['m_Name']==name].index(go)
 return (path(ts[parent]['m_GameObject']['fileID']) if parent else [])+[{'name':name,'ordinal':ordinal}]
scripts={re.search(r'^guid: (\w+)',x.read_text(),re.M)[1]:x.stem[:-3] for base in ['Assembly-CSharp','spine-unity'] for x in (b/('Assets/Scripts/'+base)).rglob('*.cs.meta')}
rows=[]
for k,v in idx.items():
 if v[0]!=114:continue
 match=re.search(r'm_Script: \{[^}]*guid: (\w+)',read(k));typ=scripts.get(match[1] if match else '')
 if typ not in ['Pet','Pet_Dummy','Adventure_Panel','SkeletonAnimation']:continue
 d=load(k)['MonoBehaviour'];go=d['m_GameObject']['fileID'];fields={a:v for a,v in d.items() if a not in ['m_ObjectHideFlags','m_CorrespondingSourceObject','m_PrefabInstance','m_PrefabAsset','m_GameObject','m_Enabled','m_EditorHideFlags','m_Script','m_Name','m_EditorClassIdentifier']}
 rows.append({'originalComponent':int(k),'originalGo':go,'path':path(go),'type':typ,'enabled':bool(d['m_Enabled']),'fields':fields})
references={}
for row in rows:
 def visit(v):
  if isinstance(v,dict):
   if 'fileID' in v and v['fileID'] and 'guid' not in v:
    fid=v['fileID'];go=fid if fid in gos else next(iter(load(fid).values()))['m_GameObject']['fileID'];references[str(fid)]=path(go)
   else:
    for x in v.values():visit(x)
  elif isinstance(v,list):
   for x in v:visit(x)
 visit(row['fields'])
out={'source':'Frozen Main.unity','rows':rows,'references':references}
(p/'Assets/Recovery/Editor/OriginalPetSpine.json').write_text(json.dumps(out,indent=2)+'\n')
print('types',{n:sum(x['type']==n for x in rows) for n in sorted(set(x['type'] for x in rows))})
for row in rows:
 if row['type'] in ['Pet','Pet_Dummy','Adventure_Panel']:
  print(row['originalComponent'],row['type'],'/'.join(x['name'] for x in row['path']))
print('animation example',next(x for x in rows if x['type']=='SkeletonAnimation'))
# Resolve original literals and constants with Ghidra preferred coordinate correction.
sys.path.insert(0,str(r/'tools'));from map_game_methods import native,raw,pointer
table=(r/'transformed/region-0.decoded.bin').read_bytes();data=(r/'transformed/region-4.decoded.bin').read_bytes();literals=[]
for va in [0x5e61878-0x100000,0x5e61890-0x100000]:
 e=pointer(pointer(va));assert e>>29==5;i=(e&0x1fffffff)>>1;n,o=struct.unpack_from('<2I',table,i*8);literals.append({'pointer':hex(va),'value':data[o:o+n].decode()})
(r/'reports/pet-spine-native-literals.json').write_text(json.dumps({'literals':literals,'walkingSpeedThreshold':struct.unpack_from('<f',native,raw(0x106c21c))[0],'facingDeadzone':struct.unpack_from('<f',native,raw(0x106c094))[0]},indent=2)+'\n');print(literals)
