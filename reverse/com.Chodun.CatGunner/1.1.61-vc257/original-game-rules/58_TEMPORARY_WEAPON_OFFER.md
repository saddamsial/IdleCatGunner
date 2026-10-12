# 58 临时广告武器领取机会

目标仅为 `com.Chodun.CatGunner 1.1.61 vc257 ARM64`。根目录的旧 XAPK 不参与本轮。此处的临时武器是限时领取机会；领取后才成为可装备的永久库存武器。

## 原包规则

| 流程 | 已核对行为 | 原生证据 |
| --- | --- | --- |
| 触发 | 成功合成调用 CheckAdGunEvent。配置 Weapon02AdOn==1，事件尚未处理；收藏已有等级2及以上时直接标记处理，不发临时武器。否则 Has_Merged、无现有临时武器且库存有空格时发编号14，1800秒，标记事件已处理。 | Gun_Item_List.FuseItems 0x2b73494；Gun_manager.CheckAdGunEvent 0x2b6ab84；Has_Degree_Or_Higher 0x2b6a65c |
| 临时库存 | 放到首个空格，解除该格暂停。保存 slot/num/UTC截止 ticks；此时不记收藏和获得次数。原库存 AD 图标及生成弹跳。 | AddAdRewardGun 0x2b6a7b4 |
| 倒计时 | UTC截止减 UtcNow。库存文本每0.2无缩放秒刷新，剩余秒向零截断并至少0，`{0:00}:{1:00}`。 | get_AD_Gun_RemainSec 0x2b6a6d8；Gun_Item.Update/UpdateAdTimeText 0x2b7078c/0x2b707e4 |
| 点击 | 原按下缩放、抬起回弹；临时格路由 placement9，普通格打开武器详情。 | Gun_Item.OnPointerDown/OnPointerUp 0x2b71680/0x2b71778 |
| 领取 | 开始时必须仍有临时武器且剩余>0。广告完成调用 Acquire：清除临时标记及截止，不移除库存武器；强制原 NewGun_UI，记录收藏和等级获得次数；刷新UI。 | TryWatch/Acquire 0x2b6a910/0x2b6a994；NewGun_UI_ForceShow 0x2b69e40；OnWeaponAcquired 0x2b68ac8；原 Reward_Get 状态机 case9 |
| 到期 | 管理器每0.25无缩放秒检查；广告忙时推迟检查。到期清除格子仅当该格仍是记录的武器，解除暂停，清除标记后刷新。 | Update 0x2b6aa84；Expire 0x2b6a9e4；Clear 0x2b693b4 |
| 读档 | 记录格越界或武器不匹配，仅清临时元数据，保留普通武器。匹配且未到期则保留；匹配但已到期则移除。 | LoadData.Load 调用链；AD_Gun_OnLoaded 0x2b6aa10 |
| 操作限制 | 临时格不能拖动、合成、换位、暂停、装备或入保险箱；自动合成跳过。领取后恢复普通武器操作。 | 既有库存/自动合成/保险箱原生证据与规则库 |

## 恢复与本地替代边界

- Native C/ASM 是匹配字节、边界和字段的伪代码，非作者 C#。本轮26业务方法+6共享辅助查询完成；跨所有历史目录首次17个地址，声明目录新增19个去重地址、并集从882到901。统计域不同，不混用；详情见 temporary-gun-native-contract.json，查询数不是功能完成百分比。
- `OriginalTemporaryGun` 将原生状态转移绑定到独立恢复存档；`Gun_manager` 接原库存格、生成弹跳、NewGun_UI 和保存/队友刷新。
- `OfflineTemporaryWeaponOffer` 默认 true，明确选择原客户端 Weapon02AdOn 启用分支。本轮未获取或伪造在线配置；原线上当时的开关值未知。关闭此选项不影响已生成机会的处理。
- 用户已要求的 `RecoveryRewardedAds` 替代广告SDK，下一帧模拟成功，无广告请求、扣款、收据、线上权益、分析上报。
- 本地异步回调捕获 slot/num/end、库存页关闭修订及模式，关闭重开/替换机会/模式变化取消迟到领取。开始时检查剩余时间；完成时按原广告忙分支允许越过截止时间。
- 原生领取先强制NewGun_UI再更新获得计数并Reload；当前独立模型先提交收藏/计数，Changed通知同步队伍/保存/StepUp/保险箱，随后管理器打开一次原NewGun提示。最终状态和可见路径已测，通知顺序为本地适配，不声称原管理器调用顺序完全恢复。
- 既有普通格 IPointerClick 本地路由保留，临时格通过相同真实 EventSystem 鼠标按下/抬起/点击接到 TryWatch。按压曲线为已有本地表现适配，不声称原触控逐帧一致。
- 日期委托只供隔离测试；实际运行使用 DateTime.UtcNow。可信原服务时间、反作弊/在线服务不在恢复范围。

## 验证与剩余项

修复前独立倒计时复现0/1（11.43秒），原文本固定`0:00`；保留于 temporary-gun-baseline-failure.json。启动曾因系统盘不足而2/4失败（2.79秒），保留temporary-gun-startup-disk-failure.json；旧临时场景备份无损压缩及回读哈希一致后腾出456 MiB，整个启动批次重新运行。最终各批结果及实际GPU查看记录见 temporary-gun-evidence.json，不拼接成一次全工程运行。

原场景字节、既有.meta、用户主档/备份和匹配APK/native/metadata由本轮检查点与 temporary-gun-preservation.json 核对。原 UI 布局和素材未保存修改。旧库存拖拽测试已更新为原首合成的“1个普通武器+1个临时机会”，并继续验证普通武器装备/队友行为。

其他 I2/UI、教程、特效、真实服务、Player/真机和用户视觉验收仍未全部完成，`scopeComplete=false`。
