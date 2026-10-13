from pathlib import Path
from PIL import Image,ImageFilter,ImageChops
import json
p=Path(__file__).resolve().parent;dest=p.parents[3]/'reconstruction/CatGunnerUnityClient/Assets/Recovery/PenguinExtras';records=[]
for name,cols,rows in [('flat-ui-icons',4,4),('flat-ui-utilities',4,6),('flat-ui-mascots',4,2)]:
 im=Image.open(p/'raw'/f'{name}.png').convert('RGBA');w,h=im.size;alpha=im.getchannel('A');px=alpha.load();seen=set();assigned=[[] for _ in range(cols*rows)]
 for y in range(h):
  for x in range(w):
   if px[x,y]<=80 or (x,y) in seen:continue
   todo=[(x,y)];seen.add((x,y));group=[]
   while todo:
    u,v=todo.pop();group.append((u,v))
    for q,r in [(u-1,v),(u+1,v),(u,v-1),(u,v+1)]:
     if 0<=q<w and 0<=r<h and (q,r) not in seen and px[q,r]>80:seen.add((q,r));todo.append((q,r))
   if len(group)<25:continue
   cx=sum(x for x,y in group)/len(group);cy=sum(y for x,y in group)/len(group);cell=min(rows-1,int(cy/h*rows))*cols+min(cols-1,int(cx/w*cols));assigned[cell].extend(group)
 for n,points in enumerate(assigned):
  assert len(points)>300,(name,n,len(points));mask=Image.new('L',(w,h));mp=mask.load()
  for x,y in points:mp[x,y]=255
  mask=mask.filter(ImageFilter.MaxFilter(5));selection=ImageChops.multiply(alpha,mask);sprite=im.copy();sprite.putalpha(selection);box=selection.getbbox();sprite=sprite.crop(box);sprite.thumbnail((256,256),Image.Resampling.LANCZOS);sprite.save(dest/f'{name}-{n:02}.png');records.append({'family':name,'index':n,'crop':box,'size':sprite.size,'method':'Whole connected contour; nearest atlas cell; antialias margin; no repainting'})
 print(name,len(assigned),'icons isolated')
im=Image.open(p/'raw/flat-ui-coin.png').convert('RGBA');im=im.crop(im.getchannel('A').getbbox());im.thumbnail((256,256),Image.Resampling.LANCZOS);im.save(dest/'flat-ui-coin.png')
(p/'flat-ui-assets.json').write_text(json.dumps(records,indent=2))
