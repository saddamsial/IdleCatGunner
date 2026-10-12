# 24 宠物骨骼动画与派遣预览

仅对应 com.Chodun.CatGunner 1.1.61 / vc257 / arm64。原引擎6000.0.61f1，工作工程6000.4.10f1。原包、冻结Main、metadata不修改；普通库存仍为10阶，13套骨骼数据不等于13阶可获取宠物。

## 已证明并接回的原规则

- `exact-serialized`：原3只场景宠物与19只Pet_Dummy，每只13个Skin；原286个SkeletonAnimation组件和13份4.1.24骨骼、图集、材质。Idle/Walk/Attack/Busking四条动画均可解码，原数据未改写。
- `exact-native` Pet.Reload：缓存对应Skin的SkeletonAnimation，只激活该Skin，清空动画名缓存，再选择Idle。SetAnimation忽略缺失动画器和重复名称，避免每帧重启动画。
- `exact-native` MovePets：实际平面速度大于0.4切Walk，否则Idle；仅运动时更新朝向，横向绝对值小于0.05保持原朝向，正向Y=0，非正向Y=180。原阵型、迟滞、分离和避猫规则保持。
- `exact-native` Adventure_Panel.RenderTexture_Map_Reload：先选未锁定的装备槽，再选未锁定库存槽，保留同阶重复宠物和实体顺序；最多19只，剩余对象Hide。Pet_Dummy.Reload只切原Skin，不强制Walk；其原序列化动画为Idle。
- `exact-native` 场景跟随宠物仍来自所有已装备槽，即使该槽派遣占用。不要把预览的排除门禁误加到场景跟随分支。

原生首16字节校验及C/ASM见native-pet-spine-preview-reviewed；17条导出包括11业务方法、6异常辅助。导出完成不等于整客户端原源码。朝向/动画字面量/0.4与0.05常量见pet-spine-native-literals.json；完整合同original-pet-spine-contract.json。

## 插件与本地适配

官方运行库来源： https://esotericsoftware.com/files/runtimes/unity/spine-unity-4.1-2024-06-19.unitypackage 。下载SHA和184个文件哈希记录在pet-spine-runtime-installation.json。原插件源码未由IL2CPP恢复；官方运行库作为明确依赖执行原骨骼曲线。98项已匹配原MonoScript/Shader身份保留。只安装Runtime，不装例子和自动重写骨骼资产的Editor导入器；保留许可头。

Unity6对SkeletonRootMotionBase的自动API更新记录在pet-spine-runtime-compatibility.json。4.1官方支持范围并未包含Unity6，这里的兼容性以当前实际编译和PlayMode检查为依据，不扩大到其他版本或平台。

原预览是独立根Adventure_RenderTexture_Map，位置(-500,0,0)、旋转X90、正交相机3.56和原Field RenderTexture引用保留。原URP覆盖相机在当前BiRP中采用透明SolidColor清屏，防止帧残影；这是渲染兼容适配。RecoveryAdventurePreview将该外部根启闭绑定到原Map页，关闭菜单/切遗物页停用相机，无进度、权益或货币写入。

## 验证与边界

专项覆盖13骨骼/四轨与有效图集、真实网格顶点随时间变化、原Skin切换、Walk/Idle和朝向死区、同动画轨不重启、19只独立动画状态、派遣占用与取消、可见RT像素、页面关闭/重开、独立档案装备与骨骼冷重载。最终结果见live-pet-spine-focused-final-status.json；完整程序集另见最新VERIFICATION.json，不拼接不同批次。

恢复前原缺失行为的失败报告保留；最初夹具未防护可选ForestMovementAcceptance导致的失败也独立保留。GPU图片visual/pet-spine-world-test-gpu.png与pet-spine-adventure-test-gpu.png使用独立测试装备与锁定输入，证明当前Editor呈现；不是用户进度，也不是手机像素验收。

Attack/Busking虽可解析，当前原生业务路径只证明Idle/Walk；不凭动画名字发明攻击或演出入口。原URP/全像素、所有UI解锁/本地化、其余特效及在线/广告/购买服务仍未完成。
