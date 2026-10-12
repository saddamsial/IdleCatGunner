"""Accept only actual completed relic runs and a normal restored Editor; retain history."""
from pathlib import Path
import json,hashlib,datetime
R=Path(__file__).resolve().parents[1];root=R.parents[2];P=root/'reconstruction/CatGunnerUnityClient'
def read(name):
 d=json.loads((R/'reports'/name).read_text());return d.get('data',{}).get('result',d)
full_name='live-relic-assembly-final-status.json';full=read(full_name);focus=read('live-relic-focused-final-status.json');handoff=read('relic-editor-handoff.json')['result'];saved=read('relic-user-save-after-tests.json');gpu=read('relic-gpu-inspection.json')
assert full['status']=='completed' and full['summary']=={'total':123,'passed':123,'failed':0,'skipped':0,'inconclusive':0}
assert focus['status']=='completed' and focus['summary']=={'total':7,'passed':7,'failed':0,'skipped':0,'inconclusive':0}
assert saved['whole_turn_hashes_unchanged'] and gpu['actual_pixels_inspected'] and gpu['twelve_card_page_and_last_page_legible'] and gpu['menu_currency_and_details_legible']
assert handoff['scene']=='Assets/Recovery/Scenes/RecoveredClient.unity' and handoff['version']=='6000.4.10f1'
assert handoff['persist'] and handoff['saveOverride'] is None and not handoff['visualClone']
assert not any(handoff[k] for k in ['playing','paused','compiling','dirty'])
assert handoff['timeScale']==1 and handoff['missingScripts']==0 and handoff['canvases']==1
assert handoff['relicCount']==15 and handoff['relicFieldsValid'] and handoff['relicPageSize']==12 and handoff['coreSprites']==4
assert not any(handoff[k] for k in ['relicMenuActive','relicInfoActive','relicDrawActive'])
assert handoff['skinCount']==25 and handoff['skinResourcesValid'] and handoff['skinRendererReferencesValid'] and handoff['starFieldsValid']
p=R/'reports/VERIFICATION.json';d=json.loads(p.read_text())
if d.get('adventure_evidence'):raise SystemExit('Refusing to overwrite newer adventure acceptance with historical relic results')
u=d['unity_playmode'];current=u.get('latest_live_editor_assembly_run',{})
if current.get('report')!=full_name:u['prior_skin_live_editor_assembly_run']=current
u['latest_live_editor_assembly_run']={'report':full_name,**full};d['updated_utc']=datetime.datetime.now(datetime.timezone.utc).isoformat();d['scope_complete']=False
accept=d['acceptance'];accept['implemented_slice_playmode']=f"123/123 actual current recovery assembly PlayMode cases; {full['duration']} seconds; not player/device/backend acceptance"
accept['relic']='15 original relics, three300-row tables, four saved core wallets,20core single/max draw, uniform native candidates/duplicates/shard upgrades, original menus/details/12-per-page reveal and actual raycasts. Damage/critical/money/move/rebirth consumers, independent reload/rebirth/Raid and natural105damage/tree250HP3hits. Numeric Lv299-to300 blocked because source row300 absent; offline/skip consumers, dispatch core production/full Adventure/global unlock gate/I2/whole UI/device pending. No fake core grant.'
accept['shooting_boundary']=accept['shooting_boundary'].replace('Paid helpers/relics/fish/online tables/full manager lifecycle pending.','Ordinary relic attack/critical/move/rebirth/money values integrated; paid helpers/fish/online tables/full manager lifecycle pending. Relic table-Lv300/dispatch/offline/skip consumers unaccepted.')
save_note=' Relic continuation supports15Lv/Count/unlock entries and4core balances; legacy neutral arrays initialized, malformed nonempty state or missing table-Lv300 rejects. Current whole-turn main/backup hashes unchanged; test progress only in-memory/unique temporary folders.'
if save_note not in accept['save_boundary']:accept['save_boundary']+=save_note
d['relic_evidence']={'contract':'original-relic-client-contract.json','scene':'relic-client-scene-restoration.json','repair':'relic-original-component-repair.json','red':'live-relic-red-status.json','focused_first':'live-relic-focused-first-status.json','focused_second':'live-relic-focused-second-status.json','focused_final':'live-relic-focused-final-status.json','full':full_name,'projectile':'relic-projectile-observation.json','gpu':'relic-gpu-inspection.json','preservation':'relic-original-preservation.json','save':'relic-user-save-after-tests.json','handoff':'relic-editor-handoff.json','commands':'relic-command-history.json','checkpoint':'../checkpoints/pre-relic-client'}
d['relic_editor_handoff']=read('relic-editor-handoff.json');d['current_client_scene_sha256']=hashlib.sha256((P/'Assets/Recovery/Scenes/RecoveredClient.unity').read_bytes()).hexdigest()
d['user_save_boundary']='Relic continuation started in clean EditMode; current whole-turn main and backup profile hashes unchanged. Skin preservation and historical star initial SHA change remain documented separately. No user rollback/reset/funding.'
p.write_text(json.dumps(d,ensure_ascii=False,indent=2)+'\n')
for name in ['original-relic-client-contract.json','relic-client-scene-restoration.json']:
 p=R/'reports'/name;x=json.loads(p.read_text());x['validation']={'focused':{'report':'live-relic-focused-final-status.json',**focus['summary'],'duration':focus['duration']},'full':{'report':full_name,**full['summary'],'duration':full['duration']},'visual_player_device':'whole visual/player/device unaccepted'};x['runtime_validation']='Actual final focused7/7 and one full123/123 completed; partial relic/whole game boundaries retained';p.write_text(json.dumps(x,ensure_ascii=False,indent=2)+'\n')
