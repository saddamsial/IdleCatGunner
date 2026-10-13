"""Compose unchanged Editor captures into a review sheet; no generated game frame."""
from pathlib import Path
from PIL import Image, ImageDraw, ImageFont

root = Path(__file__).resolve().parent
pages = [
    ("01-main", "主界面"), ("gun", "武器"), ("shop", "商店"),
    ("skin", "企鹅皮肤"), ("mission", "任务"), ("setting", "设置"),
    ("adventure", "旅行"), ("rebirth", "转生"), ("victory", "胜利结算"),
]
width, height, title = 360, 640, 40
sheet = Image.new("RGB", (width * 3, (height + title) * 3), "#e7f6fc")
draw = ImageDraw.Draw(sheet)
font = ImageFont.truetype(str(root.parents[3] / "reconstruction/CatGunnerUnityClient/Assets/Font/NotoSansSC-Bold.ttf"), 23)
for i, (name, label) in enumerate(pages):
    x, y = i % 3 * width, i // 3 * (height + title)
    screenshot = Image.open(root / "captures" / (name + ".png")).convert("RGB")
    assert screenshot.size == (1080, 1920)
    sheet.paste(screenshot.resize((width, height), Image.Resampling.LANCZOS), (x, y + title))
    draw.text((x + 14, y + 6), label, font=font, fill="#183e5a")
sheet.save(root / "ui-overview.png")
print(root / "ui-overview.png")
