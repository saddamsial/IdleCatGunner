# 企鹅音频 v2：全音效核对与背景音乐替换

本轮继续用户选定的「清脆可爱：轻弹、水滴、冰晶」方向。工作游戏 `Assets/Recovery/Scenes/RecoveredClient.unity` 使用 17 类 v1 新音效和 2 套新 BGM，共 19 个新音频资源。

| 用途 | 音乐 | 节奏 | 循环时长 |
| --- | --- | --- | --- |
| 日常、森林、界面 | 雪原漫步 / Snowfield Stroll | 108 BPM、4/4、32 小节 | 71.1111 秒 |
| 速通、矿山、Boss、怪物挑战、团战 | 冰晶出征 / Crystal Expedition | 124 BPM、4/4、32 小节 | 61.9355 秒 |

乐谱、旋律事件、伴奏与程序合成音色均记录在 `.score.json` 和 `compose.py`；没有使用原版音乐录音或旋律。两套配乐共享游戏主题动机，采用不同调性、节奏、编配与段落变化。日常以轻敲音色和柔和伴奏为主，战斗增加拨弦与圆润低音、轻节拍。前期高音区草稿在 `drafts/`，不是已接入版本。

循环为完整 128 拍周期，尾音回绕到开头；没有每轮淡出到静音。母版 WAV 为 44.1kHz、16-bit、双声道，Unity 使用 Vorbis 0.75、Streaming，移动平台不保留相反的导入覆盖设置。首启 AudioSource.clip 也已换为新日常音乐。原音乐与原音效源文件保留，本轮修改工作场景引用；17 个 `Ice_` 音效保持上一轮版本并逐项核对。

## 本轮验证

- `tests-status.json`：音乐专项完整 **3/3**，44.57 秒。验证新 17+2 音频目录、启动实际播放、两个流式曲目的真实末尾回绕、同曲重选保留进度、音乐/音效独立静音，以及五种玩法控制器的进入/退出切换。测试在独立档案中进行，战斗伤害被测试夹具关闭，不作为新一轮战斗/奖励验收。
- `installation.json`：两首曲目实际导入均为 2 声道 Streaming，分别 3,136,000 和 2,731,355 帧，首启播放新日常曲目，loop=true。
- `audio-reference-audit.json`：已保存工作场景依赖正好 19 个音频，全在 `Assets/Recovery/PenguinAudio/`，没有原音频依赖。审计时编辑器用于其他场景，所以报告 `runtimeReferencesAudited=false`；实际运行目录/切换由上述音乐专项验证，不能把 0 条实时引用说成完整实时序列化审计。
- `audio-validation.json`：两 WAV 可解码、无非有限样本或削波；峰值约 0.325 / 0.306。循环边界步进约 0.00162 / 0.00238，低于普通样本步进 p99。该指标和循环播放测试不代替主观听感验收。
- `protected-before.json` / `final-protection-check.json`：原音频、已有资源 meta、17 个新音效及真实存档文件的哈希保护核对。

`*-preview.wav` / `snowfield-preview.mp3` / `crystal-preview.mp3` 是曲目前 24 秒；`*-loop-preview.wav` 为尾部 4 秒接开头 6 秒，便于听循环接缝。这些试听是母版导出，不是实时游戏混音录音。

场景安装前快照在 `backup/RecoveredClient-before-bgm.unity`。该工程有并行的视觉工作；回退音乐应仅恢复 Sound_manager 的 BGM_main / BGM_contents 和 BGM AudioSource.clip 三处引用，避免用整场景快照覆盖其他修改。

本轮没有提交 Git、构建/安装 APK，也没有手机听感验收。编辑器原有其他工作状态未被强制停止。
