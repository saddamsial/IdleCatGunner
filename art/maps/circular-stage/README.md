> 这是第一轮的历史记录。当前更小的雪地、围墙和脚印版本见 `../circular-stage-v2/README.md`。

# 普通关卡圆形地图

普通关卡使用矿山的圆形地面，尺寸为矿山的 80%（范围半径 120，矿山 150）。普通关卡冰山使用等面积螺旋分布，中心预留半径 16 的出生区，边缘预留 32，冰山中心位于半径 88 内；大冰山的画面轮廓也保持在圆内。保留各波冰山数量、种类概率、血量、金币和结算流程。

`Assets/Recovery/Scenes/RecoveredClient.unity` 通过 Unity 编辑器保存。旧 `MapSkin` 和 `Map_Grid` 地形分支停用，资源与引用仍保留；增加矿山地面副本 `Circular forest ground` 和 `CircularForestMap`。自动寻敌在圆形关卡中搜索全部活动冰山池；队伍与宠物的活动范围限制在圆内，矿山等其他模式使用各自规则。

## 验证

- `tests-circular.json`：5/5 PlayMode 通过。覆盖阶段 0、7、4999 的全部五波，最多 501 块冰山、出生区、冰山间距、完整画面边界、自动寻敌、角色边界、通关重开及矿山往返。
- `tests-client-flow.json`：8/8 原有关卡流程 PlayMode 回归通过，包含五波通关进入下一阶段、自动移动、升级按钮、奖励、超时重试和存档恢复。
- `overview.png`：实际 Unity 相机 GPU 渲染的全景，预览五波关卡的 151 块冰山。
- `gameplay.png`：实际 Unity Game view 截图。
- `preview.json`：隔离预览信息。预览不写入玩家存档；完成后恢复已保存场景。
- 当前验证限于 Unity 编辑器，未重新打包 APK 或进行手机验证。

## 回退备份

`before.tar.gz` 保存修改前工作区的 `RecoveredClient.unity`、`Tree_manager.cs` 和 `CatAutoMovement.cs`，归档逐文件 SHA-256 校验一致。备份包含修改前已存在的用户工作，不覆盖此前换肤和音效修改。
