from pathlib import Path
from datetime import datetime,timezone
import json,shutil
R=Path(__file__).resolve().parents[1]
root=R.parents[2]
reports=R/'reports'
tests={}
for name,report in [('focused','live-currency-feedback-final-tiled-status.json'),('boss','live-currency-feedback-boss-status.json'),('mine','live-currency-feedback-mine-status.json'),('progression','live-currency-feedback-progression-status.json'),('forest_input_feedback','live-currency-feedback-forest-status.json'),('onboarding','live-currency-feedback-onboarding-status.json')]:
    result=json.loads((reports/report).read_text())['data']['result']
    assert result['status']=='completed' and result['summary']['failed']==0 and result['summary']['total']==result['summary']['passed'] and result['summary']['passed']>0,report
    tests[name]={'report':report,**{k:result[k] for k in ['status','duration','summary']}}
assert [tests[k]['summary']['total'] for k in tests]==[6,4,5,8,4,5]
handoff=json.loads((reports/'currency-feedback-editor-handoff.json').read_text())
assert handoff['readyForUserPlay'] and not handoff['playing'] and not handoff['dirty'] and handoff['mineUnsupportedSprites']==0
save=json.loads((reports/'currency-feedback-source-and-user-save-audit.json').read_text())
assert save['final_user_save_matches_turn_start']
console=json.loads((reports/'currency-feedback-final-console.json').read_text())
assert console['counts'][0]==0 and not console['compiling'] and not console['playing']
v=json.loads((reports/'VERIFICATION.json').read_text())
checkpoint=reports/'checkpoints/currency-feedback-before/VERIFICATION.json'
if not checkpoint.exists():shutil.copy2(reports/'VERIFICATION.json',checkpoint)
v['updated_utc']=datetime.now(timezone.utc).isoformat()
v['scope_complete']=False
v['current_client_scene_sha256']=save['scene_sha256']
v['pending']='Seven absent tutorial HUD controls, remaining UI/effects/localization, relic offline/skip/missing table300, remaining numeric consumers/_useDia/InfVal formatting and complete text-manager internals, Player/device, trusted time/rankings/online/commercial. Tree money and mine fractional diamond feedback plus ordinary Get_Dia counter and Currency lifecycle now aligned. WeeklyShop payment fulfillment pending.'
v['currency_feedback_evidence']={'contract':'original-currency-feedback-contract.json','rules':'original-game-rules/31_CURRENCY_REWARD_FEEDBACK.md','tests':tests,'test_boundary':'Six separate completed runs, not one full suite. Boss preceded mine-only material repair; remaining five use final scene. Historical full165/165 remains earlier evidence.','native_business_queries':15,'native_exception_queries':6,'native_boundary':'All21 matching byte/bound checked exports; not original C# or restoration percentage.','counter_boundary':'Native ordinary Get_Dia stores_getDia += amount*3. Wallet reward unchanged; no historical counter migration.','material_report':'mine-currency-material-compatibility.json','ground_tiling':'mine-currency-ground-tiling.json','visuals':['visual/forest-money-reward-gpu.png','visual/mine-diamond-fractions-gpu.png'],'visual_scope':'Actual GPU screenshots read: original green banknotes and money-icon36; diamond-icon0.1/1, mining ground tiling, normal and rare ores. Isolated visible original targets; no target movement/health injection. Not device or full pixel parity.','audit':'currency-feedback-source-and-user-save-audit.json','handoff':handoff,'user_save':save['user_save'],'console':console,'history':['live-currency-feedback-before-status.json','live-currency-feedback-before-loaded-status.json','live-currency-feedback-focused-status.json','live-currency-feedback-final-status.json','live-mine-currency-material-repair.json','live-mine-currency-material-repair-confirmation.json','live-mine-currency-ground-tiling.json','live-mine-currency-ground-tiling-repaired.json'],'history_boundary':'Initial0 discovery/compile error is not pass; pre-implementation0/5 (33.90s) failed as expected. Earlier6/6 passed logic but offscreen money fixture and pink mine were caught in GPU inspection. Visible-target fixture/material repair6/6 (47.08s), final original-tiling6/6 (46.87s) separately preserved. Scene save CLI timeout confirmed completed; first ground report Vector2 serialization error corrected with scalar report. No repeated blind mutation.','scope_complete':False}
v['forest_feedback_evidence']['historical_scope_note']='Rule30 result retained; tree money and mine diamond fractional feedback, ordinary currency counter and HUD lifecycle follow in currency_feedback_evidence.'
v['acceptance']['implemented_slice_playmode']='Currency6/6 (46.87s), Boss4/4 (34.58s), Mine5/5 (91.57s), progression8/8 (15.27s), forest input/feedback4/4 (27.04s), onboarding5/5 (%ss). Separate completed runs; not a new full-suite pass. Physical mouse/touch not accepted.'%tests['onboarding']['duration']
v['acceptance']['visual_slice']='Actual GPU tree cash/money glyph and mine fraction/ore/ground screenshots inspected. Compatible BiRP materials; original textures and GUIDs retained. Not full original visual/device parity.'
(reports/'VERIFICATION.json').write_text(json.dumps(v,ensure_ascii=False,indent=2)+'\n')
p=reports/'RECOVERY_PROGRESS.md';s=p.read_text()
heading='## 当前阶段：金币、采矿钻石反馈与普通奖励计数（2026-10-11）'
if heading in s:
    start=s.index(heading);end=s.index('## 历史阶段：正常 Play',start);s=s[:start]+s[end:]
