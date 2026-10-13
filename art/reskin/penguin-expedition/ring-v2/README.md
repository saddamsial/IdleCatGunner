# 冰蓝光圈第二版

用户反馈：第一版紫蓝厚圆环观感不佳，希望旋转、从内向外扩散，或接近原版。

本次仅调整光圈相关粒子：细冰蓝环与三段旋转亮弧，少量紫色过渡，按每个粒子的原生寿命从小向外扩散、渐隐。原锥形网格的图集 UV 不适合整张圆环图片，因此新光圈使用朝向相机的四边形；保留原发射数量、寿命、对象池、碰撞、伤害、命中、掉落流程。激光父节点下的轨迹不再全部误用圆环图片，Glow 使用柔和冰蓝光晕。

动画由 ParticleSystem 的 rotationOverLifetime、sizeOverLifetime、colorOverLifetime 控制，没有使用不随暂停停止的实时时钟。新增独立 Shader PenguinPolarRing；没有覆盖原版图片、原材质或粒子 Shader。关闭 PenguinFullReskin 会逐项还原渲染模式、初始转角、旋转/缩放/颜色曲线、原材质及图集开关。本次修改前的脚本位于 backup/PenguinFullReskin.cs.before。没有改企鹅动作、围巾、碎裂、音效、BGM 或 UI 布局。

## 实际画面

- ring-preview.gif：同一游戏粒子的 GPU 放大取景，使用已安装材质与曲线，按原生 Simulate 每帧推进 0.025 秒。放大取景使用临时相机和单粒子复制体，预览后销毁；未将截图重新绘制成动画。
- combat-preview.gif：Unity Editor Game View 的实际战斗帧，隔离预览存档中使用原生 Inventory 装备 0/19/23 三把武器，无伤害、射速覆盖。预览弹窗关闭后录制，不修改正常玩家存档。
- captures/complete.json：原生粒子年龄、旋转、尺寸、透明度与实际战斗冰块/收益观测。
- original-particles.json：修改前代表性子弹的 193 个粒子参数记录。

截图与测试不代替用户对最终外观的验收；尚未进行手机实机验证。

## 本次验证结果

- tests-ring.json：同一次 PlayMode 运行 2/2 通过（14.13 秒），实际场景复制粒子的旋转、扩散、渐隐、Time.timeScale=0 暂停；换肤关闭/重开还原全部被调整参数与材质，发射数量、寿命与触发节奏相同。
- tests-natural-shot.json：独立 PlayMode 运行 1/1 通过（8.63 秒），自然攻击冰块、粒子贴图与单次奖励保持正确，无碎裂物体。
- approved-assets.json：原企鹅动作、脚本、基础图及对应元数据 8 个文件哈希保持一致。
- handoff.json：正常场景停在 EditMode，Persist=true，没有预览存档覆盖，RingShader 已保存，Shader 无错误。
