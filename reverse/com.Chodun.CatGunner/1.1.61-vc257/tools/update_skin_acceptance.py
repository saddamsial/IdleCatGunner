"""Accept the actual completed skin continuation, preserving historical reports."""
from pathlib import Path
import json,hashlib,datetime
R=Path(__file__).resolve().parents[1];root=R.parents[2];P=root/'reconstruction/CatGunnerUnityClient'
def read(name):
 d=json.loads((R/'reports'/name).read_text());return d.get('data',{}).get('result',d)
current_verification=json.loads((R/'reports/VERIFICATION.json').read_text())
if current_verification.get('relic_evidence'):raise RuntimeError('Relic continuation already accepted; do not overwrite latest evidence with historical skin acceptance')
full_name='live-skin-assembly-final-status.json';full=read(full_name);focus=read('live-skin-focused-final-status.json');handoff=read('skin-editor-handoff.json')['result'];preserved=read('skin-user-save-after-tests.json');gpu=read('skin-gpu-inspection.json')
assert full['status']=='completed' and full['summary']=={'total':116,'passed':116,'failed':0,'skipped':0,'inconclusive':0}
assert focus['status']=='completed' and focus['summary']=={'total':5,'passed':5,'failed':0,'skipped':0,'inconclusive':0}
assert preserved['whole_turn_hashes_unchanged'] and gpu['actual_pixels_inspected'] and gpu['details_currency_selection_and_world_skin_legible']
assert handoff['scene']=='Assets/Recovery/Scenes/RecoveredClient.unity' and handoff['version']=='6000.4.10f1'
assert handoff['persist'] and handoff['saveOverride'] is None and not handoff['visualClone']
assert not any(handoff[k] for k in ['playing','paused','compiling','dirty'])
assert handoff['timeScale']==1 and handoff['missingScripts']==0 and handoff['canvases']==1
assert handoff['skinCount']==25 and handoff['skinResourcesValid'] and handoff['skinRendererReferencesValid'] and not handoff['skinListActive'] and not handoff['skinInfoActive']
assert handoff['starFieldsValid'] and handoff['starSlots']==3 and handoff['alertAnimatorValid'] and handoff['raidAnimatorsValid'] and handoff['bossColliderValid']
p=R/'reports/VERIFICATION.json';d=json.loads(p.read_text());u=d['unity_playmode'];current=u.get('latest_live_editor_assembly_run',{})
if current.get('report')!=full_name:u['prior_star_live_editor_assembly_run']=current
u['latest_live_editor_assembly_run']={'report':full_name,**full};d['updated_utc']=datetime.datetime.now(datetime.timezone.utc).isoformat()
d['scope_complete']=False
d['acceptance']['implemented_slice_playmode']=f"116/116 actual current recovery assembly PlayMode cases; {full['duration']} seconds; no player/device/backend acceptance"
d['acceptance']['skin']='Original25skin catalogue/portraits/bones/colors, locked ordinary diamond purchase, explicit selection, all-unlocked additive bonuses, natural Gun0 projectiles116damage/cooldown0.6->0.54545/tree reward20->21, native useDia price*3, original list/details/navigation/actual raycasts, all ordinary cats cosmetics, independent profile reload/rebirth/Raid preservation. Developer cheats/paid helper/analytics excluded. ExtraUI BounceBtn/SFX_BtnScript/Hatch/Mute_Panel and fullI2/visual/player/device unaccepted.'
d['acceptance']['shooting_boundary']='Seven weapon types, forest/speedrun/Boss/Mine/Monster/Raid target and enemy lifecycles, ordinary companion AI, native three-slot stars and compacted identity,25ordinary skins and cumulative bonuses. Paid helpers/relics/fish/online tables/full manager lifecycle pending.'
d['skin_evidence']={'contract':'original-skin-client-contract.json','scene':'skin-client-scene-restoration.json','focused_first':'live-skin-focused-first-status.json','focused_second':'live-skin-focused-second-status.json','focused_final':'live-skin-focused-final-status.json','full':full_name,'projectile':'skin-projectile-observation.json','gpu':'skin-gpu-inspection.json','preservation':'skin-original-preservation.json','save':'skin-user-save-after-tests.json','handoff':'skin-editor-handoff.json','commands':'skin-command-history.json','checkpoint':'../checkpoints/pre-skin-client'}
d['skin_editor_handoff']=read('skin-editor-handoff.json');d['current_client_scene_sha256']=hashlib.sha256((P/'Assets/Recovery/Scenes/RecoveredClient.unity').read_bytes()).hexdigest()
d['user_save_boundary']='Current skin continuation started in EditMode; whole-turn main and backup profile hashes unchanged. Earlier star continuation initial SHA change remains separately documented; no current rollback/reset/funding. See skin-user-save-after-tests.json and historical star-user-save-after-tests.json.'
new_save=' Skin continuation supports25ownership/selected fields; absent neutral legacy arrays initialize first skin only. Malformed nonempty state rejects before archive save. Whole current skin turn user files hashes unchanged; test currency and progress use independent in-memory/temp profiles.'
if new_save not in d['acceptance']['save_boundary']:d['acceptance']['save_boundary']+=new_save
p.write_text(json.dumps(d,ensure_ascii=False,indent=2)+'\n')
for name in ['original-skin-client-contract.json','skin-client-scene-restoration.json']:
 p=R/'reports'/name;c=json.loads(p.read_text());c['validation']={'focused':f"5/5,{focus['duration']}seconds",'full':f"116/116,{full['duration']}seconds",'visual_player_device':'unaccepted'};c['runtime_validation']='Actual final focused5/5 and one full116/116 completed; original whole game/player/device pending';p.write_text(json.dumps(c,ensure_ascii=False,indent=2)+'\n')
