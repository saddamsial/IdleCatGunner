from pathlib import Path
import json

R = Path(__file__).resolve().parents[1]
root = R.parents[2]
verification = json.loads((R / 'reports/VERIFICATION.json').read_text())
evidence = verification['content_unlock_evidence']
assert evidence['handoff']['ready_for_user_play']
tests = evidence['tests']
assert all(t['summary']['failed'] == 0 and t['status'] == 'completed' for t in tests.values())
numbers = {key: f"{t['summary']['passed']}/{t['summary']['total']}（{t['duration']:.2f}秒）" for key, t in tests.items()}
test_line = f"本轮独立运行：解锁专项{numbers['focused']}，原导航/玩法回归{numbers['navigation']}，宠物合成/抽取动画及遗物入口补查{numbers['supplemental']}，启动回归{numbers['startup']}。各自保存完整结果，不拼接为一次全量通过；历史165/165早于详情/长按及本轮门禁改动。"
stage = f'''## 当前阶段：八个普通内容入口与原关卡解锁（2026-10-10）

按原表恢复重生3、矿山4、鱼缸6、Boss10、宠物12、怪物挑战12、派遣35、团战40关门禁。判定用历史最远关卡Stage_Value_Max/10+1，重生不重新锁定。只显示已解锁和下一批待解锁项，宠物/怪物挑战同门槛一起显示；锁定图标及关卡提示接回，八个原Button恢复单一Content_Btn_*回调，移除旧直接开窗适配。

matching native 20业务+6异常辅助26/26有界导出、首16字节与原32字节初始化表SHA核验；原Contents_Unlock_manager GUID和八条Content_Info引用保留。场景仅通过Editor API恢复一个原空RectTransform管理器根，当前34364对象/零缺失脚本。规则26和original-content-unlock-contract.json分开记录原逻辑、现有离线页面控制器/刷新桥接/英文提示适配。

{test_line}

整合前缺组件1/5、首轮Adventure根夹具错误4/5，以及导航首轮8项因新启用按钮尚未刷新画布而失败，原报告分别保留。只修正独立测试的页面根和UI帧等待，不放宽生产门禁。补查使用原历史进度夹具，未修改用户进度/货币。GPU图已读取：独立最远显示关卡11，当前HUD仍1-1，宠物/怪物锁定、派遣/团战隐藏；不是用户存档或真机对照。

正常RecoveredClient入口已恢复EditMode、无暂停/编译/脏场景、Persist=true、SaveFolderOverride=null；试玩主/备份整轮SHA未变，原Main/native/metadata未变。原Tutorial_manager尚未接入，采用原不存在分支，不改写教程完成记录；完整教程/WeeklyShop、其他UI与特效、全本地化、遗物离线/跳关及缺表、团战任务、Player/真机等仍待恢复或验收。未构建Player、未提交或推送Git，完整客户端scope_complete=false。

'''
progress_path = R / 'reports/RECOVERY_PROGRESS.md'
progress = progress_path.read_text()
if '## 当前阶段：八个普通内容入口与原关卡解锁' not in progress:
    marker = '## 当前阶段：宠物详情翻页与重生长按'
    progress = progress.replace(marker, stage + '## 历史阶段：宠物详情翻页与重生长按', 1)
    progress_path.write_text(progress)

readme_path = root / 'README.md'
readme = readme_path.read_text()
entry = '- 内容解锁：原八个入口按历史最远关卡开放，重生3、矿山4、鱼缸6、Boss10、宠物/怪物12、派遣35、团战40；显示已解锁和下一批待解锁按钮，恢复锁定图标、关卡提示与原回调。重生和存档重载保留解锁进度；原完整教程尚待接入。\n\n'
if '- 内容解锁：原八个入口' not in readme:
    readme = readme.replace('本轮已接入：\n\n', '本轮已接入：\n\n' + entry, 1)
    readme = readme.replace('最新完整恢复程序集 **165/165 PlayMode通过**', '历史完整恢复程序集 **165/165 PlayMode通过**', 1)
    readme = readme.replace('最新宠物详情/重生长按专项', test_line + ' 试玩主/备份哈希一致，正常Unity试玩入口已恢复。\n\n上一轮宠物详情/重生长按专项', 1)
    readme = readme.replace('原内容解锁/WeeklyShop及部分原UI流程仍待恢复', '完整教程/WeeklyShop及部分原UI流程仍待恢复')
    readme = readme.replace('- [鱼类、自动合成与共用 UI]', '- [八个普通内容入口与关卡解锁](reverse/com.Chodun.CatGunner/1.1.61-vc257/original-game-rules/26_CONTENT_UNLOCK.md)\n- [鱼类、自动合成与共用 UI]', 1)
    readme_path.write_text(readme)

