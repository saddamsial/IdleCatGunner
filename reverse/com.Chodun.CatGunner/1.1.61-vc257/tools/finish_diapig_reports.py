"""Publish only complete, separately recorded tests and audited normal handoff."""
from pathlib import Path
from datetime import datetime,timezone
import json
R=Path(__file__).resolve().parents[1];root=R.parents[2];reports=R/'reports'
def load(n):return json.loads((reports/n).read_text())
tests={}
for name,report,total in [('diapig','live-diapig-final-status.json',7),('onboarding','live-diapig-onboarding-status.json',5),('eco','live-diapig-eco-status.json',6),('feedback','live-diapig-feedback-status.json',4),('startup','live-diapig-startup-status.json',4)]:
 d=load(report)['data']['result'];assert d['status']=='completed' and d['summary']['passed']==d['summary']['total']==total and d['summary']['failed']==0,report
 tests[name]={'report':report,**{k:d[k] for k in ['status','duration','summary']}}
h=load('diapig-editor-handoff.json');a=load('diapig-source-and-user-save-audit.json');diff=load('diapig-scene-document-diff.json');console=load('diapig-final-console.json');runner=load('diapig-final-runner.json')['data']['result']['result']
assert h['readyForUserPlay'] and not h['playing'] and not h['dirty'] and h['missingScripts']==0 and h['objects']==34853
assert diff['newOriginalObjects']==63 and diff['preservedExistingIdentities']==129370 and diff['semanticallyUnchangedExistingDocuments']==129366 and len(diff['intentionalExistingChanges'])==4 and diff['removedExistingObjectsOrComponents']==0
assert all(r['unchanged_from_turn_start'] for r in a['user_save'])
assert console['counts'][0]==0 and not any(runner[k] for k in ['playing','changing','compiling','updating','runs'])
evidence={'contract':'original-diapig-contract.json','rules':'original-game-rules/34_DIAPIG_COUNTER_AND_LOCKED_UI.md','tests':tests,'boundary':'Five independent completed runs; no fresh full assembly/Player/device result. First focused5/7 fixture timing failures retained; final full7/7 waited original BounceStart entrance and async mode return. Counter rewards verified only in isolated models, normal UI remains locked because purchase provider is absent.','new_native_business_analyzed':18,'new_exception_helper_export_rows':12,'original_new_objects':63,'scene_audit':'diapig-scene-document-diff.json','scene_before_sha256':a['scene_before_sha256'],'scene_sha256':a['scene_sha256'],'gpu':[r['path'] for r in a['gpu']],'gpu_inspection':'Actual completed-entrance locked page and returned forest GPU viewed. Earlier incomplete entrance looked tiny; no layout override. Original static Korean/price texts retained; I2 interpolation and two banner rotations pending. No physical touch/pixel or paid-service proof.','source_audit':'diapig-source-and-user-save-audit.json','handoff':'diapig-editor-handoff.json','console':'diapig-final-console.json','runner':'diapig-final-runner.json','purchase_provider_available':False,'scope_complete':False}
v=load('VERIFICATION.json');v['updated_utc']=datetime.now(timezone.utc).isoformat();v['scope_complete']=False;v['current_client_scene_sha256']=a['scene_sha256'];v['diapig_evidence']=evidence;v['pending']='OfflineProgressManager/Simulator and offline relic, relic row300, five absent tutorial HUDs, remaining UI/FX/I2 localization, timed catch-up and purchase providers, WeeklyShop fulfillment, Player/device and original pixel/audio acceptance.'
(reports/'VERIFICATION.json').write_text(json.dumps(v,ensure_ascii=False,indent=2)+'\n')
(reports/'diapig-acceptance-summary.json').write_text(json.dumps({'tests':tests,'editor':h,'scene_audit':diff,'user_save':a['user_save'],'scope_complete':False},ensure_ascii=False,indent=2)+'\n')
progress='''## 当前阶段：钻石存钱罐原入口与普通计数规则（2026-10-11）

新增63原对象，接回原DiaPig HUD→锁定提示→关闭/重开，以及原入场BounceStart和Mute_Panel，教程控件现在6/11接通。原普通计数核：每60秒1/2钻、500上限、UTC/单调时钟较小值、余秒、满罐领取重置与普通钻石账本已核对原生并用独立计数器测试。生产访问状态固定为购买服务未配置/锁定，不冒充支付或授予权益；原两种去广告状态是解锁前置。原付费跳转及购买按钮不可用。原I2插值(锁定描述{0})、静态价文不是实时价格、两项付费横幅旋转未恢复，可信跨会话补算和实际购买解锁后的端到端计时/领取仍待接入。

五次独立完整运行：存钱罐7/7、教程5/5、省电及五模式6/6、实际输入/伤害纸币4/4、启动4/4；时长和文件见VERIFICATION。首轮5/7是点击早于原入场动画/模式异步返回的夹具失败，修正等待后完整重跑7/7，不拼接为一次全量。两张实际GPU已查看，截图完成入场后窗口正常。已存在129370项场景身份全部保留，129366项语义一致；4项明确变化为两个父层级子列表、教程引用和客户端绑定。原脚本meta/资源保留，当前34853对象/零缺失脚本。主/备份存档SHA与轮前一致，三冻结输入不变。

正常RecoveredClient恢复EditMode/Persist=true/无覆盖/暂停/编译/脏场景/运行测试。未做Player/Git/真机验收。离线模拟、5处HUD、其它UI/特效/本地化、遗物缺表、可信时间及线上商业流程等未完，scope_complete=false。

'''
p=reports/'RECOVERY_PROGRESS.md';s=p.read_text().replace('## 当前阶段：省电模式与设置流程','## 历史阶段：省电模式与设置流程',1);i=s.index('## 历史阶段：省电模式与设置流程');p.write_text(s[:i]+progress+s[i:])
p=root/'README.md';s=p.read_text().replace('本轮恢复原省电模式','上一轮恢复原省电模式',1);i=s.index('上一轮恢复原省电模式');s=s[:i]+'''本轮接回钻石存钱罐原HUD/锁定弹窗/关闭与教程引用，新增63原对象。普通计时、余秒、500上限和领取账本规则已恢复到独立计数器并测试；当前购买服务不可用，正常试玩保持锁定，不模拟购买解锁。专项7/7、教程5/5、省电6/6、输入反馈4/4、启动4/4各自完整完成，用户存档保持。I2插值、横幅旋转及解锁后的完整流程仍待接入，详见规则34/当前验证报告。

'''+s[i:];p.write_text(s)
p=reports/'REPRODUCE.md';s=p.read_text()+'''

## 钻石存钱罐（规则34）

1. 保存diapig-before checkpoint/hash，original-diapig-contract核验冻结输入。选择diapig-client16业务与diapig-access2只读访问方法，Ghidra只读导出并保留首次空引用文件失败日志；select_native_methods已修正0别名时不写空行。两组完整22/8行与首16字节核对；商业与可信时间provider不接入。
2. prepare_diapig_slice.py仅首次产生新输入场景，保留两原脚本meta，不覆盖已有场景。通过Editor delayCall执行DiaPigClientEditor.Integrate一次，合并63原对象/重接Tutorial原引用/禁用不支持的3动作；检查落盘报告，不重复安装。
3. 独立save override、RecoveredTarget启动，顺序跑OriginalDiaPigTests7、OriginalOnboardingTests5、OriginalEcoModeTests6、OriginalForestFeedbackTests4、OriginalStartupTests4。每组completed/0失败且runner无活动任务再启动下一组。实际点击等待原BounceStart入口完成，退出等已有异步流程完成，不修改源参数。
4. 查看两张diapig GPU，运行audit_diapig_scene.py及audit_diapig_preservation.py，所有旧身份/字段通过仅4项允许差异，原metas/用户两档案/冻结输入hash一致。eval_file tools/diapig_handoff.cs异步打开正常scene，等待交接文件，再确认实际EditMode并用diapig_console.cs/runner状态保存最终结果；finish_diapig_reports.py只在所有证据完整时更新最新状态。
''';p.write_text(s)
print(json.dumps({'tests':tests,'objects':h['objects'],'scope_complete':False},ensure_ascii=False))
