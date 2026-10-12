"""Publish the separately completed Rule35 batches and audited playable handoff."""
from pathlib import Path
from datetime import datetime,timezone
import json
R=Path(__file__).resolve().parents[1];root=R.parents[2];rp=R/'reports'
def load(n):return json.loads((rp/n).read_text())
tests={}
for name,report,total in [('daily_check','live-daily-check-final-status.json',6),('onboarding','live-daily-check-onboarding-status.json',5),('eco','live-daily-check-eco-status.json',6),('feedback','live-daily-check-feedback-status.json',4),('startup','live-daily-check-startup-status.json',4)]:
 d=load(report)['data']['result'];assert d['status']=='completed' and d['summary']['total']==d['summary']['passed']==total and d['summary']['failed']==0,report
 tests[name]={'report':report,**{k:d[k] for k in ['status','duration','summary']}}
h=load('daily-check-editor-handoff.json');a=load('daily-check-preservation-audit.json');diff=load('daily-check-scene-document-diff.json');console=load('daily-check-final-console.json');runner=load('daily-check-final-runner.json')['data']['result']['result'];refs=load('daily-check-reference-audit.json')
assert h['readyForUserPlay'] and h['objects']==34995 and h['missingScripts']==0
assert diff['newOriginalObjects']==142 and diff['preservedExistingIdentities']==129628 and diff['semanticallyUnchangedExistingDocuments']==129624 and len(diff['intentionalExistingChanges'])==4
assert all(x['unchanged'] for x in a['user_saves']+a['frozen_inputs'])
assert not refs['missingAssetGuids'] and not refs['invalidInteractiveCallbacks'] and refs['rewardMarkerReferences']
assert console['counts'][0]==0 and not any(runner[k] for k in ['playing','changing','compiling','updating','runs'])
evidence={'contract':'daily-check-recovery-contract.json','rules':'original-game-rules/35_DAILY_CHECK_REWARDS_AND_UI.md','tests':tests,'boundary':'Five separate completed runs; no fresh full assembly, Player or device result. Initial zero-case discovery, 4/5 failing shooting-mute fixture assumption, and subsequent 5/6 transient input marker failure are retained. Diagnostic input rerun1/1 and full pre-wallet6/6 are separate historical runs. Original DailyCheck has no Mute_Panel.','native_business_methods_analyzed':21,'exception_helper_export_rows':6,'new_original_objects':142,'scene_audit':'daily-check-scene-document-diff.json','source_save_audit':'daily-check-preservation-audit.json','references':'daily-check-reference-audit.json','handoff':'daily-check-editor-handoff.json','console':'daily-check-final-console.json','runner':'daily-check-final-runner.json','scene_sha256':a['scene_sha256'],'gpu':['visual/daily-check-original-before-claim-gpu.png','visual/daily-check-original-after-claim-gpu.png'],'gpu_inspection':'Actual before/after first-day claim GPU images viewed; source Korean UI and claimed marker retained. No device input, original side-by-side or ParticleImage animation acceptance.','trusted_clock_available':False,'scope_complete':False}
v=load('VERIFICATION.json');v['updated_utc']=datetime.now(timezone.utc).isoformat();v['scope_complete']=False;v['current_client_scene_sha256']=a['scene_sha256'];v['daily_check_evidence']=evidence;v['pending']='OfflineProgressManager/Simulator and offline relic, relic row300, four absent tutorial HUDs (Buff/Auto/Shop/Rank), other UI/FX/I2, trusted time, affiliate and purchase providers, WeeklyShop fulfillment, Player/device/original fidelity acceptance.'
(rp/'VERIFICATION.json').write_text(json.dumps(v,ensure_ascii=False,indent=2)+'\n')
(rp/'daily-check-acceptance-summary.json').write_text(json.dumps({'tests':tests,'editor':h,'scene_audit':diff,'save_audit':'daily-check-preservation-audit.json','scope_complete':False},ensure_ascii=False,indent=2)+'\n')
progress='''## 当前阶段：每日签到原界面与七天领奖（2026-10-11）

新增142原对象，原日历HUD、七格奖励、可领/已领标记、关闭/重开接回，教程引用7/11。七天70/200/400/600/800/1000/1500钻按原数组执行，按顺序/每日本地日期一次领取，普通钱包与累计账本、第七天后的UI循环重置、存档重载接入。原签到没有Mute_Panel；不会为该窗口新增静音行为。原入场BounceStart、按钮BounceBtn及奖励/拒领声音执行。

签到专项6/6、教程5/5、省电与模式6/6、真实森林输入/伤害纸币4/4、启动4/4，各自独立完整结果见VERIFICATION。初始零用例不是通过，新增测试协程编译错误诊断已保留；首个非零4/5中的错误静音假设修正；随后5/6的单次输入标记失败、独立输入1/1与再跑6/6均保留，不拼接为通过。截图发现弹窗余额未绑定后已接通原Currency事件并补充领奖/关闭后变动/重开断言。两张实际GPU已查看，真实输入经StandaloneInputModule派发、钱包数字和第一天标记更新。不是物理触屏或完整原像素验收。

129628项已有场景身份全部保留，129624项语义一致，4项明确改动仅两父列表、Tutorial签到引用、客户端绑定。34995对象/零缺脚本，原两份meta和必需资源引用核验，三冻结输入/用户主备份SHA与轮前相同。交接正常场景EditMode/Persist=true/无测试输入或存档覆盖/无活动任务。

本地日期与延后教程完成弹出是离线适配；可信校时、ForceCheck、推广奖励、8颗钻石ParticleImage吸引特效、8项DOTween和3项I2组件仍待恢复。完整客户端、离线模拟、四处HUD及Player/真机未完成；未提交/推送Git或构建Player，scope_complete=false。

'''
p=rp/'RECOVERY_PROGRESS.md';s=p.read_text().replace('## 当前阶段：钻石存钱罐','## 历史阶段：钻石存钱罐',1);i=s.index('## 历史阶段：钻石存钱罐');p.write_text(s[:i]+progress+s[i:])
p=root/'README.md';s=p.read_text().replace('本轮接回钻石存钱罐','上一轮接回钻石存钱罐',1);i=s.index('上一轮接回钻石存钱罐');p.write_text(s[:i]+'''本轮接回每日签到原日历按钮、七天奖励与领取标记，新增142原对象；领奖后钱包、累计次数和重启存档接通。同日本地日期不能重复领，第七天后下一天打开才重置轮次。专项6/6、教程5/5、省电6/6、森林输入反馈4/4、启动4/4分别完成，用户存档保持。可信联网时间、推广奖励、钻石吸引粒子与部分动画/本地化尚未恢复，详见规则35/当前验证报告。

'''+s[i:])
p=rp/'REPRODUCE.md';p.write_text(p.read_text()+'''

## 每日签到（规则35）

1. daily-check-before保存工作场景、源代码与独立用户存档hash。select_native_methods.py daily-check；匹配Ghidra只读导出native-daily-check-reviewed，27行包括21业务+6辅助完整，核验匹配libil2cpp/metadata/Main。
2. prepare_daily_check_slice.py仅一次生成新输入场景、保留两份原meta；Unity delayCall执行DailyCheckClientEditor.Integrate一次。移动原DailyCheck/DailyCheck_Btn两个分支、新增142原对象、原Sibling排序和Tutorial引用重接；推广与测试按钮禁用。不要重复集成或编辑工作场景YAML。
3. 显式Refresh并确认测试类型实际载入；零用例报告不算通过。首个测试代码缺少yield，compiler诊断保留；修正后再次确认程序集。先RecoveredTarget隔离入口；逐组运行OriginalDailyCheckTests6、OriginalOnboardingTests5、OriginalEcoModeTests6、OriginalForestFeedbackTests4、OriginalStartupTests4。读取completed+非零摘要且runner为空后再下一组，不拼接为一次全量。
4. 原DailyCheck无Mute_Panel，保留原行为而修正夹具。所有档案/日期与自动弹出开关均隔离。查看领奖前后两张GPU，运行audit_daily_check_scene.py和audit_daily_check_preservation.py，引用审计以及daily_check_handoff.cs交接。最后独立确认实际scene并读daily_check_console.cs/runner；finish_daily_check_reports.py仅所有证据完整时发布。
''')
print(json.dumps({'tests':tests,'objects':h['objects'],'scope_complete':False},ensure_ascii=False))
