"""Read-only scene graph audit, including Unity Editor local-ID collision remapping."""
from pathlib import Path
import mmap, re, hashlib, json
from functools import lru_cache
R=Path(__file__).resolve().parents[1];P=R.parents[2]/'reconstruction/CatGunnerUnityClient'
oldpath=R/'reports/checkpoints/daily-check-before/RecoveredClient.unity';newpath=P/'Assets/Recovery/Scenes/RecoveredClient.unity'
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
tutorial_guid=re.search(r'^guid: (\w+)',(P/'Assets/Recovery/Scripts/Tutorial_manager.cs.meta').read_text(),re.M)[1]
assert all((r['type'] in (4,224) and r['name'] in ('SafeArea','Btn_list')) or (r['type']==114 and r['script'] in (tutorial_guid, re.search(r'^guid: (\w+)',(P/'Assets/Recovery/Scripts/RecoveryForestClient.cs.meta').read_text(),re.M)[1])) for r in changes),changes
assert len(changes)==4 and len(newobjects)==142
report={'oldDocuments':len(old),'newDocuments':len(new),'newOriginalObjects':len(newobjects),'newDocumentIdentities':len(newidentities),'preservedExistingIdentities':len(oldident),'semanticallyUnchangedExistingDocuments':len(old)-len(changes),'intentionalExistingChanges':changes,'editorLocalIdRemapping':relocations,'removedExistingObjectsOrComponents':0,'audit':'References normalized only through verified same hierarchy/name/component identities; all existing serialized fields must match except two parent child lists, the client binding and the original Tutorial_manager DailyCheck control reference.'}
(R/'reports/daily-check-scene-document-diff.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report))
