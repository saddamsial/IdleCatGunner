"""Publish only completed Monster evidence into existing local progress documents."""
from pathlib import Path
import json
R=Path(__file__).resolve().parents[1];root=R.parents[2]
if (R/'reports/live-raid-assembly-final-status.json').exists():
 import runpy
 runpy.run_path(str(R/'tools/update_raid_progress.py'),run_name='__main__')
 raise SystemExit(0)
raw=json.loads((R/'reports/live-monster-assembly-final-status.json').read_text());run=raw['data']['result']
assert run['status']=='completed' and run['summary']['passed']==101 and run['summary']['failed']==0
seconds=run['duration']
readme=root/'README.md';s=readme.read_text()
s=s.replace('速通、Boss挑战与矿山','速通、Boss挑战、矿山与怪物挑战')
bullet='- 怪物挑战：原240怪物池、20种图、2000波血量缓存和每波五关；自动在基地周围移动/射击，受击击退、突破扣生命、失败冻结。普通每关30宠物币即时结算一次，保存挑战波次；放弃、取消加载和返回森林保留已得奖励。广告额外倍奖、付费自动/扫荡和在线排行不可用。'
if bullet not in s:s=s.replace('森林的七种武器',bullet+'\n\n森林的七种武器',1)
s=s.replace('**96/96 PlayMode通过**（551.09秒）',f'**101/101 PlayMode通过**（{seconds}秒）')
s=s.replace('速通、Boss及矿山的实际子弹命中','速通、Boss、矿山及怪物挑战的实际子弹命中')
s=s.replace('速通/Boss/矿山测试明确使用独立档案','速通/Boss/矿山/怪物测试明确使用独立档案')
s=s.replace('**完整客户端恢复尚未完成。** 怪物、团战','**完整客户端恢复尚未完成。** 团战')
s=s.replace('- [矿山规则与边界]', '- [怪物挑战规则与边界](reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/original-monster-client-contract.json)\n- [矿山规则与边界]')
s=s.replace('新增页面的Editor截图捕获返回旧帧，后续原生窗口定位超时，因此新页面画面未验收，失败图和说明明确保留。','新增页面全像素/真机尚未验收；怪物材质、生命环采用明确的兼容渲染，商业Shapes/GPU MonsterBounce仍待恢复。此前截图旧帧与窗口定位失败记录保留。')
readme.write_text(s)
p=R/'reports/RECOVERY_PROGRESS.md';s=p.read_text();s=s.replace('## 当前续恢复：矿山普通模式','## 历史阶段：矿山普通模式',1)
heading='## 当前续恢复：怪物挑战普通模式（2026-10-10）'
section=f'''{heading}

同一RecoveredClient新增原Monster_Btn→原普通进入按钮实际点击→零输入基地半径14内移动/射击→多关推进→失败/放弃结果→返回森林。原240怪物、20图、2000血量缓存、基地防线、Enemy类型3/碰撞链接/健康条、原黏液粒子、开始/HUD/结果页面通过Editor API合入，当前29869对象/1Canvas。预恢复场景保存在checkpoints/pre-monster-client。原Main与六份原脚本.meta逐字节保持一致。

原生49项业务/6项throw辅助方法逐字节门禁完成，补充BarrierCollider/Shapes属性/InfVal精度/主猫半径约束；两个静态20字节配额/间隔初始化通过FieldInfo编码与PrivateImplementationDetails SHA验证，Wave标签通过kind5字符串索引读取。五关配额90/120/160/200/240，普通每关即得30宠物币；普通初始基地生命1。击退、补生而不计杀敌、失败冻结、回池和死亡黏液5粒接回。mode4跳过森林攻击/攻速升级与波次惩罚，使用60射线/距离60、屏外移动提示、14半径站位与约束；超过血量缓存继续逐次乘3/两位截断，1999项原缓存相邻增长全部核对通过。

首轮专项4/4通过（100.85秒），补充第五关240敌人/大怪尺寸和生命/跨波以及普通进入按钮真实UI射线后，最终专项5/5通过（122.63秒）。完整恢复程序集实际101/101通过（{seconds}秒），见live-monster-assembly-final-status.json；历史矿山96/96与Boss91/91分别保留。怪物零输入测试使用独立原Gun20，不修改500首波生命/90配额或计时，真实子弹完成首关并得30宠物币；原生命1的无射击夹具通过原Rigidbody/BarrierCollider自然突破失败并得0。第五关批量生命伤害夹具只验证生命周期和跨波，不被当成自动射击或真机证据。

玩家试玩档案未加载到测试，测试前后两文件SHA保持一致；原codec独立往返保存波次/宠物币，重复奖励与迟到回调防护、中途取消和本地钱包属明确适配。生命环为原Shapes.Disc身份的本地几何兼容，原GPU MonsterBounce/完整Shapes/浮动伤害文字仍待恢复；原图、变换、字段/GUID保留，不宣称商业插件原源码。最终交接见monster-editor-handoff.json。

付费自动/扫荡、广告额外2倍与在线排行未模拟成功；完整视觉、Player和原手机对照均未验收。团战、派遣/Spine、皮肤/遗物/鱼/星级、自动合成/库存解锁等全客户端内容仍待恢复。本轮未提交或推送Git。

'''
if heading not in s:s=s.replace('## 历史阶段：矿山普通模式',section+'## 历史阶段：矿山普通模式',1)
p.write_text(s)
print('Updated local README/progress from completed101/101 evidence')
