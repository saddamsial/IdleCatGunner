GameClient UI 编辑说明

正式编辑入口：Assets/Game/Scenes/GameClient.unity。
静态换肤、布局、商店 ScrollView、语言窗口、武器说明/收藏页、开关节点、加载角色、教学指针和面板边框已保存到场景。材质位于 AuthoredUI/Materials。

在非 Play 模式中修改并保存场景：
- 图片：Image 的 Sprite、Color、Image Type；布局：RectTransform、LayoutGroup、ContentSizeFitter。
- 文字：TMP 的字号、颜色、材质、对齐方式。语言翻译和金额/进度文字继续按当前语言/游戏状态更新。
- 面板边框：PenguinPanelBorder 的 Thickness 和 Color。
- 开关状态颜色与速度：PenguinMergeSwitch 的 DisabledColor、EnabledColor、TransitionSeconds、Inset。
- 商品状态颜色：PenguinOfferCard 的 AvailableColor、PurchasedColor、LockedColor。
- 弹窗显示顺序：Canvas 的 Sorting Order；编辑器会在进入 Play 和构建时同步到 PenguinModalLayer，避免 Unity 启用隐藏 Canvas 时清空排序。运行时可通过 PenguinModalLayer.SortingOrder 调整。
- 加载角色：修改角色 RectTransform 和 Image；动画叠加在保存的姿态上，不再重排标题或影子。
- 教学指针：Image 和 RectTransform 控制样式/尺寸；PenguinGuidePointer 的 Target、AimAngle 控制指向。位置仍动态跟随按钮。

Canvas 上的 UiAuthoring 保存旧路径对应的 Transform 引用，因此已有节点移动或改名后，原有语言和启动绑定仍可找到它们。
保留 StaticUiBaked / Authored 标记。一次性固化脚本拒绝再次覆盖已经编辑过的场景。

动态功能仍负责：开关/购买/锁定状态、金额/进度/倒计时、任务状态排序、拖拽、动画、响应式安全区、皮肤/装备/奖励的实际内容选择。
LayoutGroup 管理的子节点位置由该 LayoutGroup 控制，调整其参数或在需要手动定位的子节点上配置 LayoutElement。

修改前备份及测试报告：仓库 art/ui-authoring/20261014/。
