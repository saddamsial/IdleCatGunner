from pathlib import Path
from PIL import Image,ImageDraw,ImageFont
import json
P=Path(__file__).resolve().parent
F=Path('/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets/Recovery/Resources')
fonts=list(Path('/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets').rglob('NotoSansSC*.ttf'))
font=ImageFont.truetype(str(fonts[0]),30) if fonts else ImageFont.truetype('/System/Library/Fonts/PingFang.ttc',30)
items=[('01-team','三只企鹅与极地宠物'),('skin','企鹅皮肤'),('weekly-shop','每周商店'),('fish','冰下鱼池'),('boss-00','极地 Boss'),('raid-01','团战 Boss'),('gun','极地武器'),('pet','宠物与新钻石')]
w,h=380,676;out=Image.new('RGB',(4*(w+20)+20,2*(h+64)+20),'#d7f2fb');d=ImageDraw.Draw(out)
for n,(name,title) in enumerate(items):
 x=20+n%4*(w+20);y=20+n//4*(h+64);im=Image.open(P/'captures'/f'{name}.png').convert('RGB').resize((w,h),Image.Resampling.LANCZOS);out.paste(im,(x,y+45));d.text((x,y),title,font=font,fill='#183e5a')
out.save(P/'gameplay-overview.png')
frames=[Image.open(p).convert('RGB').resize((540,960),Image.Resampling.LANCZOS) for p in sorted((P/'captures').glob('combat-*.png'))]
if frames: frames[0].save(P/'combat-preview.gif',save_all=True,append_images=frames[1:],duration=85,loop=0,optimize=True)
if (P/'expressions/complete.json').exists():
 r=json.loads((P/'expressions/crop.json').read_text());box=(round(r['x']),round(r['y']),round(r['x']+r['width']),round(r['y']+r['height']));frames=[Image.open(p).crop(box).convert('RGB') for p in sorted((P/'expressions').glob('face-*.png'))]
 if frames:
  frames=[i.resize((360,round(360*i.height/i.width)),Image.Resampling.LANCZOS) for i in frames];frames[0].save(P/'expression-preview.gif',save_all=True,append_images=frames[1:],duration=90,loop=0,optimize=True)
print('Actual gameplay overview and animations exported.')
