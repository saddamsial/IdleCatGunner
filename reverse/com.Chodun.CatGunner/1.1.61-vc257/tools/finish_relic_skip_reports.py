from pathlib import Path
from datetime import datetime,timezone
import json
R=Path(__file__).resolve().parents[1];root=R.parents[2];reports=R/'reports'
def load(name):return json.loads((reports/name).read_text())
tests={}
for name,report,expected in [('focused','live-relic-skip-focused-first-status.json',9),('forest','live-relic-skip-client-flow-status.json',8),('relic','live-relic-skip-relic-final-status.json',7),('currency','live-relic-skip-currency-final-status.json',6),('startup','live-relic-skip-startup-status.json',4),('content_unlock','live-relic-skip-content-unlock-status.json',5)]:
 d=load(report)['data']['result'];assert d['status']=='completed' and d['summary']['passed']==d['summary']['total']==expected and d['summary']['failed']==0,report
 tests[name]={'report':report,**{k:d[k] for k in ['status','duration','summary']}}
h=load('relic-skip-editor-handoff.json');a=load('relic-skip-source-and-user-save-audit.json');console=load('relic-skip-final-console.json');diff=load('relic-skip-scene-document-diff.json');jobs=load('relic-skip-final-runner-state.json')['data']['result']['result']
assert h['readyForUserPlay'] and not h['playing'] and not h['dirty'] and h['missingScripts']==0 and h['persist'] and h['saveOverride'] is None
assert len(h['skipBanners'])==3 and all(len(b['scrolls'])==1 and b['scrolls'][0]['x']==-.1 and b['scrolls'][0]['y']==0 and not b['active'] for b in h['skipBanners'])
assert all(s['unchanged_from_turn_start'] for s in a['user_save']) and console['counts'][0]==0 and not jobs['playing'] and not jobs['changing'] and not jobs['compiling'] and not jobs['runs']
assert {d['id'] for d in diff['changed']}=={'1184','1309','1986'} and len(diff['added'])==3 and not diff['removed']
v=load('VERIFICATION.json');v['updated_utc']=datetime.now(timezone.utc).isoformat();v['scope_complete']=False;v['current_client_scene_sha256']=a['scene_sha256']
v['pending']='OfflineProgressManager/OfflineProgressSimulator and relic offline rewards, missing relic table row300, seven absent tutorial HUD controls, remaining UI/effects/localization and numeric consumers, Player/device, trusted time/rankings/online/commercial. Forest relic Skip consumer and original win/fail/skip scrolling now restored. WeeklyShop fulfillment remains pending.'
v['relic_skip_evidence']={'contract':'original-relic-skip-contract.json','rules':'original-game-rules/32_RELIC_SKIP_AND_SETTLEMENT_SCROLL.md','tests':tests,'test_boundary':'Six separate completed runs; no new full assembly run. Historical165/165 remains earlier evidence.','new_native_business_queries':3,'new_native_exception_queries':6,'reused_native_methods':6,'visuals':['visual/relic-skip-next-wave-gpu.png'],'visual_scope':'Actual Editor GPU screenshot read: Stage1-3, original Korean skip message, cyan stripes, original Gun5 cat and normal upgrade HUD. Independent original Gun5/Lv50 Skip fixture,30 naturally killed original trees, no target health/position/timer injection. Not device/pixel/hardware input acceptance.','natural_wave':'relic-skip-natural-wave-observation.json','scene_restoration':'settlement-scrolling-scene-restoration.json','scene_document_diff':diff,'audit':'relic-skip-source-and-user-save-audit.json','handoff':h,'user_save':a['user_save'],'console':console,'runner':jobs,'history':['settlement-scrolling-restoration-command.json','live-relic-skip-relic-status.json','live-relic-skip-currency-first-status.json','relic-skip-stale-test-request-cancelled.json','relic-skip-runner-clean-before-retry.json'],'history_boundary':'Initial test compile referenced Newtonsoft without assembly reference; fixed to JsonUtility before any test run, failed eval outputs retained. Relic first run had no persisted completed verdict before the next request; early currency request became stale running/no active job. Neither counted. Stale request cancelled, final seven-case relic and six-case currency runs independently completed; later starts gated on completed status and stable Editor.','scope_complete':False}
v['currency_feedback_evidence']['historical_scope_note']='Rule31 results retained; forest progression and the three original settlement scrolls follow in relic_skip_evidence.'
v['relic_evidence']['historical_scope_note']='Original relic inventory/value/UI slice retained; Skip consumer now verified separately in relic_skip_evidence. Offline/missing table300 remain pending.'
v['acceptance']['implemented_slice_playmode']='; '.join('%s %s/%s (%ss)'%(k,t['summary']['passed'],t['summary']['total'],t['duration']) for k,t in tests.items())+'. Separate completed runs, not a new full suite.'
v['acceptance']['shooting_boundary']=v['acceptance']['shooting_boundary'].replace('Relic table-Lv300/offline/skip consumers unaccepted','Relic table-Lv300/offline consumers unaccepted; forest Skip consumer verified')
v['acceptance']['relic']=v['acceptance']['relic'].replace('offline/skip consumers,','offline consumers pending; forest Skip verified in relic_skip_evidence;')
v['acceptance']['forest_relic_skip']='Native one-wave skip strictly below old historical maximum; actual Gun5 natural30-tree clear, one win mission and no skipped-wave rewards; original next-wave notification and three RawImage scrolls. Offline rewards remain pending.'
v['acceptance']['visual_slice']='Original forest skip banner and animated pattern inspected on GPU; previous money/diamond evidence retained. No full pixel/Player/device acceptance.'
(reports/'VERIFICATION.json').write_text(json.dumps(v,ensure_ascii=False,indent=2)+'\n')
summary='、'.join('%s%s/%s（%s秒）'%({'focused':'跳波专项','forest':'森林流程','relic':'遗物','currency':'货币反馈','startup':'启动','content_unlock':'内容解锁'}[k],t['summary']['passed'],t['summary']['total'],t['duration']) for k,t in tests.items())
text='''## 当前阶段：遗物跳波与原结算背景滚动（2026-10-11）

接入已解锁Skip遗物的原森林胜利消费：先正常进一波，再取一次随机数，概率严格小于原累计值且候选关卡严格小于旧历史最远进度才额外跳一波。不能连锁，不把概率钳制到100%。只结算实际清波的一次任务和真实树死亡收入，没有跳过波的额外金币/钻石/任务。待提示非序列化；原跳波通知在下一波开始播放，冷重载不补播、不多发奖励。本地Restart/模式切换清理过渡提示明确为兼容守卫。

恢复胜利、失败和跳波三个原Scrolling组件：对象1184/1309/1986，原速度(-0.1,0)、Pattern纹理及26.2×1的UV。按scaled deltaTime累加位置，暂停/关闭时停止，重开不归零。原Animator/TMP/图片/几何/Raycast保持；逐对象文档校验仅三个组件列表改变、三份MonoBehaviour新增，其余129123份原场景文档逐字节保持。

匹配六项既有C/ASM消费链和三项新Scrolling方法；新查询3业务/6异常辅助共9行完成。专项9/9，其中原Gun5和原Lv50遗物的独立档案自然击毁30棵原树后Stage1-1→Stage1-3，未改树血量/位置/计时。实际GPU图已读取：原韩文青色条纹跳波提示、HUD Stage1-3、小猫/原枪械和升级面板可见。

独立回归：'''+summary+'''。各自完整报告，不合并为新的全量运行。初次独立测试JSON依赖编译问题与测试请求提前切换造成无完整结果的两组留痕；清理陈旧请求后重跑，两组之前状态不算通过，最终后续组按完成报告及稳定Editor顺序运行。

正常RecoveredClient恢复EditMode/Persist=true/无存档覆盖/输入覆盖/脏场景/活动测试任务，34738对象、零缺失脚本。用户主/备份与轮前SHA一致；三冻结输入及原提示动画/图片/meta保持。未重置或恢复用户档案、未构建Player/提交/推送Git。离线收益、缺表最高级、七处教程HUD、其余UI/特效/本地化和在线/真机边界仍待完成，scope_complete=false。

'''
p=reports/'RECOVERY_PROGRESS.md';s=p.read_text();s=s.replace('## 当前阶段：金币、采矿钻石反馈与普通奖励计数','## 历史阶段：金币、采矿钻石反馈与普通奖励计数',1);i=s.index('## 历史阶段：金币');s=s[:i]+text+s[i:]
s=s.replace('完整原Main生命周期、完整文字管理器/剩余树木特效、非中性遗物跳波、付费计时权益','完整原Main生命周期、完整文字管理器/剩余树木特效、付费计时权益').replace('离线与跳关消费者、300缺表边界','离线消费者、300缺表边界').replace('遗物离线跳关/缺表最高级','遗物离线/缺表最高级')
s=s.replace('五波到下一关与超时同波重试 |','五波到下一关与超时同波重试、原遗物旧进度额外跳波/结算滚动 |').replace('原菜单详情分页/攻击暴击金币移动重生 |','原菜单详情分页/攻击暴击金币移动重生/旧进度跳波 |')
p.write_text(s)
p=root/'README.md';s=p.read_text();s=s.replace('本轮新增树木金币奖励飘字','上一轮新增树木金币奖励飘字',1);i=s.index('上一轮新增树木金币奖励飘字');s=s[:i]+'''本轮接回遗物跳波：清完一波后，只能在历史旧进度内额外跳过一波；原跳波动画在下一波开始出现。胜利、失败与跳波提示的原条纹背景滚动已恢复，不改变原图/动画/GUID。真实自动战斗与存档专项9/9通过，其它独立回归详见规则32和VERIFICATION；用户试玩存档保持不变，完整恢复仍未完成。

'''+s[i:];s=s.replace('离线/跳关效果仍待恢复','旧进度跳波已接入，离线效果仍待恢复').replace('遗物离线/跳关及缺表最高级','遗物离线及缺表最高级');p.write_text(s)
p=R/'original-game-rules/19_RELICS.md';s=p.read_text();note='\n后续进展：普通派遣/核心产出见规则20，森林跳波消费与原提示滚动见规则32。上述待恢复条目和123/123是本切片历史状态；离线与缺表最高级仍待恢复。\n';p.write_text(s+note if note.strip() not in s else s)
p=reports/'original-relic-client-contract.json';d=json.loads(p.read_text());d['followup_skip_consumer']='Forest Skip consumer now restored and independently verified; see original-relic-skip-contract.json / Rule32. Historical excluded statement below predates that follow-up. Offline consumer remains pending.';p.write_text(json.dumps(d,indent=2)+'\n')
p=reports/'REPRODUCE.md';s=p.read_text();s+='''

## 遗物跳波与结算滚动（规则32）

1. 从本轮checkpoint保存原场景/脚本/用户主备份；matching native scope `settlement-scrolling` 使用既有select_native_methods.py、ExportSelectedMethods.java、verified-noreturn.tsv及对应references.tsv。新native-settlement-scrolling-reviewed必须9/9完成（3业务+6辅助）。复用v4 Game_Win/Game_Start/Game_Fail/Loading、StageAdvance和Relic.Value_Reload并重验输入16字节和边界。
2. `tools/export_relic_skip_contract.py`核验三冻结输入、原提示动画/Pattern/script meta和用户轮前存档SHA；不执行旧切片生成器。新Scrolling保留原GUID，`tools/restore_settlement_scrolling.cs`通过eval_file/Editor API只补三个原组件。已有恢复工程可重复运行此脚本，但需EditMode/RecoveredClient/干净测试状态。
3. `tools/audit_relic_skip_scene.py`只读比较checkpoint与当前YAML文档：仅1184/1309/1986的GameObject组件列表和三项新增MonoBehaviour允许变化，原129123份其它文档保持。不得手改场景YAML。
4. 完成导入/编译后，先打开RecoveredTarget隔离入口，顺序运行PlayMode过滤OriginalRelicSkip、OriginalClientFlowTests、OriginalRelicTests、OriginalCurrencyFeedbackTests、OriginalStartupTests、OriginalContentUnlockTests，filter_type=testName、async_tests=true、绝对project-path。每组都先持久化completed test_status，并确认Editor不在PlayMode转换/无TestRun后才启动下一组；未完成状态不能发下一run_tests。原Gun5/Lv50/historic100仅独立临时档案，永不改用户存档。规则专项9、森林8、遗物7、货币6、启动4、解锁5分别记录，不相加成全量通过。
5. 原GPU图来自自然波清完后的下一波0.35秒，实际读取`visual/relic-skip-next-wave-gpu.png`。合成Rule32只是瞬态标志，存档仅保留推进状态/原收益；本地Restart/模式取消行为注明兼容适配。
6. `tools/relic_skip_handoff.cs`恢复正常EditMode工程并写交接，`relic_skip_console.cs`读控制台，`export_relic_skip_contract.py`重新检查存档/输入，记录final-runner-state。`finish_relic_skip_reports.py`只在六组实际完成、档案保持、场景/控制台/内部任务满足交接时更新报告。脚本错误和无活动任务的陈旧异步请求分别保留，不把它们计为通过。未请求Player/Git/真机验收。
''';p.write_text(s)
print(summary)
