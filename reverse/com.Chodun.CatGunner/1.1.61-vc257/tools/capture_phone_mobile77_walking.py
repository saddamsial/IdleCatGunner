from pathlib import Path
import subprocess,time,io,json
from PIL import Image
R=Path(__file__).resolve().parents[1];Q=R/'reports';a=['/Users/rongdahuikeji/Library/Android/sdk/platform-tools/adb','-s','85906d12'];target=(224,211,155)
def adb(*args):return subprocess.check_output(a+list(args))
# Observe normal stage transitions only: no save or state injection.
start=time.monotonic();count=0;found=False
while time.monotonic()-start<35:
 raw=adb('exec-out','screencap','-p');im=Image.open(io.BytesIO(raw)).convert('RGB');count+=1
 points=[im.getpixel((int(im.width*x),int(im.height*y))) for x,y in [(0.3,0.3),(0.7,0.3),(0.3,0.55),(0.7,0.55)]]
 if sum(all(abs(a-b)<=8 for a,b in zip(c,target)) for c in points)>=3:
  (Q/'visual/mobile77-phone-walking-all-hud.png').write_bytes(raw);found=True
  adb('shell','input','tap','75','2720');time.sleep(.25)
  (Q/'visual/mobile77-phone-walking-weapon-click.png').write_bytes(adb('exec-out','screencap','-p'));break
 time.sleep(.1)
x=dict(walkingFrameDetected=found,polls=count,seconds=round(time.monotonic()-start,2),targetColor=target,observedColors=points,clicked='left weapon button only if ordinary walking observed',stateInjection=False);(Q/'mobile77-phone-walking-observation.json').write_text(json.dumps(x,indent=2));print(x)
