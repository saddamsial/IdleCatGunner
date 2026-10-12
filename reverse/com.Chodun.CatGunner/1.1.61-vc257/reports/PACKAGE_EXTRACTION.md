# Cat Gunner 手机包提取记录

2026-10-08 用户确认此前提供的海底 XAPK 给错，并授权通过 adb 提取录屏游戏。用户输入 `com.shodun.catgunner`，手机 Package Manager 未找到该拼写；实际安装包为 **com.Chodun.CatGunner**，Android 包名区分大小写。`aapt2 dump badging` 独立确认应用名为 **Cat Gunner**。

| 项目 | 结果 |
|---|---|
| 版本 | 1.1.61 / versionCode 257 |
| 最低 / 目标 SDK | 27 / 36 |
| 设备 | 已授权 USB 调试，23116PN5BC，Android 15 |
| 已安装 ABI | arm64-v8a |
| 引擎 | Unity IL2CPP；data.unity3d 头部为 6000.0.61f1，拆分包包含 libunity.so 与 libil2cpp.so，主包包含匹配 metadata 路径 |
| 提取范围 | Package Manager 返回的主 APK 和全部一个拆分 APK |
| 完整性 | 两个 ZIP 均完整，所有条目 CRC 通过；电脑 SHA-256 与手机 sha256sum 一致 |

原件保存在本目录上级的 `packages/`：

| 文件 | 字节 | SHA-256 |
|---|---:|---|
| base.apk | 148523785 | a2f354148ca44e73f86d2fb3d20199e8f62ab88a6bb40d40e7332ddf93bcbeda |
| split_config.arm64_v8a.apk | 40167586 | 69a28d1b547717be1f56b5bd250db87d309b9bdc93455915b0c475b0d3264335 |

复查命令：`adb shell pm path com.Chodun.CatGunner`、`adb shell dumpsys package com.Chodun.CatGunner`、`adb pull <返回的每个路径> <目标文件>`。复制后分别计算手机和电脑 SHA-256，再用 Python zipfile 检查 CRC。完整条目数、原生库清单和 metadata/native 哈希见 `apk-inventory.json`。

此次只读取应用安装包，没有安装、卸载、启动或修改应用，也没有读取存档和私有用户数据。APK 保留原签名、原字节，未合并或重新打包。提取范围是已安装 APK 集合，不包含尚未检查的外部下载资源或服务器内容。现有 .gitignore 排除 APK，因此这两个大文件只保留本地，本次未 commit/push。

metadata 开头为 `81 37 9c c4`，不同于标准 `af 1b b1 fa`。后四字节仅是原始头数据，不能当成有效 metadata 版本号。初次提取时尚未分析变换；后续已依据本构建 native 加载函数复现乱序头和七段变换，详见同目录的《逆向分析报告.md》。未复用另一个游戏的解码方式或配置表。

两段原始录像仍保留仓库根目录。用户确认录像对应 Cat Gunner；本次尚未用包内场景和画面独立验证录像对应的具体构建。原始录像哈希和采样图片仍存于旧目录 `reverse/0.0.1-vc2/` 的 video-reference 资料中，仅作为录屏观察证据。

此前 `reverse/0.0.1-vc2`、66 张配置表及 `reconstruction/UnityClient` 均属于 **com.gear2.catdiver2**。它们保持独立，不能视为 Cat Gunner 的恢复成果。当前正确目标已经具备静态分析输入，尚未恢复新的 Unity 工程。