s=s.replace('## 当前阶段：正常 Play 输入、纸币洒落与伤害数字（2026-10-11）','## 历史阶段：正常 Play 输入、纸币洒落与伤害数字（2026-10-11）',1)
text='''## 当前阶段：金币、采矿钻石反馈与普通奖励计数（2026-10-11）

接回树金币奖励的原money字形、1.5秒曲线，以及矿石+0.1/+1的原dia提示；分数和钱包分开，采矿仅结束时score/10结算一次。普通Get_Dia的原_getDia增量为amount×3，统一速通/Boss/采矿/普通任务与教程，不改变钱包奖励面值、不迁移用户既有计数。Currency关闭解除事件、重开取最新余额，重复绑定不叠加订阅。money0.2秒和damage0.12秒共用原1.5坐标格历史，钻石提示不节流。

匹配21条C/ASM与输入门禁（15业务/6异常辅助）、原字面量和实际四类普通调用者逐项核对。完整原DamageTextManager缓存/多相机、InfVal缩写、其它数值消费者仍未恢复；Mesh池/合并余额事件/档案调度继续明确为本地适配。规则31与可重跑合同保留这些边界。

GPU检查发现矿場原材质失效，通过Editor API仅替换Map下3001渲染器的兼容材质，原图片/对象/材质文件保留。地面原14×7.48平铺通过公共UnitySprite实现的本地Shader恢复。两张实际GPU图已读取，可见原纸币和金币36、矿石碎屑与钻石0.1/1、原地面小草平铺；不称原URP全Pass或真机像素验收。首次视野外金币和粉色矿场图留在轮前检查点。

独立运行结果：'''
text += '、'.join('%s%s/%s（%s秒）'%( {'focused':'货币专项','boss':'Boss','mine':'自然采矿','progression':'任务/进度','forest_input_feedback':'森林输入/反馈','onboarding':'初始教程'}[k],t['summary']['passed'],t['summary']['total'],t['duration']) for k,t in tests.items())
text += '''。各自单次完整结果，不合并为新的全量通过；历史165/165早于后续UI修改。0项编译失败、恢复前0/5、早期6/6和材质报告错误/超时均分开保存；超时保存已通过实际报告与干净场景确认，不盲目重做。

最终用户主/备份与本轮开始SHA一致，三冻结输入、11份原脚本meta和19份资源内容核验；两份既有TextureImporter meta归一化与其余17份逐字节相同分开记录，原GUID均保留。正常场景34738对象/零缺失脚本，EditMode/Persist=true/无存档覆盖/无inputOverride/干净场景，矿場未支持材质0。未重置/恢复用户档案、未构建Player、提交/推送或做物理触屏验收；完整客户端scope_complete=false。

'''
text=text.replace('矿場','矿场')
i=s.index('## 历史阶段：正常 Play');s=s[:i]+text+s[i:];p.write_text(s)
p=R/'original-game-rules/31_CURRENCY_REWARD_FEEDBACK.md';s=p.read_text();s=s.replace('其它相关回归和最终交接见VERIFICATION.json；分别记录，不拼接为新全量总数。','其它独立回归：Boss4/4（34.58秒）、自然采矿5/5（91.57秒）、任务/进度8/8（15.27秒）、森林输入/反馈4/4（27.04秒）、教程5/5（%s秒）。最终交接见VERIFICATION.json；分别记录，不拼接为新全量总数。'%tests['onboarding']['duration']);p.write_text(s)
print(json.dumps(tests,ensure_ascii=False,indent=2))
