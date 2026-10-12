# 森林推进、原 HUD、金币升级与独立存档

唯一构建 com.Chodun.CatGunner / 1.1.61 / vc257 / arm64。对应 `native-client-flow-reviewed-v4`、`original-client-flow-contract.json`。原 ELF 与 metadata 哈希保持不变；新场景为 `RecoveredClient.unity`，原 `RecoveredForest.unity` 保留为已有武器和移动验证场景。

## exact-native 规则

- `Tree_manager.Game_Start` 0x2baac18：gaming=true，Map_Batch，猫咪 Warp(-100,0,0)，重算当前波攻速，更新关卡/进度/时间条。原 GameTime_Max=180 秒；购买 PlusPack0 的额外时长没有在恢复客户端授予。
- `Tree_Destroyed` 0x2babf6c：gaming 门禁，计数减一，进度为 `(max-now)/max`，最后一棵触发 Game_Win。任务计数仍需要原 Mission_Reload/赛季依赖，当前不伪造整套任务运行。
- `Game_Win` 0x2bad174：关闭 gaming，进度=1，推进波次（0..3 加1，4进入下一关0），更新 stage*10+wave 的最大进度，SFX11、原 Win UI、加载协程。没有额外无来源的清波金币。
- `Game_Fail` 0x2bad740：关闭 gaming，显示实际清理比例，SFX12、原 Fail UI、加载协程。保持关卡/波次，重试同一波。
- `<Loading_Then_Start>d__47.MoveNext` 0x2bae2dc：位于最高进度时等待2秒→Loading开→等待1.5秒→Game_Start→等待0.2秒→Win/Fail/Loading关；回到早期进度则为1秒、0.75秒、0.2秒。均为缩放游戏时间。原遗物跳波概率在初始档为0；非零跳波与其管理器尚未接回。
- `<Game_Cor>d__42.MoveNext` 0x2bae16c：从最大时长扣 Time.deltaTime，剩余时间耗尽时失败；gaming=false时停止。当前通过 Update 与可取消加载协程执行同一普通森林状态控制，不是原管理器整体源码。
- `Enemy.Die` 0x2b5cdbc 与 `Gamemanager.Get_Money` 0x2a7e82c：死亡门禁后、树木结算前立即到账。`is_MoneyDontDrop` 阻止到账。转换后同时增加 Money 和 Money_Accum，并触发钱包刷新；不等待金币粒子飞行。
- `MoneyValue_return` 0x2a7e1cc：Upgrade→Rebirth→Skin→Pet→Relic 五层百分比，最后乘有效 Money buff。当前恢复档使用已证实的初始中性修饰与原 UpgradeMoney 表；已成长收藏/增益档案拒绝覆盖，待其管理器恢复。
- `Upgrade_manager.Upgrade` 0x2bb15b4：等级>9999失败；余额>=当前等级价格才能扣款、等级+1、刷新猫咪数值与 UI、SFX4、重播升级对象动画；Money 项使后续树木收益提升。`HoldUpgradeRoutine` 0x2bb19e0 先等0.4秒，成功后每0.1秒继续，失败即停；PointerUp/Disable取消。

## exact-serialized 原呈现

采用原 Main 中 Game_Slider947、Upgrade_List277、主界面 Currency36876、Loading308、Win1095、Fail746、Skip755、SpeedBuff1372 以及三个升级动画对象。GUID、RectTransform、原 Sprite、TMP 字体与原 Button→Touch 持久调用保留。

原 GameSlider 的树木进度 Fill123917、时间 Fill123014、百分比 Text117282 位于另三个分支795/57/1290。首轮切片漏掉引用导致真实启动空引用；补入原层级，通过 Unity 场景 API 接线，失败报告保留。没有用空引用保护隐藏这次遗漏。

真实画面检查还发现：三个独立切片复制的 Canvas 各自参与渲染排序，输入 Canvas 的 renderOrder2 让全屏 Floating Joystick 成为升级面板位置的第一命中。通过 Unity API 合并原 Canvas866/SafeArea415/Main_UI455 的共享祖先，按原 SafeArea 兄弟顺序 Floating Joystick0→Main_UI1→Ingame7 恢复绘制和输入优先级。三个面板的锚点及屏幕位置验证不变，当前11730个对象、一个Canvas。保留阻挡射线栈；新增实际射线与 PointerDown/Up/Click 回归，程序调用 onClick 的既有通过不替代真实交互检查。

`GameSlider` 0x2b7a338/0x2b7a4f0/0x2b7a5cc：原字符串 `Stage {0}-{1}`（索引各加1）、`{0}%`（截断 value*100）、当前波/4 填充、图标定位到当前洞点、洞颜色按已过/当前/未来选择。升级原文本 `Lv.{0}`/`Max`；百分号由原面板独立文字保留，不重复附加。

SlicedFilledImage 恢复原 MaskableGraphic 基类与字段，以及原九宫格方向裁切，通过公开 VertexHelper 绘制。公共渲染适配、字体 Alpha8 重建、完整 alpha hit test/atlas/material 生命周期与原设备像素一致性仍分别记录，不能称原视觉完全一致。

## 明确的本地接线

`RecoveryForestClient` 是独立恢复控制器，连接原树池、主角、原 HUD 与钱包；不是原 Gamemanager/全部 Main。保存使用已恢复的 UTF8 JSON→Base64/.tmp/.bak 协议，在 `Application.persistentDataPath/RecoveredClient-vc257` 下创建独立存档，5秒自动保存及升级/结算/暂停/退出保存。5秒定时属于本地适配，未宣称原 SaveSystem 调度完全一致。保留 OriginalSaveData 的161字段，当前绑定余额/累计收入/升级/普通森林进度/初始槽；不读取手机私有档案，不修改线上账户，不伪造广告、交易或权益。原主 BGM 方法通过本地入口接入。

## 验证与边界

新增8项 PlayMode流程测试在独立临时目录验证：原 HUD 与无输入自动移动、死亡到账与重复/门禁、原按钮扣款和三种数值、长按延迟/重复/取消、五波含 Boss 到下一关、超时同波重试和取消重启、退出重入与未知字段保存、实际 UI 射线/PointerDown/Up/Click 路由和世界摇杆输入归属。升级事务用明确的测试钱包，波次验证手动击倒原树池；这不表示默认整场播放时长或手机触控已验收。默认画面观察另记录真实无输入击倒获得余额，再通过原按钮消费。共享Canvas修复后，实际游戏帧射线点击Speed一次扣50、Lv0→1/数值108/下一价68；随后用已正常赚取的升级档案自然清完第一波30树，加载Stage1-2/60树、倒计时重新开始、rounds2/failures0、钱包1144，实际1080×1920 GameView已读取。退出存档保留上述进度；不代表全部关卡或真机验收。

首轮0/7失败由漏出的原进度引用和未登记测试清理场景造成。进度引用修复后专项7/7通过（53.2秒）；画面发现点击遮挡后再进行共享 Canvas 修复，最终专项8/8通过（55.73秒），完整恢复程序集69/69通过（222.91秒）；首次测试发现0例也保留为工具/导入失败，不能算通过。最终完整回归及画面记录见 `VERIFICATION.json` 和 `RECOVERY_PROGRESS.md`。

完整启动 Main、队友/库存装备、重生/收藏增益、任务赛季、其他模式、飘字/树木粒子、商业 InfVal 大数精度与缩写、Player/手机/全视觉及生产服务仍未完成。完整客户端状态保持 false。