p=root/'README.md';s=p.read_text().replace('**111/111 PlayMode通过**（686.76秒）',f"**116/116 PlayMode通过**（{full['duration']}秒）").replace('皮肤/遗物/鱼类','遗物/鱼类')
bullet='- 猫咪皮肤：原25项肖像/战斗精灵/手部颜色、普通钻石购买、独立选择与保存；已解锁皮肤累计攻击/攻速/金币加成，普通队友同步换装，重生和团战往返保留。购买不会自动选择，完整本地化与真机视觉仍待验收。\n\n'
if bullet not in s:s=s.replace('森林的七种武器',bullet+'森林的七种武器',1)
s=s.replace('星级强化后的伤害与保存、早期试玩档案空数组兼容','星级强化后的伤害与保存、皮肤购买/换装/自然子弹伤害/金币与独立保存、早期试玩档案空数组兼容')
s=s.replace('最终独立测试未写入试玩存档；最初SHA曾在编辑器播放/清理阶段变化，当前档案已原样备份，没有回滚、重置或注入测试星石','本轮皮肤恢复开始于EditMode，试玩主/备份档案整轮SHA一致，未注入测试货币；历史星级轮次的初始SHA变化与备份记录单独保留')
s=s.replace('最终独立测试前后试玩档案哈希一致，整轮初始SHA变化单独记录','本轮整轮试玩档案哈希一致；历史星级轮次的初始SHA变化单独记录')
line='- [25项猫咪皮肤规则与边界](reverse/com.Chodun.CatGunner/1.1.61-vc257/original-game-rules/18_SKINS.md)\n'
if line not in s:s=s.replace('- [槽位星级规则与边界]',line+'- [槽位星级规则与边界]',1)
p.write_text(s)
p=R/'reports/RECOVERY_PROGRESS.md';s=p.read_text().replace('## 当前续恢复：三槽星级强化','## 历史阶段：三槽星级强化',1)
heading='## 当前续恢复：25项猫咪皮肤（2026-10-10）'
section=f'''{heading}

34个业务方法与6个异常辅助精确输入字节导出，native常量10/5、三项16*i/10*i/5*i、费用100*i与原Main25项逐项交叉核对。原经理/列表/详情/入口271对象切片通过Editor API接入，净增266对象；当前{handoff['objects']}对象、1Canvas、零缺脚本。3份原MonoScript meta、50个原肖像/战斗Sprite GUID与冻结Main/native/metadata SHA核验；Skin_info是原序列化普通类，无原MonoScript资产。

普通购买仅锁定且钻石足够时扣费后解锁，原_useDia累积费用*3；不自动换装。选择只能用已解锁项，所有普通小猫的原骨骼精灵/手部颜色同步。三项数值是所有解锁皮肤累计，和当前选择无关；伤害/攻速接入已有Cat平衡，金币按升级→重生→皮肤→宠物。独立存档、严格非法状态拒绝、本地通知/保存/数值后端是明确适配；开发全解锁、付费助手和外部日志不接入。

最终专项实际5/5（{focus['duration']}秒），当前完整程序集单次116/116（{full['duration']}秒）。首轮1/5揭示整合未保存/夹具前置条件，次轮4/5为购买后选择按钮动画等待问题，原失败报告保留。通用字体修复误把已恢复星级嵌入图集当原PNG，整合改为复用原有已修复字体；不重复合入源层级。最终实际UI射线覆盖普通购买/选择/导航/关闭；GPU截图人工读取原肖像、数值、钻石、勾选和森林换装小猫，保留原静态韩文，全部像素/真机未验收。

独立100钻夹具购买皮肤1但仍选择0，原Gun0伤害116、自然三发击倒原250HP树，间隔0.6→0.5454546，原20金币掉落变为21；不注入伤害/血量/elapsed。实际临时文件重载保留皮肤1/2、选择2、余额/_useDia，重生和Raid往返继续累计48%伤害。

本轮从EditMode开始，试玩主/备份文件整轮SHA不变，原样快照checkpoints/pre-skin-client。此前星级轮次最初SHA变化仅属历史，不回滚或重置当前进度。最终正常Unity6000.4.10f1入口RecoveredClient恢复，Persist=true、无临时覆盖、无Play/暂停/编译/脏场景。本轮未构建Player、提交或推送Git；遗物、鱼类、派遣/Spine、团战任务、库存解锁/自动合成与在线/付费服务等仍待恢复。

'''
if heading not in s:s=s.replace('## 历史阶段：三槽星级强化',section+'## 历史阶段：三槽星级强化',1)
s=s.replace('| 宠物、皮肤、重生 |','| 宠物、重生 |').replace('| 原Spine、派遣、皮肤、广告/付费流程、大数InfVal精度 |','| 原Spine、派遣、广告/付费流程、大数InfVal精度 |')
row='| 猫咪皮肤 | 原25项普通钻石购买/独立选择/所有解锁累计攻击攻速金币/原列表详情/三猫外观/保存；重生与Raid保留 | 通用按钮弹跳/音效/Hatch/Mute_Panel、完整I2/全部视觉与真机、付费助手 |\n'
if row not in s:s=s.replace('| 宠物、重生 |',row+'| 宠物、重生 |',1)
s=s.replace('完整Cat.Update的AI/breadcrumb/leader-history、其他模式自动目标、原管理器/存档装备与非中性增益生命周期、完整Balance_Reload、UI mode5/Ore、原伤害数字/目标旋转动画','未闭合的完整Cat.Update/Gamemanager生命周期、遗物/鱼类增益、原浮动伤害数字/目标旋转动画、完整视觉/真机')
p.write_text(s)
p=R/'original-game-rules/18_SKINS.md';s=p.read_text().replace('最终哈希及测试结果待当前完整验收报告。','本轮主/备份试玩文件整轮SHA不变，见 skin-user-save-after-tests.json。');note=f"\n最终验收：专项5/5（{focus['duration']}秒），同一完整程序集实际116/116（{full['duration']}秒）；三幅GPU实际读取及正常Editor交接保存。完整游戏、Player、真机和全部视觉仍未验收。\n";
if note not in s:s+=note
p.write_text(s)
p=R/'original-game-rules/00_INDEX.md';s=p.read_text();line='- [18 猫咪皮肤](18_SKINS.md)：原25项、普通购买/选择、累计加成、三猫外观与保存；完整视觉/真机未验收。\n'
if line not in s:s+='\n'+line
p.write_text(s)
print('Accepted actual116/116 and separate final5/5; original whole game remains incomplete')
