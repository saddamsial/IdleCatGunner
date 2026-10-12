# 规则53：矿山扫荡客户端

目标只为 com.Chodun.CatGunner 1.1.61 vc257 ARM64。旧 XAPK 无关。原包、native、metadata 和冻结 Main 保持只读。

## 原生依据

16项限定查询全部完成：10业务、6异常辅助，见 `native-mine-sweep-client-reviewed/status.tsv`、配套 C/ASM、`reports/mine-sweep-native-contract.json`。逐项方法界、入口16字节、方法字节SHA核验；伪代码不是原始C#。Mine_manager Best_Reward offset96、TicketUse_Count80、Reward_Value208、pending264与匹配schema一致。

- `is_SweepAble` 为 PlusPack.Is_Active(2) && Best_Reward>0。没有速通/Boss的战力条件。Start_UI据此切换 NonAuto/Auto，而非只按购买标志。
- Game_Sweep先补票再检查次数：常规2次、mine_pack6次，消耗1次；耗尽提示并打开原矿山票购买面板，已有矿山包则不弹。
- 原最高记录保存普通得分/10，扫荡不更新Best_Reward。基础奖励先把记录乘 Plus1矿山倍率（1或1.5），float后整数截断；普通发基础、全去广告发基础×4；弹窗显示基础/四倍。
- 任务类型3增加1，原 SendDgResult(sweep=true)。不进入矿山图，也不改变森林/挑战关卡。
- 广告位置3成功补基础×3并关闭；原UI实际序列化 Bonus_AD_Show，故恢复入口兼容普通/扫荡两种结果。NoAds/Exit调用Sweep_Close。原关闭未看奖励广告且非全去广告时会触发插屏位置1，本地不接真实SDK。
- 原入口预览使用sprite1+实际即发奖励，全去广告含四倍。Plus到期采用既有本地购买时间适配。原Plus1横幅仅在已持有矿山票包且票购买弹窗未打开时遵循PlusBanner条件显示，Shop静态字段offset13已核对。

## 本地闭环与边界

保留原界面/字体/动画/GUID/布局/场景，修改Mine_manager、Mine_Start_UI两份代码。增加模式、页面、pending、广告Busy及结果revision约束，拒绝取消/过期/重复回调；溢出支付前拒绝。自动领取确定按钮不依赖广告模拟启用；入口每0.25秒刷新预览和有效期，这是本地观察适配。日期补票、十进制/Plus倍率、本地广告与支付沿用已有适配，均不是原在线服务。FreeCash权益、可信服务器时间、SendDgResult提交、真实广告/收据/IAP均未验证也未接通。

## 验证

恢复前专项1项失败（票券预期1实际0）保存mine-sweep-before-failure.json，证实原入口未闭环。首次7/7（59.53秒）后补充禁用广告确定按钮和原横幅条件；补充横幅断言的一轮6/7（59.15秒）也保留观察摘要。夹具仅改State最大关卡，SaveNow按真实Forest最大关卡写回导致条件失效；同步两处夹具后完整重跑，不拼接局部通过。该中间报告的Temp原记录在下批启动时被清理，明确标记为实际工具观察摘要，未伪造完整明细。最终扫荡专项/原矿山/自动挑战奖励/启动结果分别为 7/7 (59.99s), 5/5 (96.14s), 10/10 (286.81s), 4/4 (28.58s)。实际结果见mine-sweep-evidence.json，各批独立完成，不视为全游戏或真机验收。独立存档覆盖原按钮射线/指针、基础/广告/自动奖励、Plus倍率截断、最高记录不变、2/6票限/耗尽页面、跨天/未来日期、到期/禁用/取消/重复/迟到、模式/页面保护和冷重载。三张GPU实际读取与终态交接记录保存。

保存用户最新主档和备份，不恢复历史进度。工作场景/既有meta、原素材与历史GPU哈希核验；重跑测试覆盖的旧图另存本轮名字并恢复历史帧。不生成APK，不Git提交推送，scopeComplete=false。剩余怪物扫荡、短时buff/广告重生/临时枪、I2/UI服务、高级SpriteSkin特效、两处教程HUD与Player/真机仍待恢复。
