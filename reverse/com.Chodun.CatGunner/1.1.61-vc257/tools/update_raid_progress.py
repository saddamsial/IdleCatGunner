"""Update the current handoff from completed actual Raid test reports."""
from pathlib import Path
import json,re
R=Path(__file__).resolve().parents[1];root=R.parents[2]
if 'star_evidence' in json.loads((R/'reports/VERIFICATION.json').read_text()):
 raise SystemExit('Star continuation already accepted; use update_star_acceptance.py; historical Raid reports preserved')
d=json.loads((R/'reports/live-raid-assembly-final-status.json').read_text())['data']['result']
assert d['status']=='completed' and d['summary']['total']==106 and d['summary']['passed']==106 and d['summary']['failed']==0
f=json.loads((R/'reports/live-raid-focused-final-status.json').read_text())['data']['result']
assert f['status']=='completed' and f['summary']['passed']==5 and f['summary']['failed']==0
seconds=d['duration']
p=root/'README.md';s=p.read_text().replace('矿山与怪物挑战','矿山、怪物挑战与团战').replace('**101/101 PlayMode通过**（534.4秒）',f'**106/106 PlayMode通过**（{seconds}秒）').replace('及怪物挑战的实际子弹命中','、怪物挑战及团战的实际子弹命中').replace('团战、派遣、皮肤/遗物/鱼类/星级','团战任务/联网服务、派遣、皮肤/遗物/鱼类/星级')
bullet='''- 团战普通模式：原三栏独立选枪和20选择格、自动选入最高伤害武器、5套Boss外观；自动移动/射击，60秒连续清空血条，弱点类型10倍伤害。普通每日2次入场，星石按原25/20/10/5档只结算一次；保存本地赛季与最高成绩，退出恢复森林装备。时钟/数值显示采用明确的离线适配；排行、团战任务、星级、付费助手/加时和广告/IAP入口未接通。

'''
if '- 团战普通模式：' not in s:s=s.replace('森林的七种武器',bullet+'森林的七种武器',1)
line='- [团战普通规则与边界](reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/original-raid-client-contract.json)\n'
if line not in s:s=s.replace('- [怪物挑战规则与边界]',line+'- [怪物挑战规则与边界]',1)
s=s.replace('速通/Boss/矿山/怪物测试明确使用独立档案的原Gun5/Gun20配置','速通/Boss/矿山/怪物/团战测试明确使用独立档案的原Gun5/Gun20/Gun30配置')
p.write_text(s)
p=R/'reports/RECOVERY_PROGRESS.md';s=p.read_text().replace('## 当前续恢复：怪物挑战普通模式','## 历史阶段：怪物挑战普通模式',1)
heading='## 当前续恢复：团战普通模式（2026-10-10）'
section=f'''{heading}

原Raid_Btn→原开始页/20格独立武器选择/三槽→普通入场→零输入自动移动与真实子弹→60秒连续Boss换血→原结果/星石→返回森林接回同一RecoveredClient。原1241节点分支通过Editor API合入后31104对象/1Canvas，5套Boss外观/原Animator/碰撞体引用完整，8份原脚本.meta逐字节一致；冻结Main/native/metadata哈希及两个静态SHA数组、8个字符串指针复核通过。预恢复场景在checkpoints/pre-raid-client。

原运行时Boss血量覆盖场景旧表：首条1000万、每条乘3，内部三位有效数字缓存/外部两位截断。普通60秒；弱点枪类型来自原Gun_list[30+周序号正模5]并乘10。普通每日2次，按已清等级累加25/20/10/5档星石；原每周一/2024-01-01纪元以本机离线时钟适配。选枪保留具体位置身份、不能重复位置、允许同枪不同位置、按伤害/索引排序、不能卸下最后一把；原Panel_Open自动选枪已接回。普通入场加载2秒，提前退出没有星石，取消加载保留已用票；正常结束和重复展示只结算一次，返回恢复森林三槽与进度。

首轮专项4/5，测试在弹窗动画完成前做射线检查失败，保留live-raid-focused-first-status.json；等待原动画后第二轮5/5（83.1秒）。最终代码专项5/5（{f['duration']}秒），完整恢复程序集实际106/106（{seconds}秒），见live-raid-assembly-final-status.json；旧Monster101/Mine96/Boss91分别保留。真实Gun30零输入战斗保持1000万首条血量和原60秒计时，不注入伤害/血量/elapsed；实际观测单独记录。全皮肤/单次伤害换血夹具只是生命周期证据。原EventSystem顶层射线覆盖导航与普通入场，不等同手机触摸。

本机离线日历、BigInteger截断/整数文本、字体/Sprite兼容、原返回生命周期及重复奖励保护为明确适配；可信时间/原防作弊服务、排行榜、原联网配置、团战任务、星级、付费助手/加时、广告/IAP入口未模拟成功。新增GPU截图visual/raid-test-gpu.png确实读取，证明独立测试中Boss/HUD/主猫/子弹可见，不作为全部像素或手机验收。试玩档案测试前后SHA不变，最终交接raid-editor-handoff.json恢复正常EditMode入口。未构建Player、未提交/推送Git，全部客户端仍未完成。

'''
if heading not in s:s=s.replace('## 历史阶段：怪物挑战普通模式',section+'## 历史阶段：怪物挑战普通模式',1)
s=re.sub(r'^\| SpeedRun/Boss/Mine/Monster/Raid \|.*$', '| SpeedRun/Boss/Mine/Monster/Raid | 普通速通/Boss/矿山/怪物/团战自动战斗、原普通奖励与独立进度保存；团战原选枪/5皮肤/60秒连续换血 | 团战任务/可信时间/榜单、付费助手/加时、扫荡/付费、上传与全部视觉 |',s,flags=re.M)
p.write_text(s)
print('Updated current Raid handoff from actual106/106; historical reports preserved')
