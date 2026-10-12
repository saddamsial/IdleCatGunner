"""Accept one completed Star assembly run, with separate focused and handoff proof."""
from pathlib import Path
import json,hashlib,datetime,re
R=Path(__file__).resolve().parents[1];root=R.parents[2];P=root/'reconstruction/CatGunnerUnityClient'
if 'skin_evidence' in json.loads((R/'reports/VERIFICATION.json').read_text()):
 raise SystemExit('Newer skin continuation accepted; refuse to overwrite current verification with historical star run')
def read(name):
 d=json.loads((R/'reports'/name).read_text());return d.get('data',{}).get('result',d)
full_name='live-star-assembly-final-status.json'
full=read(full_name);focus=read('live-star-focused-final-status.json');handoff=read('star-editor-handoff.json')['result']
assert full['status']=='completed' and full['summary']=={'total':111,'passed':111,'failed':0,'skipped':0,'inconclusive':0}
assert focus['status']=='completed' and focus['summary']['total']==5 and focus['summary']['passed']==5 and focus['summary']['failed']==0
assert handoff['persist'] and handoff['saveOverride'] is None and not handoff['visualClone']
assert not any(handoff[k] for k in ['playing','paused','compiling','dirty'])
assert handoff['scene']=='Assets/Recovery/Scenes/RecoveredClient.unity' and handoff['timeScale']==1 and handoff['missingScripts']==0 and handoff['canvases']==1
assert handoff['starSlots']==3 and handoff['alertAnimatorValid'] and handoff['bossColliderValid'] and handoff['raidAnimatorsValid']
assert read('star-user-save-after-tests.json')['final_isolated_tests_unchanged']
assert read('star-gpu-inspection.json')['final_title_and_currency_legible']
p=R/'reports/VERIFICATION.json';d=json.loads(p.read_text());u=d['unity_playmode'];current=u.get('latest_live_editor_assembly_run',{})
if current.get('report')!=full_name:u['prior_raid_live_editor_assembly_run']=current
u['latest_live_editor_assembly_run']={'report':full_name,**full};d['updated_utc']=datetime.datetime.now(datetime.timezone.utc).isoformat()
d['acceptance']['implemented_slice_playmode']=f"111/111 actual current recovery assembly PlayMode cases; {full['duration']} seconds; no player/device/backend acceptance"
d['acceptance']['star']='Three native slot levels,20-level exact rates/costs/unrounded double/G17/precision2 bonuses,stage390 gate,charge-before-roll,failure-retains-level,pity from target18 capped5,original popup and alert/sounds,original currency sprites and Chinese face compatibility,independent save/reload/swap/rebirth/Raid linkage and actual upgraded Gun0 projectile damage. Commercial ParticleImage/full I2/InfVal/visual/player/device pending.'
d['acceptance']['shooting_boundary']='Seven weapon types, forest/speedrun/Boss/Mine/Monster/Raid target and enemy lifecycles, ordinary companion AI, native three-slot stars and original compaction identity. Paid helpers/skins/relics/fish/online tables/full manager lifecycle pending.'
d['acceptance']['raid']=d['acceptance']['raid'].replace('/stars/','/').replace('Raid missions/stars/','Raid missions/')+' Star continuation verified independently in star_evidence.'
d['star_evidence']={'contract':'original-star-client-contract.json','scene':'star-client-scene-restoration.json','focused_first':'live-star-focused-first-status.json','focused_final':'live-star-focused-final-status.json','full':full_name,'canceled_run':'live-star-assembly-canceled-status.json','projectile':'star-projectile-observation.json','display':'star-display-compatibility.json','gpu':'star-gpu-inspection.json','preservation':'star-original-preservation.json','save':'star-user-save-after-tests.json','handoff':'star-editor-handoff.json','commands':'star-command-history.json','checkpoint':'../checkpoints/pre-star-client'}
d['user_save_boundary']='Initial whole-turn SHA changed before final isolated tests; Editor was previously playing. Current profile backed up verbatim, no rollback/reset/funding. Final isolated verification hashes unchanged; see star-user-save-after-tests.json.'
d['acceptance']['save_boundary']+=' Star slot fields now supported; initial whole-turn file hash changed before isolation, current user profile backed up unchanged. Final focused/full tests and editor handoff did not write current profile; whole-turn preservation not claimed.'
d['current_client_scene_sha256']=hashlib.sha256((P/'Assets/Recovery/Scenes/RecoveredClient.unity').read_bytes()).hexdigest();d['star_editor_handoff']=read('star-editor-handoff.json')
p.write_text(json.dumps(d,ensure_ascii=False,indent=2)+'\n')
for name in ['original-star-client-contract.json','star-client-scene-restoration.json']:
 p=R/'reports'/name;c=json.loads(p.read_text());c['validation']={'focused':f"5/5,{focus['duration']}seconds",'full':f"111/111,{full['duration']}seconds",'visual_player_device':'unaccepted'}
 c['runtime_validation']='Actual final focused5/5 and one full111/111 completed; original whole game/player/device pending';p.write_text(json.dumps(c,ensure_ascii=False,indent=2)+'\n')
