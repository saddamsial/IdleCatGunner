from pathlib import Path
import json,datetime,csv
R=Path(__file__).resolve().parents[1];Q=R/'reports';W=R.parents[2];e=json.loads((Q/'temporary-gun-evidence.json').read_text());labels=['临时武器专项','普通库存/队友','鱼/宠物/自动合成/保险箱','现有广告/购买/任务','启动'];runs=e['independentTests'];checks='、'.join(f"{n}{v['summary']['passed']}/{v['summary']['total']}（{v['duration']}秒）" for n,v in zip(labels,runs))
summary='本轮接通临时广告武器：原首合成事件（启用客户端配置分支）、编号14的30分钟UTC限时库存、原AD图标与00:00倒计时、真实库存点击模拟广告领取、原获得武器提示、领取后永久收藏/装备/队友和冷重载、暂停计时/广告忙跨过截止、取消/关闭重开/模式变化/替换机会回调保护、到期和错误格子读档保护。临时格领取前禁止装备、合成、换位、暂停、保险箱和自动合成；原每日广告武器保持独立。广告/现金仍为本地模拟，不扣款；线上Weapon02AdOn值未知。'+checks+'分别完整通过；三张GPU实际查看。当前主档/备份、原场景字节、358既有.cs.meta和原素材保留；35954对象、缺脚本0、最终干净EditMode和Console错误0。剩余I2/UI/教程/特效、真实服务与Player/真机和用户对照验收尚未完成，scopeComplete=false。'
p=W/'README.md';s=p.read_text();old='本轮接通广告增强重生：';assert old in s or '本轮接通临时广告武器：' in s
if '本轮接通临时广告武器：' not in s:
 s=s.replace(old,'上一轮接通广告增强重生：',1);at=s.index('上一轮接通广告增强重生：');s=s[:at]+summary+' 详见 [规则58](reverse/com.Chodun.CatGunner/1.1.61-vc257/original-game-rules/58_TEMPORARY_WEAPON_OFFER.md)。\n\n'+s[at:];p.write_text(s)
p=Q/'RECOVERY_PROGRESS.md';s=p.read_text();old='## 当前阶段：广告增强重生原UI与动画结算（规则57，2026-10-11）';assert old in s or '## 当前阶段：临时广告武器' in s
if '## 当前阶段：临时广告武器' not in s:
 s=s.replace(old,'## 历史阶段：广告增强重生原UI与动画结算（规则57，2026-10-11）',1);at=s.index('## 历史阶段：广告增强重生原UI与动画结算');s=s[:at]+'## 当前阶段：临时广告武器原库存领取与到期流程（规则58，2026-10-11）\n\n'+summary+'\n\n32项原生查询（26业务/6共享辅助）完成：跨所有历史目录首次17地址、声明目录新增19地址，并集882到901，查询数不是功能百分比。首次倒计时固定0:00的失败0/1（11.43秒）及启动磁盘空间失败2/4（2.79秒）独立保留；旧任务临时场景无损压缩并验证回读hash后腾出456 MiB，完整重跑启动批次，未与最终批次拼接。本轮5个既有运行脚本、1个新业务状态类、新专项测试文件及库存拖拽回归断言更新。库存页关闭修订/保存事件/原指针路由是本地绑定；读档和状态结果遵循核对规则。Gun_Item_List源备份从本轮两处已记录差异逆向还原，非独立预编辑hash；用户主档/备份、场景/.meta拥有独立修改前hash。无场景保存、SDK/APK或Git交付。详情见temporary-gun-evidence.json。\n\n'+s[at:];p.write_text(s)
p=Q/'VERIFICATION.json';d=json.loads(p.read_text());d['updated_utc']=datetime.datetime.now(datetime.timezone.utc).isoformat();d['scope_complete']=False;d['temporary_gun_evidence']=e;d['unity_playmode']['latest_rule58_batches']=runs;d['pending']=e['pending'];d['acceptance']['script_compile']='Rule58 current sources exercised by independent complete runs; final compilationFailed=false and Console errors0.';d['acceptance']['implemented_slice_playmode']='Rule58 '+checks+' independently complete; not a full-game/Player/device run.';d['acceptance']['visual_slice']='Three actually viewed Rule58 GPU frames: original timed inventory ad offer at30:00, native weapon14 acquisition prompt and paused UTC countdown01:19. Complete remaining I2/UI/VFX and human parity acceptance pending.';d['acceptance']['temporary_gun']='Original merge-triggered timed offer/inventory timer, permanent acquire/collection/equip/cold reload, native UTC expiry/load and pre-expiry busy-ad behavior; enabled offline config branch and async local placement9 replace unavailable services.'
if not any(x['folder']=='native-temporary-gun-client-reviewed' for x in d['native_outputs']):d['native_outputs'].append({'folder':'native-temporary-gun-client-reviewed','queries':32,'completed':32,'businessMethods':26,'exceptionHelpers':6,'warning':'Byte-checked bounded C/ASM;17 first historical queries and19 new to declared outputs. Not original C# or recovered-feature percentage.'})
addresses=set()
for output in d['native_outputs']:
 for row in csv.DictReader((R/output['folder']/'status.tsv').open(),delimiter='\t'):
  if row['completed']=='true':addresses.add(row['preferred_va'])
assert len(addresses)==901;d['native_unique_completed_queries']=len(addresses);d['native_unique_completed_query_boundary']='901 unique completed addresses across declared outputs;17 first query addresses across all historical folders in Rule58. Query union is not semantic recovery or feature percentage.';d['current_client_scene_sha256']=next(x['sha256'] for x in e['preservation']['records'] if x['path'].endswith('/RecoveredClient.unity'));p.write_text(json.dumps(d,ensure_ascii=False,indent=2))
p=R/'original-game-rules/00_INDEX.md';s=p.read_text();entry='- [58 临时广告武器](58_TEMPORARY_WEAPON_OFFER.md)：首合成编号14限时30分钟、原库存点击/倒计时、领取后永久装备收藏、到期/错位存档保护、广告忙/取消/迟到边界和独立保存；线上配置与SDK为明确本地替代。\n\n'
if '58_TEMPORARY_WEAPON_OFFER.md' not in s:
 at=s.index('\n')+1;s=s[:at]+'\n'+entry+s[at:];p.write_text(s)
p=R/'original-game-rules/57_ENHANCED_REBIRTH_CLIENT.md';s=p.read_text();note='Rule58 subsequently restores the temporary timed weapon offer. The pending list below records the Rule57 handoff.\n\n'
if note not in s:
 at=s.find('Temporary');
 if at>=0:s=s[:at]+note+s[at:]
 else:s+='\n'+note
 p.write_text(s)
print({'rule':58,'independentBatches':len(runs),'declaredNativeQueryAddresses':901,'scopeComplete':False})
