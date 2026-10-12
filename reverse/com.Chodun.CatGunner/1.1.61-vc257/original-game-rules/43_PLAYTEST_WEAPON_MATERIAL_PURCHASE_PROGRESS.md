# 规则43：广告武器、队友材质、本地模拟购买和任务进度

唯一输入为手机 adb 提取的 `com.Chodun.CatGunner 1.1.61 vc257` ARM64；根目录错误 XAPK 没有参与。Unity 工作版本 `6000.4.10f1`。本轮按用户明确要求启用离线付款成功模拟，不连接支付 SDK、服务器或商店，不扣真实款项，也不产生真实交易号/收据。

## 四项变更

1. 武器页原广告按钮通过原输入模块真实点击，完成本地广告后发放原随机枪5–9、弹出与保存，每日一次且必须有空库存。原包在历史进度大于29才开放；为了用户早期试玩，`OfflineEarlyWeaponAdPreview` 默认开启。这是明确本地入口适配，关闭后仍保留原门禁，不修改最远关卡。
2. 原主猫已经使用兼容材质，第二、第三猫的猫身、手、全部65枪及枪口/品阶粒子仍引用失效原 Shader。本轮只替换工作场景中的 Renderer 材质引用：Sprite 使用内置兼容材质，粒子使用既有保留原贴图/混合/颜色的兼容材料。原材料、贴图、骨骼和 GUID 保留。缺失的粒子子材质槽使用同一 Renderer 的有效材质作为明确本地回退，不能称为原 Shader 完整还原。
3. 恢复原商城和 HUD 共172对象，73个已有原现金购买按钮路由到本地模拟付款。钻石、核心、周武器/宠物币、一次性礼包、季票等根据匹配原生发奖规则处理；全局异步/重复点击门禁、容量/限购/冷却与保存保持。成功反馈明确“Simulated purchase complete / No real money charged”。使用独立可被 JsonUtility 保存的模拟记录列表，不写 `PurchaseCount/PurchaseHistory/ProcessedTxnIds`。自动升级礼包接永久自动升级；采矿礼包上限2→6；永久Buff按原 `IsBuffActive/IsSuperBuff/GetMult` 接4倍攻击/攻速/金币消费者，原商城描述仍保留。VIP/Luxury 可在明确本地记录下领取对应任务/高级奖励，赛季重置清除当前赛季资格。真实 SDK、退款、恢复购买、服务器验证和完整高级模式消费者不在本轮完成声明中。
4. 原奖励路线每格进度使用原 `Reward_Slot_fillValue_return`：已越过档位=1，当前档=经验/100，将来档=0。领取每日任务即同步 XP 条和奖励路线，不再只在跨100经验时更新。

## 原生依据与边界

`native-local-purchase-{content,dependencies,perks,final}-reviewed/status.tsv` 四个查询范围全部为true（含已验证抛异常帮助函数）。查询文件有匹配原方法边界/VA/输入字节检查。`local-purchase-literals.json` 的数组初始化原字节 SHA256 与元数据字段哈希逐项相等；枚举按本版本压缩zigzag标量解码，不把压缩默认值当作裸Int32。核心量来自原代码跳表。

- Diamond IDs `dia_0..4`：240/600/1500/3500/8000，各档第一次×2。
- 自动升级/Buff/钻石大包/采矿包：500/1000/16000/500钻，仅一次；移除广告两种包无额外即时钻石。
- 周枪：基枪20/30/35 +原周偏移模5，宠物币300/700/1500，每周限2/2/1。满库存不消费限购或发宠物币。
- 核心：100/500/1050/3300/750/1750/6000，特殊包间隔滚动24小时或7天，不按日历午夜随便重置。
- VIP +500钻；Luxury/升级 +1000钻和300XP，任务Luxury额外XP使用原banker rounding。
- 原PlusPack有效7天；本地类型路由0/1/2为Time/Reward/Auto，模拟记录与生产商店产品身份隔离。
- 后续仍需完整恢复付费助手、PlusPack时间/结算额外消费者、StepUp原页面/Offer生命周期、Pig积累原页面及全部高级UI。已经恢复的资源发放/状态交易不等于这些未闭合玩法已完成。

## 验证与存档保护

本轮专项与各回归的具体独立批次见 `reports/playtest-issues-evidence.json`；不要把独立批次加起来声称全套一次通过。保留第一次 Unity 测试框架启动失败，以及12/13两次失败批次；实际失败分别发现测试未滚动到商城商品、模拟记录 Dictionary 被 JsonUtility忽略。后者已改成Serializable列表并新增编码往返及冷启动检查。

全轮测试通过 SessionState 主机目录和每个 fixture 的随机目录隔离。`playtest-issues-preservation.json` 核对用户主档和备份未变，既有130552个场景对象/组件身份全保留；原材料与冻结Main/metadata保留。没有回滚用户最新试玩进度。

磁盘空间不足时仅将三个历史生成的场景快照压缩，逐一验证解压 SHA 相等；清单见 `playtest-issues-compressed-history.json`，通过 `tools/restore_scene_checkpoint.py <原快照路径>` 可恢复。原输入和当前工作场景没有压缩/删除。

本轮没有构建或安装 APK，没有手机试玩验收，也没有宣称全游戏/所有原 Shader/联网服务恢复完成。
