"""Extract both exact-build APKs without modifying originals or replacing differing files."""
from pathlib import Path, PurePosixPath
import hashlib
import json
import zipfile

ROOT = Path(__file__).resolve().parents[1]
EXPECTED = {
    'base.apk': 'a2f354148ca44e73f86d2fb3d20199e8f62ab88a6bb40d40e7332ddf93bcbeda',
    'split_config.arm64_v8a.apk': '69a28d1b547717be1f56b5bd250db87d309b9bdc93455915b0c475b0d3264335',
}

def sha(path):
    digest = hashlib.sha256()
    with path.open('rb') as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b''):
            digest.update(chunk)
    return digest.hexdigest()

entries = []
for name, expected in EXPECTED.items():
    path = ROOT / 'packages' / name
    assert sha(path) == expected, 'Wrong package: ' + name
    with zipfile.ZipFile(path) as archive:
        assert archive.testzip() is None
        seen = set()
        for info in archive.infolist():
            rel = PurePosixPath(info.filename)
            assert not rel.is_absolute() and '..' not in rel.parts
            assert info.filename not in seen, 'Duplicate archive entry'
            seen.add(info.filename)
            if info.is_dir():
                continue
            target = ROOT / 'extracted' / path.stem / Path(*rel.parts)
            data = archive.read(info)
            digest = hashlib.sha256(data).hexdigest()
            if target.exists():
                assert sha(target) == digest, 'Refusing to replace differing file: ' + str(target)
            else:
                target.parent.mkdir(parents=True, exist_ok=True)
                target.write_bytes(data)
            entries.append({'apk': name, 'entry': info.filename, 'bytes': len(data), 'sha256': digest})
(ROOT / 'reports' / 'extracted-input-manifest.json').write_text(
    json.dumps({'input_sha256': EXPECTED, 'entries': entries}, indent=2) + '\n')
print('Extracted and hash-verified', len(entries), 'files from', len(EXPECTED), 'APKs')
