# 25 宠物详情翻页与普通重生长按升级

唯一输入 com.Chodun.CatGunner 1.1.61 / versionCode257 / arm64。冻结 Main/native/metadata 未修改；原 Pet_Info_UI 与 Rebirth_Upgrade_Item MonoScript GUID 保留。

## 原生依据

`reports/native-detail-hold-ui-queries.tsv` 对 13 个业务方法（含 `<HoldUpgradeRoutine>d__15.MoveNext`）和 6 个异常辅助逐项核验原 ELF 首16字节。`native-detail-hold-ui-reviewed/status.tsv` 为19/19 completed，C/ASM 单独保留。preferred VA 到 Ghidra 坐标为 +0x100000；方法 token、边界、输入字节、输出哈希及合同见 `reports/original-detail-hold-contract.json`，导出完成不等同全客户端恢复。

Pet_Info_UI.Reload `0x2b7da80`：保存 Current_PetNum，选择原 Pet_sprites 和 Degree_Colors，更新每个 Degree_objs、金币/移动加成与左右箭头，最后激活详情根。原显示文字 `+{0}%` 由匹配 metadata literal 解码。图片虚调用0x408对应本构建 Image.SetNativeSize 的 metadata slot45（vtable base0x138、每项16字节）。两张图片以原精灵大小显示。

Show_LowerPet `0x2b7e644` 仅在当前等级>0时减1；Show_HigherPet `0x2b7e658` 仅在当前等级<Pet_list.Length-1时加1。原目录10项，可看未收集等级，不循环、不授予物品、不改变装备/收藏。

Rebirth_Upgrade_Item.OnHoldStart `0x2b8953c` 先停止旧 Coroutine，再启动新迭代器。MoveNext `0x2b89688` 首先 WaitForSeconds(holdDelay)；每次检查 UpgradeAble，成立才调用普通 Rebirth_Upgrade，然后 WaitForSeconds(holdInterval)，继续循环；无法升级则清空 Coroutine 并结束。没有按下立即升级，也没有自动获取货币。

OnHoldEnd `0x2b895fc` 和 OnDisable `0x2b89644` 均调用 StopHold `0x2b89600`，停止且清空句柄。原三行 EventTrigger 的 PointerDown→OnHoldStart，PointerUp/PointerExit→OnHoldEnd 保留；原 Button.onClick→Upgrade 保留，短点仍走一次普通升级。原三行序列化 holdDelay=0.4、holdInterval=0.04；使用 scaled WaitForSeconds，不替换为实时时钟。余额不足或MaxLv时禁用按钮且 Price_txt 使用原 Color_Disable，否则白色；满级显示 Max。

构造器 `0x2b89670` 从 preferred data `0x1070008` 加载两个Single，默认0.4/0.1，与原场景覆盖的0.4/0.04分别保留，不将场景值误说成构造器默认值。

## 工作工程适配与边界

沿用现有 OriginalRebirth 数值、费用、三项永久等级上限20000、Changed、反馈与本地保存适配。Editor API 仅将早期因缺方法而禁用的原宠物左右 Button 恢复 interactable，事件目标/方法、原引用和 GUID 未换。保留 EditMode 快照 `checkpoints/pre-detail-hold-client`；实际试玩主/备份前后哈希分别记录。

专项验证使用独立状态及唯一临时保存目录，检查真实UI射线、10级往返/首尾边界/未收集可浏览、三行长按延迟/多次费用、松手/移出、余额耗尽/满级、重复按下重置延迟、关闭面板停止及冷重载。早期夹具未等待面板开场动画、错误假设额外开窗按钮的失败分别保留；不把夹具失败说成原生规则，不拼接测试批次。最终结果以独立 final-status 报告为准。

内容解锁、教程、WeeklyShop、其他动画与特效、离线/跳关遗物消费、完整I2、原URP/像素/Player/真机仍待恢复或验收。广告/IAP/VIP/服务器服务未伪造，业务脚本为根据原生证据重建的C#，不是作者源码。
