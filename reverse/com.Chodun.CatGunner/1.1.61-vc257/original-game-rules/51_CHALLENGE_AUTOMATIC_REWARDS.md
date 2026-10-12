# 规则51：速通、矿山、怪物挑战的免广告自动奖励

唯一输入为手机提取 `com.Chodun.CatGunner 1.1.61 / versionCode257 / ARM64`，原引擎6000.0.61f1；可玩工程使用用户现有6000.4.10f1。旧 XAPK 无关。仅恢复客户端玩法/原结果UI；广告、现金使用用户已授权的本地模拟，不收费、不连接商店、不写生产收据或账户。

## 原版规则与接回范围

三个模式已有普通奖励和模拟广告领奖，但此前没有消费全去广告权益，NoAds返回按钮也被禁用。本轮接回其原生分支；与规则49的Boss三倍不同：

|模式|普通基础到账|全去广告自动到账|普通模拟广告额外到账|
|---|---|---|---|
|速通|每次自然胜利30钻|胜利立即120钻|另加90钻，合计120|
|矿山|Reward_Value钻|结束立即Reward_Value×4|另加Reward_Value×3，合计四倍|
|怪物挑战|每小关基础宠物币|每小关基础宠物币×2|结束再加累计基础宠物币，合计两倍|

矿山先算 `base = Dia_Score / 10`（整数除法），Best_Reward记录基础值；奖励包参与Reward_Value的1.5倍浮点运算后转整数，再应用四倍。票券和任务次数仍只在入场增加一次。

怪物每关奖励包基础为30×2=60时，PetCoin_Accum和HUD增加60，钱包直接增加120。停止/失败的结果文字仍为基础累计和双倍累计；结果页与NoAds返回不再支付。关卡推进、击杀和侵入替换行为保持已有恢复。

资格来自原 `Shop_manager.Is_RewardBonus_Auto`：全去广告标记 OR FreeCash免广告促销；仅去除强制广告不满足。恢复工程只有明确的本地全去广告购买可用，未伪造FreeCash线上促销。关闭OfflinePurchaseSimulation时，这些已购本地权益不会自动加倍；模拟广告可独立启停。

自动分支隐藏原Bonus/Skip，显示原NoAds；三者NoAds持久回调均为对应Game_Exit。保持原布局、文字引用、动画及返回演出。普通模拟广告仍可追加相应倍率；自动已结算标记防止直接/重复/迟到回调再次发奖。没有接入其它模式的扫荡，本轮Sweep按钮保持原有不可用边界。

## 精确证据

`native-challenge-auto-client-reviewed/` 15项重新导出的C/ASM全部完成，业务9、异常辅助6。检查匹配ELF入口16字节、PT_LOAD地址转换、独立unwind方法界与SHA；不是原作者C#源码。

- SpeedRun_manager.Game_Win `0x2ba8ed4`：自动资格时奖励左移2位，阶段只加1；Bonus_Get `0x2ba93c0` 普通分支另加基础×3。
- Mine_manager.Game_End `0x2b49be0` → Reward_Panel_Reload `0x2b49d80`：最佳记录、整数/Plus运算、基础与四倍文字、原按钮状态及一次奖励；Bonus_Get `0x2b49fb0` 另加三倍。
- Monster_manager.LevelClear `0x2b4de0c`：先累计基础，自动资格时到账左移1位。GameEnd_Panel_Reload `0x2b4e810` 只更新文字/按钮，不发奖；Bonus_Get `0x2b4fb6c` 普通分支支付基础累计再退出。
- Shop_manager.get_Is_RewardBonus_Auto `0x2b92704`：全去广告静态偏移9，另有未接入的FreeCash条件，强制去广告标记不参与。

原按钮回调从当前保存场景直接读取，见 `challenge-auto-original-buttons.json`。完整规则/输入字节检查/metadata字段/本地适配边界见 `challenge-auto-native-contract.json`。商业SDK/服务器没有被反编译接入。

## 验证与隔离

修复前独立单项0/1（11.51秒），矿山指定积分73夹具应发28却只发7，记录在 `challenge-auto-before-failure.json`。指定积分和直接调用结算仅用于公式边界测试，不能作为自然玩法证据。

专项分别包含自然速通自动子弹胜利、矿山自然60秒计时和自动采矿、怪物自然首关击杀，三条观察报告明确记录零摇杆、真实子弹和原计时；自然路径不会注入积分/伤害/击杀或提前调用结算。其它夹具覆盖强制去广告、停用模拟、普通广告追加、取消/关闭/重复/晚回调、失败不领奖、零奖励、最佳记录/票券、保存冷重载及不重放结果。实际原NoAds按钮通过EventSystem顶层射线命中和模拟指针点击返回森林；这不是手机触屏验收。

GPU图实际读取，结果与各独立批次见 `challenge-auto-evidence.json`。不合并分批或局部通过为一次全套通过，不以原生方法数量计算游戏恢复比例。

## 保留与待办

开始前保存235项校验基线：场景、230份既有脚本meta、两份玩家档案、manifest/lock；241张历史GPU另有SHA备份。场景gzip解压SHA已核对，复用不可变旧备份的硬链接节约空间，未链接会被Unity覆盖的当前文件。脚本/测试当前快照独立保存。运行回归覆盖历史GPU时另存本轮图，再恢复旧图SHA。

本轮只改SpeedRun_manager、Mine_manager、Monster_manager；既有脚本GUID、场景、图片、布局、冻结Main/native/metadata及用户进度保持不变。最终交接须清除测试host和存档/输入覆盖，保持正常EditMode、Persist=true、缺脚本0与Console错误0。未做Git提交/推送、APK构建或真机验收。

其余模式扫荡、FreeCash/可信联网时间、短Buff/广告重生/临时武器、完整I2语言/UI/服务、部分骨骼变形/SpriteSkin和高级能量网格特效继续待办，全游戏scopeComplete=false。
