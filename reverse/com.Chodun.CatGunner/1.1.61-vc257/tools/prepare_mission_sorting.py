"""Read frozen original scene; create parameters, never edit existing Unity assets."""
from pathlib import Path
import json,re,yaml
R=Path(__file__).resolve().parents[1];P=R.parents[2]/'reconstruction/CatGunnerUnityClient';B=R/'assetripper-baseline/ExportedProject'
idx={int(k):v for k,v in json.loads((R/'reports/original-main-document-index.json').read_text()).items()}
f=(B/'Assets/Scenes/Main.unity').open('rb')
def raw(k):
 _,o,s=idx[k];f.seek(o);return f.read(s).decode()
def data(k):return next(iter(yaml.safe_load(raw(k).split('\n',1)[1]).values()))
names={};trs={};bygo={};monos={}
for k,(cid,_,_) in idx.items():
 if cid==1:names[k]=re.search(r'  m_Name: (.*)',raw(k))[1]
 elif cid in (4,224):
  d=raw(k);go=int(re.search(r'm_GameObject: \{fileID: (-?\d+)\}',d)[1]);parent=int(re.search(r'm_Father: \{fileID: (-?\d+)\}',d)[1]);children=[int(v) for v in re.findall(r'\{fileID: (-?\d+)\}',d[d.index('  m_Children:'):d.index('  m_Father:')])];trs[k]=(go,parent,children);bygo[go]=k
 elif cid==114:
  d=raw(k);m=re.search(r'm_Script: \{[^}]*guid: (\w+)',d)
  if m:monos[k]=m[1]
def path(go):
 t=bygo[go];parent=trs[t][1];siblings=trs[parent][2] if parent else [k for k,v in trs.items() if v[1]==0];ordinal=[k for k in siblings if names[trs[k][0]]==names[go]].index(t)
 return (path(trs[parent][0]) if parent else [])+[{'name':names[go],'ordinal':ordinal}]
def row(k):
 d=data(k);go=d['m_GameObject']['fileID'];return {'component':k,'originalGo':go,'path':path(go),'fields':d,'transform':data(bygo[go])}

tween=row(124051);alert=row(103491);manager=row(124352)
rows=[row(x['fileID']) for x in manager['fields']['Mission_Item_UI_List']]
result={'alertTween':tween,'alertTransform':alert,'manager':manager,'rows':rows}
(R/'reports/mission-sorting-source-parameters.json').write_text(json.dumps(result,indent=2)+'\n')
print('Read original alert 124051/103491 and 23 task-row identities')
