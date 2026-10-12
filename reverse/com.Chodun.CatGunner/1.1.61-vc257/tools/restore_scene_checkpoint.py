"""Restore a losslessly compressed historical scene checkpoint when needed."""
from pathlib import Path
import gzip
import hashlib
import json
import shutil
import sys

root = Path(__file__).resolve().parents[1]
target = Path(sys.argv[1]).resolve()
rows = json.loads((root / 'reports/playtest-issues-compressed-history.json').read_text())['checkpoints']
new_manifest = root / 'reports/plus-consumers-compressed-history.json'
if new_manifest.exists():
    rows += [dict(originalPath=str(root / r['original']), compressedPath=str(root / r['compressed']),
                  uncompressedSha256=r['sha256']) for r in json.loads(new_manifest.read_text())]
pig_manifest = root / 'reports/stargem-pig-lossless-checkpoint-compression.json'
if pig_manifest.exists():
    pig = json.loads(pig_manifest.read_text())
    assert pig['losslessVerified'] and pig['originalSha256'] == pig['decompressedSha256']
    rows.append(dict(originalPath=str(root.parents[2] / pig['originalPath']),
                     compressedPath=str(root.parents[2] / pig['gzipPath']),
                     uncompressedSha256=pig['originalSha256']))
row = next((r for r in rows if Path(r['originalPath']).resolve() == target), None)
if row is None:
    raise SystemExit('No verified compressed checkpoint found for this exact path')
if target.exists():
    raise SystemExit('Destination exists; no overwrite performed')
temporary = target.with_suffix('.restore.tmp')
with gzip.open(row['compressedPath'], 'rb') as source, temporary.open('wb') as dest:
    shutil.copyfileobj(source, dest)
with temporary.open('rb') as source:
    digest = hashlib.sha256()
    for block in iter(lambda: source.read(1024 * 1024), b''):
        digest.update(block)
assert digest.hexdigest() == row['uncompressedSha256']
temporary.rename(target)
print('Historical scene restored and SHA256 verified; compressed copy retained')
