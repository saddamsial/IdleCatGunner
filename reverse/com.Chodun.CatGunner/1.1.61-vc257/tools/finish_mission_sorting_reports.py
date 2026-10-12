"""Close current evidence only after separately completed tests and clean Editor."""
from pathlib import Path
import json,hashlib,datetime
R=Path(__file__).resolve().parents[1];root=R.parents[2];rp=R/'reports';P=root/'reconstruction/CatGunnerUnityClient'
def read(n):return json.loads((rp/n).read_text())
expected={'sorting':('live-mission-sorting-accepted-status.json',6),'navigation':('live-mission-sorting-navigation-status.json',6),'presentation':('live-mission-sorting-presentation-status.json',6),'progression':('live-mission-sorting-progression-status.json',8),'startup':('live-mission-sorting-startup-status.json',4)}
tests={}
for key,(n,total) in expected.items():
 x=read(n)['data']['result'];assert x['status']=='completed' and x['summary']['total']==x['summary']['passed']==total and x['summary']['failed']==0,(n,x)
 tests[key]={'report':n,'status':x['status'],'duration':x['duration'],'summary':x['summary']}
h=read('mission-sorting-editor-handoff.json');assert h['readyForUserPlay'] and h['missingScripts']==0 and h['objects']==34998 and not h['dirty'] and not h['playing']
a=read('mission-sorting-actual-editor-scene.json');assert a['sceneCount']==1 and a['loaded'] and not a['dirty'] and not a['playing'] and not a['compiling'] and a['persist'] and a['saveOverride'] is None and a['compiledSorting'] and a['originalAlertReference'] and a['pulseAdapters']==1 and a['persistentRewardCallbacks']==['Normal_Reward_Click']
runner=read('mission-sorting-final-runner.json')['data']['result']['result'];assert not any(runner[k] for k in ['playing','changing','compiling','updating','runs'])
console=read('mission-sorting-final-console.json');assert console['counts'][0]==0 and not console['compiling'] and not console['playing']
preserve=read('mission-sorting-preservation-audit.json');assert preserve['sceneUnchanged'] and preserve['pulseSourceUnchanged'];native=read('mission-sorting-native-evidence.json');assert native['allComplete'] and native['businessQueries']==6
historical=read('mission-sorting-historical-visual-preservation.json');assert historical['allHistoricalHashesPreserved'] and historical['oldFramesChecked']>0
for row in json.loads((rp/'checkpoints/mission-sorting-before/visual/baseline.json').read_text()):
 assert hashlib.sha256((rp/'visual'/row['name']).read_bytes()).hexdigest()==row['sha256']
for row in historical['changedFramesArchivedAndRestored']:
 assert hashlib.sha256((rp/'visual'/row['regression']).read_bytes()).hexdigest()==row['regressionSha256']
assert hashlib.sha256((P/'Assets/Recovery/Scenes/RecoveredClient.unity').read_bytes()).hexdigest()==preserve['sceneSha256']
for n,value in preserve['sourceSha256'].items():assert hashlib.sha256((P/n).read_bytes()).hexdigest()==value
visual=[]
for n in ['ready-order','claimed-order','alert-small','alert-large']:
 f=rp/'visual'/('mission-sorting-'+n+'-gpu.png');assert f.exists();visual.append({'file':'visual/'+f.name,'sha256':hashlib.sha256(f.read_bytes()).hexdigest(),'actuallyViewed':True})
