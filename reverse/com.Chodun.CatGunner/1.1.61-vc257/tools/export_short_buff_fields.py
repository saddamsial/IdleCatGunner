from pathlib import Path
import json,re
exec((Path(__file__).with_name('map_local_purchase_bindings.py')).read_text().split('packs=')[0])
rows=[];refs={}
for k,(cid,_,_) in docs.items():
 if cid!=114:continue
 d=read(k);typ=classname(d)
 if typ not in ['Buff_manager','Buff_Panel','Buff_Menu_Btn','Buff_Btn']:continue
 go=int(re.search(r'm_GameObject: \{fileID: (-?\d+)\}',d)[1]);fields={}
 for field,body in re.findall(r'^  (\w+): ?([^\n]*(?:\n  - [^\n]*)*)',d,re.M):
  if field.startswith('m_'):continue
  ids=re.findall(r'\{fileID: (-?\d+)\}',body)
  if ids:
   fields[field]=[{'fileID':int(v)} for v in ids] if '\n  -' in body else {'fileID':int(ids[0])}
   for v in ids:
    if v=='0':continue
    rd=read(int(v));refGo=int(re.search(r'm_GameObject: \{fileID: (-?\d+)\}',rd)[1]) if docs[int(v)][0]!=1 else int(v);refs[v]=path(refGo)
  elif re.fullmatch(r'-?\d+',body):fields[field]=int(body)
 rows.append({'type':typ,'originalComponent':k,'originalGo':go,'path':path(go),'fields':fields})
out={'rows':rows,'references':refs};(R/'reports/short-buff-original-fields.json').write_text(json.dumps(out,indent=2))
print([(r['type'],r['originalGo'],'/'.join(x['name'] for x in r['path'])) for r in rows])
