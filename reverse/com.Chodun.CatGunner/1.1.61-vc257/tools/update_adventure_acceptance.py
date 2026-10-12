"""Accept actual completed Adventure runs; preserve earlier recovery evidence."""
from pathlib import Path
import json,hashlib,datetime
R=Path(__file__).resolve().parents[1];root=R.parents[2];P=root/'reconstruction/CatGunnerUnityClient';reports=R/'reports'
if json.loads((reports/'VERIFICATION.json').read_text()).get('safe_evidence'):raise SystemExit('Newer Safe evidence present; preserve current acceptance instead of writing historical Adventure state')
def read(name):
 d=json.loads((reports/name).read_text());return d.get('data',{}).get('result',d)
def write(p,d):p.write_text(json.dumps(d,ensure_ascii=False,indent=2)+'\n')
full_name='live-adventure-assembly-final-status.json';focus_name='live-adventure-focused-final-status.json'
full=read(full_name);focus=read(focus_name);handoff=read('adventure-editor-handoff.json')['result'];saved=read('adventure-user-save-after-tests.json');preserved=read('adventure-original-preservation.json');gpu=read('adventure-gpu-inspection.json')
assert full['status']=='completed' and full['summary']==dict(total=131,passed=131,failed=0,skipped=0,inconclusive=0)
assert focus['status']=='completed' and focus['summary']==dict(total=8,passed=8,failed=0,skipped=0,inconclusive=0)
assert saved['whole_turn_hashes_unchanged'] and preserved['frozen_inputs_unchanged'] and preserved['original_metas_verified']==14
assert gpu['actual_pixels_inspected'] and gpu['map_and_relic_tabs_visible'] and gpu['reward_and_cancel_legible']
assert handoff['scene']=='Assets/Recovery/Scenes/RecoveredClient.unity' and handoff['version']=='6000.4.10f1'
assert handoff['persist'] and handoff['saveOverride'] is None and not handoff['visualClone']
assert not any(handoff[k] for k in ['playing','paused','compiling','dirty','adventureMenuActive','relicMenuActive','relicInfoActive','relicDrawActive'])
assert handoff['timeScale']==1 and handoff['missingScripts']==0 and handoff['canvases']==1
assert handoff['adventureBound'] and handoff['adventureFieldsValid'] and handoff['adventureTabs']==2 and handoff['adventureMaps']==5 and handoff['adventurePetChoices']==19 and handoff['adventurePetSlots']==3
assert handoff['relicCount']==15 and handoff['relicFieldsValid'] and handoff['skinCount']==25 and handoff['skinResourcesValid'] and handoff['starFieldsValid']
p=reports/'VERIFICATION.json';d=json.loads(p.read_text());u=d['unity_playmode'];current=u.get('latest_live_editor_assembly_run',{})
if current.get('report')!=full_name:u['prior_relic_live_editor_assembly_run']=current
u['latest_live_editor_assembly_run']={'report':full_name,**full};d['scope_complete']=False;d['updated_utc']=datetime.datetime.now(datetime.timezone.utc).isoformat()
d['acceptance']['implemented_slice_playmode']=f"131/131 actual recovery assembly PlayMode cases; {full['duration']} seconds; not Player/device/backend acceptance"
d['acceptance']['adventure']='Original ordinary3x5 maps,1/2/4/8/16h,weekdays,20tickets/4h charging,original15-row experience,3pet slots/19choices,entity locks,start/cancel/claim,single precision native truncation,4core wallets. Actual raycasts dispatch->claim->relic draw,closed-day claim,unique profile reload/rebirth/Raid. Original14MonoScript GUIDs retained. Local offline clock and neutral legacy migration labeled; original Pet_Dummy/Spine/RenderTexture preview/I2/all visuals/device/commercial pending.'
d['acceptance']['relic']=d['acceptance']['relic'].replace('dispatch core production/full Adventure/global unlock gate/I2/whole UI/device pending.','ordinary dispatch core production integrated; full Adventure preview/global unlock gate/I2/whole UI/device pending.')
d['acceptance']['progression_boundary']=d['acceptance']['progression_boundary'].replace('Spine pet animations/dispatch,','Spine pet animations/Adventure preview,')
d['acceptance']['shooting_boundary']=d['acceptance']['shooting_boundary'].replace('table-Lv300/dispatch/offline/skip consumers unaccepted.','table-Lv300/offline/skip consumers unaccepted; ordinary dispatch core production integrated.')
d['adventure_evidence']={'contract':'original-adventure-client-contract.json','scene':'adventure-client-scene-restoration.json','panel_order':'adventure-panel-order-repair.json','red':'live-adventure-red-status.json','focused_first':'live-adventure-focused-first-status.json','focused_second':'live-adventure-focused-second-status.json','focused_third':'live-adventure-focused-third-status.json','focused_final':focus_name,'full':full_name,'resumed_full_start':'live-adventure-assembly-resumed-start.json','interrupted_full':'adventure-interrupted-regression.json','gpu':'adventure-gpu-inspection.json','preservation':'adventure-original-preservation.json','save':'adventure-user-save-after-tests.json','handoff':'adventure-editor-handoff.json','commands':'adventure-command-history.json','checkpoint':'../checkpoints/pre-adventure-client'}
d['adventure_editor_handoff']=read('adventure-editor-handoff.json');d['current_client_scene_sha256']=hashlib.sha256((P/'Assets/Recovery/Scenes/RecoveredClient.unity').read_bytes()).hexdigest()
d['user_save_boundary']='Adventure continuation started in clean EditMode; main/backup whole-turn SHA unchanged. Earlier relic/skin and historical star preservation retained separately. No user rollback/reset/funding.'
write(p,d)
for name in ['original-adventure-client-contract.json','adventure-client-scene-restoration.json']:
 p=reports/name;x=json.loads(p.read_text());x['validation']={'focused':{'report':focus_name,**focus['summary'],'duration':focus['duration']},'full':{'report':full_name,**full['summary'],'duration':full['duration']},'visual_player_device':'Selected Editor GPU inspected; whole visual/Player/device unaccepted'};x['runtime_validation']='Actual focused8/8 and one complete131/131 run; ordinary dispatch slice only'
 if 'runtimeValidation' in x:x['runtimeValidation']=x['runtime_validation']
 write(p,x)
