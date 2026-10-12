from pathlib import Path
import subprocess,json,base64,re,time
from PIL import Image
R=Path(__file__).resolve().parents[1];Q=R/'reports';W=R.parents[2];A='/Users/rongdahuikeji/Library/Android/sdk/platform-tools/adb';cmd=[A,'-s','85906d12'];pkg='com.ravanla.idlecatgunner.recovery';save='/storage/emulated/0/Android/data/'+pkg+'/files/RecoveredClient-vc257/NoSaveFile.json'
def adb(*a):return subprocess.run(cmd+list(a),capture_output=True,check=True).stdout
sig=lambda n:re.search(r'certificate SHA-256 digest: (\w+)',json.loads((Q/n).read_text())['signature'])[1]
assert sig('mobile73-apk-audit.json')==sig('mobile77-apk-audit.json')
activity=adb('shell','dumpsys','activity','activities').decode();own=any(pkg in l for l in activity.splitlines() if 'topResumedActivity=' in l)
if own:adb('shell','input','keyevent','KEYCODE_HOME');time.sleep(.8)
pre=adb('shell','cat',save);(W/'Build/r77-before/phone-pre-r77-save.json').write_bytes(pre);before=json.loads(base64.b64decode(pre))
adb('shell','am','force-stop',pkg) # owned recovery app only; save already persisted on HOME
install=adb('install','-r',str(W/'Build/CatGunner-Recovery-20261012-r77.apk'));(Q/'mobile77-phone-install.txt').write_bytes(install);assert b'Success' in install
(Q/'mobile77-phone-start.txt').write_bytes(adb('shell','am','start','-W','-n',pkg+'/com.unity3d.player.UnityPlayerGameActivity'));time.sleep(14)
(Q/'visual/mobile77-phone-first.png').write_bytes(adb('exec-out','screencap','-p'))
post=adb('shell','cat',save);(W/'Build/r77-before/phone-post-r77-save.json').write_bytes(post);after=json.loads(base64.b64decode(post))
fields=['Selected_items','Star_Slot_Lv','Owned_Gun_list','FishInventory','Is_Remove_AD_All','Is_Buff_Pack','Is_Mine_Pack','Mission_is_Vip','Mission_is_Luxury','Gun_Collect','Pet_Collect','Recovery_SimulatedPurchases','RaidMission_Ticket','RaidMission_Clear','RaidMission_Reward_Get','RaidMission_Reward_ReGet','Adventure_Currency_Core','Pet_Selected_items','Owned_Pet_list','Raid_Helper_Season_Index','Raid_Best_Level_ByType'];retained={k:before.get(k)==after.get(k) for k in fields}
info=adb('shell','dumpsys','package',pkg).decode();code=int(re.search(r'versionCode=(\d+)',info)[1]);pid=adb('shell','pidof',pkg).decode().strip();logs=adb('logcat','-d','--pid='+pid,'-v','brief').decode();(Q/'mobile77-phone-logcat.txt').write_text(logs)
errors=[l for l in logs.splitlines() if re.search(r'(NullReferenceException|InvalidOperationException|MissingComponentException|FATAL EXCEPTION|Fatal signal|Crash!!!)',l)]
windows=adb('shell','dumpsys','window','windows').decode();blocks=windows.split('  Window #');ownWindow=[b for b in blocks if pkg in b.split('\n',1)[0]];attrs=[l.strip() for b in ownWindow for l in b.splitlines() if 'KEEP_SCREEN_ON' in l];(Q/'mobile77-own-window-flags.txt').write_text('\n'.join(attrs)+'\n')
im=Image.open(Q/'visual/mobile77-phone-first.png');colors=[im.getpixel((x,y))[:3] for x in [100,300,800,1300] for y in [10,40,90,140]];covered=len(set(colors))==1 and colors[0]!=(38,27,11) and colors[0][0]>60 # source sliced background center; inspected separately
x=dict(installedCode=code,coldStartForced=True,signatureMatchesR73=True,progressRetained=retained,upgradeBefore=before.get('Upgrade_Lv'),upgradeAfter=after.get('Upgrade_Lv'),managedErrors=errors,keepScreenOnFlag=bool(attrs),systemScreenOffTimeoutMs=adb('shell','settings','get','system','screen_off_timeout').decode().strip(),phone='Xiaomi23116PN5BC physical85906d12',topInsetCovered=covered,topInsetPixels=list(colors[0]),originalSlicedBackground=True,firstCapture='visual/mobile77-phone-first.png',originalGameTouched=False,offlinePurchaseOnly=True,fullAcceptance=False);(Q/'mobile77-phone-evidence.json').write_text(json.dumps(x,ensure_ascii=False,indent=2));print({k:x[k] for k in ['installedCode','progressRetained','managedErrors','keepScreenOnFlag','topInsetCovered']});assert code==77 and all(retained.values()) and not errors and covered
