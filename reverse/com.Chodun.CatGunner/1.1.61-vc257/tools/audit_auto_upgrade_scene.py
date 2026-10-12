"""Read-only scene graph audit, including Unity Editor local-ID collision remapping."""
from pathlib import Path
import mmap, re, hashlib, json
from functools import lru_cache
R=Path(__file__).resolve().parents[1];P=R.parents[2]/'reconstruction/CatGunnerUnityClient'
oldpath=R/'reports/checkpoints/auto-upgrade-before/RecoveredClient.unity';newpath=P/'Assets/Recovery/Scenes/RecoveredClient.unity'
def documents(path):
 out={}
 with path.open('rb') as f,mmap.mmap(f.fileno(),0,access=mmap.ACCESS_READ) as m:
  matches=list(re.finditer(rb'^--- !u!(\d+) &(-?\d+)\n',m,re.M))
  for i,x in enumerate(matches):
   end=matches[i+1].start() if i+1<len(matches) else len(m);view=memoryview(m)[x.start():end];h=hashlib.sha256(view).hexdigest();view.release();cid=int(x[1])
   s=m[x.start():end if cid in (1,4,224) else min(end,x.start()+2048)].decode(errors='replace')
   name=re.search(r'^  m_Name: (.*)$',s,re.M);go=re.search(r'm_GameObject: \{fileID: (-?\d+)\}',s);script=re.search(r'm_Script: \{[^}]*guid: (\w+)',s)
   row={'type':cid,'sha256':h,'name':name[1] if name else None,'go':go[1] if go else None,'script':script[1] if script else None,'offset':x.start(),'length':end-x.start()}
   if cid==1:row['components']=re.findall(r'component: \{fileID: (-?\d+)\}',s)
   if cid in (4,224):
    row['parent']=re.search(r'm_Father: \{fileID: (-?\d+)\}',s)[1]
    row['children']=re.findall(r'\{fileID: (-?\d+)\}',s[s.index('  m_Children:'):s.index('  m_Father:')])
   out[x[2].decode()]=row
 return out
old,new=documents(oldpath),documents(newpath)
def identities(rows):
 bygo={r['go']:k for k,r in rows.items() if r['type'] in (4,224)};roots=[k for k,r in rows.items() if r['type'] in (4,224) and r['parent']=='0']
 @lru_cache(None)
 def path(go):
  t=rows[bygo[go]];parent=t['parent'];siblings=rows[parent]['children'] if parent!='0' else roots
  peers=[k for k in siblings if rows[rows[k]['go']]['name']==rows[go]['name']];ordinal=peers.index(bygo[go]);node=(rows[go]['name'],ordinal)
  return (path(rows[parent]['go']) if parent!='0' else ())+ (node,)
 out={}
 for k,r in rows.items():
  if r['type']==1:identity=('go',path(k))
  elif r['go']:
   peers=[v for v in rows[r['go']]['components'] if rows[v]['type']==r['type'] and rows[v]['script']==r['script']]
   identity=('component',path(r['go']),r['type'],r['script'],peers.index(k))
  else:identity=('global',r['type'],k)
  assert identity not in out,identity
  out[identity]=k
 return out
oldident,newident=identities(old),identities(new)
missing=[i for i in oldident if i not in newident];assert not missing,missing[:10]
remap={k:newident[i] for i,k in oldident.items()};relocations={k:v for k,v in remap.items() if k!=v}
changes=[]
with oldpath.open('rb') as a,newpath.open('rb') as b:
 def read(f,rows,k):r=rows[k];f.seek(r['offset']);return f.read(r['length'])
 for k,r in old.items():
  nk=remap[k]
  if k==nk and r['sha256']==new[nk]['sha256']:continue
  source=read(a,old,k);target=read(b,new,nk)
  source=re.sub(rb'^--- !u!(\d+) &(-?\d+)',lambda m:b'--- !u!'+m[1]+b' &'+remap.get(m[2].decode(),m[2].decode()).encode(),source,count=1)
  source=re.sub(rb'\{fileID: (-?\d+)\}',lambda m:b'{fileID: '+remap.get(m[1].decode(),m[1].decode()).encode()+b'}',source)
  if source!=target:changes.append({'oldId':k,'newId':nk,'type':r['type'],'name':old[r['go']]['name'] if r['go'] else r['name'],'script':r['script']})