index_path = R / 'original-game-rules/00_INDEX.md'
index = index_path.read_text()
if '[26 八个普通内容入口与关卡解锁]' not in index:
    index_path.write_text(index.rstrip() + '\n\n- [26 八个普通内容入口与关卡解锁](26_CONTENT_UNLOCK.md)：原3/4/6/10/12/12/35/40门槛、历史最远关卡、仅已解锁/下一批显示、原锁图标与回调、重生及冷重载；完整教程尚未接入。\n')

rules_path = R / 'original-game-rules/26_CONTENT_UNLOCK.md'
rules = rules_path.read_text()
if '## 本轮实际验证' not in rules:
    rules_path.write_text(rules.rstrip() + '\n\n## 本轮实际验证\n\n' + test_line + '\n\n整合前1/5、首次整合4/5、导航首轮8/8失败各自保留；分别为组件缺失、Adventure实际本地根夹具及按钮OnEnable后未等UI帧。只修正夹具，不放宽生产门禁。正常EditMode交接34364对象、零缺失脚本，主/备份整轮哈希相同，原三冻结输入及管理器meta相同。\n')

reproduce_path = R / 'reports/REPRODUCE.md'
reproduce = reproduce_path.read_text()
if '## Ordinary content unlock gates (2026-10-10)' not in reproduce:
    reproduce_path.write_text(reproduce.rstrip() + '''

## Ordinary content unlock gates (2026-10-10)

Use select_native_methods.py content-unlock-ui and the matching libil2cpp/metadata, ExportSelectedMethods.java, verified-noreturn.tsv and native-content-unlock-ui-references.tsv. All26 queries must finish with input bytes matched. export_content_unlock_contract.py verifies the original32-byte initializer SHA, compressed signed enum values, frozen Main/native/metadata, manifest callback evidence and original manager GUID.

export_content_unlock_manifest.py reads only frozen Main; ContentUnlockClientEditor.Integrate operates on clean EditMode RecoveredClient through Editor APIs. The current scene is already integrated; do not reimport or repeat merge. Its single original manager root, eight button/lock references and eight sole Content_Btn_* listeners are recorded in content-unlock-scene-restoration.json. An IPC5-second timeout may still complete a save; inspect persisted report and actual scene before retrying.

Run PlayMode OriginalContentUnlockTests (testName), ContentNavigation (category), ContentNavigationExtra (category) and OriginalStartupTests (testName) separately with async_tests=true and explicit project-path. Wait for completed test_status before editing Assets or beginning the next run. The separate totals are5,8,3,4; no current full assembly run is claimed. Existing navigation fixtures set only their independent nonpersistent historical frontier and yield one UI frame after enabling buttons. Never inject this fixture into the user's profile or production initialization.

Keep live-content-unlock-before-status.json, focused-first-status and navigation-first-status failures distinct. Inspect visual/content-unlock-stage11-test-gpu.png; the historical frontier is11 while the independent current HUD is1-1. After tests reopen normal RecoveredClient in EditMode, Persist=true/SaveFolderOverride=null; inspect content-unlock-editor-handoff.json and verify both user profile hashes against content-unlock-user-save-before.json.

update_content_unlock_acceptance.py requires actual completed5/5,8/8,3/3,4/4, final handoff and unchanged user profile/original inputs; then update_content_unlock_docs.py updates this documentation. Original tutorial controller is absent and follows native absence=false, with no tutorial completion record written. Local UI refresh, existing mode lifecycle bridge and English stage alert remain explicit adapters. Full tutorial/WeeklyShop/effects/localization/Player/device and commercial/online service acceptance remain pending.
''')
print(test_line)