p=root/'README.md';s=p.read_text().replace('**116/116 PlayMode通过**（723.98秒）',f"**123/123 PlayMode通过**（{full['duration']}秒）")
s=s.replace('宠物、任务、重生、速通','宠物、任务、重生、遗物、速通',1)
bullet='- 遗物：原15项、三份300行数值表、四种核心余额、普通20核心单抽/最大批量抽取、重复碎片升级；原列表/详情/12项分页与保存。攻击、暴击、金币、移动和重生奖励加成已接入；派遣产核心、离线/跳关效果仍待恢复，原表缺失的300索引不会外推。\n\n'
if bullet not in s:s=s.replace('森林的七种武器',bullet+'森林的七种武器',1)
s=s.replace('皮肤购买/换装/自然子弹伤害/金币与独立保存、早期','皮肤购买/换装/自然子弹伤害/金币与独立保存、遗物抽取升级/分页/自然伤害/重载重生团战、早期')
s=s.replace('本轮皮肤恢复开始于EditMode','本轮遗物恢复开始于EditMode').replace('派遣、遗物/鱼类、','派遣、鱼类、遗物离线/跳关及缺表最高级、')
line='- [遗物规则与边界](reverse/com.Chodun.CatGunner/1.1.61-vc257/original-game-rules/19_RELICS.md)\n'
if line not in s:s=s.replace('- [25项猫咪皮肤规则与边界]',line+'- [25项猫咪皮肤规则与边界]',1)
p.write_text(s)
p=R/'reports/RECOVERY_PROGRESS.md';s=p.read_text().replace('## 当前续恢复：25项猫咪皮肤','## 历史阶段：25项猫咪皮肤',1)
section=f'''## 当前续恢复：15项遗物（2026-10-10）

71个业务方法/6个异常辅助均经 matching arm64 首16字节核验，保留原15项与三份300行表、4种核心精灵及10份原MonoScript meta。原747对象输入净增742，当前{handoff['objects']}对象/1Canvas/零缺脚本。Editor API恢复31个被首版切片过滤的SlicedFilledImage/BounceStart并重连16填充引用；不修改冻结Main或手改现有场景YAML。全局Adventure按钮直接打开原遗物标签是当前明确的本地入口适配；完整派遣/解锁与原I2待续。

20核心/次，四类余额彼此独立，按组内未MaxLv项均匀抽取，首得解锁/重复加碎片；最大批量整除20。等级碎片成本clamp(2*Lv+2,2,50)，tier1乘1.5后截小数，tier2乘2。只累计解锁项。原型表只覆盖0..299，而native上限判断允许300；本地挡住299→300并拒绝缺表存档，不补造规则。攻击、暴击、金币、移动、重生已接入；离线/跳关消费者、可靠的新档核心来源仍待派遣恢复，现有任务非枪械季奖励分支可消费但当前新季默认枪械季，不注入用户核心。

最终专项7/7（{focus['duration']}秒），实际同一完整程序集123/123（{full['duration']}秒）；首轮3/7、次轮6/7保留，分别揭示菜单/填充引用与重载重生加成遗漏。UI实际最上层射线覆盖入口、核心选择、单抽、详细升级、最大13抽、12+1两页箭头和关闭，0.5/0.1/0.3秒原时序、展示中禁止翻页均验证；ASM FRINTP/FCVTPS纠正反编译器页数截断。最终GPU实际读取菜单、原图标/颜色/核心与费用、详情等级/碎片、12张整页和1张末页；保留原韩文标签及本地英文详情，不称全部视觉/真机恢复。

独立Lv0解锁夹具，原Gun0自然105伤害/暴击数值137/移动15.3，3发击倒原250HP树并实际按105%金币入账；未注入伤害/血量/elapsed。唯一临时文件重载、重生105%奖励332.03、Raid110%伤害及往返保留实测通过。本轮从干净EditMode开始，试玩主/备份整轮SHA一致，快照pre-relic-client保留；最终正常Unity6000.4.10f1入口、Persist=true/无覆盖、退出播放暂停、无编译/脏场景。历史星级SHA变化单独保留；本轮无Player构建、Git提交/推送。

'''
if '## 当前续恢复：15项遗物' not in s:s=s.replace('## 历史阶段：25项猫咪皮肤',section+'## 历史阶段：25项猫咪皮肤',1)
row='| 遗物 | 原15项/核心保存消费/重复碎片升级/原菜单详情分页/攻击暴击金币移动重生 | 派遣产核心、离线与跳关消费者、300缺表边界、全局解锁/I2/全视觉/真机 |\n'
if row not in s:s=s.replace('| 猫咪皮肤 |',row+'| 猫咪皮肤 |',1)
p.write_text(s)
p=R/'original-game-rules/19_RELICS.md';s=p.read_text();note=f"\n本轮完整验收：实际123/123（{full['duration']}秒），专项单独7/7（{focus['duration']}秒）；最终GPU和正常Editor交接通过，试玩主/备份整轮SHA一致。上述缺表/派遣/离线/跳关/视觉/真机边界继续保留。\n";
if note not in s:s+=note
p.write_text(s)
p=R/'original-game-rules/00_INDEX.md';s=p.read_text();line='- [19 遗物](19_RELICS.md)：原15项、4核心、普通抽取/碎片升级/12项分页/保存与战斗重生增益；派遣/离线/跳关/缺表最高级待恢复。\n'
if line not in s:s+='\n'+line
p.write_text(s)
print('Accepted actual full123/123 and separate focused7/7; whole original client remains incomplete')
