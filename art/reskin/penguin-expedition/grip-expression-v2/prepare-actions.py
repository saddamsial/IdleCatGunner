from pathlib import Path
from PIL import Image, ImageFilter, ImageChops, ImageDraw
import ast,json
HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[3]
OUT=ROOT/'reconstruction/CatGunnerUnityClient/Assets/Recovery/PenguinActionsV2'
source=(HERE.parent/'full-reskin/prepare-full.py').read_text()
tree=ast.parse(source)
ns={'Image':Image}
exec(compile(ast.Module(body=[n for n in tree.body if isinstance(n,ast.FunctionDef)],type_ignores=[]),'face-functions','exec'),ns)
# Allow closed and wink eyes while keeping the same white-feather validation.
fsource=ast.get_source_segment(source,next(n for n in tree.body if isinstance(n,ast.FunctionDef) and n.name=='face'))
fsource=fsource.replace('4<ew<30 and 5<eh<35 and .25<ew/eh<1.4','4<ew<35 and 2<eh<35 and .25<ew/eh<6')
# The right eye can touch the dark beak outline; mask that bridge using
# the detected orange beak top before extracting eye components.
fsource=fsource.replace('eyes=[]', '''om=Image.new('1',(w,h));op=om.load()
 for yy in range(int(h*.22),int(h*.62)):
  for xx in range(int(w*.55),w):
   rr,gg,bb,aa=pix[xx,yy];op[xx,yy]=aa>200 and rr>170 and 50<gg<220 and bb<90
 beaks=[g for g in components(om) if g[4]>15]
 if beaks:
  beak=max(beaks,key=lambda g:g[4]);top=beak[1]-2
  for yy in range(max(0,top),int(h*.57)):
   for xx in range(max(int(w*.3),beak[0]-3),int(w*.95)):m[xx,yy]=False
 eyes=[]''')
fsource=fsource.replace('int(w*.9)', 'int(w*.98)')
exec(fsource,ns)
records=[]
def save(im,index,origin):
 b=im.getchannel('A').point(lambda a:255 if a>40 else 0).getbbox();im=im.crop(b)
 scale=min(421/im.width,485/im.height);im=im.resize((round(im.width*scale),round(im.height*scale)),Image.Resampling.LANCZOS)
 canvas=Image.new('RGBA',(443,512));canvas.alpha_composite(im,((443-im.width)//2,504-im.height))
 path=OUT/f'skins-{index:02}.png';canvas.save(path)
 eyes,mouth=ns['face'](canvas)
 for e in eyes:
  if e[2]>0:e[3]=max(.027,e[3])
 records.append(dict(index=index,file=str(path.relative_to(ROOT/'reconstruction/CatGunnerUnityClient')),source=origin,eyes=eyes,mouth=mouth))
save(Image.open(HERE/'raw/actions-body.png').convert('RGBA'),0,'actions-body')
for key,offset in [('actions-skins-a-final',1),('actions-skins-b-final',13)]:
 im=Image.open(HERE/'raw'/f'{key}.png').convert('RGBA');w,h=im.size;alpha=im.getchannel('A')
 groups=ns['components'](alpha.point(lambda a:255 if a>80 else 0).convert('1'));cells=[[] for _ in range(12)]
 for g in groups:
  if g[4]<25:continue
  x0,y0,x1,y1,n=g;cell=min(2,int((y0+y1)/2/h*3))*4+min(3,int((x0+x1)/2/w*4));cells[cell].append(g)
 for n,gs in enumerate(cells):
  largest=max(g[4] for g in gs);gs=[g for g in gs if g[4]>max(25,largest*.006)]
  assert sum(g[4] for g in gs)>300,(key,n)
  # Disconnected costume details stay with their grid cell.
  x0=min(g[0] for g in gs);y0=min(g[1] for g in gs);x1=max(g[2] for g in gs);y1=max(g[3] for g in gs)
  save(im.crop((max(0,x0-3),max(0,y0-3),min(w,x1+3),min(h,y1+3))),offset+n,key)
im=Image.open(HERE/'raw/actions-flipper-plump.png').convert('RGBA');b=im.getchannel('A').point(lambda a:255 if a>40 else 0).getbbox();im=im.crop(b);im.thumbnail((256,256),Image.Resampling.LANCZOS)
canvas=Image.new('RGBA',(im.width+16,im.height+16));canvas.alpha_composite(im,(8,8));canvas.save(OUT/'holding-flipper.png')
(HERE/'assets.json').write_text(json.dumps(records,indent=2))
contact=Image.new('RGB',(1250,1500),'#d9e9f0');draw=ImageDraw.Draw(contact)
for r in records:
 im=Image.open(ROOT/'reconstruction/CatGunnerUnityClient'/r['file']);im.thumbnail((225,270));x=r['index']%5*250;y=r['index']//5*300
 contact.paste(im,(x+(250-im.width)//2,y+25),im);draw.text((x+8,y+6),str(r['index']),fill='#1c3040')
contact.save(HERE/'skins-body-contact.png')
print('Prepared',len(records),'bodies + short flipper; eyes',[(r['index'],sum(e[2]>0 for e in r['eyes'])) for r in records])
