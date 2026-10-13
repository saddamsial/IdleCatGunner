"""Select the intended sprite contour when equal-cell rectangles overlap neighbors.
No repainting: preserve source RGB and antialias pixels around each selected shape.
"""
from PIL import Image,ImageFilter,ImageChops
from pathlib import Path
import json
P=Path(__file__).resolve().parent;out=P.parents[3]/'reconstruction/CatGunnerUnityClient/Assets/Recovery/PenguinFull'
records=json.loads((P/'assets.json').read_text())
for key,count,columns,rows in [('fish',13,4,4),('pets',13,4,4)]:
 im=Image.open(P/'raw'/f'{key}.png').convert('RGBA');a=im.getchannel('A');px=a.load();w,h=im.size;seen=set();groups=[]
 for y in range(h):
  for x in range(w):
   if px[x,y]<=80 or (x,y) in seen:continue
   seen.add((x,y));stack=[(x,y)];points=[]
   while stack:
    u,v=stack.pop();points.append((u,v))
    for q,r in [(u-1,v),(u+1,v),(u,v-1),(u,v+1)]:
     if 0<=q<w and 0<=r<h and (q,r) not in seen and px[q,r]>80: seen.add((q,r));stack.append((q,r))
   groups.append(points)
 main=[g for g in groups if len(g)>(5000 if key=='pets' else 1800)]
 main.sort(key=lambda g:(int(sum(y for x,y in g)/len(g)/h*rows),sum(x for x,y in g)/len(g)))
 assert len(main)==count,(key,len(main))
 centers=[(sum(x for x,y in g)/len(g),sum(y for x,y in g)/len(g)) for g in main];assigned=[list(g) for g in main]
 for g in groups:
  if len(g)<=24 or g in main:continue
  cx,cy=sum(x for x,y in g)/len(g),sum(y for x,y in g)/len(g)
  n=min(range(count),key=lambda n:(cx-centers[n][0])**2+(cy-centers[n][1])**2)
  if ((cx-centers[n][0])**2+(cy-centers[n][1])**2)**.5<min(w/columns,h/rows)*.65:assigned[n].extend(g)
 for n,points in enumerate(assigned):
  mask=Image.new('L',(w,h));mp=mask.load()
  for x,y in points:mp[x,y]=255
  mask=mask.filter(ImageFilter.MaxFilter(7));selection=ImageChops.multiply(a,mask);sprite=im.copy();sprite.putalpha(selection);box=selection.getbbox();sprite=sprite.crop(box);sprite.thumbnail((256,256),Image.Resampling.LANCZOS);sprite.save(out/f'{key}-{n:02}.png')
  record=next(r for r in records if r['family']==key and r['index']==n);record.update(crop_method='whole connected sprite contour with antialias margin; adjacent sprite fragments excluded',crop=box,width=sprite.width,height=sprite.height)
 print(key,'selected',count,'complete sprite contours')
(P/'assets.json').write_text(json.dumps(records,indent=2))
