from pathlib import Path
from PIL import Image,ImageDraw
import json,collections
root=Path(__file__).resolve().parent
for batch in ['after']:
 p=root/batch
 fs=[f for f in sorted(p.glob('*.png')) if 'mission-frame' not in f.name]
 for group in range((len(fs)+23)//24):
  chunk=fs[group*24:(group+1)*24];w=280;h=525;out=Image.new('RGB',(w*6,h*4),(224,235,241));d=ImageDraw.Draw(out)
  for i,f in enumerate(chunk):
   im=Image.open(f).convert('RGB');im.thumbnail((w-10,h-35));x=(i%6)*w;y=(i//6)*h;out.paste(im,(x+5,y+25));d.text((x+4,y+4),f.stem,fill=(20,40,60))
  out.save(p/f'review-{group+1}.jpg')
 if (p/'graphics.json').exists():
  xs=json.loads((p/'graphics.json').read_text());text=[x for x in xs if x['type']=='TextMeshProUGUI']; fills=[x for x in xs if x['type']=='SlicedFilledImage'];raw=[]
  for row in text:
   c=row['color'];v=[int(c[i:i+2],16) for i in [0,2,4]]
   if max(v)<235 and max(v)-min(v)<20:raw.append(row['path'])
  (root/'color-audit.json').write_text(json.dumps({'graphics':len(xs),'textLabels':len(text),'slicedProgressFills':len(fills),'textColors':dict(collections.Counter(x['color'] for x in text)),'remainingNeutralDarkOrGreyLabels':raw},ensure_ascii=False,indent=2))
# Display the requested fixes with enough resolution to inspect their text.
if (root/'after/mission-partial.png').exists() and (root/'after/offline.png').exists():
 out=Image.new('RGB',(1200,1080),(224,235,241));d=ImageDraw.Draw(out)
 for col,name in enumerate(['mission-partial','offline']):
  im=Image.open(root/'after'/f'{name}.png').convert('RGB');im.thumbnail((580,1030));out.paste(im,(col*600+10,40));d.text((col*600+10,12),name,fill=(37,83,115))
 out.save(root/'review-main.png')