p=root/'README.md';s=p.read_text().replace('原导航按钮进入枪械库存、宠物、任务、重生、遗物、','原导航按钮进入枪械库存、宠物、任务、重生、派遣与遗物、').replace('原Spine动画与派遣仍待恢复。','原Spine动画仍待恢复，普通派遣占用已接入。').replace('派遣产核心、离线/跳关效果仍待恢复','普通派遣已能产核心，离线/跳关效果仍待恢复').replace('**123/123 PlayMode通过**（748.23秒）',f"**131/131 PlayMode通过**（{full['duration']}秒）").replace('遗物抽取升级/分页/自然伤害/重载重生团战、早期','遗物抽取升级/分页/自然伤害/重载重生团战、派遣选择取消/到期领取/核心抽取/档案重载与重生团战保留、早期').replace('本轮遗物恢复开始于EditMode','本轮派遣恢复开始于EditMode').replace('团战任务/联网服务、派遣、鱼类、','团战任务/联网服务、派遣宠物预览、鱼类、')
bullet='- 派遣：森林/沙漠/冻原各5地图，原星期与等级门禁、1/2/4/8/16小时时长、20张门票与每4小时充能；最多3只宠物、19格选择器、实体占用锁、取消无退款、到期核心与经验、原奖励弹窗及保存。已验证派遣→领取→遗物抽取；本机离线时钟为适配，原Spine/RenderTexture预览仍待恢复。\n\n'
if bullet not in s:s=s.replace('森林的七种武器',bullet+'森林的七种武器',1)
link='- [普通派遣规则与边界](reverse/com.Chodun.CatGunner/1.1.61-vc257/original-game-rules/20_ADVENTURE.md)\n'
if link not in s:s=s.replace('- [遗物规则与边界]',link+'- [遗物规则与边界]',1)
p.write_text(s)
p=R/'original-game-rules/00_INDEX.md';s=p.read_text().replace('派遣/离线/跳关/缺表最高级待恢复。','普通派遣产核心已接入，离线/跳关/缺表最高级待恢复。');line='- [20 普通派遣](20_ADVENTURE.md)：3组15地图、门票充能、宠物实体锁、取消与到期核心/经验、原选择/奖励弹窗及保存；预览/可信时间/全视觉待恢复。\n';
if line not in s:s+='\n'+line
p.write_text(s)
p=R/'original-game-rules/20_ADVENTURE.md';s=p.read_text().replace('最终专项与回归结果以 reports/live-adventure-* 实际报告为准，未完成前不标注通过。','最终专项8/8与完整131/131分别有实际完成报告；早先中断的完整运行未计为通过。');s+=f"\n最终专项8/8（{focus['duration']}秒），同一完整恢复程序集131/131（{full['duration']}秒）。首轮6/8、第二轮7/8、第三轮7/8独立保留，分别暴露runtime owner遗漏/夹具浮点预期、关闭点击点、合并的预览层顺序。原GO977六个孩子顺序经Editor API修复，未更改原资产。实际GPU已读取地图、出发、取消和领取，原第三槽静态Lv13与native内部7的差异按运行时标签Lv.8注明。试玩主/备份整轮SHA一致，正常Unity6入口交接；未构建Player、真机全视觉或Git提交/推送。\n";p.write_text(s)

