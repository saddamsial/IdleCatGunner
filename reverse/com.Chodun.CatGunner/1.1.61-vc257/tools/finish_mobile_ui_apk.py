from pathlib import Path
from datetime import datetime,timezone
import json,hashlib
R=Path(__file__).resolve().parents[1];Q=R/'reports';W=R.parents[2];P=W/'reconstruction/CatGunnerUnityClient'
def read(n):return json.loads((Q/n).read_text())
def sha(f):return hashlib.sha256(f.read_bytes()).hexdigest()
tests=[]
for n,count in [('mobile-ui-final-tests.json',5),('mobile-onboarding-tests.json',5),('mobile-merge-tutorial-tests.json',5),('mobile-forest-feedback-tests.json',4),('mobile-startup-tests.json',4)]:
 x=read(n)['data']['result'];assert x['status']=='completed' and x['summary']==dict(total=count,passed=count,failed=0,skipped=0,inconclusive=0);tests.append(dict(report=n,summary=x['summary'],duration=x['duration']))
build=read('mobile-build-status.json')['data']['result'];assert build['result']=='Succeeded' and build['totalErrors']==0
apk=read('mobile-apk-audit.json');assert sha(Path(apk['path']))==apk['sha256'] and apk['archiveIntegrity'] and apk['zipAlignment16KiB']=='Verification successful'
emu=read('mobile-emulator-evidence.json');assert emu['apkSha256']==apk['sha256'] and emu['coldLaunch'] and emu['chineseColdCacheVisible'] and emu['localPurchase']['flagAfterColdReload']
protection=read('mobile-preservation.json');assert not protection['existingMetasChanged']
for row in protection['files']:assert sha(Path(row['path']))==row['after'] and (row['unchanged'] or row['allowedChange'])
h=read('mobile-ui-handoff.json');assert not any(h[k] for k in ['dirty','playing','paused','compiling','compilationFailed','missingScripts','inputOverrides']);assert h['persist'] and h['saveFolderOverride'] is None and not h['testHostFolder'] and h['userFillPPU']==10 and h['fillHeight']==37
console=read('mobile-final-console.json')['data']['result']['groundTruth'];assert console['consoleErrors']==0 and not console['compilationFailed']
s=read('remaining-ui-text-source-contract.json')
for f,d in s['sourceHashes'].items():assert sha(R/f)==d
assert sha(P/'Assets/Recovery/Resources/OriginalRemainingUIExt.json')==s['dataSha256']
sources={str(f.relative_to(P)):sha(f) for f in [P/'Assets/Recovery/Scripts/OriginalRemainingUIExt.cs',P/'Assets/Recovery/Scripts/RecoveryClientPresentation.cs',P/'Assets/Recovery/Resources/OriginalRemainingUIExt.json',P/'Assets/Recovery/Tests/PlayMode/OriginalMobilePresentationTests.cs',P/'Assets/Recovery/Tests/PlayMode/OriginalMergeTutorialTests.cs']}
visuals=[]
for name in ['mobile-ui-shop','mobile-ui-rebirth','mobile-ui-raid','mobile-ui-weekly','mobile-particle-0','mobile-particle-1','mobile-particle-2']:
 f=Q/'visual'/(name+'-gpu.png');visuals.append(dict(path=str(f.relative_to(Q)),sha256=sha(f),actuallyViewed=True))
for name in ['onboarding-upgrade-hand-gpu.png','onboarding-equip-arrow-gpu.png','merge-tutorial-hand-test-gpu.png','forest-real-hit-damage-gpu.png','forest-real-tree-cash-gpu.png']:
 f=Q/('mobile-regression-'+name);visuals.append(dict(path=str(f.relative_to(Q)),sha256=sha(f),actuallyViewed=True))
