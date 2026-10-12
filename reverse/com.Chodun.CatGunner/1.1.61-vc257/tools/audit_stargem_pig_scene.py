"""Verify old scene identities and exact scoped helper additions; diagnose Editor layout serialization."""
from pathlib import Path
import gzip,shutil,mmap,re,hashlib,json
from functools import lru_cache
R=Path(__file__).resolve().parents[1];P=R.parents[2]/'reconstruction/CatGunnerUnityClient'
s=(R/'tools/audit_auto_upgrade_scene.py').read_text();ns=globals();exec(s[s.index('def documents('):s.index('old,new=')],ns);exec(s[s.index('def identities('):s.index('oldident,newident=')],ns)
oldpath=Path('/tmp/catgunner-stargem-pig-before.unity');newpath=P/'Assets/Recovery/Scenes/RecoveredClient.unity'
if not oldpath.exists():
 with gzip.open(R/'checkpoints/stargem-pig-before/RecoveredClient.unity.gz','rb') as f,oldpath.open('wb') as g:shutil.copyfileobj(f,g)
old,new=documents(oldpath),documents(newpath);oi,ni=identities(old),identities(new);missing=[repr(i) for i in oi if i not in ni];assert not missing,missing[:10];remap={k:ni[i] for i,k in oi.items()};changes=[];rects=[]
with oldpath.open('rb') as a,newpath.open('rb') as b:
 def read(f,rows,k):r=rows[k];f.seek(r['offset']);return f.read(r['length'])
 for identity,k in oi.items():
  nk=remap[k]
  if k==nk and old[k]['sha256']==new[nk]['sha256'] and not(old[k]['type']==224 and old[old[k]['go']]['name']=='StepUp_obj'):continue
  x=read(a,old,k);y=read(b,new,nk)
  x=re.sub(rb'^--- !u!(\d+) &(-?\d+)',lambda m:b'--- !u!'+m[1]+b' &'+remap.get(m[2].decode(),m[2].decode()).encode(),x,count=1)
  x=re.sub(rb'\{fileID: (-?\d+)\}',lambda m:b'{fileID: '+remap.get(m[1].decode(),m[1].decode()).encode()+b'}',x)
  if x==y:
   if old[k]['type']==224 and old[old[k]['go']]['name']=='StepUp_obj':
    props={}
    for field in ['m_LocalRotation','m_LocalPosition','m_LocalScale','m_AnchorMin','m_AnchorMax','m_AnchoredPosition','m_SizeDelta','m_Pivot']:
     v=re.search(rb'^  '+field.encode()+rb': (.*)$',x,re.M)
     if v:props[field]={n:float(z) for n,z in re.findall(r'(\w+): ([-\d.e+]+)',v[1].decode())}
    rects.append({'id':nk,'name':'StepUp_obj','properties':props})
   continue
  name=old[old[k]['go']]['name'] if old[k]['go'] else old[k]['name'];row={'oldId':k,'newId':nk,'type':old[k]['type'],'name':name,'script':old[k]['script'],'differences':[]}
  import difflib
  row['differences']=list(difflib.unified_diff(x.decode().splitlines(),y.decode().splitlines(),n=0))
  if old[k]['type']==224:
   props={}
   for field in ['m_LocalRotation','m_LocalPosition','m_LocalScale','m_AnchorMin','m_AnchorMax','m_AnchoredPosition','m_SizeDelta','m_Pivot']:
    pat=rb'^  '+field.encode()+rb': (.*)$';v=re.search(pat,x,re.M);w=re.search(pat,y,re.M)
    if v and w:props[field]={n:float(z) for n,z in re.findall(r'(\w+): ([-\d.e+]+)',v[1].decode())}
   if props:rects.append({'id':nk,'name':name,'properties':props})
  changes.append(row)
report={'oldDocuments':len(old),'newDocuments':len(new),'preservedExistingIdentities':len(oi),'removedExistingIdentities':len(missing),'newOriginalObjects':sum(i[0]=='go' for i in ni.keys()-oi.keys()),'existingChanges':changes,'editorLocalIdRemapping':{k:v for k,v in remap.items() if k!=v},'layoutSerializationRepairsNeeded':sum(r['type']==224 for r in changes),'rectSerializationRows':len(rects)}
(R/'reports/stargem-pig-scene-document-diff.json').write_text(json.dumps(report,indent=2));(R/'reports/stargem-pig-rect-repair-input.json').write_text(json.dumps(rects,indent=2));print('new',report['newOriginalObjects'],'changed',len(changes),'rects',len(rects));print([(r['type'],r['name'],r['differences'][:8]) for r in changes[:14]])


# Strictly validate all existing serialized changes; no hierarchy or layout edits.
assert report['newOriginalObjects']==0 and report['removedExistingIdentities']==0
assert report['layoutSerializationRepairsNeeded']==0 and len(changes)==6
expected={(1,'StarGem_Pig'),(1,'StarGemPig_UI'),(1,'StarPig_Btn'),(114,'StarPig_Btn'),(114,'Purchase_Btn'),(114,'Tree_manager')}
assert {(r['type'],r['name']) for r in changes}==expected
newids=set(ni)-set(oi);assert len(newids)==3
guids={name:re.search(r'^guid: (\w+)',(P/f'Assets/Recovery/Scripts/{name}.cs.meta').read_text(),re.M)[1] for name in ['StarGem_Pig','StarGem_Pig_UI','StarGem_Pig_HUD']}
assert {new[ni[i]]['script'] for i in newids}==set(guids.values())
with oldpath.open('rb') as a,newpath.open('rb') as b:
 for row in changes:
  k,nk=row['oldId'],row['newId'];x=read(a,old,k);y=read(b,new,nk)
  assert k==nk
  if row['type']==1:
   extra=[z for z in new[nk]['components'] if z not in old[k]['components']];assert len(extra)==1
   assert x==re.sub(rb'^  - component: \{fileID: '+extra[0].encode()+rb'\}\n',b'',y,flags=re.M)
   name={'StarGem_Pig':'StarGem_Pig','StarGemPig_UI':'StarGem_Pig_UI','StarPig_Btn':'StarGem_Pig_HUD'}[row['name']]
   assert new[extra[0]]['script']==guids[name]
  elif row['name']=='Tree_manager':
   assert x==re.sub(rb'^  StarGemPig: .*\n',b'',y,flags=re.M)
  else:
   field=rb'^  m_OnClick:\n.*';xx=re.sub(field,b'',x,flags=re.M|re.S);yy=re.sub(field,b'',y,flags=re.M|re.S)
   if row['name']=='StarPig_Btn':xx=xx.replace(b'm_Interactable: 0',b'm_Interactable: 1')
   assert xx==yy
   assert x[x.index(b'  m_OnClick:'):].count(b'- m_Target:')==y[y.index(b'  m_OnClick:'):].count(b'- m_Target:')==1
   assert (b'm_MethodName: onClick_Open' if row['name']=='StarPig_Btn' else b'm_MethodName: onClick_Purchase') in y
report.update(scopedFieldValidation=True,newOriginalComponents=3,semanticallyUnchangedExistingDocuments=len(old)-6)
(R/'reports/stargem-pig-scene-document-diff.json').write_text(json.dumps(report,indent=2)+'\n')
