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

guid=re.search(r'guid: (\w+)',(P/'Assets/Recovery/Scripts/Mission_Exp_Slider.cs.meta').read_text())[1]
sliders=[row(k) for k,g in monos.items() if g==guid]
assert len(sliders)==1
slider=sliders[0];slider['bounce']=row(slider['fields']['_bounce']['fileID'])
target=row(125403)
parentgo=trs[trs[bygo[target['originalGo']]][1]][0]
currencyguid=re.search(r'guid: (\w+)',(P/'Assets/Recovery/Scripts/Currency.cs.meta').read_text())[1]
currency=[row(k) for k,g in monos.items() if g==currencyguid and data(k)['m_GameObject']['fileID']==parentgo]
assert len(currency)==1
currency=currency[0]
currency['money']=row(currency['fields']['Money_txt']['fileID']);currency['dia']=row(currency['fields']['Dia_txt']['fileID'])
result={'expSlider':slider,'currency':currency}
(P/'Assets/Recovery/Editor/OriginalMissionPresentation.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n');(R/'reports/mission-presentation-source-parameters.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n')
print(json.dumps(result,ensure_ascii=False))