before=read('live-mission-sorting-before-status.json')['data']['result'];assert before['status']=='completed' and before['summary']['passed']==1 and before['summary']['failed']==5
scene={'sceneSha256':preserve['sceneSha256'],'byteIdenticalToRule38Checkpoint':True,'documents':130201,'objects':34998,'objectsAdded':0,'componentsAdded':0,'referencesChanged':0,'audit':'Whole-scene byte hash unchanged; no scene edit or YAML rewriting.'}
(rp/'mission-sorting-scene-audit.json').write_text(json.dumps(scene,indent=2)+'\n')
pending=['full I2 and detailed original task presentation','failed reward-sequence alert/scroll-back path','four absent Tutorial HUDs','OfflineProgressManager/Simulator and offline relic/row300','trusted time','commercial/backend providers and WeeklyShop fulfillment','other UI/FX','full DOTween lifecycle','Player/device/original fidelity acceptance']
e={'rule':'original-game-rules/39_MISSION_SORTING_AND_PULSE_CHECK.md','contract':'mission-sorting-contract.json','tests':tests,'testBatchBoundary':'Five separate complete current-source batches, not a full suite or Player/device. Before1/6 already passed the existing pulse and five missing-sort/status cases failed; no new pulse implementation. Sorting6/6 includes original EventSystem clicks on task12 and task18, independent save reload and fixed golden ordering.','nativeEvidence':'mission-sorting-native-evidence.json','sourceParameters':'mission-sorting-source-parameters.json','existingPulseEvidence':'mission-sorting-existing-pulse.json','sceneAudit':'mission-sorting-scene-audit.json','preservationAudit':'mission-sorting-preservation-audit.json','historicalVisualAudit':'mission-sorting-historical-visual-preservation.json','handoff':'mission-sorting-editor-handoff.json','actualEditor':'mission-sorting-actual-editor-scene.json','console':'mission-sorting-final-console.json','runner':'mission-sorting-final-runner.json','visual':visual,'sceneSha256':preserve['sceneSha256'],'sourceSha256':preserve['sourceSha256'],'boundaries':native['boundaries'],'remaining':pending,'scopeComplete':False}
(rp/'mission-sorting-evidence.json').write_text(json.dumps(e,ensure_ascii=False,indent=2)+'\n')
v=read('VERIFICATION.json');v['updated_utc']=datetime.datetime.now(datetime.timezone.utc).isoformat();v['current_client_scene_sha256']=preserve['sceneSha256'];v['mission_sorting_evidence']=e;v['mission_sorting_editor_handoff']=h;v['scope_complete']=False;v['pending']='; '.join(pending);v['acceptance']['current']='Rule39 original task status/priority/type/index sibling sorting. Separate completed sorting6/6, navigation6/6, real-input reward presentation6/6, progression8/8, startup4/4. Existing blue alert pulse was already implemented in Rule29 and is verified, not newly restored.';v['acceptance']['visual_slice']='Four actually viewed GPU frames: four ready task categories at top; rebirth/mine tasks claimed and XP20; original blue alert at source0.89393 and peak near1.1. No original-device pixel parity.';v['unity_playmode']['latest_rule39_batches']=tests
(rp/'VERIFICATION.json').write_text(json.dumps(v,ensure_ascii=False,indent=2)+'\n')
progress='''## 当前阶段：每日任务原排序与既有蓝点动画核验（规则39，2026-10-11）

恢复原任务四种状态、VIP/Luxury优先级与type/index比较，先刷新23原行再SetSiblingIndex；可领取任务优先，普通已领/豪华未领保持原优先级。只改变显示顺序，原数组/任务ID/原按钮回调不变。两个生产源码变化，整个工作场景SHA与轮前一致，没有新增对象/组件或原引用修改。

更正规则38待办：规则29已在原GO891接入蓝点RecoveryWeeklyUiTween；本轮只核验，不重复添加或修改动画源码。原sourceScale0.89393、绝对目标1.1、每段1秒、OutQuad、无限Yoyo/scaled时间一致；实际采样/暂停/重启和两张GPU通过，SDK生命周期仍为明确本地适配。

专项先1/6（既有动画通过、5项缺排序失败）后完整6/6；导航6/6、原领奖呈现6/6、成长8/8、启动4/4分别完成。排序后的重生/矿区原按钮通过top raycast及StandaloneInputModule Down/Up领取各自XP，共20，无额外钻石，重复领取/独立archive/重开与cold scene load正确。四张GPU已实际查看；各批不是全集合或Player/真机验收。

34998原对象/130201文档字节保留；Mission_manager原meta、既有动画、冻结Main/native/metadata和用户主备份SHA保持。回归旧固定图另存后恢复旧SHA。当前普通RecoveredClient干净EditMode/Persist=true/无存档覆盖/无输入覆盖/零缺脚本/无活动测试，可直接Play。

完整I2/原任务详细展示、顺序锁拒领跳回、四处HUD、完整离线模拟/可信时钟/商业与后台、其他UI/特效以及Player/设备仍待办，scopeComplete=false。原排序状态不启用任何付费/广告领取；原UI_First_Reload全语言及NewSeason_Btn满级门槛未纳入本轮。

'''
p=rp/'RECOVERY_PROGRESS.md';s=p.read_text().replace('## 当前阶段：任务可领取提示','## 历史阶段：任务可领取提示',1);i=s.index('## 历史阶段：任务可领取提示');p.write_text(s[:i]+progress+s[i:])
p=root/'README.md';s=p.read_text();old='本轮接回任务可领取蓝色提示点';assert old in s;s=s.replace(old,'上一轮接回任务可领取蓝色提示点',1);i=s.index('上一轮接回任务可领取蓝色提示点');p.write_text(s[:i]+'''本轮恢复每日任务原排序：按领取状态、任务类型和原索引调整显示位置，可领取任务集中在前面，原任务编号与按钮接线保留。专项6/6、导航6/6、原领奖呈现6/6、成长8/8、启动4/4分别通过，排序后的原按钮可正确领取并保存。核验蓝色提示点已有缩放循环；更正规则38待办，本轮未重复添加动画。场景、既有动画与试玩存档保持原SHA。完整离线/语言/其他展示与服务恢复仍待办，详见规则39。

'''+s[i:])
p=rp/'REPRODUCE.md';p.write_text(p.read_text()+'''

## 每日任务排序与蓝点动画核验（规则39）

1. `mission-sorting-before`保存两个将改源码、未改动画源码、场景/文档与主备份hash；`prepare_mission_sorting.py`只读冻结Main提取23原行、原124051及103491参数。`select_native_methods.py mission-sorting`与匹配只读Ghidra导出6业务/闭包+6异常辅助，核验DisplayClass62_0 owner/statusCache、4状态、优先级和type/index比较。
2. `OriginalMissionSortingTests`首批1通过5失败：既有蓝点动画已通过。场景检查证明GO891早有RecoveryWeeklyUiTween且参数匹配；不添加新组件、不改动画源码。只增加OriginalMissions状态/排序辅助，并在Mission_manager.UI_Reload接入Mission_UI_Reload先刷新再SetSiblingIndex；未重排原数组或改存档schema。Refresh后确认实际程序集的方法，再跑完整专项6。
3. 分别跑导航6、原领奖呈现6、成长8、启动4，每批读取非零completed结果，保留start/status，不拼成全集合。专项用独立SaveFolderOverride早于Start、原Button顶层raycast+Down/Up点击任务12/18；VIP/Luxury只fixture标记，不启用付费领取。查看ready-order/claimed-order/alert-small/alert-large四GPU。回归前checkpoint/visual保存旧图，回归变化另存mission-sorting-regression-*后还原旧hash。
4. `audit_mission_sorting_preservation.py`证明整个Scene与既有动画字节不变、原manager meta/冻结Main/native/metadata/试玩主备份不变。最后执行mission_sorting_handoff.cs，独立actual_editor/console/空runner证明干净普通场景。证据齐备才运行finish_mission_sorting_reports.py。没有Player、设备或Git交付。
''')
print(json.dumps({'tests':tests,'sceneUnchanged':True,'pulseImplementationWasAlreadyPresent':True,'scopeComplete':False},ensure_ascii=False))
