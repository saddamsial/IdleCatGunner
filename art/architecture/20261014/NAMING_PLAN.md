# 正式命名迁移方案（已获批准并应用）

已完成文件级快照 `baseline.tar.gz`，保存本轮开始时的未提交修改，不以 HEAD 覆盖现有工作。

拟将维护中的 Unity 游戏代码迁移为正式名称，完整类型映射见 `type-renames.json`（182 个运行及测试类型）。例如：

- RecoveryForestClient -> GameClient
- RecoveryClientPresentation -> ClientPresentation
- RecoveryUiAuthoring -> UiAuthoring
- OriginalSaveData -> SaveData
- OriginalAmount -> CurrencyAmount
- OriginalRebirth -> RebirthProgression
- OriginalGunInventory -> GunInventory
- RecoveryEditorDebug -> GameDebugTools
- OriginalBulletTests -> BulletTests

拟组织为 Assets/Game/Runtime、Editor、Scenes、Resources、Tests；运行命名空间及程序集为 CatGunner.Runtime，测试程序集为 CatGunner.PlayModeTests。正式入口为 GameClient.unity，测试空场景为 TargetPreview.unity。

执行采用 AssetDatabase.MoveAsset 保留 GUID；类型添加 MovedFrom，字段迁移使用 FormerlySerializedAs。同步更新项目内维护脚本、测试与构建入口。不会改动历史反编译证据或历史备份。

旧存档目录、PlayerPrefs 语言键、存档 JSON 字段及 TestHostFolder 隔离键保留兼容值。目录/资源键迁移前记录 GUID 与 meta 哈希，完成后检查 Missing Script、持久化按钮目标及所有构建场景，并重新运行相关 PlayMode 测试。

此方案首次被自动审批拒绝。用户随后明确批准完整正式命名迁移，已执行；最终路径和类型以 asset-moves.json、type-renames.json 及正式工程为准。formal-names.preview.patch 仅为迁移前审阅预览，不能直接用于恢复或再次迁移。
