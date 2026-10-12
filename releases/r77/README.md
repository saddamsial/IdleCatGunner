# IdleCatGunner 完整版游戏 r77

发布名称由用户指定，本标签保存用户确认可玩的 r77 完整工程与安装包快照。它不表示原版全部 UI、教程、特效及线上服务已达到完全一致；详细恢复范围仍以 README 和原始验证报告为准。

- 版本标签：`v0.77.0-full-game`
- APK：`CatGunner-Recovery-20261012-r77.apk`，0.77.0/code77，77.07MiB
- 包名：`com.ravanla.idlecatgunner.recovery`，IL2CPP ARM64，Android API26 起
- SHA256：`0f5a001294f9e651c795c079cb4a86d5c5e0db4bd72bb882b34fbf570e7dbbfb`
- 独立本地测试签名；广告和现金购买为用户授权的本地模拟，不扣款。

手机上安装时选择更新，不要卸载旧恢复版，以保留进度。原版游戏包独立。Unity 6000.4.10f1 打开 `reconstruction/CatGunnerUnityClient`，进入 `Assets/Recovery/Scenes/RecoveredClient.unity` 点 Play。

克隆后先安装 Git LFS 并执行 `git lfs pull`，大场景和二进制由 LFS 保存。工程包含完整 Assets、ProjectSettings、Packages 及真实嵌入依赖（包括 Burst/Newtonsoft 程序库），既有 GUID/meta 保留。Android 再打包需自行配置本地签名；私钥、密码、实时玩家存档、Library/Temp、历史检查点、原包与错误游戏工程未入库，仍保留在原本地文件夹中。仅单独保存启动回归必需的一个冻结离线测试存档，其账号和密码字段已确认为空；其他依赖历史本地检查点或原 APK 的审计需自行准备对应输入。

验证按独立批次记录：加载/按钮/节能专项3/3，五种模式进出1/1，启动4/4；Player构建0错误/166警告；签名/归档/16KiB对齐通过。手机自然关卡切换捕获了移动中画面，并从左侧按钮打开武器页；用户确认这版层级正确。

证据：`reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/mobile77-evidence.json`。

当前原本机的 Git LFS 辅助程序位于忽略目录 `Build/tools/bin/git-lfs`；仓库本地过滤器及钩子已配置为使用该程序。新机器应正常安装 Git LFS 后再克隆/拉取。
