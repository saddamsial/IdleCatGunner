# 62 武器页静态说明与原语言绑定

唯一目标 com.Chodun.CatGunner 1.1.61 / vc257。原语言数据和场景来自本构建不可变 AssetRipper 快照；与旧 XAPK 无关。

## 证据与恢复范围

原 Main.unity 的 Localize 组件在先前页面提取中被移除，留下韩文静态 TMP 文本。读取组件的 `mTerm`、所属 GameObject、原 Transform 路径，与原 I2Languages.asset 的 TermType=0 语言行对应，恢复 9 处绑定、8 个独立词条、112 个独立翻译值（14 种语言；重复标题共126个绑定值）。包含装备说明、同阶合成说明、保险库、自动合成说明、前往商店、信息、图鉴及两个武器抽卡标题。原组件 ID、路径和源哈希见 `reports/weapon-static-text-source-contract.json`。

`mTerm='-'` 的名字、数字仍由原业务控制器更新；GunItem_Demo 的 SINGLE 预览由其自身控制器更新，明确排除，避免语言刷新覆盖当前武器类型。数字、等级、概率、装备、钱包与图鉴解锁规则未修改。本轮没有增加 native 方法查询数量。

原路径绑定在 RecoveryClientPresentation 启动时运行，包括尚未打开的子页面；数据放在 Resources，Player 可引用。系统语言映射复用规则59的局部适配，未知语言回退英语。中文使用既有原包 NotoSansSC 动态字体兼容资源，保留原文本矩形与字号；刷新复用运行时材质，退出中文时恢复原字体与材质，销毁时释放临时材质。

## 明确边界

这是选定页面的静态 primary-term 接线，并非完整 I2 插件、语言设置页、secondary-font、RTL、参数替换或所有语言字形/排版的恢复。马来语原行保留在数据中，Unity SystemLanguage 无独立马来语枚举。其他 HUD 与页面仍有韩文，继续保留待恢复记录。没有生产 SDK、服务端、APK 或真机像素验收。

原场景/两个原页面 Prefab 不保存修改；用户已调整的 Fill Pixels Per Unit Multiplier=10、1080×37 几何和原滚动保留。测试使用独立存档，用户最新主档和备份不重置。最终批次、GPU、文件保护和 Editor 交接见 `reports/weapon-static-text-evidence.json`；只有完成检查后才更新该报告。