p=reports/'RECOVERY_PROGRESS.md';s=p.read_text().replace('## 当前续恢复：15项遗物','## 历史阶段：15项遗物',1)
section=f"""## 当前续恢复：普通派遣（2026-10-10）

普通派遣原3组15地图、1/2/4/8/16小时、星期/等级门禁、门票20上限与4小时恢复、原15行经验表、3派遣槽与19个装备/库存选项、宠物实体占用、取消和到期核心经验已接入。原14份脚本meta/GUID保留，源1825对象与既有遗物共用祖先合并，当前33240对象/1Canvas/零缺脚本。原GO977的六个孩子顺序通过Editor API恢复，避免新预览层挡住旧遗物标签；未手改工作场景YAML。

专项独立8/8（{focus['duration']}秒），实际同一完整恢复程序集131/131（{full['duration']}秒）。原射线点击选择/出发/领取/遗物消费/取消，关闭日到期领取，按充能时间恢复门票、最大等级、失败事务、实体锁与重生/Raid往返保留已验证。首轮6/8、第二轮7/8、第三轮7/8分别保留：运行时owner/原单精度截断、关闭测试点击点、原节点顺序。Grade4一小时27核心为原FMUL/FCVTZS行为，不改成28。

试玩主/备份整轮SHA一致，原Main/native/metadata与14份meta哈希校验通过；pre-adventure-client快照保留。最终正常Unity6000.4.10f1入口、EditMode/Persist=true/无临时Override；未构建Player或提交推送Git。独立测试时钟推进是夹具，生产用本机DateTime.Now离线适配，不宣称可信服务器时间。原Pet_Dummy/Spine/RenderTexture预览仍隐藏，I2缺字为本地英文，原第三槽Lv13静态文本按native内部7显示Lv.8；全部视觉/真机/商业服务未验收。

"""
if '## 当前续恢复：普通派遣' not in s:s=s.replace('## 历史阶段：15项遗物',section+'## 历史阶段：15项遗物',1)
s=s.replace('| 遗物 | 原15项/核心保存消费/重复碎片升级/原菜单详情分页/攻击暴击金币移动重生 | 派遣产核心、','| 遗物 | 原15项/派遣产核心/核心保存消费/重复碎片升级/原菜单详情分页/攻击暴击金币移动重生 | ')
s=s.replace('原Spine、派遣、广告/付费流程','原Spine、派遣预览、广告/付费流程')
s=s.replace('| Adventure/Relic/Fish | 原合同/资产、存档结构 | 派遣/回收、票券恢复、遗物成长、钓鱼和库存流程 |','| Adventure/Relic/Fish | 普通派遣/取消领取/门票充能/实体锁/核心经验保存；原遗物消费成长 | 宠物预览、可信时间、遗物离线跳关/缺表最高级、钓鱼和库存流程 |')
p.write_text(s)
p=reports/'REPRODUCE.md';s=p.read_text();s+="""
## 2026-10-10 普通派遣续恢复

当前已经整合，勿重复合并RecoveredAdventure。冻结Main/native/metadata和14份脚本meta见adventure-original-preservation.json；快照pre-adventure-client保留旧工作场景/脚本及试玩主备份。

1. select_native_methods.py的adventure-client/dependencies/save-load/state分别生成142/16/10/9条包含重复辅助的查询；各自status.tsv完整、首16字节匹配后才导出合同。不将导出数量当作功能百分比。Ghidra使用verified-noreturn.tsv与native-*-references.tsv，原VA加0x100000。保留启动参数/缺文件失败历史。
2. export_adventure_contract.py仅在EditMode执行，读取原37组件、15经验行、2个metadata默认初始化blob、4核心图片；ctor的宠物槽0/2/7不与过时静态Lv13标签混同。ContinueLoad保留非空Exp表，非缺失档案不调用Exp_Balance_Reload替换。已接受extra-evidence不能被重新导出清除。
3. 只对未整合的新副本执行prepare_adventure_slice.py，根406/740/803/1419与祖先生成新的1825对象切片；拒绝覆盖已有源片。先保存.cs，再恢复匹配原.meta，避免Editor为不存在脚本重造GUID。现有工作场景修改仅用Editor APIs。
4. AdventureClientEditor.ScheduleIntegrate合并并CopySerialized/SerializedObject重连原33组件；RestorePanelOrder恢复原GO977六孩子顺序。RepairIntegratedPanelOrder仅用于已有整合的精确顺序修复，不重导主场景。保存虽可能超过IPC5秒返回timeout，必须检查持久修复报告/已保存场景，不能盲目重做。
5. Adventure_Enter_popup.Open建立原序列化为空的petSelect_popup.enter_popup运行时owner；奖励退出背景Button的中心被结果Panel遮挡，点击屏幕下部真实可用区域并要求Raycast最上层为该按钮。地图选择/手选宠物/出发/完成/取消/切遗物全部实际屏幕射线。保留原贴图/字体色彩，隐藏未恢复Pet_Dummy预览；广告、会员减时、购买核心/强制完成不可获得本地伪成功奖励。
6. 从RecoveredTarget隔离入口运行run_tests --mode playmode --filter OriginalAdventureTests --filter_type testName --async_tests true；sceneLoaded的Start之前设Persist=false或唯一临时目录。参数class无效，不能算测试。实际专项8/8，此前6/8、7/8、7/8保留各自结果；Grade4单精度27核心和关闭点误测独立说明。
7. 完整回归run_tests --mode playmode --filter CatGunner.Recovery.PlayModeTests --filter_type assembly --async_tests true --timeout1500，首次整套回归中断/无完成报告单独保留，重开同版本Editor再从隔离入口重跑；实际131/131报告为live-adventure-assembly-final-status.json。不能用历史123/专项相加代替同一次完整报告。测试期间不能写Assets触发domain reload。
8. 查看4张最终adventure-* GPU：标签、三地图、手选宠物/门票费用、取消无退款、领取核心经验；截图是独立夹具，不是真机全视觉。verify_adventure_preservation.py检查3冻结输入、14原meta、主/备份整轮SHA；正常EditMode、TimeScale1、无暂停，打开已保存RecoveredClient，Persist=true/无SaveFolderOverride/visualClone。adventure_handoff_eval.txt复制到.cs后用eval_file --file调用。
9. update_adventure_acceptance.py仅接受实际8/8与131/131、GPU读取、正常交接和SHA证据；旧update_relic_acceptance发现adventure_evidence拒绝历史回写。保留原遗物/皮肤/星级历史验收，scope_complete=false。

本轮不构建Player、不提交/推送Git；鱼类、自动合成、遗物离线/跳关、缺表最高级、全UI/Spine和真机、SDK/联网仍需继续恢复。
""";p.write_text(s)

print('Accepted actual focused8/8 and full131/131; whole client remains incomplete')
