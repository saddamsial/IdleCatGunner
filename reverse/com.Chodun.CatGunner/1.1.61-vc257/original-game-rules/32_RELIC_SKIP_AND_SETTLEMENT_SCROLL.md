# 遗物跳波与原结算提示滚动

目标仅为 com.Chodun.CatGunner 1.1.61/vc257/arm64。冻结 Main/native/metadata 及原动画、图片、GUID 核验见 `reports/original-relic-skip-contract.json` 和 `reports/relic-skip-source-and-user-save-audit.json`。本轮先保存原场景、三份修改脚本、报告和用户主/备份到 `reports/checkpoints/relic-skip-before/`，未向用户档案注入测试数据。

## 直接证据

复用先前逐字节门禁的 Game_Win 0x2bad174、Game_Start 0x2baac18、Game_Fail 0x2bad740、Loading 迭代器 0x2bae2dc、StageAdvance 0x2bad6ac 和 Relic.Value_Reload 0x2b31f8c 的 C/ASM。新增 Scrolling.Start 0x2b27404、Update 0x2b2745c、构造 0x2b274e8，共3项业务和6项异常辅助的9行导出全部完成；地址使用 matching IL2CPP、Ghidra +0x100000 坐标。数量不是恢复比例，也不是作者 C# 源码。

metadata 将 Tree_manager+0x50 绑定为非序列化 `_pendingGameSkipUI`，+0x68 为 GameSkip_UI；Relic_manager 静态 +0x6c 为 Skip_Value。原15项遗物的4/9/14索引是 Skip，只有解锁项计入，数值 `(Lv+1)*2` 累加，不截断到100%。

## 恢复规则

胜利先正常推进一波。Skip_Value>=1 时恰好取一次 Unity Random.value；无论候选波是否在旧进度内都先取随机数。只有 `roll*100 < Skip_Value` 才计算再推进一波的临时候选，只有 `candidateStage*10+candidateLevel < 原Stage_Value_Max` 才接受。两个相等边界都不接受。最多额外一波，不连锁；接受的跳波不会创造新的历史最远进度。正常推进遇到新进度时仍更新历史最大值。

原 Win 音效、清波任务kind1均只发生一次。跳过的一波没有实际树死亡，因此不奖励金币、不增加杀树任务、不增加第二次清波任务，也没有钻石奖励。GameWin 重复调用由原 gaming 守卫阻止。

待提示标志直到下一波 GameStart 才激活原 GameSkip_obj 并消费，不在胜利/Loading阶段提前弹出。旧进度1秒+0.75秒、新进度2秒+1.5秒的等待沿用既有原流程；GameStart后0.2秒只关闭 Win/Fail/Loading。原跳波 Animator `GameWin_0.controller`、`Win_0.anim` 的1.5秒 Panel 位移/缩放原样保留，没有新增关闭事件。下一次 GameStart 重新根据本次标志控制根对象。

原胜利/失败/跳波 Scroll 组件分别为124391/124534/125343，对象1184/1309/1986。Start取同物体RawImage；Update按scaled deltaTime对uvRect两个位置累加Speed，保留宽高，不取模、不在重新激活时归零。三个原Speed均(-0.1,0)，原uv宽26.2、高1、Pattern图片与Raycast标记保留。通过Unity Editor API只补这三个组件，未手改场景YAML或重画通知。

## 明确的适配边界

已有 per-client 钱包、事件、独立存档调度仍是本地适配。已有本地 Restart/进入其它模式可主动取消过渡，因此本轮加了取消遗留提示的兼容守卫；不宣称原本为空的 Game_Restart 含这些逻辑。瞬态标志不写入存档，重新加载保留已推进的关卡/奖励计数，不重新发奖或补播过渡通知。

自然战斗验证使用唯一临时存档中的原 Gun5、原 Lv50 Skip遗物及历史进度100；未改树血量/位置/计时，也未修改或恢复用户真实存档。初始Gun0和未解锁遗物仍沿用普通流程。OfflineProgressManager/OfflineProgressSimulator及离线收益、其它缺失UI/动效/本地化、商业/在线服务和真机视觉仍未完整恢复。

## 验证

专项 `OriginalRelicSkip` 单次9/9（77.58秒）。包括5项边界/概率/原遗物总量规则和4项实际生命周期：原Gun5自动移动与子弹击毁30棵原树后从Stage1-1到Stage1-3；原钱数/任务只结算实际清波一次；原下一波通知与条纹滚动；冷重载无重播/额外奖励；失败及本地取消；三个滚动在TimeScale0和禁用层级时暂停，重新启用不重置UV。

`reports/visual/relic-skip-next-wave-gpu.png` 已实际读取，可见 Stage1-3、原韩文跳波文字、青色条纹、持Gun5的小猫与正常升级按钮。仅此独立夹具的Editor GPU证据，不等于物理鼠标/触屏验收、完整像素一致或Player/真机验证。实际清波记录在 `reports/relic-skip-natural-wave-observation.json`。

其它独立回归和最终正常场景、控制台、用户存档/冻结输入结果见 `reports/VERIFICATION.json` 的 `relic_skip_evidence`。不把各专项相加成新的全量通过，历史165/165仍是较早整套运行。初次独立测试引用Newtonsoft编译失败已修复为JsonUtility，失败工具输出保留；未把它算作通过测试。
