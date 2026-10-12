# 31：金币、采矿钻石反馈与普通奖励计数

唯一目标仍为手机提取的 com.Chodun.CatGunner 1.1.61 / vc257 / arm64，工作 Unity 为6000.4.10f1。旧XAPK不参与。完整客户端尚未恢复完毕。

## 原生依据

`currency-feedback` 共21条有界导出：15业务方法和6异常辅助。matching ELF首16字节、方法边界与C/ASM分别保留在 `native-currency-feedback-reviewed`；这个数量不是功能恢复比例或原C#源码。原调用方复用先前matching导出。

- Get_Money(position)先按既有倍率计算、增加Money和Money_Accum、通知余额，再发金币文字；无位置重载不发字。本轮接回实际Tree奖励路径。
- Money_Txt_Spawn preferred VA0x2a7e994：Camera.main有效、同格0.2秒门禁、`+`拼接、key=`money`。与伤害0.12秒门禁共用XY除1.5后RoundToInt的格子历史。
- Ore.Die_Reload：原DustSpawn_trans位置发5块碎屑，_diaValue==1显示`+0.1`，其它显示`+1`，使用key=`dia`且不走文字节流，然后加采矿分数并停用矿石。
- Get_Dia(int) preferred0x2a7ed10：Dia+=amount，_getDia+=amount*3。原ASM0x2a7ed94的`add w8,w19,w19,LSL#1`及0x2a7ed9c第二次加法证明32位整数运算。字段存储规则不是把玩家实际钱包奖励乘三。
- SpeedRun.Game_Win、Boss.Game_Win、Mine.Reward_Panel_Reload和Mission.Reward_Get_Value调用该普通Get_Dia；教程补钻也使用同一方法。当前适配统一此增量，保留既有统计前缀，不迁移旧记录。
- Currency.OnEnable订阅余额事件并读取最新值，OnDisable移除。当前本地MoneyChanged合并原Money/Dia两事件，绑定仍负责首次刷新。

原字符串指针、直接调用者与0.2秒浮点从匹配native/解码metadata复核，见 `currency-feedback-literals-and-timing.json`、`currency-feedback-direct-callers.json` 及可重跑的 `original-currency-feedback-contract.json`。

## 工作工程

RecoveryRewardFeedback只分派显示，不拥有货币或保存。树先真实入账，再发money请求；矿石只增加分数，钱包在普通结束时以score/10整除结算一次。SpeedRun30钻/Boss150钻及任务奖励面值不变。重复死亡、重复结算与冷重载不再次发奖。

沿用原Money_Cri/Dia字体图、字形UV、1.5秒持续与50/12组曲线；`+`的原字形实际绘制为对应纸币/钻石图标。money/dia加入既有本地Mesh池，受击与金币文字共用格子门禁。余额UI重复Bind、关闭后入账、重开刷新均有独立验证。

GPU检查暴露矿场原Floor3、Sprite-Unlit-Default、SpriteFill在当前BiRP工程全部落为ErrorShader。通过Editor API只替换Map下3001个SpriteRenderer材质：矿石/底板使用公共Sprites/Default，1000血条复用既有红通道填充兼容材质；地面再使用Unity公开Sprite实现的本地兼容Shader，保留原_MainTex的14×7.48平铺和0偏移。原图片、Sprite、位置、尺寸及原材质资产未改。每一渲染器记录及独立地面参数报告保留；这是兼容渲染，不声称已恢复原URP源码/全部Pass。

## 验证与存档边界

最终货币反馈专项单次6/6（46.87秒）：可见原树真实信用/纸币与金币字形、两种原矿石与小数提示/钱包延迟结算、速通普通奖励/独立冷重载、UI禁用与重启、money/damage共用门禁、原整型计数和旧前缀保留。原地面平铺和支持材质一并检查；两张实际GPU截图已读取。

此前0项发现失败属于测试源静态成员访问编译错误，修正后原实现5/5失败证明缺口；接通后6/6（47.50秒）通过但第一金币截图选到视野外的树，矿场仍粉色。改为选择可见原对象、修复矿场后6/6（47.08秒）；其后恢复地面平铺的最终46.87秒报告单列，不拼接成一次全量运行。大场景材质保存CLI五秒超时后已核对实际写完；地面报告首次Vector2序列化循环错误保留，改成标量后重生成。工具失败不称生产逻辑成功，也不抹去历史。

其它独立回归：Boss4/4（34.58秒）、自然采矿5/5（91.57秒）、任务/进度8/8（15.27秒）、森林输入/反馈4/4（27.04秒）、教程5/5（74.81秒）。最终交接见VERIFICATION.json；分别记录，不拼接为新全量总数。新测试使用随机独立存档目录，相关旧测试在初始化前设置Persist=false或独立档案。轮前主/备份及场景检查点保留，最终用户档案哈希核对相同，无档案重置/恢复或统计迁移。

审计保留三冻结输入、11份原脚本meta、19项原图片/字体/prefab/material资产；19资源内容与原基线一致，GUID均一致。地面0.png和UI图集的两份meta已有Unity导入器归一化，不能声称这两份逐字节同原基线；其余17份meta逐字节结果单列。场景材质变更仅经Editor API。

## 仍未完成

完整InfVal缩写/本地化、剩余数值消费者与_useDia路径、原DamageTextManager GPU曲线缓存/完整多相机转换，未使用的Get_Dia(position)整数弹字调用路径仍待恢复。当前档案/自动保存为既有本地适配，不假称原ObscuredInt和全部5秒保存节流。7处其它教程HUD、其它UI/特效、遗物离线/跳关/缺表与线上商业服务继续列入缺口。Player构建、物理鼠标/触屏、真机及全像素对照未在本轮验收，scope_complete=false。
