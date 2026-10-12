"""Publish Rule48 while retaining each earlier test batch and boundary."""
from pathlib import Path
import csv,datetime,hashlib,json
R=Path(__file__).resolve().parents[1];W=R.parents[2];Q=R/'reports'
evidence=json.loads((Q/'stargem-pig-evidence.json').read_text())
assert evidence['preservation']['userMainAndBackupUnchanged'] and not evidence['scopeComplete']
runs=evidence['independentTests'];labels=['专项','普通团战','试玩问题','团战助手','启动']
checks='、'.join(f"{label}{r['summary']['passed']}/{r['summary']['total']}（{r['duration']}秒）" for label,r in zip(labels,runs))
summary='本轮接回团战星钻存钱罐：入场+50、每条Boss血条击破+25，容量660/1500/2500与2/2/1购买升档、售罄、原入口/填充条/价格/关闭、跨周重置及保存冷重载接通。满额后原现金按钮可进行明确的本地模拟支付，奖励星钻，不扣款。'+checks+'分别完整通过；不是一次全套测试。你的试玩主档和备份保持不变，可直接Play。免广告自动奖励/扫荡、可信联网时间、部分特效/骨骼及剩余UI/服务和真机仍待恢复。'
p=W/'README.md';text=p.read_text();marker='本轮接回当季团战助手：';assert marker in text;text=text.replace(marker,'上一轮接回当季团战助手：',1);at=text.index('上一轮接回当季团战助手：');p.write_text(text[:at]+summary+' 详见 [规则48](reverse/com.Chodun.CatGunner/1.1.61-vc257/original-game-rules/48_STARGEM_PIG_CLIENT.md)。\n\n'+text[at:])
p=Q/'RECOVERY_PROGRESS.md';text=p.read_text();marker='## 当前阶段：当季团战助手与第四只猫（规则47，2026-10-11）';assert marker in text;text=text.replace(marker,marker.replace('当前阶段','历史阶段'),1);at=text.index('## 历史阶段：当季团战助手');detail='## 当前阶段：团战星钻存钱罐完整本地流程（规则48，2026-10-11）\n\n'+summary+'\n\n'
detail+='本轮48原生查询完成，其中业务42与异常辅助6；静态数组与字符串有匹配metadata和原ARM64字节证据。恢复三份原组件及meta，不新增GameObject；133432既有身份全保留，6份文档仅组件列表、按钮和客户端引用变化，原RectTransform变化0。35834对象、缺脚本0。原页面Alert空引用保持，不添加替代图标；显式Unity判空修复UnassignedReferenceException。\n\n'
detail+='真实EventSystem射线/按下松开验证入口、关闭和五次现金模拟；实际Gun30子弹/原Boss血量/原时限、零摇杆观察入场50与击破后75星钻，移动7.67。夹具装备、时间、满额只写独立临时档案，不改用户进度。0/1初始缺入口与第一次完整6/11空引用失败均保留；修复后重新完整11/11。既有购买纯测试夹具显式标记当前周，避免原跨周逻辑清除夹具积累。\n\n'
preserve=evidence['preservation'];detail+=f"{preserve['historicalGpuFramesPreserved']}张历史GPU保持原SHA，覆盖回归帧另存；四张新GPU实际检查。225份既有脚本meta、三份原新增meta和冻结Main/native/metadata核对；用户主档与备份SHA不变。原价格回退、本机时间0.25秒观察、镜像字段同步、畸形整数长中间值及本地支付分别标为适配。\n\n"
detail+='最终干净EditMode、Persist=true、无测试/存档/输入覆盖、timeScale=1，广告与购买模拟仍默认true；Console当前错误0、编译失败false。CLI主线程超时已记录：第一次Restore没有执行，之后延迟调度由落盘报告确认完成；Refresh虽超时但实际编译完成。只无损压缩一份旧生成场景快照并核验解压SHA，恢复工具支持该路径；原输入和工作场景保留。未构建APK、未真机验收或Git提交/推送。详见stargem-pig-evidence.json，完整恢复scope_complete=false。\n\n'
p.write_text(text[:at]+detail+text[at:])
verification = Q / 'VERIFICATION.json'
data = json.loads(verification.read_text())
data['updated_utc'] = datetime.datetime.now(datetime.timezone.utc).isoformat()
data['scope_complete'] = False
data['stargem_pig_evidence'] = evidence
data['unity_playmode']['latest_rule48_batches'] = evidence['independentTests']
data['current_client_scene_sha256'] = hashlib.sha256((W / 'reconstruction/CatGunnerUnityClient/Assets/Recovery/Scenes/RecoveredClient.unity').read_bytes()).hexdigest()
data['acceptance']['script_compile'] = 'Final source compiled; five Rule48 batches individually completed; final compilationFailed=false and Console errors=0.'
data['acceptance']['implemented_slice_playmode'] = 'Rule48 StarGemPig11/11; ordinary Raid5/5; RaidHelper11/11; PlaytestIssues15/15; startup4/4. Separate complete runs, not a whole-suite/Player/device result.'
data['acceptance']['visual_slice'] = 'Four Rule48 actually viewed GPU frames: locked StarGem pig page, full page, second level and sold out. Original assets retained; advanced energy VFX/SpriteSkin/full localization remain pending.'
data['acceptance']['stargem_pig'] = 'Original page/HUD/controllers, native +50 raid entry/+25 per Boss bar, capacities660/1500/2500 with purchase counts2/2/1, local simulated cash button, cancellation/disable/duplicate protection, sold out, current-week reset and isolated cold reload. Trusted clock and live store services remain adapters.'
data['pending'] = evidence['pending']
folder = 'native-stargem-pig-client-reviewed'
if not any(row['folder'] == folder for row in data['native_outputs']):
    data['native_outputs'].append({'folder':folder, 'queries':48, 'completed':48, 'businessMethods':42, 'exceptionHelpers':6, 'warning':'Matching bytes-checked bounded pseudocode/ASM, not original C# or recovered feature percentage'})
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
print({'rule':48, 'independentRuns':len(evidence['independentTests']), 'nativeUniqueAddresses':len(addresses), 'scopeComplete':False})
