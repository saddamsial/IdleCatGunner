"""Resolve original StepUp fields and exact language strings, including existing banner."""
from map_local_purchase_bindings import R,P,docs,read,classname,path
import json,re,ast
names=['StepUp','StepUp_Banner','StepUp_Hud','StepUp_Item_UI','StepUp_popup'];rows=[];refs={}
for k,(cid,_,_) in docs.items():
 if cid!=114:continue
 d=read(k);typ=classname(d)
 if typ not in names:continue
 go=int(re.search(r'm_GameObject: \{fileID: (-?\d+)\}',d)[1]);fields={}
 for field,body in re.findall(r'^  (\w+): ?([^\n]*(?:\n  - [^\n]*)*)',d,re.M):
  if field.startswith('m_') or field=='Start_dateTime' or field=='Purchased':continue
  ids=re.findall(r'\{fileID: (-?\d+)\}',body)
  if ids:
   value=[{'fileID':int(v)} for v in ids];fields[field]=value if '\n  -' in body else value[0]
   for v in ids:
    if v=='0':continue
    rd=read(int(v));refGo=int(re.search(r'm_GameObject: \{fileID: (-?\d+)\}',rd)[1]) if docs[int(v)][0]!=1 else int(v)
    refs[v]=path(refGo)
  elif re.fullmatch(r'-?\d+',body):fields[field]=int(body)
  elif field=='Open_Place':fields[field]=body
 rows.append({'type':typ,'originalComponent':k,'originalGo':go,'path':path(go),'fields':fields})
# Existing banner Gun_Item_Demo was excluded in the earlier slice. Restore its
# original component fields rather than replacing its already preserved objects.
banner=next(row for row in rows if row['type']=='StepUp_Banner');gid=banner['fields']['gun_item']['fileID'];d=read(gid);go=int(re.search(r'm_GameObject: \{fileID: (-?\d+)\}',d)[1]);fields={}
for field,body in re.findall(r'^  (\w+): ?([^\n]*(?:\n  - [^\n]*)*)',d,re.M):
 if field.startswith('m_'):continue
 ids=re.findall(r'\{fileID: (-?\d+)\}',body)
 if ids:
  value=[{'fileID':int(v)} for v in ids];fields[field]=value if '\n  -' in body else value[0]
  for v in ids:
   if v=='0':continue
   rd=read(int(v));refGo=int(re.search(r'm_GameObject: \{fileID: (-?\d+)\}',rd)[1]) if docs[int(v)][0]!=1 else int(v);refs[v]=path(refGo)
 elif re.fullmatch(r'-?\d+',body):fields[field]=int(body)
rows.append({'type':'Gun_Item_Demo','originalComponent':gid,'originalGo':go,'path':path(go),'fields':fields})
out={'rows':rows,'references':refs}
(P/'Assets/Recovery/Editor/OriginalStepUpFields.json').write_text(json.dumps(out,indent=2)+'\n');(R/'reports/stepup-original-fields.json').write_text(json.dumps(out,indent=2)+'\n')
lang=(R/'assetripper-baseline/ExportedProject/Assets/Resources/I2Languages.asset').read_text();texts={'LocaleCodes':json.loads((P/'Assets/Recovery/Resources/OriginalStarCatalogue.json').read_text())['LocaleCodes']}
for name,key in [('StepLocked','StepUp/Step_Locked'),('SaleValue','StepUp/SaleValue'),('InventoryFull','Gun/InventoryFull')]:
 match=re.search(r'    - Term: '+re.escape(key)+r'\n      TermType: 0\n      Languages:\n(.*?)      Flags:',lang,re.S);assert match,key
 values=[]
 for line in match[1].splitlines():
  m=re.match(r'      - (.*)',line)
  if m:
   text=m[1];values.append(ast.literal_eval(text) if text.startswith('"') else text.strip("'"))
 assert len(values)==14,(key,len(values));texts[name]=values
(P/'Assets/Recovery/Resources/OriginalStepUpText.json').write_text(json.dumps(texts,indent=2,ensure_ascii=False)+'\n')
print('Original StepUp components',len(rows),'references',len(refs),'text',texts['StepLocked'][3])
