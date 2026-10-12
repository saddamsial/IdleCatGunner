"""Publish the bounded Rule47 handoff without rewriting earlier test history."""
from pathlib import Path
import csv
import datetime
import hashlib
import json

R = Path(__file__).resolve().parents[1]
W = R.parents[2]
Q = R / 'reports'
evidence = json.loads((Q / 'raid-helper-evidence.json').read_text())
assert evidence['preservation']['userMainAndBackupUnchanged']
assert not evidence['scopeComplete']
summary = (
    '本轮接回当季团战助手：原锁定槽、购买弹窗、明确的本地模拟支付、'
    '第四只猫自动移动/射击、按Boss弱点选择50–54号武器、取三个槽位最低星级、'
    '跨周失效/重购和保存重载均接通。支付不扣款，助手不占普通库存或装备槽。'
    '专项11/11（112.27秒）、普通团战5/5（92.05秒）、试玩问题15/15（53.69秒）、'
    'StepUp11/11（64.72秒）、启动4/4（25.5秒）分别完整通过。'
    '你的主档和备份保持不变，可直接Play。高级能量球特效及助手部分骨骼变形仍有差异，'
    '不能称为完整视觉恢复；StarGem存钱罐、免广告自动奖励/扫荡、剩余UI/服务和真机仍待恢复。'
)
readme = W / 'README.md'
text = readme.read_text()
marker = '本轮接通钻石存钱罐的购买权益、普通计时产出、原按钮领取和未领取数量存档：'
assert marker in text
text = text.replace(marker, '上一轮接通钻石存钱罐的购买权益、普通计时产出、原按钮领取和未领取数量存档：', 1)
at = text.index('上一轮接通钻石存钱罐的购买权益')
text = text[:at] + summary + ' 详见 [规则47](reverse/com.Chodun.CatGunner/1.1.61-vc257/original-game-rules/47_RAID_HELPER_CLIENT.md)。\n\n' + text[at:]
readme.write_text(text)

progress = Q / 'RECOVERY_PROGRESS.md'
text = progress.read_text()
marker = '## 当前阶段：钻石存钱罐权益、计时、领取与存档（规则46，2026-10-11）'
assert marker in text
text = text.replace(marker, marker.replace('当前阶段', '历史阶段'), 1)
at = text.index('## 历史阶段：钻石存钱罐权益')
detail = '''
## 当前阶段：当季团战助手与第四只猫（规则47，2026-10-11）

SUMMARY

本轮37个原生查询全部完成，31个业务方法与6个异常辅助分别计数；静态七类型表字节/SHA与速度字符串均核对。原助手分支新增364对象及65枪，恢复两份原UI脚本/GUID。原132226个对象/组件身份保留，7处既有文档变动限于助手引用、父子/组件列表和两处按钮；既有RectTransform及原贴图/材质不变。9处新助手粒子引用恢复可用的原内置透明Shader。场景35834对象、缺脚本0。

真实EventSystem第一命中/按下松开验证原锁定槽→弹窗→支付成功模拟；没有赠送库存枪或伪造收据。五周弱点枪均由实际子弹击中Boss；另一个仅助手自动战斗观察包含移动、伤害150000000及Boss换级。最低星级包含空装备槽，助手SlotNum=-1，退出团战隐藏。常驻本地观察器核对权益及猫显隐，修复购买后缓存未采样就跨周时助手没有消失的错误；本机时钟/0.25秒观察和支付模拟均为明确本地适配。

缺助手0/1、首次完整9/10、第二次9/10、第三次10/11及错误筛选0/0分别归档。前两次完整失败促成权益缓存/显隐修正；第三次是独立2024日历夹具沿用2026入场时间戳，修正夹具初始化后重新完整11/11。五个完成批次独立保存，不拼接为一次全量通过。证据收集初次把业务31误作总数，已按实际37条核对修正；不涉及游戏代码或测试结果改写。

196张历史GPU保持原SHA，10张回归覆盖帧另存；本轮四张新GPU实际读取。助手购买页与已购槽接通，能量球仍有明显显示差异；SpriteSkin组件149337仍隔离，未安装缺失2D Animation依赖或宣称完整骨骼恢复。用户主档/备份、222份既有脚本meta、冻结Main/native/metadata保持，未回滚或注入测试进度。最终干净EditMode、Persist=true、无测试/存档/输入覆盖、timeScale=1、本地广告/支付默认true，Console当前错误0/编译失败false。测试键清理的工具超时由落盘报告确认已执行；错误命名空间的临时eval被拒后使用核验场景路径成功重开，项目编译未受影响。未构建APK、真机验收或Git提交/推送。详见raid-helper-evidence.json及规则47，完整恢复scope_complete=false。

'''.replace('SUMMARY', summary)
progress.write_text(text[:at] + detail.lstrip() + text[at:])

verification = Q / 'VERIFICATION.json'
data = json.loads(verification.read_text())
data['updated_utc'] = datetime.datetime.now(datetime.timezone.utc).isoformat()
data['scope_complete'] = False
data['raid_helper_evidence'] = evidence
data['unity_playmode']['latest_rule47_batches'] = evidence['independentTests']
data['current_client_scene_sha256'] = hashlib.sha256((W / 'reconstruction/CatGunnerUnityClient/Assets/Recovery/Scenes/RecoveredClient.unity').read_bytes()).hexdigest()
data['acceptance']['script_compile'] = 'Final source compiled; five Rule47 batches individually completed; final compilationFailed=false and Console errors=0.'
data['acceptance']['implemented_slice_playmode'] = 'Rule47 helper11/11; ordinary Raid5/5; PlaytestIssues15/15; StepUp11/11; startup4/4. Separate complete runs, not a whole-suite/Player/device result.'
data['acceptance']['visual_slice'] = 'Four Rule47 actually viewed GPU frames: locked helper slot, original purchase popup, owned slot and actual helper projectile combat. Energy spheres and partial skeletal deformation remain visibly different.'
data['acceptance']['raid_helper'] = 'Original fourth cat/65 guns, current-week entitlement, weak gun50-54, lowest of all three slot stars, mode5 combat, formation/warp/skin consumers, local purchase/cancel/duplicate guard, expiry/rebuy and isolated cold reload. Real projectile hits for all five weak types; native assets retained. Local payment/calendar/decimal/render adapters, SpriteSkin/advanced VFX and Player/device remain unaccepted.'
data['pending'] = evidence['pending']
folder = 'native-raid-helper-client-reviewed'
if not any(row['folder'] == folder for row in data['native_outputs']):
    data['native_outputs'].append({'folder':folder, 'queries':37, 'completed':37, 'businessMethods':31, 'exceptionHelpers':6, 'warning':'Matching bytes-checked bounded pseudocode/ASM, not original C# or recovered feature percentage'})
addresses = set()
for row in data['native_outputs']:
    path = R / row['folder'] / 'status.tsv'
    if not path.exists():
        raise FileNotFoundError(path)
    records = list(csv.DictReader(path.open(), delimiter='\t'))
    for record in records:
        if record['completed'] == 'true':
            addresses.add(int(record['preferred_va'], 16))
data['native_unique_completed_queries'] = len(addresses)
data['native_unique_completed_query_boundary'] = f'Union of true completed rows in declared native_outputs: {len(addresses)} unique addresses; not feature recovery percentage.'
verification.write_text(json.dumps(data, ensure_ascii=False, indent=2))
print({'rule':47, 'independentRuns':len(evidence['independentTests']), 'nativeUniqueAddresses':len(addresses), 'scopeComplete':False})
