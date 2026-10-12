"""Finalize only after individually completed batches and actual clean handoff."""
from pathlib import Path
import json,hashlib,datetime
R=Path(__file__).resolve().parents[1];root=R.parents[2];rp=R/'reports';P=root/'reconstruction/CatGunnerUnityClient'
def read(name):return json.loads((rp/name).read_text())
expected={'navigation':('live-mission-navigation-accepted-status.json',6),'alertVisual':('live-mission-navigation-alert-visual-status.json',1),'presentation':('live-mission-navigation-presentation-status.json',6),'progression':('live-mission-navigation-progression-status.json',8),'startup':('live-mission-navigation-startup-status.json',4)}
tests={}
for key,(name,n) in expected.items():
 x=read(name)['data']['result'];assert x['status']=='completed' and x['summary']['total']==x['summary']['passed']==n and x['summary']['failed']==0,(name,x)
 tests[key]={'report':name,'status':x['status'],'duration':x['duration'],'summary':x['summary']}
h=read('mission-navigation-editor-handoff.json');assert h['readyForUserPlay'] and h['missingScripts']==0 and not h['dirty'] and not h['playing']
a=read('mission-navigation-actual-editor-scene.json');assert a['sceneCount']==1 and a['loaded'] and not a['dirty'] and not a['playing'] and not a['compiling'] and a['persist'] and a['saveOverride'] is None and a['originalAlertReference'] and a['compiledNavigation'] and a['persistentRewardCallbacks']==['Normal_Reward_Click']
runner=read('mission-navigation-final-runner.json')['data']['result']['result'];assert not any(runner[x] for x in ['playing','changing','compiling','updating','runs'])
console=read('mission-navigation-final-console.json');assert console['counts'][0]==0 and not console['compiling'] and not console['playing']
preserve=read('mission-navigation-preservation-audit.json');scene=read('mission-navigation-scene-document-diff.json');assert scene['unchangedDocuments']==130200 and scene['newObjects']==0
native=read('mission-navigation-native-evidence.json');assert native['allComplete'] and native['businessQueries']==16
assert hashlib.sha256((P/'Assets/Recovery/Scenes/RecoveredClient.unity').read_bytes()).hexdigest()==preserve['sceneSha256']
for name,value in preserve['sourceSha256'].items():assert hashlib.sha256((P/name).read_bytes()).hexdigest()==value
visual=[]
for name in ['mission-navigation-open-gpu.png','mission-navigation-next-gpu.png','mission-navigation-alert-gpu.png']:
 f=rp/'visual'/name;assert f.exists();visual.append({'file':'visual/'+name,'sha256':hashlib.sha256(f.read_bytes()).hexdigest(),'actuallyViewed':True})
