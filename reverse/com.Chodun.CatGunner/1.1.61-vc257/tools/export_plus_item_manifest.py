"""Frozen original PlusPack item fields and exact hierarchy references; no scene edits."""
from map_local_purchase_bindings import R,P,docs,read,classname,path
import json,re
rows=[]
for k,(cid,_,_) in docs.items():
 if cid!=114:continue
 d=read(k)
 if classname(d)!='PlusPack_Inapp_item':continue
 go=int(re.search(r'm_GameObject: \{fileID: (-?\d+)\}',d)[1]);fields={}
 for n in ['Active_obj','NonActive_obj','Remain_Time_txt']:
  ref=int(re.search(r'^  '+n+r': \{fileID: (-?\d+)\}',d,re.M)[1]);reference=read(ref) if ref else ''
  if n.endswith('txt') and ref:ref=int(re.search(r'm_GameObject: \{fileID: (-?\d+)\}',reference)[1])
  fields[n]=path(ref) if ref else None
 rows.append({'originalComponent':k,'path':path(go),'type':int(re.search(r'^  type: (\d+)',d,re.M)[1]),'is_banner':bool(int(re.search(r'^  is_banner: (\d+)',d,re.M)[1])),'fields':fields})
out={'input':'com.Chodun.CatGunner 1.1.61 vc257 frozen Main','rows':rows}
(R/'reports/plus-item-manifest.json').write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n')
(P/'Assets/Recovery/Resources/OriginalPlusItems.json').write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n')
print('Original PlusPack item fields',len(rows))
