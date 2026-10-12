# 59 武器说明、类型和点击反馈

目标仅为手机提取的 com.Chodun.CatGunner 1.1.61 / vc257 ARM64。原输入和 Unity 原布局、动画、音频不改；当前恢复不表示全游戏完成。

## 原证据

`native-weapon-detail-client-reviewed` 的20业务方法和6共享异常辅助均以本 ELF preferred VA、入口16字节、managed/unwind上界核对。包含 `Gun_Info_UI.Explain_Return` 0x2b6fc18、`Reload_Internal` 0x2b6f9a0、两个 `Gun_manager.Gun_Type_str_return`、14个原I2生成getter、`NewGun_UI.Reload` 和 `Gun_Item.OnPointerUp`。26查询不是26个新功能，也不是恢复百分比。

七类枚举 SINGLE/LASER/PIERCE/SHOTGUN/EXPLOSIVE/MISSILE/BLAST_SNIPER 分别取 `Gun/<类型>`，详情取 `Gun/<类型>_ex`。每个getter的真实 metadata literal 已解码并与 AssetRipper 原 `I2Languages.asset` 的14语言行对应，原英文 Shotgun 类型简称为 `Shot`，爆破狙击简称为 `B.P.`，不能从枚举推导。共196个文本值直接保存，不自行翻译。

详情名称仍取原 Gun_Info.Name，图片/影子同枪号，颜色和唯一等级标记仍按原分组。攻击间隔原 `Single.ToString()` 放入 `{0}s`，本轮去除旧 `0.##` 截断。伤害使用已有独立 DecimalAmount 呈现，尚未恢复全部原 InfVal_change 格式。

原 Gun_Item 有效按压、非拖拽、非自动合成时，普通武器打开详情，临时广告武器请求广告，然后播放 Button枚举1、条目原音量、pitch1；ASM x2=0是可空音量无override，s0=1是pitch。现有本地 IPointerClickHandler 路由保留，本轮在两个点击分支后补原音效；不声称完整 OnPointerUp 状态机等价。原 Sound_manager 负责静音、同帧/冷却门禁。

获得武器提示原 Reload 先关闭、更新图片/等级/类型、再打开。原提示只序列化D..SSS七个等级标记，详情窗有13个，本轮按原数组范围保留。既有 NewGun Animator 只有原 Open（2秒）；Background按钮保留SetActive(false)回调，但默认隐藏。原Root还有Destroy_Time=2组件，缩放时间两秒后自动隐藏。它是非模态提示，不启用背景阻挡库存。没有改动画、脚本GUID、按钮事件或布局；本轮接回类型原文并验证动画重启、自动隐藏和暂停生命周期。

## 本地边界

GPU发现原JP回退字体在当前Editor丢部分中文字形。本轮运行时将武器类型和说明绑定到已有原包NotoSansSC-Bold动态资源，每个label实例化材质并保持原face/outline/underlay参数。原字体源/.meta/场景不保存改动；既有本地生成StarChineseFallback资产的新增字形被TMP自动缓存，该本地缓存变化明确保留（旧asset只有独立hash，无完整旧字节备份），不宣称此asset未改。原GUID保持，动态数据ClearOnBuild保留；组件销毁清理临时材质。静态说明仅在原矩形内留边、换行/适配字号，未改RectTransform；它是局部多语言排版适配。中文字体绑定属于兼容呈现，不宣称原I2字体切换或像素等价。

系统语言选择和显式语言码访问仅针对14条原武器term；完整 I2 语言选择/刷新/所有页面仍待恢复。Unity SystemLanguage 没有马来语项，`ms` 原文保留并可用显式语言码访问。未知语言回退英语；非法类型名称为空、说明为null，与选定方法分支一致。

广告与现金继续用户授权的本地模拟，不接真实商店、SDK或线上权益。当前用户主存档/备份保护，测试使用独立 GUID 档案及测试器host。

## 验证

具体独立批次、基线失败、GPU、字节保护及Editor交接见 `reports/weapon-detail-evidence.json`。各批次不合并成一次全套结果。原版设备/用户逐页对照、完整I2/特效、线上服务和Player仍待验收，scopeComplete=false。
