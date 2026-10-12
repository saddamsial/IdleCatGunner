from pathlib import Path
import json,csv,datetime
R=Path(__file__).resolve().parents[1];Q=R/'reports';W=R.parents[2];e=json.loads((Q/'weapon-detail-evidence.json').read_text());runs=e['independentCompletedBatches'];summary='本轮接回65枪原类型和说明，14个原I2 term/196个原文本值（含14语言），共用库存/装备/任务/团战预览标签接入原文。补原库存点击Button1音效，实际鼠标、静音、拖拽与自动合成门禁验证；原两秒获得武器提示的动画重启、缩放时间自动隐藏和暂停生命周期验证。GPU发现的中文缺字通过原包NotoSansSC动态资源/独立运行时材质修复，静态说明在原矩形内留边、换行和适配字号；不是完整I2或原字体像素等价。'
checks='、'.join({'OriginalWeaponPresentationTests':'武器呈现','OriginalTemporaryGunTests':'临时广告武器','OriginalInventoryTests':'普通库存','OriginalStartupTests':'启动','OriginalStarTests.OriginalSlotPopup':'原强化弹窗'}[r['filter']]+str(r['summary']['passed'])+'/'+str(r['summary']['total'])+'（'+str(r['duration'])+'秒）' for r in runs)
summary+=checks+'，分别完整通过，未拼接为一次全套。两张最终GPU实际查看；用户主档/备份、原场景、原字体源/.meta和动画保持。既有本地生成StarChineseFallback字形缓存由TMP自动更新，是明确允许的本地缓存变化，旧asset未备份，不宣称该asset字节未改。原GUID保持，ClearDynamicDataOnBuild=1。最终干净EditMode、零缺脚本、无隔离键/输入覆盖、Console错误0。完整I2/UI/教程/特效、原InfVal/指针全链、真实服务和Player/真机验收仍待恢复，scopeComplete=false。'
p=Q/'RECOVERY_PROGRESS.md';s=p.read_text();old='## 当前阶段：临时广告武器原库存领取与到期流程（规则58，2026-10-11）';new='## 当前阶段：武器原文、中文呈现与获得武器提示（规则59，2026-10-11）'
if new not in s:
 assert old in s;s=s.replace(old,old.replace('当前阶段','历史阶段'),1);at=s.index('## 历史阶段：临时广告武器');s=s[:at]+new+'\n\n'+summary+'\n\n26原生查询（20业务/6共享辅助）核对完成，声明目录18新增地址，并集901到919；查询数不等于恢复比例。基线0/1及三次夹具问题、一次自动同步夹具问题分别保留，整批重跑不合并局部结果。修改9个既有运行脚本，新增文字模型/运行时字体绑定、原文本资源和专项测试；无场景保存、SDK/APK或Git交付。详见weapon-detail-evidence.json和规则59。\n\n'+s[at:];p.write_text(s)
p=R/'original-game-rules/00_INDEX.md';s=p.read_text()
if '59_WEAPON_PRESENTATION.md' not in s:
 at=s.index('\n')+1;s=s[:at]+'\n- [59 武器原文与呈现](59_WEAPON_PRESENTATION.md)：七类原类型/说明、196原文本、中文完整字形与静态排版、库存点击音效、原两秒非模态获得提示/暂停/重启及独立保存保护。\n'+s[at:];p.write_text(s)
p=Q/'VERIFICATION.json';d=json.loads(p.read_text());d['updated_utc']=datetime.datetime.now(datetime.timezone.utc).isoformat();d['scope_complete']=False;d['weapon_presentation_evidence']=e;d['unity_playmode']['latest_rule59_batches']=runs;d['pending']=e['pending'];d['acceptance']['script_compile']='Rule59 final sources exercised by separate completed batches; final compilationFailed=false, Console errors0.';d['acceptance']['implemented_slice_playmode']='Rule59 '+checks+' independently complete; not a full-game/Player/device run.';d['acceptance']['visual_slice']='Two actually viewed final Rule59 GPU frames; original descriptions rendered fully in Chinese and original weapon acquisition Open. Other locales/complete UI/font parity remain pending.';d['acceptance']['weapon_presentation']='Original type/description and Button1 click feedback; original2sec nonmodal toast reactivation, scaled autohide/pause; explicit Chinese font/material/description sizing adapter and added generated font glyph cache.'
if not any(x['folder']=='native-weapon-detail-client-reviewed' for x in d['native_outputs']):d['native_outputs'].append({'folder':'native-weapon-detail-client-reviewed','queries':26,'completed':26,'businessMethods':20,'exceptionHelpers':6,'warning':'Bounded byte-checked C/ASM and14 literal-to-I2-term mappings;18 addresses new to declared folders. Query count is not original C# or a game-recovery percentage.'})
addresses=set()
for entry in d['native_outputs']:
 for row in csv.DictReader((R/entry['folder']/'status.tsv').open(),delimiter='\t'):
  if row['completed']=='true' and not row['error']:addresses.add(row['preferred_va'])
assert len(addresses)==919;d['native_unique_completed_queries']=919;d['native_unique_completed_query_boundary']='919 unique completed addresses across declared outputs;18 newly registered addresses in Rule59. This union is not semantic behavior coverage or a game recovery percentage.';d['current_client_scene_sha256']=next(x['sha256'] for x in e['preservation']['records'] if x['path'].endswith('/RecoveredClient.unity'));p.write_text(json.dumps(d,ensure_ascii=False,indent=2))
p=W/'README.md';s=p.read_text();entry='\n## 最新恢复：武器原文与中文呈现（规则59）\n\n'+summary+'\n\n继续试玩 `reconstruction/CatGunnerUnityClient/Assets/Recovery/Scenes/RecoveredClient.unity`。证据：`reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/weapon-detail-evidence.json`。\n'
if '最新恢复：武器原文与中文呈现（规则59）' not in s:
 at=s.index('\n')+1;s=s[:at]+entry+s[at:];p.write_text(s)
print({'rule':59,'separateBatches':len(runs),'declaredNativeQueries':919,'scopeComplete':False})
