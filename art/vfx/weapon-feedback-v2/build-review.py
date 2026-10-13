from pathlib import Path
from PIL import Image,ImageDraw,ImageFont
import numpy as np,json,hashlib
root=Path(__file__).resolve().parent
source=root/'weapon-effects-concept-r2.png';im=Image.open(source).convert('RGBA');a=np.array(im.getchannel('A'))
# Only crop/scale/place existing generated sprites. Do not repaint their pixels.
occupied=np.sum(a>80,axis=1)>25
segments=[];start=None
for y,on in enumerate(occupied):
 if on and start is None:start=y
 if not on and start is not None:segments.append([start,y]);start=None
if start is not None:segments.append([start,a.shape[0]])
merged=[]
for lo,hi in segments:
 if merged and lo-merged[-1][1]<45:merged[-1][1]=hi
 else:merged.append([lo,hi])
merged=[s for s in merged if s[1]-s[0]>65]
# Explicit row windows for this reviewed 821 x 1916 concept sheet: the tool
# output is not a uniform production atlas, so do not claim fixed-grid readiness.
windows=[(65,240),(295,490),(550,745),(795,985),(1035,1225),(1265,1505),(1540,1748)]
assert im.width==821 and 1900<=im.height<=1930,im.size
columns=[(0,235),(238,584),(592,821)]
names=['实弹 · 金橙','霰弹 · 铜橙','穿透 · 紫色','激光 · 青绿','爆破 · 红橙','火箭 · 橙红','爆裂狙击 · 金粉']
keys=['single','shotgun','pierce','laser','explosive','missile','blast-sniper']
fontpath='/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets/Font/NotoSansSC-Bold.ttf'
font=ImageFont.truetype(fontpath,25);small=ImageFont.truetype(fontpath,19);title=ImageFont.truetype(fontpath,35)
W,H=1330,1180;board=Image.new('RGBA',(W,H),(17,27,43,255));d=ImageDraw.Draw(board)
d.text((28,14),'武器攻击特效 · 分色概念方案',font=title,fill='white')
d.text((28,64),'图像设计预览：按枪口 / 弹道 / 命中区分，尚未接入游戏',font=small,fill=(156,176,197))
for col,label in enumerate(['枪口闪光','飞行弹道','命中闪光']):d.text((230+col*365,99),label,font=font,fill=(225,236,247))
records=[]
for row,(y0,y1) in enumerate(windows):
 top=146+row*142;d.text((24,top+34),names[row],font=small,fill=(227,235,247))
 for col,(x0,x1) in enumerate(columns):
  crop=im.crop((x0,y0,x1,y1));bbox=crop.getchannel('A').getbbox()
  if bbox:crop=crop.crop(bbox)
  for mode,(bg,xx,yy,maxsz) in enumerate([((209,236,246,255),222+col*365,top,(213,105)),((26,43,64,255),460+col*365,top,(65,65))]):
   rect=(xx,yy,xx+(225 if mode==0 else 95),yy+118);d.rounded_rectangle(rect,radius=12,fill=bg)
   piece=crop.copy();piece.thumbnail(maxsz,Image.Resampling.LANCZOS);board.alpha_composite(piece,(xx+((225 if mode==0 else 95)-piece.width)//2,yy+(118-piece.height)//2))
  records.append(dict(family=keys[row],phase=['muzzle','projectile','impact'][col],source=source.name,conceptCrop=[x0,y0,x1,y1]))
board.convert('RGB').save(root/'weapon-effects-review.jpg',quality=94)
(root/'concept-crops.json').write_text(json.dumps(records,indent=2)+'\n')
catalog=json.loads((root.parents[2]/'reconstruction/CatGunnerUnityClient/Assets/Recovery/Resources/OriginalEquipmentCatalogue.json').read_text())
type_rows={0:0,3:1,2:2,1:3,4:4,5:5,6:6}
proposal=[]
for n,g in enumerate(catalog['Gun_list']):proposal.append(dict(gun=n,nativeType=g['type'],family=keys[type_rows[g['type']]],plannedArtOnly=True))
(root/'weapon-family-proposal.json').write_text(json.dumps(proposal,indent=2)+'\n')
(root/'concept-validation.json').write_text(json.dumps(dict(size=im.size,mode=im.mode,alphaRange=im.getchannel('A').getextrema(),sourceSha256=hashlib.sha256(source.read_bytes()).hexdigest(),families=7,phases=3,format='Concept stills; not a uniform production atlas or runtime capture',installed=False),indent=2)+'\n')
print('Review board ready; seven weapon families and 65-entry classification proposal')
