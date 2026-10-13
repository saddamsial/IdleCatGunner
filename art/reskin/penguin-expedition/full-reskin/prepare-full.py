"""Split generated atlases without repainting; preserve every original gameplay ID."""
from pathlib import Path
from PIL import Image, ImageChops
import json, math
ROOT=Path(__file__).resolve().parents[4]
HERE=Path(__file__).resolve().parent
OUT=ROOT/'reconstruction/CatGunnerUnityClient/Assets/Recovery/PenguinFull'
OUT.mkdir(parents=True,exist_ok=True)
meta=[]
# Find isolated dark eye islands surrounded by the face's white feathers.
def components(mask):
 w,h=mask.size; px=mask.load(); seen=set(); groups=[]
 for y in range(h):
  for x in range(w):
   if not px[x,y] or (x,y) in seen: continue
   seen.add((x,y)); stack=[(x,y)]; pts=[]
   while stack:
    a,b=stack.pop();pts.append((a,b))
    for q,r in ((a-1,b),(a+1,b),(a,b-1),(a,b+1)):
     if 0<=q<w and 0<=r<h and px[q,r] and (q,r) not in seen: seen.add((q,r));stack.append((q,r))
   if len(pts)>4: groups.append((min(p[0] for p in pts),min(p[1] for p in pts),max(p[0] for p in pts)+1,max(p[1] for p in pts)+1,len(pts)))
 return groups

def face(i):
 s=i.copy();s.thumbnail((222,256));w,h=s.size;pix=s.load();mask=Image.new('1',(w,h));m=mask.load()
 for y in range(int(h*.16),int(h*.57)):
  for x in range(int(w*.3),int(w*.9)):
   r,g,b,a=pix[x,y];m[x,y]=a>200 and max(r,g,b)<85
 eyes=[]
 for x0,y0,x1,y1,n in components(mask):
  ew,eh=x1-x0,y1-y0
  if not (4<ew<30 and 5<eh<35 and .25<ew/eh<1.4 and n<600):continue
  cx,cy=(x0+x1)/2,(y0+y1)/2
  whites=0
  for a,b in [(x0-3,int(cy)),(x1+3,int(cy)),(int(cx),y0-3),(int(cx),y1+3)]:
   if 0<=a<w and 0<=b<h:
    r,g,bb,al=pix[a,b];whites+=al>200 and min(r,g,bb)>170
  if whites>=2:eyes.append([cx/w,1-cy/h,ew/w*.58,eh/h*.58])
 eyes=sorted(eyes,key=lambda v:v[0])[-2:]
 # Orange beak (feet below lower bound excluded).
 om=Image.new('1',(w,h));p=om.load()
 for y in range(int(h*.22),int(h*.62)):
  for x in range(int(w*.45),w):
   r,g,b,a=pix[x,y];p[x,y]=a>200 and r>170 and 50<g<220 and b<90
 groups=[g for g in components(om) if g[4]>15]
 mouth=[0,0,0,0]
 if groups:
  x0,y0,x1,y1,n=max(groups,key=lambda v:v[4]);mouth=[(x0+x1)/2/w,1-(y0+y1)/2/h,(x1-x0)/w*.33,(y1-y0)/h*.30]
 return (eyes+[[0,0,0,0],[0,0,0,0]])[:2],mouth
for job in json.loads((HERE/'manifest.json').read_text()):
 key=job['key'];img=Image.open(HERE/'raw'/f'{key}.png').convert('RGBA');cols,rows=job['grid'];w,h=img.size
 objects=[]
 if key in ['pets','fish'] or key.startswith('weapons'):
  groups=components(img.getchannel('A').point(lambda a:255 if a>80 else 0).convert('1'))
  objects=[g for g in groups if g[4]>(5000 if key=='pets' else 1800)]
  objects.sort(key=lambda g:(int((g[1]+g[3])/2/h*rows),(g[0]+g[2])/2))
  print(key,'whole-object bounds',len(objects))
  if len(objects)!=job['count']: objects=[]
 for n in range(job['count']):
  x,y=n%cols,n//cols;rect=(round(x*w/cols),round(y*h/rows),round((x+1)*w/cols),round((y+1)*h/rows));im=img.crop(rect)
  if objects:
   g=objects[n];rect=(max(0,g[0]-4),max(0,g[1]-4),min(w,g[2]+4),min(h,g[3]+4));im=img.crop(rect)
  # Ignore the generated export's very faint alpha halo while finding content bounds.
  bbox=im.getchannel('A').point(lambda a:255 if a>40 else 0).getbbox()
  if not bbox:raise ValueError((key,n,'empty'))
  bbox=(max(0,bbox[0]-3),max(0,bbox[1]-3),min(im.width,bbox[2]+3),min(im.height,bbox[3]+3));im=im.crop(bbox)
  family='weapons' if key.startswith('weapons-') else key
  index=n+int(key.split('-')[1])*15 if family=='weapons' else n
  if family=='skins':
   if n==0: im=Image.open(ROOT/'reconstruction/CatGunnerUnityClient/Assets/Recovery/PenguinExpedition/penguin.png').convert('RGBA')
   else:
    # All textures use the approved animation's UV coordinate space and foot baseline.
    scale=min(421/im.width,485/im.height);im=im.resize((round(im.width*scale),round(im.height*scale)),Image.Resampling.LANCZOS)
    canvas=Image.new('RGBA',(443,512));canvas.alpha_composite(im,((443-im.width)//2,504-im.height));im=canvas
  else:im.thumbnail((512,512) if family in ['bosses','raid-bosses','weekly-shop','effects'] else (256,256),Image.Resampling.LANCZOS)
  path=OUT/f'{family}-{index:02}.png';im.save(path)
  row=dict(family=family,index=index,file=str(path.relative_to(ROOT/'reconstruction/CatGunnerUnityClient')),source=key,cell=rect,crop=bbox,width=im.width,height=im.height)
  if family=='skins':row['eyes'],row['mouth']=face(im)
  meta.append(row)
(HERE/'assets.json').write_text(json.dumps(meta,indent=2))
print('Prepared',len(meta),'assets. Eyes:',[(r['index'],sum(e[2]>0 for e in r['eyes'])) for r in meta if r['family']=='skins'])
