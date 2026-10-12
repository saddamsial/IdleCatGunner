# 原省电模式与正常客户端设置流程

范围仅为 `com.Chodun.CatGunner 1.1.61 / vc257 / arm64`，Unity 6000.4.10f1 工作工程。旧 XAPK 不参与。全客户端 `scope_complete=false`。

## Native 依据

新导出四项业务方法及六项异常辅助，10/10 完成：Setting.EcoMode_Change `0x2b21548`、EcoMode_Off `0x2b21688`、Mute_Panel.OnEnable `0x2b44ac8`、OnDisable `0x2b44b14`。合同额外重验 Cat.Attack、Scrolling.Start/Update、五种 Game_Enter，共 12 项 C/ASM、16字节输入门禁和排他边界。三项冻结输入 SHA 复核，Ghidra 使用已验证的 `+0x100000` 地址重基。

Change 严格按源顺序执行：翻转静态 is_eco、取原可用/禁用颜色、主 Camera 对象350 active=!is_eco、EcoPanel对象694 active=is_eco、从当前 Skin_manager.Selected_num 取 Skin_sprites。两个方向都刷新猫图。Off 只有开启时调用 Change，已关闭时不刷新 UI/皮肤。没有游戏暂停、timeScale/FPS 调整、奖励、购买或 Eco 状态保存。

Mute_Panel 操作的是 **Cat_manager.is_Shoot_Mute**，不是 Setting.is_AutoDisable。ELF relocation/encoded metadata usage/table identity 和静态 offset0 已核对。Cat.Attack 发出正常子弹并执行后坐力/枪口粒子，只有 `!is_Shoot_Mute && !Setting.is_eco` 时播放 Shoot 音效。其它音效和 BGM 的音量逻辑不在这条调用内；运行测试核对音量和 Shoot 帧记录，并未做实体扬声器/功耗验收。

速通、Boss、矿山、怪物、团战的原 Game_Enter 在 Tree.Game_Exit 后、场地/相机设置前调用 EcoMode_Off。工作客户端的共同 SuspendForestForMode 接回该调用，避免隐藏 Camera 后切入怪物模式时 Camera.main 为空。

## 原 UI 与明确适配

通过只读索引提取原 Setting9651及其 Setting_UI3171、EcoPanel694、Eco按钮1069、Setting按钮1810；原云数据/兑换对话框不加入本切片。输入场景含56对象/250文档，4个既有祖先未搬入；通过 EditorSceneManager/Transform API 移入52个原对象，原图、原 RectTransform、字体、颜色、回调及关联脚本meta保留。工作场景34790对象，零缺失脚本。

原 Main_UI 将 EcoPanel 放在 Btn_list 前面，因此仍由同一个省电按钮退出。原场景没有 EcoMode_Off 的持久化点击回调，没有编造“点击全屏任意位置退出”。Setting按钮打开原3171页面，关闭按钮关闭它；BGM/SFX/震动三个按钮使用既有 native toggle 和原六个 ON/OFF 对象。源教程 DisableOnTutorial 的 EcoMode_Btn 引用接回，11处中现在5处已连接、6处其它 HUD 仍缺。

Hatch 的原纹理、400尺寸和 Scrolling 的 Speed(-0.1,-0.1) 接回。原 DOTween125065和123640参数分别为猫缩放1秒至(1.05,0.85,1)、文本 anchoredPosition2秒至(0,120,0)，InOutQuad/无限Yoyo/scaled-time。两个 RecoveryEcoTween 是**本地呈现适配**，并不代表恢复 DOTween 的创建/autoKill/lifetime；重新打开时复位。I2自动本地化组件仍隔离，源韩文/英语保留。

既有本地 PlayerPrefs 音频偏好桥继续使用；测试通过非序列化 PersistPreferences=false 隔离，不写用户偏好。场景销毁时清理 instance/is_eco/显示状态是本地生命周期适配。云登录、云存档、Restore、兑换及联系邮件未接通，相关按钮继续禁用；没有模拟支付或发送邮件。

## 验证与交接

实际独立运行的结果和时长见 `reports/VERIFICATION.json` 的 eco_mode_evidence，以及各 live-eco-*-status.json。首版5/5后补齐五模式消费链，最终6项完整专项重新运行；首版结果不能代替最终6项。首次教程回归4/5的失败来自新增测试断言误写成Setting_Btn；原11项列表实际包含EcoMode_Btn1069，修正后完整教程组重新通过5/5，首次失败报告保留。真实鼠标边沿经 StandaloneInputModule 分派，非 ExecuteEvents；自然默认Gun0在画面隐藏时将30棵树变为29棵，正常移动、子弹命中、收入、原倒计时均保持，无伤害/血量/位置/时间加速注入。

实际 GPU 图：`visual/eco-mode-original-mask-gpu.png`、`eco-mode-return-forest-gpu.png`、`eco-restored-settings-gpu.png`。检查原所选猫、原图案、绿色省电按钮、Stage/金币/升级HUD、BGM/Sound/Vibration和关闭入口。截图及 Editor 测试不代表实体触屏、全像素一致、音频听感或省电幅度验收。

主场景合并及动画保存各遇到一次 CLI 5秒响应超时；操作已经落盘，通过独立读取实际组件、参数和干净场景确认，未重复合并。最终交接打开主场景也触发CLI响应超时；交接文件ready=true及独立场景读取均确认完成。唯一Pipeline请求错误及两项Metal深度警告完整归档后，清理已处理的控制台日志，最终无新错误；没有将请求超时称为游戏运行错误。场景审计需要处理 Unity 自动 local fileID 碰撞重排：原有层级/名称/组件身份映射后核对所有原序列化字段，只有三个祖先的子节点列表及教程 EcoMode 引用允许业务变化。纯 fileID 文档哈希对比不能把 ID 重排误认成玩法修改，具体证据见 eco-mode-scene-document-diff.json。

用户真实 NoSaveFile.json及.bak与轮前 SHA 一致，没有回滚覆盖。正常客户端交接恢复 EditMode、Persist=true、无存档覆盖/输入覆盖/活动任务和脏场景。仍待离线进度/遗物消费者、缺表最高级、其余 UI/特效/本地化、在线服务和 Player/真机体验；未做 Git 提交/推送或打包。
