"""Export two original NewSeason controllers and their six preview references."""
from pathlib import Path
import csv,hashlib,json,re
R=Path(__file__).resolve().parents[1];Q=R/'reports';P=R.parents[2]/'reconstruction/CatGunnerUnityClient'
s=(R/'tools/export_companion_static_text.py').read_text();exec(s[:s.index('source = language.read_text()')].replace('R = Path(__file__).resolve().parents[1]','R = R'))
rows=[];original=[];buttons=[]
for component in [124314,124424]:
 d=read(component);g=int(re.search(r'm_GameObject: \{fileID: (\d+)',d)[1]);vip=int(re.search(r'VIP_Purchase_popup_obj: \{fileID: (\d+)',d)[1])
 items=[int(i) for i in re.findall(r'  - \{fileID: (\d+)\}',d.split('  Mission_Reward_Items:',1)[1])];assert len(items)==3
 item_gos=[int(re.search(r'm_GameObject: \{fileID: (\d+)',read(i))[1]) for i in items]
 row=dict(Path=path(g).removeprefix('Canvas/'),VipPath=path(vip).removeprefix('Canvas/'),ItemPaths=[path(x).removeprefix('Canvas/') for x in item_gos],SourceComponent=component,SourceGameObject=g,SourceItems=items)
 rows.append(row);original += [dict(component=k,text=read(k)) for k in [component,*items]]
 for k,(kind,_,_) in index.items():
  if kind!=114:continue
  b=read(k)
  if int(re.search(r'm_GameObject: \{fileID: (\d+)',b)[1]) in item_gos and 'm_OnClick:' in b:
   assert 'm_Target: {fileID: 132993}' in b and 'm_MethodName: Epic_Reward_Click' in b
   assert '  m_Enabled: 0\n' in b
   buttons.append(dict(component=k,text=b))
assert len(buttons)==6
manager=read(124352);slot_block=manager.split('  Mission_Reward_Slot_List:',1)[1].split('  Exp_Slider:',1)[0]
slots=[int(x) for x in re.findall(r'  - \{fileID: (\d+)\}',slot_block)];assert len(slots)==25 and slots.index(132993)==5
asset=P/'Assets/Recovery/Resources/OriginalSeasonPreview.json';asset.write_text(json.dumps(dict(Rows=rows),ensure_ascii=False,indent=2)+'\n')
ns={'__file__':str(R/'tools/map_game_methods.py')};exec(Path(ns['__file__']).read_text().split('module =')[0],ns)
methods=[]
for line in (Q/'native-season-preview-queries.tsv').read_text().splitlines():
 va,name,first,end=line.split('\t');a,b=int(va,16),int(end,16);native=ns['native'];raw=ns['raw'];assert native[raw(a):raw(a)+16].hex()==first
 methods.append(dict(name=name,preferredVa=va,end=end,first16=first,sha256=hashlib.sha256(native[raw(a):raw(a)+b-a]).hexdigest(),outputs={str((R/'native-season-preview-reviewed'/(name+'.'+ext)).relative_to(R)):hashlib.sha256((R/'native-season-preview-reviewed'/(name+'.'+ext)).read_bytes()).hexdigest() for ext in ['c','asm']}))
status=list(csv.DictReader((R/'native-season-preview-reviewed/status.tsv').open(),delimiter='\t'));assert len(status)==11 and all(x['completed']=='true' and not x['error'] for x in status)
reused=[R/'native-mission-rejection-reviewed'/n for n in ['Mission_manager_Reward_Status_return.c','Mission_Reward_Slot_Epic_Reward_Click.c']]
schema=json.loads((Q/'resolved-type-schema.json').read_text())
report=dict(rule=66,target='com.Chodun.CatGunner 1.1.61 vc257 ARM64',ghidraImageBase='0x100000',rows=rows,originalComponents=original,originalPreviewCallbacks=buttons,previewButtonsEnabled=False,normalPurchasePanelButton=dict(component=123100,text=read(123100)),callbackTarget=read(132993),callbackTargetPath=path(11811),callbackSlotIndex=5,sourceSlotArray=slots,methods=methods,status=status,
 sourceHashes={str(f.relative_to(R)):hashlib.sha256(f.read_bytes()).hexdigest() for f in [scene,R/'extracted/split_config.arm64_v8a/lib/arm64-v8a/libil2cpp.so',R/'extracted/base/assets/bin/Data/Managed/Metadata/global-metadata.dat',*reused,B/'Assets/Scripts/Assembly-CSharp/NewSeason_UI.cs.meta']},
 schemas=[x for x in schema if x['image']=='Assembly-CSharp.dll' and x['name'] in ('NewSeason_UI','Mission_Reward_Item','Reward_info','Mission_manager')],resourceSha256=hashlib.sha256(asset.read_bytes()).hexdigest(),
 rules=['Original OnEnable calls Reload; VIP purchase panel active iff original is_Vip static flag false',
 'For N previews and C epic rewards, L=clamp(Reward_Lv,0,C), start=clamp(max(L-N,0),0,max(C-N,0)); each index start+i<C shown, else hidden',
 'First_Reload uses Epic degree1 and selected original reward.type/value, source sprites/color/grade and localized Gun_Type text',
 'Reward_Status_return: saved epic flag=>2; otherwise index<Reward_Lv=>1 else0. Preview Value_Reload uses false sequence and false locked arguments; Epic has no AD badge',
 'Six original preview Buttons all disabled, retain original slot132993 Epic_Reward_Click at index5. Disabled child pointer events bubble to enabled parent Panel Button123100 Purchase + close source popup; previews are not individual claim buttons'],
 adapters=['Runtime-only reattachment of source NewSeason_UI to retained inactive roots; fields resolve original resource paths, no scene/prefab writes','Original is_Vip flag gates presentation; existing local purchase ownership check still gates actual claims','Selected original preview Value_Reload branch only; not all generic reward/ad branches or original I2 lifecycle'],scopeComplete=False)
(Q/'season-preview-source-contract.json').write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n');print(dict(controllers=2,previewItems=6,nativeQueries=len(methods)))
