from pathlib import Path
import json
from PIL import Image, ImageDraw, ImageFont

root = Path(__file__).resolve().parent
frames_dir = root / 'captures'
observation = json.loads((frames_dir / 'observation.json').read_text())
assert observation['noScarf'] and observation['noFracture']
font = ImageFont.truetype('/System/Library/Fonts/Supplemental/Arial.ttf', 22)
labels = {'idle': 'Idle', 'walk': 'Penguin waddle', 'shoot': 'Shoot and recover'}
crop_box = (380, 715, 680, 990)

def crop_frame(path):
    return Image.open(path).convert('RGB').crop(crop_box).resize((420, 385), Image.Resampling.LANCZOS)

previews = []
durations = []
for index in range(36):
    canvas = Image.new('RGB', (1280, 425), (225, 239, 245))
    draw = ImageDraw.Draw(canvas)
    for column, mode in enumerate(labels):
        draw.text((column * 430 + 12, 8), labels[mode], font=font, fill=(16, 36, 52))
        canvas.paste(crop_frame(frames_dir / f'{mode}-{index:02d}.png'), (column * 430, 40))
    previews.append(canvas)
    if index < 35:
        interval = (frames_dir / f'walk-{index+1:02d}.png').stat().st_mtime - (frames_dir / f'walk-{index:02d}.png').stat().st_mtime
        durations.append(max(60, min(round(interval * 100) * 10, 300)))
    else:
        durations.append(80)
previews[0].save(frames_dir / 'penguin-actions-actual.gif', save_all=True, append_images=previews[1:], duration=durations, loop=0, optimize=True)

contact = Image.new('RGB', (1680, 1275), (225, 239, 245))
draw = ImageDraw.Draw(contact)
for row, mode in enumerate(labels):
    indices = (0, 9, 18, 27) if mode != 'shoot' else (0, 1, 7, 13)
    for column, index in enumerate(indices):
        draw.text((column * 420 + 12, row * 425 + 8), f'{labels[mode]} {index}', font=font, fill=(16, 36, 52))
        contact.paste(crop_frame(frames_dir / f'{mode}-{index:02d}.png'), (column * 420, row * 425 + 40))
contact.save(frames_dir / 'penguin-actions-contact-sheet.png')

files = sorted(frames_dir.glob('natural-*.png'))
assert len(files) == 60
natural = [Image.open(path).convert('RGB').resize((540, 960), Image.Resampling.LANCZOS) for path in files]
natural[0].save(frames_dir / 'natural-combat-actual.gif', save_all=True, append_images=natural[1:], duration=90, loop=0, optimize=True)
print('Saved real GPU-frame action comparison, contact sheet and natural-combat GIF.')
