from pathlib import Path
import json

R=Path(__file__).resolve().parents[1];root=R.parents[2]
e=json.loads((R/'reports/VERIFICATION.json').read_text())['merge_tutorial_evidence'];assert e['handoff']['ready_for_user_play']
tests=e['tests'];assert all(row['status']=='completed' and row['summary']['failed']==0 for row in tests.values())
counts={key:f"{row['summary']['passed']}/{row['summary']['total']}（{row['duration']:.2f}秒）" for key,row in tests.items()}
line=f"本轮四次独立运行：合成引导专项{counts['focused']}、库存{counts['inventory']}、鱼类/自动合成/共用UI{counts['fish_auto_ui']}、启动{counts['startup']}；不合并为新全量总数。完整165/165属于合成引导、内容门禁及详情/长按改动前的历史结果。"
stage=f'''## 当前阶段：原枪械首次合成手指引导（2026-10-10）

接回Gun_Merge_Tutorial、TutorialArrow_UI与原Gun_manager.merge_tutorial_ui引用；已存在的GO1661/730/195层级和原Hand图片不替换。原两份MonoScript meta/GUID保持一致；通过Editor API补两组件，仍34364对象、零缺失脚本。按原顺序取两件有效0..4武器，排除锁定/广告，在Has_Merged后停止，不额外添加拖动或自动开关门禁。原1.2秒移动、0.15秒压缩/恢复/暂停、0.8缩放、SmoothStep与目标失活/重开协程接回，原非raycast图片不会遮挡实际拖拽。

{line}

51条原生导出全部首16字节核验，其中45业务/6辅助，17条是本轮已实现提示/箭头，其余28条初始教程仅分析。原五步攻击升级→挑战→开枪械→抽取→装备已核实，原补至100钻和0.2秒轮询保存为证据；教程根和7处未纳入HUD仍待恢复，本轮不发教程钻石、不改变教程完成/归因记录。原static韩文与商业入口边界保留。原始启动未完成、夹具可选移动桥错误、修正后原组件缺失0/1历史报告分别保存。

GPU已读取，独立两件测试武器之间的原Hand可见；不是用户进度或手机全像素对照。试玩主/备份整轮SHA一致，三冻结输入、两份meta一致。正常RecoveredClient已恢复EditMode/Persist=true/无覆盖/暂停/编译/脏场景，原Hand SpriteGUID核对；未构建Player、未提交或推送Git。完整五步教程/WeeklyShop、其他UI/特效/本地化、遗物消费者与缺表、团战任务、线上商业服务及Player/真机仍待恢复或验收，scope_complete=false。

'''
p=R/'reports/RECOVERY_PROGRESS.md';s=p.read_text();marker='## 当前阶段：八个普通内容入口与原关卡解锁'
if '## 当前阶段：原枪械首次合成手指引导' not in s:p.write_text(s.replace(marker,stage+'## 历史阶段：八个普通内容入口与原关卡解锁',1))
p=root/'README.md';s=p.read_text()
if '- 首次合成引导：' not in s:
    s=s.replace('本轮已接入：\n\n','本轮已接入：\n\n- 首次合成引导：原Hand在两件低阶枪械之间移动和按压，不拦截拖拽；排除锁定/广告武器，首次合成后停止，存档重载保持。原1.2秒移动、0.15秒压缩/恢复/暂停与0.8缩放已接回；完整初始五步教程本轮仅完成原生分析。\n\n',1)
    s=s.replace('本轮独立运行：解锁专项',line+' 试玩主/备份哈希一致，正常Unity试玩入口已恢复。\n\n上一轮独立运行：解锁专项',1)
    s=s.replace('- [八个普通内容入口与关卡解锁]','- [原枪械首次合成引导](reverse/com.Chodun.CatGunner/1.1.61-vc257/original-game-rules/27_GUN_MERGE_TUTORIAL.md)\n- [八个普通内容入口与关卡解锁]',1)
    p.write_text(s)
p=R/'original-game-rules/00_INDEX.md';s=p.read_text()
if '[27 原枪械首次合成引导]' not in s:p.write_text(s.rstrip()+'\n\n- [27 原枪械首次合成引导](27_GUN_MERGE_TUTORIAL.md)：原Hand/SmoothStep、有效低阶筛选、非raycast实际拖拽/首次合成停止/独立重载；原五步初始教程已分析但尚未接入。\n')
p=R/'original-game-rules/27_GUN_MERGE_TUTORIAL.md';s=p.read_text()
if '## 本轮完成结果' not in s:p.write_text(s.rstrip()+'\n\n## 本轮完成结果\n\n'+line+'\n\n正常场景交接34364对象/零缺失脚本、主/备份未改、原Hand Sprite及两脚本GUID保留。各报告及合同见VERIFICATION.json的merge_tutorial_evidence。\n')
p=R/'reports/REPRODUCE.md';s=p.read_text()
if '## Gun merge tutorial cue (2026-10-10)' not in s:
    p.write_text(s.rstrip()+'''

## Gun merge tutorial cue (2026-10-10)

select_native_methods.py tutorial-ui uses matching input and exports51 queries via ExportSelectedMethods.java/verified-noreturn.tsv/native-tutorial-ui-references.tsv. Exported native-tutorial-ui-reviewed includes17implemented cue/arrow methods and28onboarding methods still not integrated, plus6helpers. export_merge_tutorial_contract.py verifies source hashes, float pairs, original2meta and manifest. No completion percentage follows from native query count.

export_tutorial_manifest.py reads frozen Main and emits OriginalTutorial.json; current scene already has source gun merge hierarchy. MergeTutorialClientEditor.Integrate only operates on clean EditMode normal RecoveredClient and restores two original components/manager reference. Do not import full onboarding or commercial HUD as if this slice already implements it. Scene changes use Editor APIs, no direct working YAML edit. Preserve source non-raycast Hand and originalmeta before Editor imports scripts.

After AssetDatabase.Refresh wait for compiler/domain reload to finish before run_tests. First attempted async launch lost its active collector during refresh and did not finish; do not treat running-with-no-result as passing. Keep retry fixture failure and corrected missing-component0/1 evidence. Final focused5/5 is a single completed run, not1+4 merged totals.

Run OriginalMergeTutorialTests, OriginalInventoryTests, OriginalFishAndAutoMergeTests and OriginalStartupTests separately using PlayMode/testName/async_tests=true/explicit project-path; wait for each completed test_status. Expected totals5/6/18/4. Do not change Assets while tests run, and do not sum these into a current full assembly result. Independent tests disable persistence before Start or use a unique temporary directory, preserving user profiles.

Read visual/merge-tutorial-hand-test-gpu.png. Use eval_file tools/merge_tutorial_handoff.cs after tests to reopen clean normal RecoveredClient, Persist=true/SaveFolderOverride=null/EditMode. Inspect merge-tutorial-editor-handoff.json, unchanged tutorial-user-save-before/after hashes and original2GUID/Hand Sprite reference. Then update_merge_tutorial_acceptance.py and update_merge_tutorial_docs.py require actual completed runs/handoff/preservation. Full initial tutorial, ordinary top-up and tutorial completion persistence remain unintegrated; attribution logging excluded, Merge_Tutorial_Logged is not forged. No Player/device/Git delivery is implied.
''')
print(line)
