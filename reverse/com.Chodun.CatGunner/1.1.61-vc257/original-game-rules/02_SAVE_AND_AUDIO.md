# 存档和音频：vc257 原生依据

全部地址为 matching ELF preferred VA，Ghidra 地址加 0x100000。native-save、native-audio 目录保留伪代码和汇编。原方法不是从旧游戏复制。

SaveSystem.PlayerData_return 0x2b169a4：JsonUtility.ToJson → Encoding.UTF8.GetBytes → Convert.ToBase64String。反向 JsonData_Decoding 0x2b174a8/TryLoadFrom 0x2b172e4：Base64 → UTF8 → JsonUtility.FromJson<SaveData>。没有这里所示的 AES/ECB/PKCS7 或 GZip。

文件名来自 double indirection metadata usage literal slot，字面量索引经 region-0 与 region-4 核对：2039 `/saves/`、9007 `NoSaveFile.json`、9008 `NoSaveFile.json.bak`、9009 `NoSaveFile.json.tmp`。Save/SaveEncoded 先检查 _saveAllowed；临时文件写完后，删除旧备份（如果存在），移动主档到备份，再移动临时文件到主档。Load 主档为空/失败时读备份。TryLoadFrom 的 EH landing pads 在 complete.asm 0x2b173cc..0x2b174a8，捕获 Exception、记录错误并返回 null；普通伪代码未显示该部分，不能只凭其 C 文件认定不捕获。

SaveData 原生 ctor 将 Money/Money_Accum/Ruby 设为零；SentWaveRatios/ProcessedTxnIds 为新 List<string>，PurchaseHistory/FishInventory 为新 List<int>；AD_Gun_SlotIndex/AD_Gun_Num、Raid_Season_Index、Pig_Season_Index、RaidMission_Season_Index、Raid_Helper_Season_Index 为 -1。其他初始化保留 CLR 默认，具体游戏新档初始化来自管理器，不能把 DTO ctor 说成完整新游戏规则。OriginalSaveArchive 实现文件协议核心，注入独立目录，尚未替代所有游戏管理器快照与云服务。

Sound_manager.Awake 0x2b223c0：重复实例销毁；映射仅纳入非空条目/clip，同 id 后条目覆盖前条目；SFX 源缺失时添加 AudioSource，playOnAwake/loop=false。

PlaySfx 0x2b1f10c：全局 SFX 静音立即返回；找不到 id 返回；同帧拒绝后写 frame，再检查 Time.unscaledTime 冷却、写 time。即冷却拒绝仍消耗该帧的记录。音量以可空 override 优先，否则条目原音量；保存原 pitch，临时设 pitch，PlayOneShot，再恢复原 pitch。原目录/枚举值见 original-sound-contract.json 与 Sound_manager.cs，枚举值由 matching field-default table 的 signed compressed integers 确认。

BGM_Change_Main 0x2b22750/BGM_Change_SpeedRun 0x2b226a0：原曲目已选则直接返回，否则设置原 clip 并 Play。原主 BGM 为 Relaxed_7_BlossomDrift；模式 BGM 为 Cute_5_MilkShake。ApplyBGMMute 0x2b2029c 对原 bgmSource.volume 写 0 或 1。

原音频位于共享 .resource 外部流。UnityPy 仅加载 data.unity3d 曾误匹配 texture resS；修正为注册原 `*.resource` CAB 后，17 项 FSB 均成功解码。WAV 为 PCM 格式转换，GUID 保持，不能将此读取问题解释成音频加密。Editor 与 PlayMode 已使用这些原片段；真机音频听感和其他场景调用点尚待验收。
