# 普通保险箱与武器锁定（vc257）

仅对应 com.Chodun.CatGunner 1.1.61 / vc257 matching arm64。原冻结 Main、native、metadata 未修改；原 Safe_manager/Safe_UI/Safe_HUD/Safe_Slot 四份 MonoScript meta/GUID 保留。C# 是依据原方法恢复的独立客户端实现，不是原作者源码。

## 原版规则

- Safe_manager.get_Is_Unlocked 读取 Tree_manager.Stage_Value_Max（native offset 0x30）并要求 >=390，对应显示第40关。与会员无关。武器详情 Content_Open 直接读取此状态。
- 共16格，6格免费；Purchased_Count 原载入限制0..10。开放数量 clamp(6+Purchased_Count,0,16)。只有下一个格子可购买，价格50+Purchased_Count*50钻石；依次50..500，总2750。普通钱包扣费与_useDia、购买格数保存；没有商店支付流程。
- 存入：先检查解锁，普通库存索引有效、非空且非AD待领奖格；使用已开放格中第一空格。不拒绝已经锁定的库存武器。存入后原库存置-1并清除其pause，不新增武器获取计数/收藏/随机结果。
- 取出：全16格可读取，不重复检查关卡或该格开放状态；因此原存档中闭锁格已有武器也可通过直接事务取回。原UI闭锁格不会显示武器按钮。放到普通库存第一空位，自动设置pause=true，再清空保险箱格。重复品按实体位置保存；满背包失败时武器仍留在保险箱。
- 详情模式1=库存、2=装备、3=保险箱。保险箱武器显示已锁定，只提供取出；取出失败不关闭详情。库存/装备pause通过解锁门禁，unpause不重新检查门禁，AD格不允许切换。mode/index/weapon陈旧时不操作当前另一个武器并关闭详情。
- pause是防合成标记，不让小猫停射；装备队伍继续战斗。原Take_Out使用SFX13，存入SFX9，普通点击/扩容SFX1，失败SFX5。
- Safe HUD拖拽glow仅解锁后开放，悬停缩放1.12、0.12秒，按unscaledDeltaTime与SmoothStep回归原尺寸。原投放识别遍历EventSystem.RaycastAll，装备槽优先；保险箱HUD命中后存入。
- 原价格字面量精确为 `<sprite=1>{0}`。四条提示键 Gun/PauseLocked、Gun/SafeFull、Gun/InventoryFull、Gun/SafeSlotOrder 经 native relocation 双指针与 kind5 metadata literal解析确认。

## 整合与边界

原源根2026/2027/1221生成新469对象切片，既有Canvas/Gun_manager/Gun_UI祖先仅用Editor API合并与CopySerialized/SerializedObject重连；原Main未改，工作场景未手改YAML。16个原槽位和原武器图、等级图、价格颜色、韩文静态说明保留。复用现有详情与Alert。场景默认保险箱/详情关闭。

独立档案适配在初始化时以-1补齐旧保险箱数组到16格，保留原前缀。异常购买数量/非法武器/超长数组在修改之前拒绝，保留档案，区别于native载入时clamp或丢弃非法值。本地即时库存排列沿用已有适配；取出spawn-bounce、手机震动及完整I2翻译尚未恢复。普通提示使用本地英文；完整提示生命周期/全页面视觉仍需对照。

广告奖励格不能通过存入取得广告装备；观看广告路径仍禁用。原自动合成get_is_AutoMergeAble依赖PlusPack.Is_Active(2)，没有给本地档案伪造会员资格。整个客户端、Player构建、真机对照、联网和商业服务仍未完成。

## 验证

专项7/7（33.96秒）实际完成：边界关卡、全部价格、重复武器、无新增获取计数、满仓/满背包/AD/陈旧实体/不足钻石原子失败、旧档兼容与异常输入、真实HUD拖拽和嵌套按钮、详情锁定/解除、独立目录重载、重生与Raid读取。

第一轮5/7与第二轮6/7独立保留：实际GunItem_Demo子按钮替代被其遮挡的槽位父按钮，打开菜单后显示详情，以及按钮切换后等待UI下一帧更新。第三轮7/7是一次完整专项结果，不与历史结果相加。同一完整恢复程序集138/138（957.06秒）实际完成报告为live-safe-assembly-final-status.json。试玩主/备份整轮SHA一致，正常Unity6入口交接；未构建Player、真机或Git提交推送。

两张 safe-*-test-gpu.png 已读取真实像素，钻石图标、16格、锁标与Un Safe按钮可见；独立测试中的锁定入口提示仍在截图中，不作为无提示的像素一致性验收。
