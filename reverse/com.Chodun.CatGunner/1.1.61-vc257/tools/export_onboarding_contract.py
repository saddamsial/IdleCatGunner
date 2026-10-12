from pathlib import Path
import hashlib,json,struct
R=Path(__file__).resolve().parents[1];P=R.parents[2]/'reconstruction/CatGunnerUnityClient';B=R/'assetripper-baseline/ExportedProject'
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
old=json.loads((R/'reports/original-merge-tutorial-contract.json').read_text())
assert all(sha(Path(r['path']))==r['expected'] for r in old['inputs'])
schema=json.loads((R/'reports/resolved-type-schema.json').read_text());meta=(R/'extracted/base/assets/bin/Data/Managed/Metadata/global-metadata.dat').read_bytes();h=(R/'transformed/header.decoded.bin').read_bytes();w=lambda o:struct.unpack_from('<i',h,o)[0];ds={i:(t,d) for i,t,d in struct.iter_unpack('<iii',meta[w(0x50)+5340:w(0x50)+5340+w(0)])}
values={}
for name,ns in [('TutorialStep',''),('Ease','DG.Tweening'),('LoopType','DG.Tweening')]:
 t=next(t for t in schema if t['name']==name and t['namespace']==ns);vals=[]
 for f in t['fields']:
  if f['name']=='value__':continue
  if name!='TutorialStep' and f['name'] not in ['OutQuad','Yoyo']:continue
  b=meta[w(0x60)-4320+ds[f['index']][1]];assert b<128 and not b%2;vals.append({'name':f['name'],'value':b>>1,'encoded_byte':b})
 values[name]=vals
assert [v['value'] for v in values['TutorialStep']]==list(range(6));assert values['Ease'][0]['value']==6 and values['LoopType'][0]['value']==1
script=R/'tools/export_tutorial_manifest.py';ns={'__file__':str(script)};exec(script.read_text().split('rows=[]')[0],ns)
pulses=[]
for fid in [123549,124744,124649]:
 d=ns['load'](fid)['MonoBehaviour'];assert d['animationType']==5 and d['duration']==1 and d['endValueFloat']==1.2 and d['easeType']==6 and d['loopType']==1 and d['loops']==-1 and d['isIndependentUpdate']==0
 target=d['target']['fileID'];go=ns['load'](target)['RectTransform']['m_GameObject']['fileID']
 pulses.append({'originalComponent':fid,'originalGo':go,'path':ns['path'](go),'duration':d['duration'],'endScale':d['endValueFloat'],'easeType':d['easeType'],'loopType':d['loopType'],'loops':d['loops'],'independentUpdate':False,'sourceScale':ns['load'](target)['RectTransform']['m_LocalScale'],'nativeSdkReplaced':True})
manifest={'source':'Frozen original Main.unity DOTweenAnimation components','rows':pulses,'boundary':'Explicit local scale presentation adapter; source OutQuad/Yoyo/1s/1.2 are retained, not original DOTween SDK implementation/lifecycle.'}
manifest_path=P/'Assets/Recovery/Editor/OriginalTutorialPulses.json';manifest_text=json.dumps(manifest,indent=2)+'\n'
if not manifest_path.exists() or manifest_path.read_text()!=manifest_text:manifest_path.write_text(manifest_text)
identities=[]
for name in ['Tutorial_manager','TutorialArrow_UI','Gun_Merge_Tutorial']:
 a=B/'Assets/Scripts/Assembly-CSharp'/(name+'.cs.meta');b=P/'Assets/Recovery/Scripts'/(name+'.cs.meta');assert sha(a)==sha(b);identities.append({'type':name,'sha256':sha(b),'unchanged':True})
extra={}
for file in ['native-adventure-state-reviewed/SaveData_CreateFromCurrentState.c','native-adventure-state-reviewed/LoadData_ContinueLoad.c','native-inventory-dependencies-reviewed/Gamemanager_Get_Dia_0x6000078.c']:
 extra[file]=sha(R/file)
assert '== 5' in (R/'native-adventure-state-reviewed/SaveData_CreateFromCurrentState.c').read_text();assert 'Tutorial_manager_SetCleared' in (R/'native-adventure-state-reviewed/LoadData_ContinueLoad.c').read_text();assert 'param_1 * 3' in (R/'native-inventory-dependencies-reviewed/Gamemanager_Get_Dia_0x6000078.c').read_text()
contract={'target':old['target'],'inputs':old['inputs'],'native_methods':old['native_methods'],'completed':51,'business_queries':45,'exception_helpers':6,'implemented_family_queries':45,'enum_values':values,'original_monoscript_meta':identities,'save_and_grant_evidence':extra,
 'rules':{'entry':'Original loaded TutorialCleared or attack upgrade>=1 ->Done without grant; otherwise Upgrade0. Original LoadData SetCleared and Start ordering replaced by client Bind after validation/loading.',
 'upgrade':'Every .2 scaled seconds: show upgrade hand iff wallet>=current attack upgrade price; attack>=1 ->Challenge1.',
 'challenge':'Hide challenge until attack>=3; then show and wait for actual SpeedRun.Stage_Now>0 ->GunOpen2.',
 'gun_open':'Show gun button; hand follows activeInHierarchy. Any active equipment slot or original OnGunButtonPressed ->GunBuy3.',
 'gun_buy':'Native Get_Dia(100-Dia) only if Dia<100, native _getDia += grant*3; local currency event bridge. Any Owned_Gun_list!=-1 ->GunEquip4; purchase hand follows visible draw button.',
 'equip':'Yield one frame; first non-null activeSelf item ->second equip slot; arrow visibility follows slot hierarchy and captured item. Any occupied companion slot or main slot!=Gun0 ->Done5.',
 'completion':'Hide all hands/arrow; restore non-null DisableOnTutorial; refresh content gates and deactivate own original root. Complete does not directly write SaveData; save capture assigns TutorialCleared=(CurrentStep==5). SetCleared sets cleared, stops coroutines, completes; RequestIfNeeded empty.',
 'persistence':'Existing local archive/5s autosave and safe startup adapter retained. Only unique test profiles altered; no original phone or live Editor save reset.'},
 'pulse_manifest':manifest,'adapters':['RecoveryForestClient binding/loading/archive replaces original global bootstrap.','Seven missing DisableOnTutorial HUD refs remain null; native foreach skips null. Four ordinary refs reconnected and8content gates use current tutorial step. Missing commercial/online behavior not simulated.','Original attribution logging excluded; no purchase history or Merge_Tutorial_Logged forged.','Source3DOTween hand pulses use local RecoveryTutorialPulse presenter, source parameters and meta-backed Ease/LoopType values.'],
 'runtime_sources':{name:sha(P/'Assets/Recovery/Scripts'/(name+'.cs')) for name in ['Tutorial_manager','RecoveryTutorialPulse','RecoveryForestClient','Contents_Unlock_manager','TutorialArrow_UI','Gun_Merge_Tutorial']},'boundary':'Five ordinary tutorial steps restored. Three hand pulses are explicit SDK presentation adapters. Other HUD, WeeklyShop, effects/localization, relic consumers/missing table, Raid tasks, Player/device/commercial/online/full-client acceptance remain.'}
(R/'reports/original-onboarding-contract.json').write_text(json.dumps(contract,ensure_ascii=False,indent=2)+'\n')
print('Tutorial enum0..5, source3OutQuad/Yoyo scale pulses,3meta identities, save bool+0x3c9 and native grant*3 checked;51exports reused, not new native discoveries')
