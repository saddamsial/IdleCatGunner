# 63 攻击目标标记原循环旋转

目标仅为 com.Chodun.CatGunner 1.1.61 / vc257 ARM64，工作 Unity 6000.4.10f1。规则05留下的静态 Target/Triangle 动画缺口在正常 RecoveredClient 路径补接；没有关联旧 XAPK。

## 原包证据

冻结 Main 的 Target GO1748、Triangle GO781、Transform39293、DOTweenAnimation123889、SpriteRenderer82855 为权威。动画为 DOLocalRotate（animationType4）、Transform11、Fast0、Linear1、Incremental2、无限循环、duration3、delay0、scaled time、非 relative/from，end Euler(45,-15,-180)。位置(0,2,0)、scale(3,3,3)、原 Sprite GUID9641abd451be4cb448a5c463549b5f8a保留。父 Shapes.Disc 及 MeshRenderer 原来关闭，继续关闭。

原 Quaternion(-.37940955,.1205906,-.049950283,-.9159756) 在当前 Unity 解出 Euler约(45,345,0)，不是导出提示(45,15,0)。复用匹配 ELF 的 QuaternionPlugin.GetEulerValForCalculations/SetChangeValue/EvaluateAndApply 证据：本配置 Fast 每圈变化约(0,0,-180)，保留负180方向，不能用 DeltaAngle 把它改为正180，也不能将倾斜清零。

新核对 DOTweenAnimation.Awake0x2a75c08、Start0x2a77154、OnDestroy0x2a7719c、CreateTween0x2a75c54。Awake只生成一次，Start避免重复生成，CreateTween的type4调用DOLocalRotate，Destroy调用Kill。DOTweenAnimation与ABSAnimationComponent元数据均无OnEnable/OnDisable动画重置钩子，本分支没有SetLink；标记隐藏不等于原 tween 重建。四个生命周期方法与六个共用异常辅助完整导出，三个Quaternion方法为复用；地址/入口字节/边界/哈希见 `reports/target-rotation-native-contract.json`。方法数不是功能恢复比例，CreateTween只恢复本选定参数分支。

## 接线与适配

正常客户端启动通过 RecoveryClientPresentation 找到原标记子节点，添加明确命名的 RecoveryTargetRotation，读取 Resources/OriginalTargetRotation 参数。不保存或手改工作场景、不替换原图、材质或业务控制器。现有 Cat 继续负责目标位置、显示/隐藏、自动寻找与停止战斗清除。

适配器以真实 localRotation 为起点，应用原增量/线性/缩放时间。换目标和隐藏重现保留已有进度，timeScale0时暂停。原全局DOTween分配/管理器由本地帧调度替代；隐藏时不写不可见Transform，重现时按已流逝scaled time补到当前姿态。该惰性写入差异、首次调度时机和非本参数的Quaternion特殊分支不属于原插件等价声明。

## 验证边界

独立存档验证旋转方向、原倾斜、超过3秒的连续圈数、隐藏重现、timeScale暂停、原位置/scale/material/禁用Disc，以及正常零输入自动战斗实际显示与停止隐藏。初次空测试批次0/0、编译完成后基线0/1、恢复后0/2均独立保留；前两种运行夹具关闭战斗却未关闭目标控制器，原控制器每帧清目标导致标记被隐藏，不能把这些失败仅归为动画。修正隔离夹具后完整结果见 `reports/target-rotation-evidence.json`。

测试使用独立目录，用户主档/备份和Fill PPU10不改。原引擎/当前Editor、测试、GPU、Player和手机对照属于不同证据层；本轮不构建APK、不进行Git交付，不宣称所有特效恢复。
