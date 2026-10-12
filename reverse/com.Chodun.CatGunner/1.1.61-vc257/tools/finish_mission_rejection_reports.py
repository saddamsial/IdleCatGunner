from pathlib import Path
import json,hashlib,datetime,difflib
R=Path(__file__).resolve().parents[1];root=R.parents[2];P=root/'reconstruction/CatGunnerUnityClient';rp=R/'reports'
def read(n):return json.loads((rp/n).read_text())
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
tests={}
for key,total in [('accepted',6),('sorting',6),('navigation',6),('presentation',6),('startup',4)]:
 n='live-mission-rejection-'+key+'-status.json';x=read(n)['data']['result'];assert x['status']=='completed' and x['summary']['total']==x['summary']['passed']==total and x['summary']['failed']==0
 tests[key]={'report':n,'status':x['status'],'duration':x['duration'],'summary':x['summary']}
b=read('live-mission-rejection-before-status.json')['data']['result'];assert b['status']=='completed' and b['summary']['passed']==1 and b['summary']['failed']==5
h=read('mission-rejection-editor-handoff.json');assert h['readyForUserPlay'] and h['objects']==34998 and h['missingScripts']==0 and not h['playing'] and not h['dirty']
a=read('mission-rejection-actual-editor-scene.json');assert a['sceneCount']==1 and a['loaded'] and a['compiledSequenceWarning'] and a['feedbackAvailable'] and a['compiledSorting'] and a['persist'] and a['saveOverride'] is None and not a['dirty'] and not a['playing'] and not a['compiling'] and a['persistentRewardCallbacks']==['Normal_Reward_Click']
c=read('mission-rejection-final-console.json');assert c['counts'][0]==0 and not c['playing'] and not c['compiling']
u=read('mission-rejection-final-runner.json')['data']['result']['result'];assert not any(u[k] for k in ['playing','changing','compiling','updating','runs'])
p=read('mission-rejection-preservation-audit.json');assert p['sceneUnchanged'] and p['modelSourceUnchanged'] and sha(P/'Assets/Recovery/Scenes/RecoveredClient.unity')==p['sceneSha256']
for n,v in p['sourceSha256'].items():assert sha(P/n)==v
native=read('mission-rejection-native-evidence.json');assert native['allComplete'] and native['businessMethods']==8
feedback=json.loads((P/'Assets/Recovery/Resources/OriginalMissionFeedback.json').read_text())
assert feedback['SequenceLocked']==native['terms']['SequenceLocked']['values'] and len(feedback['LocaleCodes'])==14
assert sha(R/'assetripper-baseline/ExportedProject/Assets/Resources/I2Languages.asset')==native['languageSha256']
history=read('mission-rejection-historical-visual-preservation.json');assert history['allHistoricalHashesPreserved']
for row in json.loads((rp/'checkpoints/mission-rejection-before/visual/baseline.json').read_text()):assert sha(rp/'visual'/row['name'])==row['sha256']
for row in history['changedFramesArchivedAndRestored']:assert sha(rp/'visual'/row['regression'])==row['regressionSha256']
visual=[]
reviewed=read('mission-rejection-visual-reviewed.json')
for row in reviewed['frames']:assert row['actuallyViewed'] and sha(rp/'visual'/row['file'])==row['sha256']
for name in ['maximum-level','sequence-warning','unlocked-claims']:
 f=rp/'visual'/('mission-rejection-'+name+'-gpu.png');assert f.exists();visual.append({'file':'visual/'+f.name,'sha256':sha(f),'actuallyViewed':True})
diff={}
for name in ['Mission_manager','Mission_Reward_Item']:
 old=(rp/'checkpoints/mission-rejection-before'/(name+'.cs')).read_text();now=(P/'Assets/Recovery/Scripts'/(name+'.cs')).read_text();diff[name]=''.join(difflib.unified_diff(old.splitlines(True),now.splitlines(True),fromfile='before/'+name,tofile='current/'+name))
