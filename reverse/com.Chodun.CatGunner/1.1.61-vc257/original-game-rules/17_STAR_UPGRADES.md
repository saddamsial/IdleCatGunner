# 三槽星级强化：vc257

唯一输入 com.Chodun.CatGunner 1.1.61/vc257/arm64，旧鱼枪 XAPK 未参与。工作工程使用已有 Unity 6000.4.10f1。

## 原规则和证据

最高进度 Tree_manager.Stage_Value_Max ≥390 后开放，三槽独立星级上限20。原成功率数组从匹配 metadata 的80字节静态初始化字段读取并核对SHA：100/90/80/70/60/50/40/30/20/10/10/10/10/10/5/5/5/1/1/1。目标等级k的费用为50*k。扣星石后才抽整数Random.Range(0,100)，roll<rate成功，成功与失败都扣费；成功加一级且清零失败数，失败保留原等级并加失败数。目标18级起概率增加累计失败数，最高5%。锁定、满级和余额不足不扣费、不抽随机数。

每一步乘1.5*Pow(1.07,k-1)，保留未经舍入的double累计值，再把(累计倍数-1)*100按原G17构造和两位有效数截断为加成。不能每一级先舍入再累计。完整21项数值锚点见original-star-client-contract.json；1级+50%、2级+140%、20级+120000000000%。预览使用原枪基础伤害，团战预览先算弱点枪伤害，再加槽位星级；森林实际战斗保留已有普通攻击/重生链，再加星级，团战实际星级在弱点10倍之前应用，暴击随后计算。

星级属于槽位，换枪不交换星级，重生保留星级、失败计数和星石。Cat.Balance_Reload的SlotNum来自Array.IndexOf(Cat_list,this)，已选枪有空位时压紧猫列表，实际猫星级使用压紧后的索引；枪械页物理槽位仍显示该槽星级。这是native行为，不能擅自改成枪ID星级或补齐空位。矿山模式固定1点伤害不受星级倍率影响。

原SlotUpgrade_UI、StarUpgrade_manager、Alert_list共53输入对象，经Editor API合入单Canvas主场景。保留原弹窗10个文本、费用与按钮配色、关闭按钮、原Alert动画/销毁计时与音效15/16/5。原I2Languages的四个星级词条和14语种文本完整提取，当前语言选择采用中文系统原zh-CN、其他系统原英文的本地桥接。全部I2语言管理和静态说明文本仍待恢复。

## 适配和保留范围

OriginalStarRules/Progression与现有独立存档同步，仍使用原StarGem、Star_Slot_Lv、Star_Slot_FailCount字段，没有新建奖励或赠送星石。缺失或空星级数组按中性三槽兼容；非空非法长度/等级/负值明确拒绝，保留档案。这比native LoadData的复制/夹取更严格，属于本地保全适配。

数值使用已有BigInteger十进制后端和整数文本，不能宣称商业InfVal完整源码已恢复。原Alert池采用一个原Alert对象重启动画的本地桥接。商业ParticleImage成功粒子仍保留于冻结Main，当前成功反馈为原按钮短暂缩放，本地反馈参数不是原粒子参数。中文提示使用包内原NotoSansSC-Bold字体生成TMP回退字形，标题直接绑定该原字体来源的兼容字体（原描边回退材质失效），内嵌货币原纹理换接已存在的官方TMP/Sprite shader；材质/字体是兼容适配，不等同全部原视觉。

## 验证

五项专项包括全20级数值与概率/费用锚点，扣费顺序/严格roll边界/保底/门禁/存档拒绝，原EventSystem顶层射线点击成功/失败/余额不足/满级/关闭，独立临时档案保存重读/换枪/重生/Raid保留，以及原Gun0升级后以两发150点自然子弹击倒原250HP树。测试装备/货币来自独立夹具，不读取或补充用户档案。原树目标位置改变仅用于命中观测，没有注入伤害/血量/时间；明确不等同手机或全波次验收。

首轮专项5/5（21.3秒），截图发现缺字/粉色图标；中间修复后5/5（25.28秒），截图显示中文回退字形材质仍需修正，分别保留历史图片与结果。第一次全程序集启动为显示修复主动取消，cancelled不能计入通过。中间材质修复后第三次专项5/5（24.47秒）仍未解决原描边回退材质；最终改为直接绑定包内中文字体。最终专项、完整回归、GPU检查和正常Editor交接以reports/live-star-*与star-editor-handoff.json为准。

最初存档SHA与本轮早期当前文件不同，当时发现Editor在Play模式并停止；不声称整轮逐字节不变，也不回滚用户现有进度。最终独立验证前当前档案原样备份至checkpoints/pre-star-final-tests-user-save；最终测试的SHA比较单独记录。没有测试星石或星级写入当前用户档案。

## 可复现证据

- tools/select_native_methods.py的star-client/star-numeric/star-feedback范围；native-star-*-reviewed包含preferred/Ghidra VA、首16字节核对与有界C/ASM，共80业务方法与18辅助导出。
- tools/export_star_contract.py验证冻结native/metadata/Main哈希、原概率80字节SHA、1.07指针和10个字符串指针，并生成独立Python数值锚点与原翻译镜像。
- tools/prepare_star_slice.py与star-slice-preparation.json记录范围外组件/引用移除；合并和显示修复通过StarClientEditor/Unity资源API。
- checkpoints/pre-star-client保存接入前主场景、meta和受影响代码；star-original-preservation.json核对原三份脚本meta、原中文字体与场景meta。
- reports/star-projectile-observation.json、visual/star-upgrade-test-gpu.png为实际伤害/截图；star-command-history.json记录超时但保存成功的Editor调用和取消/实际测试结果。

完整客户端仍未完成：皮肤、鱼、遗物、派遣、团战任务/联网/可信时钟、付费助手/加时、广告/IAP、完整粒子/本地化/视觉与Player/手机对照仍待恢复。未提交或推送Git。

最终验收：专项5/5（23.61秒），完整程序集同一实际运行111/111（686.76秒）。最终GPU已人工读取，标题和星石图标可读；原静态韩文保留，完整视觉尚未验收。Editor已正常交接，最终独立测试档案SHA不变。
