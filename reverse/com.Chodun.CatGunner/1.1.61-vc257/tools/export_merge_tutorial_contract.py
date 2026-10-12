from pathlib import Path
import csv,hashlib,json,struct,yaml
from map_game_methods import ROOT as R,native,raw

P=R.parents[2]/'reconstruction/CatGunnerUnityClient'
B=R/'assetripper-baseline/ExportedProject'
sha=lambda file:hashlib.sha256(file.read_bytes()).hexdigest()
inputs=[]
for row in json.loads((R/'reports/original-content-unlock-contract.json').read_text())['inputs']:
    value=sha(Path(row['path']));assert value==row['expected'];inputs.append({**row,'sha256':value,'unchanged':True})
status=list(csv.DictReader((R/'native-tutorial-ui-reviewed/status.tsv').open(),delimiter='\t'))
assert len(status)==51 and all(row['completed']=='true' for row in status)
methods=[]
for line in (R/'reports/native-tutorial-ui-queries.tsv').read_text().splitlines():
    va,name,expected,end=line.split('\t');assert native[raw(int(va,16)):raw(int(va,16))+16].hex()==expected
    methods.append({'preferred_va':va,'ghidra_va':hex(int(va,16)+0x100000),'end':end,'name':name,'input16':expected,'outputs':{name+suffix:sha(R/'native-tutorial-ui-reviewed'/(name+suffix)) for suffix in ['.c','.asm']}})
preservation=[]
for name in ['TutorialArrow_UI','Gun_Merge_Tutorial']:
    source=B/'Assets/Scripts/Assembly-CSharp'/(name+'.cs.meta');target=P/'Assets/Recovery/Scripts'/(name+'.cs.meta');assert sha(source)==sha(target)
    preservation.append({'type':name,'sha256':sha(target),'unchanged':True})
floats={hex(va):list(struct.unpack_from('<2f',native,raw(va))) for va in [0x106ff50,0x1070b88]}
assert floats['0x106ff50']==[struct.unpack('<f',struct.pack('<f',1.2))[0],struct.unpack('<f',struct.pack('<f',.15))[0]]
manifest=json.loads((P/'Assets/Recovery/Editor/OriginalTutorial.json').read_text())
index=json.loads((R/'reports/original-main-document-index.json').read_text());cid,offset,length=index['123082'];assert cid==114
with (B/'Assets/Scenes/Main.unity').open('rb') as main:
    main.seek(offset);owner=yaml.safe_load(main.read(length).decode().split('\n',1)[1])['MonoBehaviour']
assert owner['merge_tutorial_ui']=={'fileID':124933}
row=next(row for row in manifest['rows'] if row['originalGo']==730);assert row['fields']['target0']['fileID']==0 and row['fields']['target1']['fileID']==0
assert [row['fields'][key] for key in ['moveDuration','pauseAtTarget','scaleSmall','scaleDuration']]==[1.2,.15,.8,.15]
implemented=[m for m in methods if m['name'].startswith(('TutorialArrow_UI_','Gun_Merge_Tutorial_','_MoveLoop_d__13_','_ScaleTo_d__14_','_ReloadNextFrame_d__2_'))]
assert len(implemented)==17
contract={'target':'com.Chodun.CatGunner1.1.61 vc257 arm64','inputs':inputs,'native_methods':methods,'completed':51,'business_queries':45,'exception_helpers':6,'implemented_family_queries':17,
    'source_owner_binding':{'original_manager_component':123082,'original_field':'merge_tutorial_ui','original_reference':owner['merge_tutorial_ui'],'original_cue_component':124933},
    'original_monoscript_meta':preservation,'arrow_constructor_float_pairs':floats,'serialized_manifest':'Assets/Recovery/Editor/OriginalTutorial.json','serialized_manifest_sha256':sha(P/'Assets/Recovery/Editor/OriginalTutorial.json'),
    'rules':{'pair':'First two activeSelf non-null Gun_Item entries with unsigned(GunNum+4)<=8, !IsAdReward and !IsPaused. Valid inventory domain means IDs0..4. No additional drag/auto-toggle predicate.',
             'eligibility':'Return unchanged if cue hierarchy inactive. Hide if manager absent, Has_Merged or fewer than2eligible entries. Hide clears both targets and deactivates arrow.',
             'refresh':'OnEnable coroutine waits one frame then Reload. Original Gun_manager.ReloadGunUI calls cue after list/slot reload and before auto UI/start.',
             'movement':'Reset position to target0 and scale1; SmoothStep scale to.8 in.15s; SmoothStep move to live target1 in1.2s; SmoothStep scale1 in.15s; pause.15s and repeat. Time.deltaTime/WaitForSeconds.',
             'coordinates':'ScreenPointToLocalPointInRectangle of arrow parent RectTransform using camera=null and target.position, plus original offset; fallback target.anchoredPosition.',
             'lifecycle':'SetTargets stops previous loop and restarts when active/targets non-null; OnDisable stops and clears loop; movement exits on inactive target; original non-raycast Hand retained.',
             'first_merge':'Existing native inventory Has_Merged flag hides cue after actual manual/automatic merge and persists through independent save.'},
    'adapters':['Existing OriginalGunInventory and Gun_Item_List own item identity, slot ordering, transaction and independent persistence.',
                'Original attribution logging is excluded. Merge_Tutorial_Logged is not forged or marked by showing the cue.'],
    'onboarding_analysis_only':{'steps':'Upgrade0,Challenge1,GunOpen2,GunBuy3,GunEquip4,Done5','start':'_cleared or attack upgrade>=1 completes immediately; otherwise BeginTutorial','poll_seconds':struct.unpack_from('<f',native,raw(0x106c060))[0],
        'ordinary_tutorial_topup':'GunBuy increases Dia to100 only when below100; analyzed, NOT integrated/granted this slice.',
        'missing_hud':'Original tutorial root and7 of11 DisableOnTutorial references absent from current ordinary recovery client. No dummy tutorial completion, tutorial resource grant or global HUD suppression added.'},
    'runtime_sources':{name:sha(P/'Assets/Recovery/Scripts'/(name+'.cs')) for name in ['TutorialArrow_UI','Gun_Merge_Tutorial','Gun_manager']},
    'boundary':'Only gun merge cue/arrow runtime integrated. Full five-step onboarding remains analyzed but pending, as do WeeklyShop/effects/localization/Player/device/commercial/online. Native exports do not measure functional completion.'}
(R/'reports/original-merge-tutorial-contract.json').write_text(json.dumps(contract,ensure_ascii=False,indent=2)+'\n')
print('51checked exports;17 implemented cue/arrow family queries; original2script identities and source floats preserved; onboarding runtime pending.')
