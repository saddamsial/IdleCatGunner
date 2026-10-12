# 图集导入兼容修复

实际 GameView 核对发现原设置 Sprite 的 texture 为 null；图集 PNG 和 GUID 均存在，但 AssetRipper 导出为 Sprite/Multiple 导入器且 sprites=[]，原 Texture2D 未生成。工作工程把确认失败的对应图集改为 Default Texture2D、Uncompressed，通过 Unity Editor API SaveAndReimport，保留原 PNG 像素与 GUID；原 Sprite YAML 的 rect、pivot、border、mesh 和原基线未修改。首次修复 UI 图集 sactx-0-4096x4096-ASTC 6x6-_UI-3277955d，GUID219f9b351e644df4881c7c566ee173e9；当前设置场景33个非空Sprite的texture均已解析。

GameView 原默认1920×1080，捕获工具输出540×960会拉伸已经以横屏排版的UI，造成压缩错误。新增Editor菜单设置预览1080×1920；保留原Canvas参考分辨率1080×1920与所有UI布局值。

此变更仅为用户Unity6导入/预览兼容，不是原移动端ASTC压缩/渲染管线/全部视觉效果等价证明。

动态图集修复：原 Mitme SDF PNG alpha 全零，其他动态 atlas 保留少量预烘焙字形。旧 GlyphTable 与空/压缩PNG在Unity6新增字形时不匹配，造成文字缺失/错误。工作工程导入原Mitme/MPLUS字体，按原字号/渲染模式/边距清缓存重建，保留Font/Texture GUID，工作Atlas为线性Alpha8可读纹理；当前设置92/50/18字形且缺字0。原PNG/字体资产未修改基线。原语言选择/本地化控制器尚未接入，当前文字保持原序列化内容。最终截图visual/settings-font-repaired.png仅验证设置分支，不能替代完整游戏视觉验收。
