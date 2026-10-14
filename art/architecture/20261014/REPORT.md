# Unity 场景与加载优化

本轮基于当前工作区完成优化，保留已有未提交代码、美术和音频修改。正式运行入口为 `Assets/Game/Scenes/GameClient.unity`；测试过渡场景为 `TargetPreview.unity`。

## 已应用

- 主场景根层级：`World`、`Systems`、`UI`，模式管理器放在 `World/GameModes`。只重挂场景根对象，内部 UI 路径、动画骨骼和坐标契约保留。
- 独立预制体：`PlayerTeam`、`ProjectilePoolContent`、`Draw_Info_UI`、`GunCollection_UI`。玩家队伍保持连接实例，通过场景覆盖保留外部绑定。
- 对象池通过 UniTask + Resources.LoadAsync + Object.InstantiateAsync 在启动阶段加载；战斗开始前等待加载完成。仍保留 27 个弹丸和 10 个命中特效，不改变满池、死亡拖尾和复用规则。
- 武器说明与收藏页首次打开才加载，后续复用。并发点击合并为一次加载；返回后不打开过期弹窗；对象销毁会取消加载并清理实例。关闭仅隐藏页面，页面生命周期结束时释放。
- 清理 8 个启用但指向空目标的持久按钮回调；已禁用历史项保留，有效路由仍由各运行管理器负责。
- UI 异步实例化明确保留局部坐标。导出页面同时迁移 UI 路径索引和调色板绑定，避免加载后的丢引用。
- Bullet 组件引用缓存，已加载弹窗的按钮反馈初始化一次。新加载逻辑按 PrefabLoader、DeferredPrefabSlot、ProjectilePoolContent 分工。
- 安装并固定 UniTask 2.5.11；保留原有离线服务、存档格式与进度。

## 数据

| 项目 | 调整前 | 调整后 |
| --- | ---: | ---: |
| 编辑态主场景节点 | 39,614 | 30,771 |
| 主场景文件字节 | 499,417,942 | 72,867,821 |
| 场景根节点 | 19 | 3 |

节点减少 22.32%。场景内容拆出后仍保存在预制体中，文件变小不表示整个游戏包体同比变小。弹丸对象池在启动时加载，只有两个可选页面会在未使用时节省实例内存。模板比较发现序列化差异，未强行把所有弹丸实例统一为一个模板。

## 验证

编译 0 错误/0 警告；20 项完整相关 PlayMode 回归已全部通过，覆盖改名后的入口、旧存档与按需加载。最后 7 项菜单/生命周期补测全部通过；两轮共覆盖 21 项不同回归，均通过。结果见 verification-summary.json。正式场景与 4 个预制体 Missing Script 为 0，场景有 1 个 EventSystem。

编译、PlayMode 回归、真实页面截图、GUID 和 Missing Script 检查的最终结果见本目录 JSON 文件。两个旧启动断言针对已替换的猫咪加载反馈及隐藏 HUD，本轮改为验证当前企鹅动画、可见 HUD 与输入锁定；移动/击杀观察窗口保留两个行为要求。

运行截图：`weapon-information-runtime.png`、`weapon-collection-runtime.png`。本轮没有构建新 APK，也未做真机 FPS、峰值内存和 CPU/GPU 时间测量。

## 正式命名迁移已应用

用户明确批准完整迁移后，已迁移 184 个运行、Editor 与测试类型，更新 503 个维护中的源文件及配置。目录为 Assets/Game/Runtime、Editor、Scenes、Resources、Tests；运行命名空间/程序集为 CatGunner.Runtime，测试程序集为 CatGunner.PlayModeTests。

GameClient、ClientPresentation、UiAuthoring、CurrencyAmount、SaveData、GunInventory、RebirthProgression 等名称表达正式职责。运行 C# 标识符中未发现 Origin 前缀或 Original/Recovery/Recovered 临时词。兼容属性与存储键保留历史字符串，以读取旧资产和旧存档。

`asset-moves.json` 记录 3,524 个资源路径迁移，GUID 与 meta 哈希均保持不变。40 个场景路径及构建入口同步更新；历史反编译证据和备份未改。`type-renames.json` 是最终类型映射，`formal-migration-verification.json` 是当前校验结果。

存档 JSON 的旧扩展键继续读写，C# 字段名改为 SimulatedPurchases 和 WeeklyVipFirstOpened；新增回归覆盖旧账本、编码往返及损坏主文件的备份回退。旧默认存档目录、语言偏好键和测试隔离键保持兼容。

## 回退与 Git

`baseline.tar.gz` 保存本轮开始时 1,165 个文件的实际内容，包含已有脏文件；`baseline-hashes.json` 记录哈希。已有 296 个运行脚本的 meta 哈希保持不变。回退应基于这份快照，而不是重置到 HEAD；若后续又有其他聊天写入，先比较当前文件再恢复。

没有创建 Git 提交或推送。没有全局 SaveAssets 或恢复到 HEAD。before-naming.tar.gz 额外保存加载优化完成后的迁移前内容。

依赖与 API 来源：[UniTask](https://github.com/Cysharp/UniTask/releases/tag/2.5.11)、[Unity InstantiateAsync](https://docs.unity3d.com/ja/current/ScriptReference/Object.InstantiateAsync.html)。
