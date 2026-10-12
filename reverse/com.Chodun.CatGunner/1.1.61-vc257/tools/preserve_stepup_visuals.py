"""Archive overwritten regression images and restore the previous evidence hashes."""
from pathlib import Path
import shutil,json,hashlib
R=Path(__file__).resolve().parents[1];B=R/'checkpoints/stepup-before/visual';V=R/'reports/visual'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
rows=[]
for old in B.glob('*-gpu.png'):
 current=V/old.name;before=sha(old);now=sha(current)if current.exists()else None;archive=None
 if now!=before:
  if current.exists():archive=V/('stepup-regression-'+old.name);shutil.copy2(current,archive)
  shutil.copy2(old,current)
 assert sha(current)==before
 rows.append({'name':old.name,'restoredSha256':before,'regressionArchive':str(archive.relative_to(R))if archive else None,'unchangedOrRestored':True})
out={'historicalImagesPreserved':len(rows),'overwrittenRegressionImagesArchived':sum(r['regressionArchive']is not None for r in rows),'allHistoricalHashesMatch':True,'images':rows}
(R/'reports/stepup-historical-visual-preservation.json').write_text(json.dumps(out,indent=2)+'\n');print({k:v for k,v in out.items()if k!='images'})
