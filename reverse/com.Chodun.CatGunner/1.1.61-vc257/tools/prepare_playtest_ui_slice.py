"""Create new immutable-derived weapon UI source, preserving working scenes."""
from pathlib import Path
import json,re,shutil,hashlib
R=Path(__file__).resolve().parents[1];P=R.parents[2]/'reconstruction/CatGunnerUnityClient';B=R/'assetripper-baseline/ExportedProject';docs={int(k):v for k,v in json.loads((R/'reports/original-main-document-index.json').read_text()).items()};aliases=json.loads((R/'reports/unity-project-preparation.json').read_text())['public_script_guid_mapping']
for name in ['Gun_Collection_UI','Gun_Item_Collection']:
 shutil.copy2(B/f'Assets/Scripts/Assembly-CSharp/{name}.cs.meta',P/f'Assets/Recovery/Scripts/{name}.cs.meta')
f=(B/'Assets/Scenes/Main.unity').open('rb')
def read(k):_,o,n=docs[k];f.seek(o);return f.read(n).decode()
gos={};names={};trans={};bygo={}
for k,(cid,_,_) in docs.items():
 if cid==1:
  s=read(k);gos[k]=[int(v) for v in re.findall(r'component: \{fileID: (-?\d+)\}',s)];names[k]=re.search(r'  m_Name: (.*)',s)[1]
 elif cid in (4,224):
  s=read(k);go=int(re.search(r'm_GameObject: \{fileID: (\d+)\}',s)[1]);parent=int(re.search(r'm_Father: \{fileID: (\d+)\}',s)[1]);children=[int(v) for v in re.findall(r'\{fileID: (-?\d+)\}',s[s.index('  m_Children:'):s.index('  m_Father:')])];trans[k]=(go,parent,children);bygo[go]=k
sel=set();selgo=set();anc=set()
def include(go,recurse=True):
 if go in selgo:return
 selgo.add(go);sel.add(go);sel.update(gos[go])
 if recurse:
  for c in trans[bygo[go]][2]:include(trans[c][0])
for root in [778,1439]:include(root)
for go in list(selgo):
 parent=trans[bygo[go]][1]
 while parent:
  go=trans[parent][0]
  if go not in selgo:include(go,False);anc.add(go)
  parent=trans[parent][1]
allowed={re.search(r'^guid: (\w+)',p.read_text(),re.M)[1] for p in (P/'Assets/Recovery/Scripts').glob('*.cs.meta')};dropped=[];missing=[]
for k in list(sel):
 if docs[k][0]!=114:continue
 s=read(k);m=re.search(r'm_Script: \{[^}]*guid: (\w+)',s)
 if not m or m[1] not in {*aliases,*allowed}:sel.remove(k);dropped.append(k)
out=P/'Assets/Recovery/Scenes/RecoveredWeaponPagesSource.unity';assert not out.exists()
with out.open('w') as w:
 w.write('%YAML 1.1\n%TAG !u! tag:unity3d.com,2011:\n')
 for k in sorted(sel,key=lambda k:docs[k][1]):
  s=read(k);cid=docs[k][0]
  if cid==1:
   for c in gos[k]:
    if c not in sel:s=s.replace(f'  - component: {{fileID: {c}}}\n','')
   if k in anc:s=s.replace('m_IsActive: 0','m_IsActive: 1')
  if cid in (4,224):
   block=s[s.index('  m_Children:'):s.index('  m_Father:')];children=[c for c in trans[k][2] if c in sel];s=s.replace(block,'  m_Children:\n'+''.join(f'  - {{fileID: {c}}}\n' for c in children) if children else '  m_Children: []\n')
  def ref(m):
   i=int(m[1])
   if i and i not in sel:missing.append({'owner':k,'reference':i});return '{fileID: 0}'
   return m[0]
  s=re.sub(r'\{fileID: (-?\d+)\}',ref,s)
  for old,new in aliases.items():s=s.replace('guid: '+old,'guid: '+new)
  w.write(s)
# Preserve native numeric configuration without importing its dummy component.
cfg=B/'Assets/Resources/Configuration.asset';s=cfg.read_text();units=re.findall(r'  - (.*)',s[s.index('  _unitsList:'):s.index('  _displayOptions:')]);assert len(units)==702 and '_displayOptions: 0' in s
(P/'Assets/Recovery/Resources/OriginalNumberFormat.json').write_text(json.dumps({'Units':units,'DisplayOptions':0,'DecimalPoint':'.'},indent=2)+'\n')
report={'source':'frozen Main.unity','roots':[778,1439],'objects':len(selgo),'documents':len(sel),'dropped':dropped,'externalReferences':missing,'sourceSha256':hashlib.sha256(out.read_bytes()).hexdigest(),'configuration':{'source':str(cfg),'sha256':hashlib.sha256(cfg.read_bytes()).hexdigest(),'units':len(units),'options':0}};(R/'reports/playtest-ui-original-pages.json').write_text(json.dumps(report,indent=2));print({k:report[k] for k in ['roots','objects','documents','dropped']})
