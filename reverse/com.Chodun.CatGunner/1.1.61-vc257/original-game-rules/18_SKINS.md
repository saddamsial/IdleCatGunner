# 25 项猫咪皮肤

仅 com.Chodun.CatGunner 1.1.61/vc257/arm64。原 Main、native 和 metadata 的 SHA 与 40 个导出方法（34 业务、6 异常辅助）的字节护栏记录在 `reports/original-skin-client-contract.json`；反编译结果是原生证据，不是原作者 C#。

原 Main 的 Skin_manager 123519、SkinInfo_UI 124065、25 个 Skin_Item_UI、25 张肖像/骨骼精灵及手部颜色保留。根 GameObject480 和 Skin_Btn1160 的原层级通过新只读来源切片与 Editor API 合并至现有客户端，普通三只猫按原 GameObject/Renderer ID 恢复引用。此前主角控制组件已重建，不能用其新组件 ID 反查原 Cat 147400。

## 原生规则

索引 i=0..24，Damage=16*i、Speed=10*i、Money=5*i、Price=100*i；native 常量 0x106f668 的两项 int 为10/5，与序列化表交叉一致。初始仅皮肤0解锁，选择0。

Skin_Purchse（原拼写，0x2ba7934）仅在未解锁且 Dia 足够时扣费，再解锁。购买不会自动选择。Lose_Dia0x2a7f278 的 `_useDia` 是累计 price*3（字段偏移0xb0），钻石余额减price；reason2送外部分析日志，恢复工程不调用该SDK。严格范围检查和溢出预检是本地保护，不声称原 native 会温和拒绝数组越界。

Skin_Select0x2ba7b7c 只允许已解锁项，更新选择、所有普通小猫的骨骼精灵和手部颜色。原代码还有付费助手分支，恢复工程未导入或授予付费助手。

三项加成是 100+所有解锁皮肤的对应数值总和，独立于当前选择；没有只算穿戴皮肤的限制。伤害和攻速接回已有 Cat.Balance_Reload/CalculateAtkCoolMax；金币链按原 Gamemanager.MoneyValue_return0x2a7e1cc：升级→重生→皮肤→宠物，后续遗物/增益仍维持当前中性边界。

详情页按原 +{0}%、<sprite=1>{0} 格式显示。前后切换限制在0..24，价格白色或原禁用色，锁覆盖/购买/选择/已选择状态互斥。原始业务按钮回调、关闭层级、实际指针射线及已支持的入场动画保留。额外 BounceBtn/SFX_BtnScript/Hatch/Mute_Panel/Localize 组件尚不支持，工作切片移除这些组件，原件保留在冻结场景；购买/选择方法内原音效已接回，通用按钮弹跳/音效和完整 UI 生命周期待恢复。静态韩文说明仍为原包资源；完整 I2 本地化未恢复。

## 本地桥接和保存边界

原皮肤/解锁/选择字段映射到独立恢复档案。旧档缺失或空解锁数组只在选择0时初始化为原始25项中性状态；非空长度错误、选择越界、选择未解锁项以及缺失所有权的非零选择拒绝保存，保留文件。普通购买触发现有余额通知、重新平衡和本地保存；替代原全局5秒保存节流与经济缓存，不声称原全局生命周期已恢复。开发 Unlock_All / Skin_Value_Zero 排除。

所有测试从隔离入口设置 Persist=false 或唯一临时目录，测试货币仅存于独立夹具。实际试玩存档保留并有 `checkpoints/pre-skin-client` 回滚快照；本轮主/备份试玩文件整轮SHA不变，见 skin-user-save-after-tests.json。

GPU截图的原精灵、数值、钻石图标及按钮展示会人工读取。当前兼容字体/材质沿用已有修复，不把嵌入的星级中文备用图集交给原 PNG 重建器。没有 Player/真机/全部像素对照或外部服务验收。

最终验收：专项5/5（58.5秒），同一完整程序集实际116/116（723.98秒）；三幅GPU实际读取及正常Editor交接保存。完整游戏、Player、真机和全部视觉仍未验收。
