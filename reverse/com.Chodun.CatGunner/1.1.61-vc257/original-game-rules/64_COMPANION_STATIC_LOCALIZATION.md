# 64 鱼和宠物静态原文绑定

唯一目标：`com.Chodun.CatGunner 1.1.61 / vc257 ARM64`。原构建 Unity6000.0.61f1，工作工程使用用户既有6000.4.10f1。旧XAPK不参与。

## 已确认的来源与边界

- `exact-serialized`：冻结Main原I2.Localize的27个primary term绑定，20个独立词条，14语言/280个独立原文值，378个绑定值。鱼页抽取/信息/合成提示/属性、鱼详情属性、删除确认/取消、原新鱼提示；宠物装备/合成提示、抽取/信息、详情属性、抽取说明标题和新宠物提示。
- `exact-serialized`：原鱼信息按钮144182→GameObject19534，宠物信息按钮124583→GameObject1050，均为`SetActive(true)`；现有场景已保留弹窗、背景/关闭事件、原概率表。本轮补文字绑定，不将已有打开行为算成新恢复。
- 宠物`Collection_Btn`原GO1561为`m_IsActive:0`，原Button124829指向枪械`Gun_Collection_UI124689`，没有独立宠物图鉴代码/页面证据。保持隐藏、不制造宠物图鉴。
- `evidence-constrained`：以原Canvas相对路径定位现有TMP，启动时选择系统语言；复用现有中文字体/运行时材质适配。不是完整I2插件、语言设置/secondary font/参数/RTL恢复；14语言原数据与简体中文渲染验证分开。

## 实现

`export_companion_static_text.py`只读冻结场景文档索引与I2Languages，验证词条类型、14项非空值、无所选参数表达式，导出`OriginalCompanionStaticText.json`并记录SHA及排除项。

`OriginalCompanionStaticText`校验27绑定/14语言，原价钱、库存、属性数值、鱼名称和概率表继续由原业务或既有源静态值控制。`RecoveryClientPresentation.Bind`在正常启动中应用所选词条。中文复用`RecoveryWeaponTextStyle`的原包SC字体及可释放运行时材质，切回英文恢复原字体/材质；没有修改场景、Prefab、原Sprite、布局或商业流程。

7项排除：没有primary term的动态/源标签6项和隐藏遗留图鉴1项。其中鱼信息页Free/Epic仍是原无primary绑定的源文字，不根据名称猜译。

## 验证与交付

基线`companion-text-baseline-validation.json`：1项失败，原`Fish/고급 생선 뽑기`在简体中文启动下仍显示韩文。第一次专项3/5的两项失败来自背景中央被内容面板遮挡的夹具点位；外围点位修正后5/5。截图初次包含原入场缩放初帧，最终夹具等待0.4秒后采集。最终专项/回归批次、9张GPU实际查看、存档/场景/meta/字体缓存保护及Editor状态由`reports/companion-text-evidence.json`记录；失败与最终批次不拼接。鼠标为BaseInput夹具经原EventSystem处理，独立验证实际按钮路由；不是物理鼠标/手机验收。详情和获得提示以独立展示夹具调用，正常抽取/库存变化由已有鱼类回归另验。

本轮新增原生查询0，已登记943地址不变；该数量不是恢复比例。全客户端、剩余UI/教程/特效、动态名称/I2生命周期、Player/真机与线上服务仍待恢复。没有APK或Git交付。
