# 企鹅破冰探险 Android r78

2026-10-15，正式发布签名 APK：`PenguinExpedition-0.78.0-release.apk`。版本 0.78.0 / code78，IL2CPP ARM64，Android API26 起，APK 实际大小 115.96 MiB。

SHA256：`6a0f84da33b4f1dd7e968194c71504888de9abc0e6a24baf149c21358538325e`。

## 验证结果

- Unity 构建成功，0 错误、40 警告；警告主要为已有第三方 API 弃用及 Player 中未配置 Pipeline，详见build-warnings.txt。
- APK 签名、ZIP 完整性、ZIP/native ELF 16 KiB 对齐通过。实际 Android17/API37 ARM64 模拟器使用 16 KiB 内存页，已安装并启动，安装文件哈希与交付 APK 一致。
- 67 项去重回归通过，涵盖企鹅、冰块、动画、异步资源、主线波次/升级输入、五模式、冒险、宠物、鱼缸、购买账本及存档备份。`test-summary.json` 保存逐项结果。
- 安卓实际游玩通过主线、Boss、挖矿、狩猎、速通和突袭；各奖励/边界见 `verification.json`。冒险入口及预览已检查，派遣/领取由 Editor 回归验证。
- r77 到正式签名 r78 直接覆盖安装成功，未卸载、未清数据。安装前后存档字节一致；首次游玩后 163 个旧字段无丢失，158 个字段一致，其余为正常金币、升级、时间和击碎计数变化。再次冷启动后 19 组关键进度保持。
- 从 APK 的 globalgamemanagers 直接读取 BuildSettings，唯一场景为 `Assets/Game/Scenes/GameClient.unity`。233 项已归档 Resources、测试场景、测试脚本、密钥及玩家原始存档未进入包体；仍有引用的动画、字体和已批准原生攻击特效依赖保留。
- 5763 个已确认美术/音频文件内容未变。测试产生的字体缓存已恢复，Unity 中的签名密码和测试隔离状态已清空。

实际截图：

![企鹅与冰块](penguin-ice-android.png)

## 签名和保留存档的安装

新建专用正式密钥 RSA4096 / SHA256withRSA，有效期10000天，alias `penguin-expedition-release`。正式证书 SHA256：`bc71bbac3671d2372ec61e6103e23e8b86c435e269999baf14d53097f4d37056`。

当前包包含旧 r77 签名到正式签名的升级链，API28+ 使用正式证书，API26–27 使用旧 v2 证书兼容覆盖升级。请选择更新安装，勿卸载旧应用或清除数据。包名及存档目录 `RecoveredClient-vc257` 保持兼容。签名轮换机制依据 [Android apksigner 官方文档](https://developer.android.com/tools/apksigner)。

私钥、密码、升级链仅保存在本地 `Build/.local-signing`，未提交 Git。请完整备份该目录到自行控制的加密存储；后续升级继续使用现有密钥。详细说明为本地 `Build/.local-signing/release/BACKUP-INSTRUCTIONS.md`。

## 后续构建

Unity6000.4.10f1 打开正式工程，保持唯一 GameClient 入口。使用同一正式密钥生成 Release ARM64 base APK 后，必须执行升级链签名步骤；不能用仅含新证书的普通 Unity 输出直接覆盖旧 r77。签名工具从本地密码文件读取，不在命令或日志中输出密码：

```sh
python3 releases/r78/sign_release.py path/to/release-base.apk path/to/new-release.apk
```

输出必须是新文件；工具验证固定正式证书及 v3 升级签名，并生成 SHA256。该工具已对本次 base APK 重复签名验证，输出哈希与交付 APK 完全一致。换机器需先从加密备份恢复私有签名文件。

## 验证范围

本次使用一次性只读模拟器和私有旧进度样本，未连接真实手机；不代表真机帧率、功耗或所有机型兼容已验收。广告及现金购买延续已授权的本地模拟，不连接商店或扣款。

扩展测试最初有三个过时断言：教程隐藏列表仍断言4而实际10、把开启的本地模拟购买视作商店不可用、模式加载仍期望猫咪旧文案。已修正测试前提并通过重跑，未改变 APK 中的玩法。初次失败与修正结果均保留在本目录。
