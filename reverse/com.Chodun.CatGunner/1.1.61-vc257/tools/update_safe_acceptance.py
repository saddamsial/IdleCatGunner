"""Accept completed ordinary Safe evidence without replacing earlier recovery history."""
from pathlib import Path
import json,datetime
R=Path(__file__).resolve().parents[1];root=R.parents[2];reports=R/'reports'
def read(n):
 d=json.loads((reports/n).read_text());return d.get('data',{}).get('result',d)
def write(p,d):p.write_text(json.dumps(d,ensure_ascii=False,indent=2)+'\n')
f=read('live-safe-focused-final-status.json');a=read('live-safe-assembly-final-status.json')
h=read('safe-editor-handoff.json')['result'];v=read('safe-original-preservation.json');u=read('safe-user-save-after-tests.json');g=read('safe-gpu-inspection.json')
assert f['status']=='completed' and f['summary']==dict(total=7,passed=7,failed=0,skipped=0,inconclusive=0)
assert a['status']=='completed' and a['summary']==dict(total=138,passed=138,failed=0,skipped=0,inconclusive=0)
assert v['frozen_inputs_unchanged'] and v['original_metas_verified']==4 and u['whole_turn_hashes_unchanged']
assert g['actual_pixels_inspected'] and g['ordinary_storage_and_safe_detail_visible'] and g['diamond_sprite_visible']
assert h['scene']=='Assets/Recovery/Scenes/RecoveredClient.unity' and h['version']=='6000.4.10f1'
assert h['persist'] and h['saveOverride'] is None and not h['visualClone']
assert not any(h[k] for k in ['playing','paused','compiling','dirty','safeUIActive','gunInfoActive','adventureMenuActive','relicInfoActive','relicDrawActive'])
assert h['timeScale']==1 and h['canvases']==1 and h['missingScripts']==0 and h['safeBound'] and h['safeFieldsValid'] and h['safeSlots']==16
p=reports/'VERIFICATION.json';d=json.loads(p.read_text());d['scope_complete']=False;d['updated_utc']=datetime.datetime.now(datetime.timezone.utc).isoformat();m=d['unity_playmode']
if m.get('latest_live_editor_assembly_run',{}).get('report')!='live-safe-assembly-final-status.json':m['prior_adventure_live_editor_assembly_run']=m.get('latest_live_editor_assembly_run',{})
m['latest_live_editor_assembly_run']={'report':'live-safe-assembly-final-status.json',**a}
d['acceptance']['implemented_slice_playmode']=f"138/138 actual recovery assembly cases, {a['duration']} seconds; not Player, phone or full backend acceptance"
d['acceptance']['safe']='Original ordinary 16-slot safe, 6 free slots, Stage_Value_Max>=390 gate, sequential 50..500 diamond expansion, inventory drag deposit, paused withdrawal, stale/AD/full/insufficient protection, original modal/HUD/diamond sprite, detail lock/unlock, independent save reload/rebirth/Raid. Focused7/7 and actual full138/138; 4original MonoScript GUIDs retained. English alert/independent profile/immediate grid adapters labeled. Original takeout spawn-bounce, short vibration, complete I2/alerts/all visuals/device pending.'
d['acceptance']['progression_boundary']=d['acceptance']['progression_boundary'].replace('UI locking unlock gates,','ordinary safe and weapon locking integrated; remaining UI gates,')
d['safe_evidence']={'contract':'original-safe-client-contract.json','literals':'safe-ui-literal-resolution.json','scene':'safe-client-scene-restoration.json','focused_first':'live-safe-focused-first-status.json','focused_second':'live-safe-focused-second-status.json','focused_final':'live-safe-focused-final-status.json','assembly':'live-safe-assembly-final-status.json','gpu':'safe-gpu-inspection.json','preservation':'safe-original-preservation.json','save':'safe-user-save-after-tests.json','handoff':'safe-editor-handoff.json','console':'safe-final-console-status.json','rules':'../original-game-rules/21_SAFE.md'}
d['current_client_scene_sha256']=v['working_scene_sha256'];d['client-final-console-status']=json.loads((reports/'safe-final-console-status.json').read_text());write(p,d)
p=root/'README.md';s=p.read_text();s=s.replace('**131/131 PlayMode通过**（808.07秒）',f"**138/138 PlayMode通过**（{a['duration']}秒）").replace('库存锁解锁、自动合成','自动合成').replace('本轮派遣恢复开始于EditMode','本轮保险箱恢复开始于EditMode')
bullet='- 保险箱与武器锁：第40关解锁，6格免费、逐格以50..500游戏钻石扩到16格；拖拽存入、满背包拒绝取出、取出自动锁定、防合成、详情解锁/解除、普通扩容与保存。独立存档重载、重生和团战读取保留。\n\n'
if bullet not in s:s=s.replace('森林的七种武器',bullet+'森林的七种武器',1)
s=s.replace('派遣选择取消/到期领取/核心抽取/档案重载与重生团战保留、早期','派遣选择取消/到期领取/核心抽取/档案重载与重生团战保留、保险箱存取扩容与锁定/独立重载重生团战、早期')
link='- [普通保险箱与武器锁定](reverse/com.Chodun.CatGunner/1.1.61-vc257/original-game-rules/21_SAFE.md)\n'
if link not in s:s=s.replace('- [普通派遣规则与边界]',link+'- [普通派遣规则与边界]',1)
p.write_text(s)
p=reports/'RECOVERY_PROGRESS.md';s=p.read_text().replace('## 当前续恢复：普通派遣','## 历史阶段：普通派遣',1)
section=f'''## 当前续恢复：普通保险箱与武器锁（2026-10-10）

原52条业务/协程及6条辅助查询均完成首16字节核验。第40关解锁、6免费/16总格、50..500逐格钻石扩容、原469对象界面切片、拖拽存入、满背包拒绝取出、取出自动pause、库存/装备详情锁定解除和保存已接入。4份原MonoScript meta/GUID保留。当前{h['objects']}对象/1Canvas/零缺脚本，通过Editor API整合，冻结Main/native/metadata未改。

专项一次7/7（{f['duration']}秒），完整恢复程序集一次138/138（{a['duration']}秒）。首轮5/7、第二轮6/7均保留，分别是原嵌套子按钮/菜单入口，以及锁按钮切换后等待UI帧的夹具修正。真实屏幕射线覆盖HUD存入、扩容、GunItem_Demo详情、满背包拒绝取出与取出自动锁；独立目录保存重载/重生/Raid读取、重复实体与获取计数不增、AD/陈旧/容量/不足钻石失败均通过。

试玩主/备份整轮SHA一致；pre-safe-client快照保留。Editor6000.4.10f1正常EditMode/Persist=true/无临时Override。两张GPU已实际查看，保留原韩文静态说明、钻石精灵、颜色和等级图；提示缺I2以英文适配。取出spawn-bounce、震动、完整提示生命周期/全视觉/真机仍待对照。自动合成为PlusPack.Is_Active(2)资格，未给档案伪会员。未构建Player或提交推送Git，全客户端scope_complete=false。

'''
if '## 当前续恢复：普通保险箱' not in s:s=s.replace('## 历史阶段：普通派遣',section+'## 历史阶段：普通派遣',1)
s=s.replace('| 枪械与合成 | 原65枪/16库存/3槽；普通抽取、同阶合成、装备/卸下/交换、收藏、普通队友和独立存档 | 锁定解锁、自动合成、完整教程、商业获取 |','| 枪械与合成 | 原65枪/16库存/3槽；普通抽取、同阶合成、装备/卸下/交换、保险箱/扩容/锁定解锁、收藏、普通队友和独立存档 | 自动合成、完整教程、商业获取、取出spawn-bounce |')
p.write_text(s)
p=R/'original-game-rules/21_SAFE.md';s=p.read_text().replace('当前完整恢复程序集回归进行中，结果只以live-safe-assembly-final-status.json实际完成报告为准。',f"同一完整恢复程序集138/138（{a['duration']}秒）实际完成报告为live-safe-assembly-final-status.json。试玩主/备份整轮SHA一致，正常Unity6入口交接；未构建Player、真机或Git提交推送。")
p.write_text(s)
p=R/'original-game-rules/00_INDEX.md';s=p.read_text();line='- [21 普通保险箱与武器锁](21_SAFE.md)：第40关、6/16格、钻石逐格扩容、存取自动锁定、详情解除和独立保存；商业自动合成/视觉反馈仍待恢复。\n'
if line not in s:s+='\n'+line
p.write_text(s)
p=reports/'REPRODUCE.md';s=p.read_text();section='''
## 2026-10-10 普通保险箱与武器锁

1. select_native_methods.py safe-client，52业务/协程+6辅助查询；matching arm64 SHA及首16字节、status.tsv全部完成后才分析。resolve_safe_literals.py从ELF RELA双指针及kind5 decoded metadata读取原价格和4提示键。
2. pre-safe-client保留旧场景/脚本/Editor/Tests与试玩主备份；prepare_safe_slice.py仅对未整合副本生成新469对象切片，源根2026/2027/1221，不覆盖已有切片。SafeClientEditor.ScheduleIntegrate通过Editor API合并共用祖先并重连，禁止对已整合场景重复合并；不手改工作场景YAML。
3. 先保存4份.cs再复制原.meta；验证与冻结ExportedProject字节一致。初始化短旧数组补-1到16，非法档案在修改前拒绝，并记录与native clamp/丢弃的适配差异。Safe状态加入原独立JSON档案，未读取原手机私有档案。
4. 从RecoveredTarget运行run_tests --mode playmode --filter OriginalSafeTests --filter_type testName --async_tests true --timeout180。所有sceneLoaded回调在Start前禁用Persist或指定唯一临时目录，不能改试玩档案。原GunItem_Demo子按钮遮住Safe_Slot父Button；点击实际子按钮。按钮SetActive切换需等待下一UI帧注册Graphic深度，不能将同帧无命中计作原操作失败。5/7、6/7、最终7/7分别保留。
5. 运行整个CatGunner.Recovery.PlayModeTests assembly async timeout1500，实际138/138见live-safe-assembly-final-status.json；此前131/131单独保留，不能加专项结果冒充完整运行。运行时不写Assets触发domain reload。partial-observation仅只读进度，不算完成证据。
6. 查阅两张safe-*-test-gpu真实图。verify_safe_preservation.py检查3冻结输入、4原meta和试玩主备份整轮SHA；测试结束退出Play/暂停、TimeScale1，打开并保存正常RecoveredClient，Persist=true且无Override/visualClone。safe_handoff_eval.txt复制为.cs再eval_file，读取16槽/原资源/零缺脚本/1Canvas与前序派遣遗物皮肤星级字段。
7. update_safe_acceptance.py仅接受实际专项7/7、整套138/138、GPU、保留和交接证据；旧update_adventure_acceptance.py发现safe_evidence拒绝回写历史验收。全客户端scope_complete=false；自动合成原PlusPack2未伪造、AD/商业服务仍排除。取出spawn-bounce/震动/完整I2与提示视觉、鱼类等后续恢复。
'''
if '## 2026-10-10 普通保险箱与武器锁' not in s:s+=section
p.write_text(s)
print('Accepted focused7/7 and actual full138/138; whole game remains incomplete')