newidentities=set(newident)-set(oldident);newobjects=[newident[i] for i in newidentities if i[0]=='go']


# Validate only the two original parents, owner component, client field, and tutorial slot.
clientGuid=re.search(r'^guid: (\w+)',(P/'Assets/Recovery/Scripts/RecoveryForestClient.cs.meta').read_text(),re.M)[1]
controllerGuid=re.search(r'^guid: (\w+)',(P/'Assets/Recovery/Scripts/RecoveryAutomaticUpgrade.cs.meta').read_text(),re.M)[1]
with oldpath.open('rb') as a,newpath.open('rb') as b:
 for change in changes:
  k,nk=change['oldId'],change['newId'];source=read(a,old,k);target=read(b,new,nk)
  source=re.sub(rb'^--- !u!(\d+) &(-?\d+)',lambda m:b'--- !u!'+m[1]+b' &'+remap.get(m[2].decode(),m[2].decode()).encode(),source,count=1)
  source=re.sub(rb'\{fileID: (-?\d+)\}',lambda m:b'{fileID: '+remap.get(m[1].decode(),m[1].decode()).encode()+b'}',source)
  if change['type']==1:
   assert change['name']=='Tree_manager';extra=[v for v in new[nk]['components'] if v not in old[k]['components']];assert len(extra)==1 and new[extra[0]]['script']==controllerGuid
   assert source==re.sub(rb'^  - component: \{fileID: '+extra[0].encode()+rb'\}\n',b'',target,flags=re.M)
  elif change['type']==224:
   assert change['name'] in ('Shop_manager','Right_Menu');field=rb'^  m_Children:\n(?:  - .*\n)*'
   assert re.sub(field,b'',source,flags=re.M)==re.sub(field,b'',target,flags=re.M)
   oc=re.findall(rb'fileID: (-?\d+)',re.search(field,source,re.M)[0]);nc=re.findall(rb'fileID: (-?\d+)',re.search(field,target,re.M)[0]);extra=[v for v in nc if v not in oc];assert len(extra)==1 and [v for v in nc if v not in extra]==oc
   assert new[new[extra[0].decode()]['go']]['name']==('AutoUpgrade_UI' if change['name']=='Shop_manager' else 'Auto_obj')
  elif change['script']==clientGuid:
   assert source==re.sub(rb'^  AutoUpgrades: .*\n',b'',target,flags=re.M)
  else:
   assert change['name']=='Tutorial_manager';delta=[]
   for i,(x,y) in enumerate(zip(source.splitlines(),target.splitlines())):
    if x!=y:delta.append((x,y))
   assert len(source.splitlines())==len(target.splitlines()) and len(delta)==1 and delta[0][0]==b'  - {fileID: 0}'
   go=re.search(rb'fileID: (-?\d+)',delta[0][1])[1].decode();assert new[go]['name']=='Auto_Btn' and go=='24798'
assert len(changes)==5 and len(newobjects)==41
report={'oldDocuments':len(old),'newDocuments':len(new),'newOriginalObjects':len(newobjects),'newDocumentIdentities':len(newidentities),'preservedExistingIdentities':len(oldident),'semanticallyUnchangedExistingDocuments':len(old)-len(changes),'intentionalExistingChanges':changes,'editorLocalIdRemapping':relocations,'removedExistingObjectsOrComponents':len(missing),'scopedFieldValidation':True,'allowedChanges':'Two parent child lists, one owner component list, one client field and one original tutorial reference'}
(R/'reports/auto-upgrade-scene-document-diff.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps(report,indent=2))