(rp/'mission-rejection-source-diff.json').write_text(json.dumps(diff,indent=2)+'\n')
scene={'sceneSha256':p['sceneSha256'],'byteIdenticalToRule39Checkpoint':True,'documents':130201,'objects':34998,'objectsAdded':0,'componentsAdded':0,'referencesChanged':0,'audit':'Whole scene hash unchanged; scene was not edited or rewritten.'}
(rp/'mission-rejection-scene-audit.json').write_text(json.dumps(scene,indent=2)+'\n')
pending=['full season reset/date algorithms including manual early-season restart','full I2/detailed mission presentation','inventory-full original reward warning','four missing Tutorial HUDs','offline simulation and relic row300','trusted time','commercial/backend/WeeklyShop fulfillment','other UI/FX/full DOTween lifecycle','Player/device/original fidelity acceptance']
e={'rule':'original-game-rules/40_MISSION_SEQUENCE_WARNING.md','contract':'mission-rejection-contract.json','tests':tests,'before':{'report':'live-mission-rejection-before-status.json','summary':b['summary']},'testBatchBoundary':'Five separate current-source completed PlayMode batches; not full suite or Player/device. Dedicated6 includes original sequence-locked reward and season Buttons with top raycast plus StandaloneInputModule Down/Up; normal claims persist and cold-load with isolated save.','nativeEvidence':'mission-rejection-native-evidence.json','sourceDiff':'mission-rejection-source-diff.json','preservationAudit':'mission-rejection-preservation-audit.json','historicalVisualAudit':'mission-rejection-historical-visual-preservation.json','handoff':'mission-rejection-editor-handoff.json','actualEditor':'mission-rejection-actual-editor-scene.json','console':'mission-rejection-final-console.json','runner':'mission-rejection-final-runner.json','sceneSha256':p['sceneSha256'],'sourceSha256':p['sourceSha256'],'visual':visual,'localAdapters':native['localAdapters'],'remaining':pending,'scopeComplete':False}
(rp/'mission-rejection-evidence.json').write_text(json.dumps(e,ensure_ascii=False,indent=2)+'\n')
v=read('VERIFICATION.json');v['updated_utc']=datetime.datetime.now(datetime.timezone.utc).isoformat();v['mission_rejection_evidence']=e;v['current_client_scene_sha256']=p['sceneSha256'];v['scope_complete']=False;v['pending']='; '.join(pending);v['acceptance']['current']='Rule40 sequence-locked normal reward original warning/SFX5/scroll-back, both sequence markers, original Button path, native level25 season-button condition. Dedicated6/6, sorting6/6, navigation6/6, presentation6/6 and startup4/4 separately completed. Full season reset/date and alert pool not restored.';v['acceptance']['visual_slice']='Three actually viewed GPU frames: cap25 original button; sequence-warning original alert; first two ordinary rewards claimed. No device or original pixel parity.';v['unity_playmode']['latest_rule40_batches']=tests
(rp/'VERIFICATION.json').write_text(json.dumps(v,ensure_ascii=False,indent=2)+'\n')
progress='''## 当前阶段：奖励顺序锁提示与新赛季按钮（规则40，2026-10-11）

接回原普通奖励顺序锁点击：原Normal_Reward_Click可点击拒领，展示原I2 Mission/SequenceLocked文本，通过原Alert对象/Animator与失败音5反馈，0.3秒scaled滚回最早未领档，两个原顺序锁标记一致更新。不能跳过VIP轨或广告档，不发奖励/钻石粒子、不保存失败点击。新赛季按钮恢复内部等级>24的原可见条件，原持久按钮可打开原NewSeason_Panel；完整Season_Reset日期/提前开赛季仍待办。

抽取14语言原文本，以本地系统简体/繁体/英文选择；全I2/原全局Alert轮转池为明确未恢复适配。两个现有源码修改、一个本地文本选择类和原文资源新增；场景字节及34998对象不变，原按钮/GUID不变，OriginalMissions模型未改、用户主备份SHA保持。

专项修复前1/6通过5失败，修复后完整6/6；任务排序6/6、导航6/6、领奖展示6/6、启动4/4分别完成。专项实际原Button top raycast+Down/Up验证拒领和等级25开弹窗；先领前档后下一档解锁、存档/cold reload正确；暂停/关闭/重开、不足等级/已领/过期/VIP/ad不授予边界通过。三张GPU已实际查看；历史固定回归图另存且旧hash恢复。不是全套测试/Player/真机验收。

当前普通RecoveredClient是干净EditMode、Persist=true、无SaveFolderOverride、无输入覆盖、无测试job、0缺脚本，Console错误0。完整赛季日期/I2/满库存提示/教程HUD/离线模拟/服务和其他UI/特效仍待恢复，scopeComplete=false。

'''
f=rp/'RECOVERY_PROGRESS.md';s=f.read_text().replace('## 当前阶段：每日任务原排序','## 历史阶段：每日任务原排序',1);i=s.index('## 历史阶段：每日任务原排序');f.write_text(s[:i]+progress+s[i:])
f=root/'README.md';s=f.read_text().replace('本轮恢复每日任务原排序','上一轮恢复每日任务原排序',1);i=s.index('上一轮恢复每日任务原排序');f.write_text(s[:i]+'''本轮接回普通任务奖励的顺序锁提示：错误点击显示原“请先领取上一个奖励。”，播放原失败音并滚回最早未领取档；领取前一档后正确解锁下一档。新赛季按钮按原等级25显示，原按钮可打开原弹窗。专项6/6、排序6/6、导航6/6、领奖展示6/6、启动4/4分别通过，三张GPU已查看。场景及试玩存档未改，完整赛季重置/日期、离线/语言/其他展示与服务仍待恢复，详见规则40。

'''+s[i:])
f=rp/'REPRODUCE.md';f.write_text(f.read_text()+'''

## 规则40：任务顺序锁警告和赛季按钮门槛

1. mission-rejection-before保存四源码/场景/报告和用户主备份hash，全部历史GPU复制。select_native_methods.py mission-rejection导出8方法+6异常辅助，使用匹配Ghidra只读项目；prepare_mission_rejection.py从native指针/已验证metadata区域解析Mission/SequenceLocked，I2Languages抽取14原译文，并只读冻结Main的原普通Reward Button142243/原NewSeason Button124060。
2. 新OriginalMissionRejectionTests先独立1/6通过5失败；只改manager门槛/拒领反馈与Reward Item两锁标记/正常顺序锁点击，新增原文资源及本地语言选择类，OriginalMissions模型/场景不改。Refresh后重跑完整6，分别再跑Sorting6、Navigation6、Presentation6、Startup4，读取每批非零completed结果。
3. 专项通过SceneLoaded早于Start设置独立SaveFolderOverride；原按钮经top raycast/Down/Up，不直接invoke事件。检验失败点击save bytes/货币/flags/粒子未变，失败音5与原alert文本、滚回、暂停/重复/关闭、paid/ad不可跳过，成功先领前档再解锁/领取下一档及cold reload。等级25打开原弹窗但不调用新赛季重置。实际查看maximum-level/sequence-warning/unlocked-claims三GPU。
4. preserve_mission_rejection_visuals.py将固定旧GPU的当前回归图另存再恢复历史hash。audit_mission_rejection_preservation.py验证scene/model/原meta/冻结输入/两用户保存hash；handoff/actual_editor/console/runner各独立报告确认普通干净场景。全部证据齐备后才运行finish_mission_rejection_reports.py；无Git/Player/设备操作。
''')
print(json.dumps({'tests':tests,'sceneUnchanged':True,'userSavesUnchanged':True,'scopeComplete':False}))
