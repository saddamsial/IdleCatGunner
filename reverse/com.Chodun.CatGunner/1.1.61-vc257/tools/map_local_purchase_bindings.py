from pathlib import Path
import json,re,ast
from functools import lru_cache
R=Path(__file__).resolve().parents[1];P=R.parents[2]/'reconstruction/CatGunnerUnityClient';B=R/'assetripper-baseline/ExportedProject';docs={int(k):tuple(v) for k,v in json.loads((R/'reports/original-main-document-index.json').read_text()).items()};types={}
for p in (B/'Assets/Scripts/Assembly-CSharp').glob('*.cs.meta'):
 m=re.search(r'^guid: (\w+)',p.read_text(),re.M)
 if m:types[m[1]]=p.name[:-8]
f=(B/'Assets/Scenes/Main.unity').open('rb')
def read(k):
 _,off,size=docs[k];f.seek(off);return f.read(size).decode()
gos={};tr={};bygo={};names={}
for k,(cid,_,_) in docs.items():
 if cid==1:
  d=read(k);gos[k]=[int(v) for v in re.findall(r'component: \{fileID: (-?\d+)\}',d)];names[k]=re.search(r'  m_Name: (.*)',d)[1];names[k]=ast.literal_eval(names[k]) if names[k].startswith(("'",'"')) else names[k]
 elif cid in (4,224):
  d=read(k);go=int(re.search(r'm_GameObject: \{fileID: (-?\d+)\}',d)[1]);parent=int(re.search(r'm_Father: \{fileID: (-?\d+)\}',d)[1]);children=[int(v) for v in re.findall(r'\{fileID: (-?\d+)\}',d[d.index('  m_Children:'):d.index('  m_Father:')])];tr[k]=(go,parent,children);bygo[go]=k
roots=[k for k,v in tr.items() if v[1]==0]
@lru_cache(None)
def path(go):
 t=bygo[go];parent=tr[t][1];siblings=tr[parent][2] if parent else roots;ordinal=[k for k in siblings if names[tr[k][0]]==names[go]].index(t);return (path(tr[parent][0]) if parent else [])+[{'name':names[go],'ordinal':ordinal}]
def classname(d):
 m=re.search(r'm_Script: \{[^}]*guid: (\w+)',d);return types.get(m[1],'') if m else ''
def number(d,name):
 m=re.search(r'^  '+re.escape(name)+r': (-?\d+)',d,re.M);return int(m[1]) if m else None
