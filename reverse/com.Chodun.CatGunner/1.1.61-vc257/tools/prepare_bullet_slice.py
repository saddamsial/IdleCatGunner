"""First-create original Bullet/Bullet_FX pools without touching frozen Main."""
from pathlib import Path
import json,re,shutil
R=Path(__file__).resolve().parents[1];P=R.parents[2]/'reconstruction/CatGunnerUnityClient';B=R/'assetripper-baseline/ExportedProject'
main=B/'Assets/Scenes/Main.unity';docs={int(k):v for k,v in json.loads((R/'reports/original-main-document-index.json').read_text()).items()}
scene=P/'Assets/Recovery/Scenes/RecoveredBullets.unity';assert not scene.exists(),'First creation only'
supported={'Polling_manager','Bullet','Bullet_Mesh','Bullet_FX'};guids={}
for name in supported:
 meta=B/('Assets/Scripts/Assembly-CSharp/'+name+'.cs.meta');guid=re.search(r'^guid: (\w+)',meta.read_text(),re.M)[1];guids[guid]=name
 target=P/('Assets/Recovery/Scripts/'+name+'.cs.meta')
 if target.exists():assert target.read_bytes()==meta.read_bytes()
 else:shutil.copy2(meta,target)
with main.open('rb') as f:
 def read(key):
  _,start,size=docs[key];f.seek(start);return f.read(size).decode()
 gos={};trans={};go_transform={}
 for key,(cid,_,_) in docs.items():
  if cid==1:gos[key]=[int(x) for x in re.findall(r'component: \{fileID: (-?\d+)\}',read(key))]
  elif cid in [4,224]:
   d=read(key);go=int(re.search(r'm_GameObject: \{fileID: (-?\d+)\}',d)[1]);parent=int(re.search(r'm_Father: \{fileID: (-?\d+)\}',d)[1]);children=[int(x) for x in re.findall(r'\{fileID: (-?\d+)\}',d[d.index('  m_Children:'):d.index('  m_Father:')])];trans[key]=(go,parent,children);go_transform[go]=key
 data=json.loads((R/'serialized-components/level0-123269.json').read_text())['data'];roots=[o['m_PathID'] for pool in data['Polling_List'] for o in pool['Objects']]
 chosen=set();chosen_gos=set()
 def include(go,recursive=True):
  if go in chosen_gos:return
  chosen_gos.add(go);chosen.add(go);chosen.update(gos[go])
  if recursive:
   for ch in trans[go_transform[go]][2]:include(trans[ch][0])
 for go in roots:include(go)
 include(258,False)
 for go in list(chosen_gos):
  parent=trans[go_transform[go]][1]
  while parent:include(trans[parent][0],False);parent=trans[parent][1]
 removed=[];missing=[]
 for key in list(chosen):
  if docs[key][0]!=114:continue
  d=read(key);m=re.search(r'm_Script: \{[^}]*guid: (\w+)',d)
  if not m or m[1] not in guids:removed.append({'document':key,'script_guid':m[1] if m else None});chosen.remove(key)
 with scene.open('w') as out:
  out.write('%YAML 1.1\n%TAG !u! tag:unity3d.com,2011:\n')
  for key in sorted(chosen,key=lambda k:docs[k][1]):
   d=read(key);cid=docs[key][0]
   if cid==1:
    for c in gos[key]:
     if c not in chosen:d=d.replace(f'  - component: {{fileID: {c}}}\n','')
   if cid in [4,224]:
    block=d[d.index('  m_Children:'):d.index('  m_Father:')];children=[x for x in trans[key][2] if x in chosen];d=d.replace(block,'  m_Children:\n'+''.join(f'  - {{fileID: {x}}}\n' for x in children) if children else '  m_Children: []\n')
   def null_missing(m):
    ident=int(m[1])
    if ident and ident not in chosen:missing.append({'owner':key,'reference':ident});return '{fileID: 0}'
    return m[0]
   out.write(re.sub(r'\{fileID: (-?\d+)\}',null_missing,d))
 (R/'reports/bullet-slice-preparation.json').write_text(json.dumps({'scene':str(scene),'original_roots':roots,'game_objects':len(chosen_gos),'documents':len(chosen),'supported':guids,'removed_unsupported_components':removed,'removed_external_references':missing,'purpose':'Original 27 Bullet + 10 Bullet_FX pool branch; original Cat full attack loop not integrated'},indent=2)+'\n')
 print('Original bullet branch:',len(chosen_gos),'objects,',len(chosen),'documents; removed',len(removed),'unsupported components; missing',len(missing),'references')
