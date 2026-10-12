"""Read-only scene graph audit, including Unity Editor local-ID collision remapping."""
from pathlib import Path
import mmap, re, hashlib, json, gzip
from functools import lru_cache
R=Path(__file__).resolve().parents[1];P=R.parents[2]/'reconstruction/CatGunnerUnityClient'
oldpath=R/'checkpoints/short-buff-before/RecoveredClient.unity.gz';newpath=P/'Assets/Recovery/Scenes/RecoveredClient.unity'
def documents(path):
 out={};openfile=gzip.open if path.suffix=='.gz' else open
 with openfile(path,'rb') as f:
  offset=0;start=0;capture=bytearray();digest=None;key=None;cid=0;length=0
  def finish():
   if key is None:return
   s=bytes(capture).decode(errors='replace');name=re.search(r'^  m_Name: (.*)$',s,re.M);go=re.search(r'm_GameObject: \{fileID: (-?\d+)\}',s);script=re.search(r'm_Script: \{[^}]*guid: (\w+)',s)
   row={'type':cid,'sha256':digest.hexdigest(),'name':name[1] if name else None,'go':go[1] if go else None,'script':script[1] if script else None,'offset':start,'length':length}
   if cid==1:row['components']=re.findall(r'component: \{fileID: (-?\d+)\}',s)
   if cid in (4,224):
    row['parent']=re.search(r'm_Father: \{fileID: (-?\d+)\}',s)[1];row['children']=re.findall(r'\{fileID: (-?\d+)\}',s[s.index('  m_Children:'):s.index('  m_Father:')])
   out[key]=row
  for line in f:
   match=re.match(rb'--- !u!(\d+) &(-?\d+)\n',line)
   if match:
    finish();cid=int(match[1]);key=match[2].decode();start=offset;length=0;capture=bytearray();digest=hashlib.sha256()
   if key is not None:
    digest.update(line);length+=len(line)
    if cid in (1,4,224):capture.extend(line)
    elif len(capture)<2048:capture.extend(line[:2048-len(capture)])
   offset+=len(line)
  finish()
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
with gzip.open(oldpath,'rb') as a,newpath.open('rb') as b:
 def read(f,rows,k):r=rows[k];f.seek(r['offset']);return f.read(r['length'])
 for k,r in old.items():
  nk=remap[k]
  if k==nk and r['sha256']==new[nk]['sha256']:continue
  source=read(a,old,k);target=read(b,new,nk)
  source=re.sub(rb'^--- !u!(\d+) &(-?\d+)',lambda m:b'--- !u!'+m[1]+b' &'+remap.get(m[2].decode(),m[2].decode()).encode(),source,count=1)
  source=re.sub(rb'\{fileID: (-?\d+)\}',lambda m:b'{fileID: '+remap.get(m[1].decode(),m[1].decode()).encode()+b'}',source)
  if source!=target:changes.append({'oldId':k,'newId':nk,'type':r['type'],'name':old[r['go']]['name'] if r['go'] else r['name'],'script':r['script']})
newidentities=set(newident)-set(oldident);newobjects=[newident[i] for i in newidentities if i[0]=='go']


clientGuid=re.search(r'^guid: (\w+)',(P/'Assets/Recovery/Scripts/RecoveryForestClient.cs.meta').read_text(),re.M)[1]
with gzip.open(oldpath,'rb') as a,newpath.open('rb') as b:
 for change in changes:
  k,nk=change['oldId'],change['newId'];source=read(a,old,k);target=read(b,new,nk)
  source=re.sub(rb'^--- !u!(\d+) &(-?\d+)',lambda m:b'--- !u!'+m[1]+b' &'+remap.get(m[2].decode(),m[2].decode()).encode(),source,count=1)
  source=re.sub(rb'\{fileID: (-?\d+)\}',lambda m:b'{fileID: '+remap.get(m[1].decode(),m[1].decode()).encode()+b'}',source)
  if change['type']==224:
   assert change['name'] in ('Canvas','Left_Menu');field=rb'^  m_Children:\n(?:  - .*\n)*'
   assert re.sub(field,b'',source,flags=re.M)==re.sub(field,b'',target,flags=re.M)
   oc=re.findall(rb'fileID: (-?\d+)',re.search(field,source,re.M)[0]);nc=re.findall(rb'fileID: (-?\d+)',re.search(field,target,re.M)[0]);extra=[v for v in nc if v not in oc];assert len(extra)==1 and [v for v in nc if v not in extra]==oc
   assert new[new[extra[0].decode()]['go']]['name']==('Buff_manager' if change['name']=='Canvas' else 'Buff_obj')
  elif change['script']==clientGuid:assert source==re.sub(rb'^  Buffs: .*\n',b'',target,flags=re.M)
  elif change['name']=='AD_Bonus_obj':
   assert source.replace(b'  m_Interactable: 0\n',b'  m_Interactable: 1\n')==target and b'm_MethodName: AD_SpeedBuff_Watch' in target
  else:
   assert change['name']=='Tutorial_manager';delta=[(x,y) for x,y in zip(source.splitlines(),target.splitlines()) if x!=y]
   assert len(source.splitlines())==len(target.splitlines()) and delta==[(b'  - {fileID: 0}',b'  - {fileID: 2228}')]
assert len(changes)==6 and len(newobjects)==120
report={'oldDocuments':len(old),'newDocuments':len(new),'newOriginalObjects':len(newobjects),'newDocumentIdentities':len(newidentities),'preservedExistingIdentities':len(oldident),'semanticallyUnchangedExistingDocuments':len(old)-len(changes),'intentionalExistingChanges':changes,'editorLocalIdRemapping':relocations,'removedExistingObjectsOrComponents':len(missing),'existingRectValuesUnchanged':True,'existingSiblingRelativeOrderPreserved':True,'scopedFieldValidation':True,'allowedChanges':'Two parent child lists, client Buff reference, one original tutorial reference and two original mine ad-button interactability flags; original callbacks and all old Rect values retained'}
hashvalue=hashlib.sha256()
with newpath.open('rb') as f:
 for block in iter(lambda:f.read(1048576),b''):hashvalue.update(block)
report['currentSceneSha256']=hashvalue.hexdigest()
(R/'reports/short-buff-scene-document-diff.json').write_text(json.dumps(report,indent=2)+'\n');print({k:v for k,v in report.items() if k!='intentionalExistingChanges'})