packs=['remove_forced_ads','remove_all_ads','autoupgrade_pack','buff_pack','dia_pack','mine_pack'];unknown=[];rows=[]
for k,(cid,_,_) in docs.items():
 if cid!=114:continue
 d=read(k)
 if '  m_OnClick:' not in d:continue
 go=int(re.search(r'm_GameObject: \{fileID: (-?\d+)\}',d)[1]);calls=re.findall(r'      - m_Target: .*?(?=      - m_Target:|\Z)',d[d.index('  m_OnClick:'):],re.S)
 for n,call in enumerate(calls):
  method=re.search(r'm_MethodName: (.*)',call)[1];target=int(re.search(r'm_Target: \{fileID: (-?\d+)\}',call)[1]);td=read(target) if target in docs else '';typ=classname(td);prod=None
  arg=number(call,'m_IntArgument') # call indentation differs
  m=re.search(r'm_IntArgument: (-?\d+)',call);arg=int(m[1]) if m else None
  if typ in ('Inapp_Purchase_Panel','Inapp_Purchase_Popup') and method=='Purchase':prod=packs[number(td,'type')]
  elif typ=='Shop_manager':
   if method=='Purchase':prod=packs[arg]
   elif method=='Purchase_Dia':prod='dia_'+str(arg)
   elif method in ['Purchase_VIP','Purchase_VIP_Banner']:prod='vip_pass'
   elif method=='Purchase_Luxury':prod='catgunner_luxury_pass'
   elif method=='Purchase_Luxury_Upgrade':prod='catgunner_luxury_upgrade'
   elif method=='Purchase_Core':prod=['catgunner_core_100','catgunner_core_500','catgunner_core_1050','catgunner_core_3300','catgunner_core_daily_750','catgunner_core_weekly_1750','catgunner_core_weekly_6000'][arg]
   elif method=='Purchase_RaidTicket':prod='catgunner_raid_ticket'
   elif method=='Purchase_RebirthSingle':prod='catgunner_rebirth_single'
  elif typ=='DailyGun_Item' and method=='OnClick_Purchase':prod='catgunner_dailygun_'+str(number(td,'Item_Idx'))
  elif typ=='PlusPack_Inapp_item' and method=='OnClick':prod='catgunner_pluspack_'+str(number(td,'type'))
  elif typ=='StepUp_Item_UI' and method=='OnClick':prod='catgunner_stepup_'+str(tr[tr[bygo[go]][1]][2].index(bygo[go]))
  elif typ=='Dia_Purchase_Panel' and method=='Purchase':prod='dia_'+str(number(td,'type'))
  elif typ=='Core_Purchase_Panel' and method=='Purchase':prod=['catgunner_core_100','catgunner_core_500','catgunner_core_1050','catgunner_core_3300','catgunner_core_daily_750','catgunner_core_weekly_1750','catgunner_core_weekly_6000'][number(td,'type')]
  elif typ in ['VIP_Purchase_popup','VIP_Purchase_Ingame'] and method=='Purchase':prod=['vip_pass','catgunner_luxury_pass','catgunner_luxury_upgrade'][number(td,'type')]
  elif typ=='Raid_Mission_Ticket_UI' and method=='onClick_Ticket_Purchase':prod='catgunner_raid_mission_ticket'
  elif typ=='Raid_Helper_Purchase_Popup' and method in ['Purchase','OnClick_Purchase']:prod='catgunner_raid_helper'
  elif typ=='StarGem_Pig_UI' and 'Purchase' in method:prod='stargem_pig_dynamic'
  if typ in ['RemoveAds_Purchase_BannerReward'] and method=='Purchase':prod='remove_all_ads'
  if typ=='Remove_ForceAds_UI' and method=='Purchase':prod='remove_forced_ads'
  if typ=='BuffPack_Purchase_BannerReward' and method=='Purchase':prod='buff_pack'
  if typ=='Shop_manager' and method in ['Panel_Open','Panel_Close']:prod='navigation_'+method
  if typ=='Rebirth_Panel_UI' and method=='UpgradeRebirth_IAP_Purchase_Btn':prod='catgunner_rebirth_single'
  if typ=='Rebirth_manager' and method=='UpgradeRebirth_Start_By_IAP':prod='catgunner_rebirth_single'
  if typ=='Raid_manager' and method=='Game_Enter_IAP':prod='catgunner_raid_ticket'
  if prod:
   rows.append({'path':path(go),'label':'/'.join(v['name'] for v in path(go)),'buttonSourceId':k,'method':method,'targetType':typ,'targetSourceId':target,'callIndex':n,'productId':prod})
  elif 'Purchase' in method or typ in ['Shop_manager','Core_Purchase_Panel','VIP_Purchase_popup','PlusPack_Inapp_item','StepUp_Item_UI']:
   unknown.append({'path':'/'.join(v['name'] for v in path(go)),'method':method,'targetType':typ,'targetFields':td[-500:],'intArg':arg})
(R/'reports/local-purchase-original-bindings.json').write_text(json.dumps({'routes':rows,'unresolved':unknown},indent=2)+'\n');(P/'Assets/Recovery/Editor/LocalPurchaseBindings.json').write_text(json.dumps(rows,indent=2)+'\n');print('Routes',len(rows),'products',sorted({x['productId'] for x in rows}));print('Unresolved',unknown)
