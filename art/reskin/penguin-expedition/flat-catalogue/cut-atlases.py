from pathlib import Path
from PIL import Image, ImageFilter, ImageChops
import json

ROOT = Path(__file__).resolve().parent
DEST = ROOT.parents[3] / 'reconstruction/CatGunnerUnityClient/Assets/Recovery/PenguinFlatCatalogue'
SHEETS = [('weapons-a',4,5,'weapons',0,20), ('weapons-b',4,5,'weapons',20,20),
          ('weapons-c',4,5,'weapons',40,20), ('weapons-d',3,2,'weapons',60,5),
          ('fish',4,4,'fish',0,13), ('pets',4,4,'pets',0,13),
          ('bosses',4,4,'bosses',0,9), ('monsters',4,5,'monsters',0,20),
          ('gems',4,4,'gems',0,16), ('effects',2,2,'effects',0,4), ('props',4,5,'props',0,20)]
records=[]
for sheet,cols,rows,family,offset,count in SHEETS:
    path=ROOT/'raw'/f'{sheet}.png'
    if not path.exists(): continue
    im=Image.open(path).convert('RGBA'); w,h=im.size
    alpha=im.getchannel('A'); pix=alpha.load(); seen=set(); cells=[[] for _ in range(cols*rows)]
    for y in range(h):
        for x in range(w):
            if pix[x,y]<=80 or (x,y) in seen: continue
            todo=[(x,y)]; seen.add((x,y)); group=[]
            while todo:
                u,v=todo.pop(); group.append((u,v))
                for q,r in [(u-1,v),(u+1,v),(u,v-1),(u,v+1)]:
                    if 0<=q<w and 0<=r<h and (q,r) not in seen and pix[q,r]>80:
                        seen.add((q,r)); todo.append((q,r))
            if len(group)<25:continue
            cx=sum(t[0] for t in group)/len(group); cy=sum(t[1] for t in group)/len(group)
            cell=min(rows-1,int(cy/h*rows))*cols+min(cols-1,int(cx/w*cols))
            cells[cell].extend(group)
    for n,points in enumerate(cells):
        if n>=count and sheet!='bosses': continue
        if sheet=='bosses' and n>=14:continue
        assert len(points)>300,(sheet,n,'Empty or tiny cell',len(points))
        mask=Image.new('L',im.size); mp=mask.load()
        for x,y in points:mp[x,y]=255
        mask=mask.filter(ImageFilter.MaxFilter(5)); selection=ImageChops.multiply(alpha,mask)
        box=selection.getbbox(); sprite=im.copy(); sprite.putalpha(selection);sprite=sprite.crop(box)
        # Consistent transparent breathing room; preserve generated pixels.
        sprite.thumbnail((480,480),Image.Resampling.LANCZOS)
        canvas=Image.new('RGBA',(sprite.width+16,sprite.height+16));canvas.alpha_composite(sprite,(8,8))
        actual_family='raid-bosses' if sheet=='bosses' and n>=9 else family
        index=n-9 if actual_family=='raid-bosses' else offset+n
        out=DEST/f'{actual_family}-{index:02}.png';canvas.save(out)
        records.append(dict(sheet=sheet,family=actual_family,index=index,crop=box,size=canvas.size,
                            alpha=canvas.getchannel('A').getextrema(),file=str(out),method='Generated connected contour, preserved alpha; crop and resize only'))
    print(sheet,'cells',len(cells),'alpha',alpha.getextrema())
background=ROOT/'raw/landscapes.png'
if background.exists():
    im=Image.open(background).convert('RGBA');w,h=im.size
    for n in range(4):
        x,y=n%2,n//2;box=(round(x*w/2),round(y*h/2),round((x+1)*w/2),round((y+1)*h/2))
        sprite=im.crop(box);sprite.thumbnail((512,512),Image.Resampling.LANCZOS);out=DEST/f'landscapes-{n:02}.png';sprite.save(out)
        records.append(dict(sheet='landscapes',family='landscapes',index=n,crop=box,size=sprite.size,alpha=sprite.getchannel('A').getextrema(),file=str(out),method='Opaque background quadrant; crop and resize only'))
(ROOT/'assets.json').write_text(json.dumps(records,indent=2))
print('Saved',len(records),'catalogue assets')
