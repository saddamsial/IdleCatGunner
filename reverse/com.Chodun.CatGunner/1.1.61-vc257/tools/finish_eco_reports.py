"""Only publish the latest recovery checkpoint after all required evidence passes."""
from pathlib import Path
from datetime import datetime, timezone
import json
R=Path(__file__).resolve().parents[1]; root=R.parents[2]; reports=R/'reports'
def load(name): return json.loads((reports/name).read_text())
tests={}
for name,report,total in [('eco','live-eco-mode-final-status.json',6),('onboarding','live-eco-onboarding-final-status.json',5),('input_feedback','live-eco-forest-feedback-status.json',4),('startup','live-eco-startup-status.json',4)]:
    d=load(report)['data']['result']; assert d['status']=='completed' and d['summary']['passed']==d['summary']['total']==total and d['summary']['failed']==0, report
    tests[name]={'report':report,**{k:d[k] for k in ['status','duration','summary']}}
h=load('eco-mode-editor-handoff.json');a=load('eco-mode-source-and-user-save-audit.json');diff=load('eco-mode-scene-document-diff.json');console=load('eco-mode-final-console.json');runner=load('eco-final-runner-state.json')['data']['result']['result']
assert h['readyForUserPlay'] and not h['playing'] and not h['dirty'] and h['missingScripts']==0 and h['objects']==34790
assert diff['newOriginalObjects']==52 and diff['preservedExistingIdentities']==129129 and diff['semanticallyUnchangedExistingDocuments']==129125 and len(diff['intentionalExistingChanges'])==4 and diff['removedExistingObjectsOrComponents']==0
assert all(r['unchanged_from_turn_start'] for r in a['user_save'])
assert console['counts'][0]==0 and not any(runner[k] for k in ['playing','changing','compiling','updating','runs'])
evidence={'contract':'original-eco-mode-contract.json','rules':'original-game-rules/33_ECO_MODE_AND_SETTINGS_FLOW.md','tests':tests,'boundary':'Four separate completed runs, no new full assembly or Player/device run. First tutorial run4/5 failed due wrong control-name assertion; final entire5/5 rerun retained separately. First eco5/5 is earlier scope, final6/6 includes five actual mode entries.','native_business_exports':4,'native_exception_exports':6,'native_reused_methods':8,'original_new_objects':52,'local_tween_presenters':2,'scene_audit':'eco-mode-scene-document-diff.json','scene_before_sha256':a['scene_before_sha256'],'scene_sha256':a['scene_sha256'],'gpu':['visual/eco-mode-original-mask-gpu.png','visual/eco-mode-return-forest-gpu.png','visual/eco-restored-settings-gpu.png'],'gpu_inspection':'Actual Editor GPU frames viewed; original selected cat/pattern/colors/settings controls visible. No speaker/power/physical-touch or full pixel-parity claim.','natural_combat':'Default original Gun0 with an isolated archive: hidden camera, no joystick input, actual30->29 trees, movement/projectiles/income/timer continue; no target HP/positions/damage/timer injection.','source_audit':'eco-mode-source-and-user-save-audit.json','handoff':'eco-mode-editor-handoff.json','console':'eco-mode-final-console.json','console_timeout_archive':'eco-mode-console-before-clear.json','console_classification':'eco-mode-console-classification.json','runner':'eco-final-runner-state.json','scope_complete':False}
v=load('VERIFICATION.json');v['updated_utc']=datetime.now(timezone.utc).isoformat();v['scope_complete']=False;v['current_client_scene_sha256']=a['scene_sha256'];v['eco_mode_evidence']=evidence
v['pending']='OfflineProgressManager/OfflineProgressSimulator and offline relic consumer, missing relic table row300, six absent tutorial HUD controls, remaining UI/effects/localization and numeric consumers, online/cloud/SDK/trusted-time, Player/device/power-consumption acceptance. Eco mode, ordinary settings page and five-mode entry exit now restored.'
(reports/'VERIFICATION.json').write_text(json.dumps(v,ensure_ascii=False,indent=2)+'\n')
(reports/'eco-mode-acceptance-summary.json').write_text(json.dumps({'tests':tests,'editor':h,'scene_audit':diff,'user_save':a['user_save'],'scope_complete':False},ensure_ascii=False,indent=2)+'\n')
text='''## 当前阶段：省电模式与设置流程（2026-10-11）

接回原省电按钮、遮罩与所选皮肤小猫。隐藏原 Main Camera 但继续自动移动/射击、树死亡收入和倒计时；只抑制射击音效调用，不改游戏速度、FPS、奖励或持久化 Eco 状态。再次按原省电按钮退出；原五种模式进入前的 EcoMode_Off 消费链已接回，实际进入及返回均检查。

原设置入口、页面及关闭流程现可在正常客户端使用，BGM/SFX/震动开关接回原六个 ON/OFF 对象，既有本地偏好桥保留。原图案滚动及两项猫缩放/文字移动参数接回，两个 Tween 是明确的本地播放适配。52个原对象通过 Editor API 合并，原资源/GUID保留；云存档、支付恢复、兑换和邮件入口不模拟服务。

最终独立运行：省电专项6/6、初始教程5/5、真实输入/纸币/数字反馈4/4、启动4/4，具体各次时长见 VERIFICATION。首次教程4/5由于验证断言把省电按钮写成设置按钮，修正原列表后重新完整5/5；首次省电5/5早于五模式检查，不替代最终6/6。不拼接为全量通过。实际GPU图已读取，原猫/图案/绿色省电按钮与音频设置窗口可见，原默认Gun0在独立档案隐藏画面时自然击毁一棵原树并发收入。

129129项原文档身份全部保留，129125项在 Unity 自动fileID重排后语义一致，允许变化为三个原父Transform子节点列表及教程EcoMode引用；新增52原对象/两个本地Tween。正常工作场景34790对象、零缺失脚本；EditMode/Persist=true/无存档及输入覆盖/脏场景/活动任务。用户主备份SHA与轮前一致，三冻结输入/原图/meta复核。未做Player/Git/真机或功耗验收；其它功能仍待恢复。

'''
p=reports/'RECOVERY_PROGRESS.md';s=p.read_text().replace('## 当前阶段：遗物跳波与原结算背景滚动','## 历史阶段：遗物跳波与原结算背景滚动',1);i=s.index('## 历史阶段：遗物跳波');s=s[:i]+text+s[i:];p.write_text(s)
p=root/'README.md';s=p.read_text().replace('本轮接回遗物跳波','上一轮接回遗物跳波',1);i=s.index('上一轮接回遗物跳波');s=s[:i]+'''本轮恢复原省电模式和正常设置流程：隐藏画面仍自动战斗，原按钮退出，进入五种其它模式前自动恢复相机；BGM/音效/震动三个开关可点，省电猫与文本的原参数动画使用明确的本地播放适配。最终专项6/6、教程5/5、输入反馈4/4、启动4/4分别完成；用户主备份档案保持。完整恢复仍未完成，详见规则33及当前验证报告。

'''+s[i:];s=s.replace('7处其它HUD仍待接入','6处其它HUD仍待接入');p.write_text(s)
p=reports/'REPRODUCE.md';s=p.read_text();s+='''

## 省电模式与设置流程（规则33）

1. 保存轮前主场景、相关脚本及用户主备份hash。matching native scope为 `eco-mode-panel`，查询/别名生成使用select_native_methods.py，ExportSelectedMethods.java搭配verified-noreturn.tsv只读导出；4业务+6异常共10行必须completed。export_eco_contract.py额外验证Cat.Attack、Scrolling及五种Game_Enter，三冻结输入、原资源/meta和用户保存哈希。
2. prepare_eco_settings_slice.py只用于首次生成未存在的输入场景，不覆盖工作工程。Editor EcoSettingsClientEditor.Integrate只在干净正常EditMode执行，搬入52原对象、修复外部Camera/原层级顺序、按实际原Tutorial列表补Eco按钮；RestoreAnimations只补两项源DOTween参数的本地播放适配。两者禁止重复安装；CLI超时先确认实际场景/报告/组件状态，禁止盲目重做。
3. audit_eco_scene.py读取checkpoint与当前场景，以原层级名/同名序号/组件类型及Script GUID恢复身份映射，然后验证所有原字段。Unity自动localID碰撞重排必须纳入；不能仅凭fileID文档SHA变动判断原对象被改。仅允许三个父Transform列表与一个Tutorial引用业务变化。
4. 稳定编译后打开RecoveredTarget，顺序异步PlayMode过滤OriginalEcoModeTests、OriginalOnboardingTests、OriginalForestFeedbackTests、OriginalStartupTests，filter_type=testName。每项先持久化completed结果并确认Editor无内部TestRun/转换/编译，才能开始下一组。临时档案及nonserialized PersistPreferences=false隔离用户；真实鼠标边沿通过StandaloneInputModule。自然战斗使用默认Gun0，五模式检查调用各自实际Game_Enter及Game_Exit。
5. 检查三幅eco GPU图，eco_handoff.cs恢复正常场景并落盘交接，读取控制台和runner状态，重新export_eco_contract.py核对用户档案及当前SceneSHA。finish_eco_reports.py只在最终6/5/4/4四组均实际完成、零错误、场景审计和用户档案通过时发布当前状态；没有新全量、Player、Git或物理设备结果。
''';p.write_text(s)
print(json.dumps({'tests':tests,'objects':h['objects'],'user_saves_unchanged':True,'scope_complete':False},ensure_ascii=False))
