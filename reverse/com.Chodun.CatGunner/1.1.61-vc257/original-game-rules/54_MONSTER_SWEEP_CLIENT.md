# 怪物扫荡客户端（规则54）

目标仅为手机提取的 com.Chodun.CatGunner 1.1.61 vc257 ARM64。旧根目录 XAPK 不参与恢复。范围为客户端怪物扫荡，不代表全游戏完成。

## 原生证据

`native-monster-sweep-client-reviewed/` 有 21 项完成的 C/ASM 查询：15 业务方法和 6 异常辅助；`reports/monster-sweep-native-contract.json` 记录入口16字节、方法界、SHA 和原类型字段。

- Monster_manager 的 required/target/gate/value/sweep/bonus/close 与 Monster_Start_UI 的 Reload/Game_Sweep/OnEnable/Banner_Reload。
- Gamemanager.Power_Monster_return、Cat.AtkCool_Boss_return、ExpectedDamage_Boss_return。共享 Boss 算法使用既有已恢复 helper，武器群攻目标数复用已有 SpeedRun 表。
- required = 每波基础血量 × (100+40×小关)/100 ×150 ÷ 截断后的生成间隔厘秒；最后 precision5。首波五关为 2142.8、5250、7941.1、13750、24375。每关怪物总数不进入公式。
- 战力只累加激活的普通小猫，Boss 专用伤害/攻速排除森林升级，保留重生、皮肤、鱼、遗物、星级和 Buff 包；武器目标系数为 1/7/5/霰弹至少1/5/5/10；攻速先取厘秒整数再除，最后 precision5。
- PlusPack2 与当前战力双门槛。按当前关逐关前进，第一处不足即停止，单次最多100小关；五小关跨一波，输出并保存下一可玩的波/关。越过2000缓存的血量继续每步三倍 precision2，沿用已恢复纯函数。
- 每关30宠物币；奖励包 Plus1 每关变60后乘关数。原生 `0x13c` 是共用 `PetCoin_Accum`，不是单独新奖励字段。普通先付基础值，模拟广告追加同额；全去广告直接二倍。强制去广告没有自动二倍。矿山任务不增加。
- 序列化原领奖回调为 SweepBonus_AD_Show，原广告 placement5；直接领奖/跳过为 Sweep_Close。原界面不足时红色当前关/百分比，满足时白色下一关/满条。横幅依 Plus2 原规则。

## 本地接线与验证边界

修改 Monster_manager / Monster_Start_UI；新增 OriginalMonsterSweepRules 与独立 PlayMode 专项测试。原场景、素材、布局、GUID 和已有存档保持。原按钮经射线与鼠标输入验证，三张 GPU 图对应不足入口、基础结果、自动二倍结果。

广告和现金沿用用户授权本地模拟，不扣款、不接原生产 SDK/收据。模式/页面/版本/广告忙碌守卫是本地防重复保护；0.25秒刷新是本地观察适配。DecimalAmount 仍是有界 InfVal 适配，不宣称原类全面恢复。在线排行、SendDgResult、FreeCash、可信时间和关闭插屏均未恢复。

恢复前1项测试0/1（10.32秒）确认占位按钮不推进；首次专项8/9（71.26秒），失败为测试夹具重复购买已激活Plus2，修正夹具后9/9（75.54秒）。没有因此改动生产算法。

逐批实际测试、失败尝试和最终交付见 `reports/monster-sweep-evidence.json`。不合并多次运行冒充一次全套通过。专项之外验证原怪物生命周期、自动奖励和启动；场景/主档/备份/脚本meta/历史GPU保护见 preservation。未构建APK、未真机验收、未Git提交或推送。

剩余：短时Buff、广告重生/临时枪、完整I2与剩余UI、复杂能量Mesh/SpriteSkin/骨骼特效、两个未绑定教程HUD、服务与Player/真机验收。scopeComplete=false。

最终交付前一次 Editor 桥接命令在窗口未聚焦时超时，唤醒窗口后排队命令完成，重复清除覆盖是幂等操作；记录见 `monster-sweep-handoff-tooling-observation.json`。完整四批测试未受影响；清理已归档控制台记录后最终 errors=0/compilationFailed=false。