p=root/'README.md';s=p.read_text().replace('**106/106 PlayMode通过**（622.26秒）',f"**111/111 PlayMode通过**（{full['duration']}秒）").replace('排行、团战任务、星级、付费助手/加时','排行、团战任务、付费助手/加时').replace('皮肤/遗物/鱼类/星级','皮肤/遗物/鱼类')
bullet='- 星级强化：最高进度390后开放三槽强化，原20级概率/费用/伤害表、失败保底与星石扣费；原弹窗、成功/失败音效、提示和保存。换枪与重生保留槽位星级，森林及团战实际子弹使用加成；成功粒子暂为明确的按钮反馈适配。\n\n'
if bullet not in s:s=s.replace('森林的七种武器',bullet+'森林的七种武器',1)
s=s.replace('及团战的实际子弹命中','及团战的实际子弹命中、星级强化后的伤害与保存').replace('实际试玩存档未经测试写入','最终独立测试未写入试玩存档；最初SHA曾在编辑器播放/清理阶段变化，当前档案已原样备份，没有回滚、重置或注入测试星石').replace('原试玩档案文件哈希一致','最终独立测试前后试玩档案哈希一致，整轮初始SHA变化单独记录')
line='- [槽位星级规则与边界](reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/original-star-client-contract.json)\n'
if line not in s:s=s.replace('- [团战普通规则与边界]',line+'- [团战普通规则与边界]',1)
p.write_text(s)
p=R/'reports/RECOVERY_PROGRESS.md';s=p.read_text().replace('## 当前续恢复：团战普通模式','## 历史阶段：团战普通模式',1)
heading='## 当前续恢复：三槽星级强化（2026-10-10）'
section=f'''{heading}

原星级管理器/弹窗/提示共53节点通过Editor API接回RecoveredClient；{handoff['objects']}对象、1Canvas、零缺脚本，三份原脚本meta与包内中文字体逐字节保留，冻结Main/native/metadata及概率静态80字节SHA通过。回滚快照checkpoints/pre-star-client。

最高进度390开放三槽20级，原费用50*目标级、20项成功率、未舍入double累乘及G17/两位有效数伤害。先扣星石再roll；失败保留等级、加失败数；目标18级起加失败概率且上限5%。换枪不换槽星，重生/Raid保存并接回实际伤害；保留native压紧猫列表索引的特殊行为。完整I2/InfVal/ParticleImage仍为边界，当前按钮成功缩放和单原Alert池桥接是适配，字体/内嵌货币图标使用原来源的兼容材质。

最终专项实际5/5（{focus['duration']}秒），完整程序集单次实际111/111（{full['duration']}秒）；此前5/5逻辑通过但GPU发现标题/图标问题的各次报告和两张中间图片、主动取消的首次回归分别保留。最终GPU标题与星石可读，保留静态韩文说明，全部像素/真机未验收。独立原Gun0经50夹具星石升级，实际两发150自然子弹击倒原250HP树，不注入伤害/血量/elapsed。临时档案实际重读验证星级/失败数/星石与换枪、重生、Raid一致。

初始存档SHA曾在已有Play及测试清理期间变化；不声称整轮逐字节不变，不回滚当前用户进度。最终独立测试前原样备份当前文件，之后主/备份SHA保持一致，用户档案星石0、星级0，未注入测试货币。编辑器正常6000.4.10f1入口恢复，Persist=true、无临时档案覆盖、非Play/暂停/编译/脏场景。未构建Player、未提交或推送Git，完整客户端仍待后续恢复。

'''
if heading not in s:s=s.replace('## 历史阶段：团战普通模式',section+'## 历史阶段：团战普通模式',1)
s=re.sub(r'^\| StarUpgrade[^\n]*$', '| StarUpgrade | 原三槽20级强化/失败保底/星石保存、原弹窗与森林/Raid实际伤害 | 商业粒子/完整本地化/全部视觉 |',s,flags=re.M)
s=s.replace('锁定解锁、自动合成、星级、完整教程','锁定解锁、自动合成、完整教程')
if '| StarUpgrade |' not in s:s=s.replace('| 枪械与合成 |', '| StarUpgrade | 原三槽20级强化/失败保底/星石保存、原弹窗与森林/Raid实际伤害 | 商业粒子/完整本地化/全部视觉 |\n| 枪械与合成 |',1)
p.write_text(s)
p=R/'original-game-rules/17_STAR_UPGRADES.md';s=p.read_text()+f"\n最终验收：专项5/5（{focus['duration']}秒），完整程序集同一实际运行111/111（{full['duration']}秒）。最终GPU已人工读取，标题和星石图标可读；原静态韩文保留，完整视觉尚未验收。Editor已正常交接，最终独立测试档案SHA不变。\n";p.write_text(s)
p=R/'original-game-rules/16_RAID.md';s=p.read_text();note='\n后续星级链已在[17_STAR_UPGRADES](17_STAR_UPGRADES.md)接通并独立验证；本页106例与中性星级限制是当时团战恢复阶段的历史边界。\n';
if note not in s:s+=note
p.write_text(s)
print('Accepted actual111/111 and final5/5; entire original game still incomplete')