e={'rule':'original-game-rules/38_MISSION_ALERT_NAVIGATION.md','contract':'mission-navigation-contract.json','tests':tests,'testBatchBoundary':'Completed navigation6 and later focused alert1 overlap; later fixture only added visible-object assertion and screenshot, no production delta. Three separate regression batches, not a new full-suite or Player/device result. Before0/5 and first5/5 preserved.','testSourceHistory':'mission-navigation-test-source-history.json','nativeEvidence':'mission-navigation-native-evidence.json','sourceParameters':'mission-navigation-source-parameters.json','sceneAudit':'mission-navigation-scene-document-diff.json','preservationAudit':'mission-navigation-preservation-audit.json','handoff':'mission-navigation-editor-handoff.json','actualEditor':'mission-navigation-actual-editor-scene.json','console':'mission-navigation-final-console.json','runner':'mission-navigation-final-runner.json','visual':visual,'sceneSha256':preserve['sceneSha256'],'sourceSha256':preserve['sourceSha256'],'localDifferences':native['localDifferences'],'remaining':['original alert DOTween124051 pulse','full I2 and task sort','failed sequence-lock alert and scroll-back UI path','four Tutorial HUDs','offline simulation','trusted clock','commercial/backend services','other FX','Player/device acceptance'],'scopeComplete':False}
(rp/'mission-navigation-evidence.json').write_text(json.dumps(e,ensure_ascii=False,indent=2)+'\n')
v=read('VERIFICATION.json');v['updated_utc']=datetime.datetime.now(datetime.timezone.utc).isoformat();v['current_client_scene_sha256']=preserve['sceneSha256'];v['mission_navigation_evidence']=e;v['mission_navigation_editor_handoff']=h;v['scope_complete']=False;v['acceptance']['current']='Rule38 mission indicator/native two-second loop and reward open/claim positioning: navigation6/6; overlapping alert visual1/1; original real-input reward presentation6/6; progression8/8; startup4/4. Independent completed batches, not full suite or Player/device.';v['acceptance']['visual_slice']='Original blue mission alert, first unclaimed weapon centered, then next ad reward centered after weapon claim; three GPU frames actually viewed. Loop scale pulse and original/device pixel parity pending.';v['unity_playmode']['latest_rule38_batches']=tests
(rp/'VERIFICATION.json').write_text(json.dumps(v,ensure_ascii=False,indent=2)+'\n')
progress='''## 当前阶段：任务可领取提示与赛季奖励自动定位（规则38，2026-10-11）

原任务蓝色提示点引用891接回；按原2秒缩放时间循环检查四类任务计数/VIP和普通豪华领取标记，成功任务领取立即重启检查。打开任务窗任务列表回顶，下一帧直接定位首个未领可领档或当前等级；普通领奖后按原选择器移到下一档，0.3秒SmoothStep平滑移动，暂停保持、重复请求替换、关窗/Owner禁用取消本地任务。全领提示遵循VIP双轨标记，广告/VIP/Luxury动作仍不可用，导航不跳过广告。

16原生业务/状态机和6异常辅助完整导出，3迭代器owner核验，rect ABI/原生0.3常量与25槽几何核对。专项新增首批0/5→5/5→完整6/6，追加可见提示点截图断言的重叠专项1/1；另外原领奖呈现6/6、成长8/8、启动4/4分别完成。三张GPU实际查看。不是新全套测试或真机验收。

场景130201文档/34998对象保留，130200语义一致，仅原Mission_manager空提示引用变为原GO891；无新增/删除/重映射。原3MonoScript meta/冻结Main/native/metadata与试玩主备份SHA保留，回归覆盖旧GPU前另存并还原原图。当前正常场景干净EditMode/Persist=true/无存档覆盖/无输入覆盖/无缺脚本/无活动测试，可直接Play。

原提示DOTween124051循环缩放、完整I2/任务排序、顺序锁拒领提示跳回、四处HUD、离线模拟/可信时间/商业与后台、其它特效/Player与真机仍待办；fullGameComplete=false。服务器时钟/启动事件仍为本地Bind适配，关窗取消本地协程与完整原服务分开记录。

'''
p=rp/'RECOVERY_PROGRESS.md';s=p.read_text().replace('## 当前阶段：每日任务经验','## 历史阶段：每日任务经验',1);i=s.index('## 历史阶段：每日任务经验');p.write_text(s[:i]+progress+s[i:])
p=root/'README.md';s=p.read_text();old='本轮接回每日任务经验条回弹';assert old in s;s=s.replace(old,'上一轮接回每日任务经验条回弹',1);i=s.index('上一轮接回每日任务经验条回弹');p.write_text(s[:i]+'''本轮接回任务可领取蓝色提示点与2秒检查循环，打开任务窗口自动定位未领奖励，领奖后0.3秒平滑滚动到下一档，暂停/重开和重复绑定边界已验证。专项6/6、额外可见提示专项1/1（重叠）、原领奖呈现6/6、成长8/8、启动4/4分别完成；原资产和试玩存档保留，场景只补一处原引用。完整动画/语言/离线与商业服务/真机恢复仍待办，详见规则38和当前验证报告。

'''+s[i:])
p=rp/'REPRODUCE.md';p.write_text(p.read_text()+'''

## 任务提示与赛季奖励定位（规则38）

1. 保存 `mission-navigation-before` 场景/4源码/主备份指纹和文档；`prepare_mission_navigation.py`只读冻结Main提取原manager124352、提示891、Scroll125462与25槽坐标，不改资产。
2. `select_native_methods.py mission-navigation`、匹配只读Ghidra导出16业务/状态机+6异常辅助；核验3owner、rect ARM64返回寄存器及preferred0x106c190的0.3float。先跑独立导航5失败，随后实现4源文件中的循环/选择器/成功领奖滚动。Refresh确认实际类型，绝对路径`mission_navigation_integrate.cs`用延后Editor API只补一次原提示引用。此接线工具拒绝已接线；不要反复执行。
3. 原5专项通过后补Owner disable/rebind/VIP/Luxury边界，完整6/6。只追加activeInHierarchy/提示GPU断言后聚焦Alert1/1；生产未变，保留源夹具前后哈希，不能算作7个不同用例。分别跑原呈现6、成长8、启动4，读取每批completed计数，保留其start/status。测试SceneLoaded覆盖独立目录且先于Start，不写用户存档。旧GPU复制checkpoint/visual；回归新帧另存`mission-navigation-regression-*`后按原hash恢复旧图。
4. 三GPU实际查看；`audit_mission_navigation_scene.py`证明仅124352的0→891引用；`audit_mission_navigation_preservation.py`验证冻结输入/主备份/meta及当前源。最后eval_file执行handoff、独立actual_editor和console，并记录空runner；证据完整后才执行finish_mission_navigation_reports.py。无Player/设备/Git交付。
''')
print(json.dumps({'tests':tests,'sceneObjects':h['objects'],'scopeComplete':False},ensure_ascii=False))
