from pathlib import Path
from datetime import datetime,timezone
import json,hashlib
R=Path(__file__).resolve().parents[1];Q=R/'reports';W=R.parents[2];P=W/'reconstruction/CatGunnerUnityClient'
def read(n):return json.loads((Q/n).read_text())
def sha(p):
 h=hashlib.sha256()
 with p.open('rb') as f:
  for b in iter(lambda:f.read(1048576),b''):h.update(b)
 return h.hexdigest()
checks=[]
for n,c in [('mobile76-tests.json',2),('mobile76-modes.json',1),('mobile76-startup.json',4)]:
 x=read(n)['data']['result'];assert x['status']=='completed' and x['summary']['passed']==c and x['summary']['failed']==0;checks.append(dict(report=n,summary=x['summary'],duration=x['duration']))
b=read('mobile76-build-status.json')['data']['result'];assert b['result']=='Succeeded' and b['totalErrors']==0
apk=read('mobile76-apk-audit.json');assert sha(Path(apk['path']))==apk['sha256']
phone=read('mobile76-phone-evidence.json');assert phone['installedCode']==76 and all(phone['progressRetained'].values()) and not phone['managedErrors']
h=read('mobile76-handoff.json');assert not any(h[k] for k in ['dirty','playing','paused','compiling','compilationFailed','missingScripts','inputOverrides']);assert h['persist'] and not h['saveFolderOverride'] and not h['testHostFolder'] and h['userFillPPU']==10 and h['fillHeight']==37
before=read('mobile76-before.json');metas=[p for p,v in before['metas'].items() if sha(Path(p))!=v];assert not metas
protected=[]
for row in before['files']:
 actual=sha(Path(row['path']));cache=row['path'].endswith('StarChineseFallback.asset');assert cache or actual==row['sha256'];protected.append(dict(path=row['path'],unchanged=actual==row['sha256'],generatedFontCache=cache,after=actual))
e=dict(rule=77,updatedUtc=datetime.now(timezone.utc).isoformat(),target='com.Chodun.CatGunner 1.1.61 vc257 ARM64',tests=checks,build=dict(result=b['result'],errors=b['totalErrors'],warnings=b['totalWarnings'],durationMs=b['buildTimeMs']),apk=apk,phone=phone,handoff=h,protected=protected,existingMetas=len(before['metas']),changedMetas=metas,sources={str(p.relative_to(P)):sha(p) for p in [P/'Assets/Recovery/Scripts/RecoveryForestClient.cs',P/'Assets/Recovery/Tests/PlayMode/OriginalMobile76Tests.cs']},visuals=[dict(path=str(p.relative_to(Q)),sha256=sha(p)) for p in sorted((Q/'visual').glob('mobile76-*.png'))],legacyCaptureNote=read('mobile76-startup-capture-path-note.json'),nativeQueryIncrease=0,nativeUniqueCompletedQueries=951,scopeComplete=False,physicalDeviceFullAcceptance=False,gitDelivery=False,boundary='User corrected walking-backdrop order; native mode HUD rules and startup readiness preserved. Independent fixture pointer clicks and physical phone checks are separate. Full original UI/tutorial/FX and services remain open.')
(Q/'mobile76-evidence.json').write_text(json.dumps(e,ensure_ascii=False,indent=2)+'\n')
v=read('VERIFICATION.json');v['mobile77_evidence']=dict(report='mobile76-evidence.json',tests=checks,apk=apk['path'],scopeComplete=False);v['scope_complete']=False;v['updated_utc']=e['updatedUtc'];(Q/'VERIFICATION.json').write_text(json.dumps(v,ensure_ascii=False,indent=2)+'\n')
summary='猫咪移动中背景降低到全部HUD下方，并关闭触摸拦截；左右菜单、底部三种升级、顶部设置及状态栏保持可见可点。背景铺满物理屏幕，不受刘海安全区限制；五种模式保留各自原HUD显示规则。'
validation='独立存档专项2/2、五种模式进出1/1、启动4/4分别通过。专项实际点击了三种升级、左武器、右挑战、顶部设置并检查对应状态；升级数值正确。场景/桌面主档与备份/既有meta保持，Fill10/37；动态字体缓存单独记录。'
delivery=f"当前APK：Build/CatGunner-Recovery-20261012-r76.apk，{apk['mib']}MiB，0.76.0/code76。IL2CPP ARM64 Release，构建0错误/{b['totalWarnings']}警告，签名/归档/16KiB对齐通过。手机已用同包名同签名覆盖更新，新进度保留；广告/现金购买继续本地模拟，不扣款。"
boundary='证据：reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/mobile76-evidence.json。仍是持续恢复试玩版，全部UI/教程/特效/线上服务一致性尚未完成。'
f=W/'README.md';s=f.read_text().replace('## 最新手机试玩修复（规则69–76）','## 历史手机试玩修复（规则69–76）',1);f.write_text(s.replace('# IdleCatGunner\n','# IdleCatGunner\n\n## 最新加载层级修复（规则77）\n\n'+summary+'\n\n'+validation+'\n\n'+delivery+'\n\n'+boundary+'\n',1))
f=Q/'RECOVERY_PROGRESS.md';s=f.read_text().replace('## 当前阶段：手机试玩缺陷修复（规则69–76）','## 历史阶段：手机试玩缺陷修复（规则69–76）',1);i=s.index('## 历史阶段：手机试玩缺陷修复');f.write_text(s[:i]+'## 当前阶段：加载画面位于全部HUD下方（规则77）\n\n'+summary+'\n\n'+validation+'\n\n'+delivery+'\n\n'+boundary+'\n\n'+s[i:])
f=R/'original-game-rules/00_INDEX.md';s=f.read_text();heading=s.splitlines()[0];f.write_text(s.replace(heading,heading+'\n\n- [77 加载背景位于全部HUD下方](77_WALKING_BACKDROP_BELOW_ALL_HUD.md)',1))
(W/'Build/试玩说明.md').write_text('# CatGunner 恢复试玩0.76.0\n\n'+delivery+'\n\n'+summary+'\n\n'+validation+'\n\n手机已更新，可继续试玩。手动安装选更新，不要卸载恢复版。Unity打开RecoveredClient.unity点Play。\n\n'+boundary+'\n\nSHA256：'+apk['sha256']+'\n')
print(dict(apk=apk['path'],tests=[x['summary'] for x in checks],preservedMetas=len(before['metas']),phoneUpdated=True))
