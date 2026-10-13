from pathlib import Path
from PIL import Image,ImageDraw
import json
HERE=Path(__file__).resolve().parent;D=HERE/'captures';rows=json.load(open(D/'frames.json'))
# Crop actual GPU frames around the hero's physics anchor. The body still jumps
# within that fixed anchor; no pixels or animation are painted into these shots.
for kind in ['shoot','basic','win']:
 frames=[];ids=[];times=[]
 for r in rows:
  if r['kind']!=kind:continue
  if kind=='win' and r['index']>0 and r['happy']==0 and any(q['kind']=='win' and q['index']<r['index'] and q['happy']==0 for q in rows):continue
  im=Image.open(D/f"{kind}-{r['index']:02}.png").convert('RGB');x=max(0,min(im.width-500,round(r['x']-250)));y=max(0,min(im.height-420,round(r['y']-290)))
  im=im.crop((x,y,x+500,y+420));im=im.resize((650,546),Image.Resampling.LANCZOS);frames.append(im);ids.append(r['index']);times.append(r.get('time',len(times)*.07))
 durations=[max(20,min(250,round((b-a)*1000))) for a,b in zip(times,times[1:])]+[300]
 frames[0].save(D/f'{kind}-actual.gif',save_all=True,append_images=frames[1:],duration=durations,loop=0,optimize=False)
for n in [0,3,6,10,13,18]:
 r=next(r for r in rows if r['kind']=='win' and r['index']==n);im=Image.open(D/f'win-{n:02}.png');x=round(r['x']-200);y=round(r['y']-300);im.crop((x,y,x+400,y+420)).save(D/f'win-detail-{n:02}.png')
r=max((r for r in rows if r['kind']=='basic'),key=lambda r:r['focus']);im=Image.open(D/f"basic-{r['index']:02}.png");x=round(r['x']-160);y=round(r['y']-210);im.crop((x,y,x+320,y+310)).resize((640,620)).save(D/'shoot-focus-closeup.png')
contact=Image.new('RGB',(1200,840),'#d9e9f0')
for i,n in enumerate([0,3,6,10,13,18]):contact.paste(Image.open(D/f'win-detail-{n:02}.png'),(i%3*400,i//3*420))
contact.save(D/'win-contact.png')
print('Saved actual shooting and win GIFs, focus closeup, win contact sheet')
