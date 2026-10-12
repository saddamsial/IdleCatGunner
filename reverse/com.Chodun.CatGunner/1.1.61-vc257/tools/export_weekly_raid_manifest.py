from pathlib import Path
import json,re
source=Path(__file__).with_name('export_tutorial_manifest.py');ns={'__file__':str(source.resolve())};exec(source.read_text().split('rows=[]')[0],ns)
r,p,b,idx,read,load,gos,path,scripts=(ns[x] for x in ['r','p','b','idx','read','load','gos','path','scripts'])
types=['WeeklyShop','Raid_Mission_manager','Raid_Mission_UI','Raid_Mission_Item','Raid_Mission_HUD','Raid_Mission_Ticket_UI','DailyGun','DailyGun_popup']
rows=[];refs={}
for k,v in idx.items():
 if v[0]!=114:continue
 match=re.search(r'm_Script: \{[^}]*guid: (\w+)',read(k));typ=scripts.get(match[1] if match else '')
 if typ not in types:continue
 d=load(k)['MonoBehaviour'];go=d['m_GameObject']['fileID'];fields={a:v for a,v in d.items() if not a.startswith('m_')}
 rows.append({'originalComponent':int(k),'originalGo':go,'path':path(go),'type':typ,'enabled':bool(d['m_Enabled']),'fields':fields})
 def visit(v):
  if isinstance(v,dict):
   if 'fileID' in v and v['fileID'] and 'guid' not in v:
    fid=v['fileID'];go=fid if fid in gos else next(iter(load(fid).values()))['m_GameObject']['fileID'];refs[str(fid)]=path(go)
   else:
    for x in v.values():visit(x)
  elif isinstance(v,list):
   for x in v:visit(x)
 visit(fields)
out={'source':'Frozen Main.unity','rows':rows,'references':refs}
(p/'Assets/Recovery/Editor/OriginalWeeklyRaid.json').write_text(json.dumps(out,indent=2)+'\n')
for row in rows:print(row['type'],row['originalGo'],'/'.join(str(x['name']) for x in row['path']),json.dumps(row['fields'])[:1500])
callbacks=[];extra=[];tweens=[]
for k,v in idx.items():
 if v[0]!=114:continue
 text=read(k);match=re.search(r'm_Script: \{[^}]*guid: (\w+)',text);typ=scripts.get(match[1] if match else '')
 if 'm_OnClick:' not in text and typ not in ['DailyGun','DailyGun_Item','Menu','Menu_Btn','Gun_Item_Demo'] and 'animationType:' not in text:continue
 d=load(k)['MonoBehaviour'];go=d['m_GameObject']['fileID'];parts=path(go);names=[x['name'] for x in parts];inScope=typ=='DailyGun' or any(x in names for x in ['WeeklyShop','DailyGun','Raid_Mission_manager','Mission_Btn','WeeklyShop_Btn'])
 if not inScope:continue
 if typ in ['DailyGun','DailyGun_Item','Menu','Menu_Btn','Gun_Item_Demo']:extra.append({'originalComponent':int(k),'originalGo':go,'path':parts,'type':typ,'fields':{a:v for a,v in d.items() if not a.startswith('m_')}})
 if 'animationType' in d:tweens.append({'originalComponent':int(k),'originalGo':go,'path':parts,'fields':{a:v for a,v in d.items() if not a.startswith('m_')}})
 if 'm_OnClick' in d:
  calls=d['m_OnClick']['m_PersistentCalls']['m_Calls'];callbacks.append({'originalComponent':int(k),'originalGo':go,'path':parts,'calls':calls})

for row in extra:
 visit(row['fields'])
for row in callbacks:
 for call in row['calls']:
  visit(call['m_Target']);visit(call['m_Arguments']['m_ObjectArgument'])
out.update(callbacks=callbacks,additional=extra,tweens=tweens)
(p/'Assets/Recovery/Editor/OriginalWeeklyRaid.json').write_text(json.dumps(out,indent=2)+'\n')
for x in extra:print(x['type'],x['originalGo'],json.dumps(x['fields'])[:2000])
for x in callbacks:
 print('Button',x['originalGo'],'/'.join(str(v['name']) for v in x['path']),[(v['m_TargetAssemblyTypeName'],v['m_MethodName'],v['m_Arguments']) for v in x['calls']])
for x in tweens:print('Tween',x['originalGo'],json.dumps(x['fields']))
