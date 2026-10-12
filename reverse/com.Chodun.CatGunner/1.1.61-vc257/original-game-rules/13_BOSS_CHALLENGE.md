# Boss 挑战（vc257）

唯一输入 com.Chodun.CatGunner 1.1.61 / vc257 / arm64。49 个导出全部完成，其中43个业务/状态机方法与6个异常辅助；不是原始 C# 源码。

原生普通入口退出森林、隐藏升级区，启用原地图及 Boss；队伍 Warp(-100,0,0)，加载2秒后开始60秒战斗。Boss 本地出生(-15,0,15)，皮肤为 Stage%9，保留9套原动画和头部 Sprite。原缓存1000关生命值：第一关50e3，最后45e698。

原生 Boss 在(-100,0,0)为中心、半径60的圆内随机游走，速度15，到达阈值.5，等待1..3秒；最多10次尝试避开主猫半径4的线段，失败再取一个随机点。避让投影使用完整3D线段与严格小于半径。小猫使用原自动移动 Boss 目标分支，再由现有射线与子弹命中。

Enemy 类型2更新 Boss 健康条，死亡保留根节点并触发 Die、更换死亡头图、停止游走。正常通关只奖励150钻并推进 Boss_Stage 一次；计时耗尽无奖励，结束后迟到伤害不结算。退出1.5秒回森林，.2秒关闭加载；继续按钮先等待2秒再退出。

原 UI 层级、Button 事件、SlicedFilledImage、9套 Animator、碰撞到Enemy链接、`.meta` GUID采用本包。数值使用明确的本地十进制适配，健康标签暂显示普通整数，原 InfVal 缩写未验收。SDK、排名和结果上传、PlusPack、付费扫荡、广告3倍均不执行；不会模拟成功。原生1000关后乘5/ToPrecision(2)仍待闭合，当前拒绝范围外进入并保留存档。

证据：[规则契约](../reports/original-boss-client-contract.json)、native-boss-client-reviewed/、serialized-components/level0-124699.json、level0-125471.json。运行结果见 Boss 测试报告，Editor 功能测试与新页面像素/原手机对照分开。
