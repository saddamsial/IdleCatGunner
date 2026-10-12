"""Audit Editor-only StepUp additions against the lossless pre-integration scene."""
from pathlib import Path
import gzip,shutil,json,re,hashlib
R=Path(__file__).resolve().parents[1];P=R.parents[2]/'reconstruction/CatGunnerUnityClient';B=R/'checkpoints/stepup-before'
oldpath=Path('/tmp/catgunner-stepup-before-scene.unity');newpath=P/'Assets/Recovery/Scenes/RecoveredClient.unity'
with gzip.open(B/'RecoveredClient.unity.gz','rb') as src,oldpath.open('wb') as dst:shutil.copyfileobj(src,dst)
text=(R/'tools/audit_auto_upgrade_scene.py').read_text();ns={'__file__':str(R/'tools/audit_auto_upgrade_scene.py')};exec(text.split('old,new=documents(oldpath)')[0],ns);exec('def identities(rows):'+text.split('def identities(rows):',1)[1].split('oldident,newident=',1)[0],ns)
old,new=ns['documents'](oldpath),ns['documents'](newpath);oi,ni=ns['identities'](old),ns['identities'](new)
assert all(i in ni for i in oi),'Old identities removed'
remap={k:ni[i] for i,k in oi.items()};changes=[]
with oldpath.open('rb') as a,newpath.open('rb') as b:
 def read(f,rows,k):r=rows[k];f.seek(r['offset']);return f.read(r['length'])
 def mapped(source):
  source=re.sub(rb'^--- !u!(\d+) &(-?\d+)',lambda m:b'--- !u!'+m[1]+b' &'+remap.get(m[2].decode(),m[2].decode()).encode(),source,count=1)
  return re.sub(rb'\{fileID: (-?\d+)\}',lambda m:b'{fileID: '+remap.get(m[1].decode(),m[1].decode()).encode()+b'}',source)
 for k,r in old.items():
  nk=remap[k]
  if k==nk and r['sha256']==new[nk]['sha256']:continue
  source=mapped(read(a,old,k));target=read(b,new,nk)
  if source==target:continue
  name=old[r['go']]['name'] if r['go'] else r['name'];extra={'oldId':k,'newId':nk,'type':r['type'],'name':name,'script':r['script']}
  diff=[{'before':x.decode(errors='replace'),'after':y.decode(errors='replace')} for x,y in zip(source.splitlines(),target.splitlines()) if x!=y];extra['firstChangedLines']=diff[:8]
  if r['type']==224:
   field=rb'^  m_Children:\n(?:  - .*\n)*';assert name in ['Shop_manager','Left_Menu'],extra
   assert re.sub(field,b'',source,flags=re.M)==re.sub(field,b'',target,flags=re.M)
   oc=re.findall(rb'fileID: (-?\d+)',re.search(field,source,re.M)[0]);nc=re.findall(rb'fileID: (-?\d+)',re.search(field,target,re.M)[0]);
   if [v for v in nc if v in oc]!=oc:
    (R/'reports/stepup-parent-order-diagnostic.json').write_text(json.dumps({'parent':name,'oldChildren':[remap[v.decode()] for v in oc],'newChildren':[v.decode() for v in nc],'beforeNames':[new[new[v.decode()]['go']]['name'] for v in oc],'afterNames':[new[new[v.decode()]['go']]['name'] for v in nc]},indent=2)+'\n');raise AssertionError('Existing parent child order changed: '+name)
  elif r['type']==1:
   assert name in ['StepUp_Banner','GunItem_Demo'],extra
   additions=[v for v in new[nk]['components'] if v not in [remap[x] for x in old[k]['components']]];assert len(additions)==1
   assert source==re.sub(rb'^  - component: \{fileID: '+additions[0].encode()+rb'\}\n',b'',target,flags=re.M)
  elif r['type']==114 and name=='I2_txt(Outline)':
   identity=next(i for i,v in ni.items() if v==nk)
   assert any(n[0]=='StepUp_Banner' for n in identity[1]),extra
   field=rb'^  (?:m_fontAsset|m_sharedMaterial): .*\n'
   assert re.sub(field,b'',source,flags=re.M)==re.sub(field,b'',target,flags=re.M),extra
   fontGuid=re.search(r'^guid: (\w+)',(P/'Assets/Recovery/Resources/StarChineseFallback.asset.meta').read_text(),re.M)[1]
   materialGuid=re.search(r'^guid: (\w+)',(P/'Assets/Recovery/Resources/StepUpChineseOutline.mat.meta').read_text(),re.M)[1]
   assert re.search(rb'^  m_fontAsset: .*guid: '+fontGuid.encode(),target,re.M)
   assert re.search(rb'^  m_sharedMaterial: .*guid: '+materialGuid.encode(),target,re.M)
  elif name=='Tutorial_manager':
   assert len(diff)==1 and diff[0]['before']=='  - {fileID: 0}',extra
  else:
   assert r['type']==114 and name in ['Panel','GunItem_Demo'],extra
   # Only existing two original Button callbacks/interactable flag may differ.
   field=rb'^  m_OnClick:\n[\s\S]*$'
   source=re.sub(rb'^  m_Interactable: [01]\n',b'',source,flags=re.M);target=re.sub(rb'^  m_Interactable: [01]\n',b'',target,flags=re.M)
   assert re.sub(field,b'',source,flags=re.M)==re.sub(field,b'',target,flags=re.M),extra
  changes.append(extra)
newobjects=[i for i in set(ni)-set(oi) if i[0]=='go'];assert len(newobjects)==215,len(newobjects)
assert len(changes)==7,len(changes)
report={'preservedExistingIdentities':len(oi),'removedExistingIdentities':0,'newOriginalObjects':len(newobjects),'newDocumentIdentities':len(set(ni)-set(oi)),'semanticallyUnchangedExistingDocuments':len(old)-len(changes),'intentionalExistingChanges':changes,'editorLocalIdRemapping':{k:v for k,v in remap.items() if k!=v},'scopedFieldValidation':True}
(R/'reports/stepup-scene-document-diff.json').write_text(json.dumps(report,indent=2)+'\n');oldpath.unlink();print({k:v for k,v in report.items() if k not in ['intentionalExistingChanges','editorLocalIdRemapping']})