required=['OriginalRemainingUIExt','StarChineseFallback','OriginalWeaponCollection','OriginalWeaponDrawInformation','OriginalParticleCompatibility']
assert all(any(n in json.dumps(a) for a in build['packedAssets']) for n in required)
e=dict(rule=68,target=s['target'],updatedUtc=datetime.now(timezone.utc).isoformat(),sourceContract='remaining-ui-text-source-contract.json',staticBindings=259,sourceRows=300,sourceTerms=157,locales=14,missingSourceTargets=41,tests=tests,sources=sources,visuals=visuals,apk=apk,build=dict(report='mobile-build-status.json',result=build['result'],durationMs=build['buildTimeMs'],errors=0,warnings=build['totalWarnings'],missingUnusedResourcesScripts=155,notes='SDK/debug Resources prefabs remain frozen and unused; Scene0missing scripts. Other warnings package API deprecations/Player Pipeline disabled. BuildReport total includes intermediates; actualAPK96.81MiB.',requiredResourcesIncluded=required),emulator='mobile-emulator-evidence.json',preservation='mobile-preservation.json',handoff=h,console=dict(currentErrors=0,currentWarnings=console['consoleWarnings'],history='mobile-error-history.json',notCleared=True),failedOrEarlierAttempts=['mobile-ui-baseline-tests.json','mobile-ui-first-tests.json','mobile-ui-second-tests.json','mobile-helper-text-baseline.json','mobile-merge-tutorial-first-tests.json','mobile-android-module-install.json','mobile-android-module-repair.json','mobile-android-core-module-repair.json','mobile-emulator-create.log','mobile-build-argument-first.json','mobile-build-configuration-first.json'],nativeQueryIncrease=0,nativeUniqueCompletedQueries=951,scopeComplete=False,physicalDeviceAcceptance=False,gitDelivery=False,remaining='41absent source targets, parameterized/dynamic and excluded service labels, full I2/in-session locale/secondary-font/RTL, remaining UI/tutorial/FX source parity, original shader/plugin framework parity, liveSDK/backend and physical phone acceptance. Local ads/payments only.')
(Q/'mobile-ui-apk-evidence.json').write_text(json.dumps(e,ensure_ascii=False,indent=2)+'\n')
v=read('VERIFICATION.json');assert v['native_unique_completed_queries']==951 and 'mobile_ui_apk_evidence' not in v;v['mobile_ui_apk_evidence']=e;v['scope_complete']=False;v['updated_utc']=e['updatedUtc'];v['pending']=e['remaining'];(Q/'VERIFICATION.json').write_text(json.dumps(v,ensure_ascii=False,indent=2)+'\n')
summary='补接商店/周商店/团战/旅行/转生/增益/设置等259处静态原文（300源绑定、157词条、14语言）；修复团战队友同名Image父节点的解锁文字定位，保留原布局/动画/回调。UI专项5/5、初始教程5/5、首次合成教程5/5、自然战斗反馈4/4、启动4/4分别完整通过。12张Editor GPU及15张Android模拟器GPU已查看，主档/备份/场景和543既有meta保留，Fill10/37保留。'
delivery='首次提供独立Android试玩APK：`Build/CatGunner-Recovery-20261012-r68.apk`，96.81MiB，包名`com.ravanla.idlecatgunner.recovery`，版本0.68.0/code68，Android8/API26起，IL2CPP ARM64，独立本地测试签名。归档/签名/ELF与ZIP16KiB对齐通过；API37/Android17预览版独立ARM64/16KiB模拟器安装、冷启动、自然零摇杆战斗、触摸升级、自然挑战胜利30钻石/本地广告共120、100钻石抽取/拖拽装备第二猫、中文冷缓存/强停重载和500钻石本地模拟购买已验证；无状态注入/真实交易。'
boundary='仍是持续恢复的试玩版本。41缺失源路径、动态文本/完整I2、剩余UI/教程/特效及真实服务仍未完成；模拟器不是手机触摸/性能/原版对照验收。Player0错误/181警告（含未使用SDK/debug Resources155条缺脚本消息），正常场景0缺脚本/当前Console0错误/120警告。原生登记951不代表比例。完整证据：`reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/mobile-ui-apk-evidence.json`。'
f=W/'README.md';t=f.read_text().replace('## 最新恢复：模式界面原文（规则67）','## 历史恢复：模式界面原文（规则67）',1);f.write_text(t.replace('# IdleCatGunner\n','# IdleCatGunner\n\n## 最新恢复与Android试玩包（规则68）\n\n'+summary+'\n\n'+delivery+'\n\n'+boundary+'\n',1))
f=Q/'RECOVERY_PROGRESS.md';t=f.read_text().replace('## 当前阶段：模式界面原文（规则67，2026-10-12）','## 历史阶段：模式界面原文（规则67，2026-10-12）',1);i=t.index('## 历史阶段：模式界面原文');f.write_text(t[:i]+'## 当前阶段：剩余静态UI与Android试玩包（规则68，2026-10-12）\n\n'+summary+'\n\n'+delivery+'\n\n'+boundary+'\n\n'+t[i:])
f=R/'original-game-rules/00_INDEX.md';t=f.read_text();f.write_text(t.replace('# 原规则索引：Cat Gunner 1.1.61\n','# 原规则索引：Cat Gunner 1.1.61\n\n- [68 剩余静态UI与Android试玩包](68_MOBILE_UI_AND_APK.md)：259处静态原文、教程/FX回归、独立ARM64签名包及16KiB模拟器闭环。\n',1))
(W/'Build/试玩说明.md').write_text('# CatGunner 恢复试玩 0.68.0\n\n'+delivery+'\n\n将同目录APK复制到手机安装，可与原版并存，从独立新存档开始，不迁移Unity或原版进度。广告按钮本地模拟观看，现金礼包本地模拟成功，不扣款；外部服务尚未恢复。\n\n建议体验：自动移动射击/纸币洒落/伤害数字；升级三次后挑战、领奖、购买武器并拖到第二槽；关闭重开和退出重启；商店模拟购买、鱼/宠物/任务/解锁门禁。\n\n'+boundary+'\n\nSHA256：`'+apk['sha256']+'`\n\n本地试玩签名与口令保存在被Git忽略的Build/.local-signing；勿发布或提交该目录。后续包继续用同一测试签名以保留手机恢复版进度。\n')
print(dict(rule=68,apkMiB=apk['mib'],staticBindings=259,tests=[x['summary'] for x in tests],physicalDeviceAcceptance=False))
