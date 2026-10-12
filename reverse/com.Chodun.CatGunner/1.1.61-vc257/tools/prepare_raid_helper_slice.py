from pathlib import Path
import json,re,shutil
R=Path('/Volumes/ZHITAI_1T/IdleCatGunner/reverse/com.Chodun.CatGunner/1.1.61-vc257');P=R.parents[2]/'reconstruction/CatGunnerUnityClient';B=R/'assetripper-baseline/ExportedProject'
# Reuse the read-only original hierarchy reader; stop before its old purchase report writer.
s=(R/'tools/map_local_purchase_bindings.py').read_text();reader=dict(globals(),__file__=str(R/'tools/map_local_purchase_bindings.py'));exec(compile(s[:s.index("packs=['remove_forced_ads'")], reader['__file__'], 'exec'),reader);globals().update(reader)
helper=int(re.search(r'm_GameObject: \{fileID: (\d+)\}',read(136810))[1]);print('helper',helper,path(helper));print(read(136810))
fieldsrows=[];refs={}
for k in [133360,123163,146155]:
 d=read(k);go=int(re.search(r'm_GameObject: \{fileID: (\d+)\}',d)[1]);fields={}
 for field,body in re.findall(r'^  (\w+): ?([^\n]*(?:\n  - [^\n]*)*)',d,re.M):
  if field.startswith('m_'):continue
  ids=re.findall(r'\{fileID: (-?\d+)\}',body)
  if ids:
   vals=[{'fileID':int(v)} for v in ids];fields[field]=vals if '\n  -' in body else vals[0]
   for v in ids:
    if v=='0':continue
    rd=read(int(v));rg=int(re.search(r'm_GameObject: \{fileID: (-?\d+)\}',rd)[1]) if docs[int(v)][0]!=1 else int(v);refs[v]=path(rg)
  elif re.fullmatch(r'-?\d+',body):fields[field]=int(body)
 fieldsrows.append({'type':classname(d),'originalGo':go,'path':path(go),'fields':fields})
buttons=[]
for k,(cid,_,_) in docs.items():
 if cid!=114:continue
 d=read(k)
 if 'm_OnClick:' not in d:continue
 for target,method in re.findall(r'm_Target: \{fileID: (133360|123163)\}.*?m_MethodName: (\w+)',d,re.S):
  go=int(re.search(r'm_GameObject: \{fileID: (-?\d+)\}',d)[1]);buttons.append({'path':path(go),'type':classname(read(int(target))),'method':method})
print('buttons',buttons)
jsonout={'rows':fieldsrows,'references':refs,'buttons':buttons,'helperGo':helper,'helperPath':path(helper)}
(P/'Assets/Recovery/Editor/OriginalRaidHelper.json').write_text(json.dumps(jsonout,indent=2))
# Extract only the original helper model; UI branches already exist and will be repaired in place.
script=(R/'tools/prepare_stepup_slice.py').read_text().replace("['StepUp','StepUp_Banner','StepUp_Hud','StepUp_Item_UI','StepUp_popup']","['Raid_HelperSlot','Raid_Helper_Purchase_Popup']").replace('roots = [1235, transforms[transforms[bygo[2180]][1]][0]]','roots = ['+str(helper)+']').replace('RecoveredStepUpSource','RecoveredRaidHelperSource').replace('OriginalStepUp.json','OriginalRaidHelperSlice.json').replace('stepup-slice-preparation','raid-helper-slice-preparation')
exec(compile(script,str(R/'tools/prepare_raid_helper_slice.py'),'exec'),{'__file__':str(R/'tools/prepare_raid_helper_slice.py')})
