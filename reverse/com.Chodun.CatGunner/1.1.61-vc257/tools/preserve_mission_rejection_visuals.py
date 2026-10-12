"""Archive current regression frames, then restore immutable historical frames."""
from pathlib import Path
import json,hashlib,shutil
R=Path(__file__).resolve().parents[1];rp=R/'reports';old=rp/'checkpoints/mission-rejection-before/visual';live=rp/'visual'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
rows=json.loads((old/'baseline.json').read_text());changed=[]
for row in rows:
 source=old/row['name'];target=live/row['name'];assert sha(source)==row['sha256']
 if sha(target)!=row['sha256']:
  dest=live/('mission-rejection-regression-'+row['name']);assert not dest.exists(),dest
  current=sha(target);shutil.copy2(target,dest);assert sha(dest)==current
  shutil.copy2(source,target);assert sha(target)==row['sha256']
  changed.append({'original':row['name'],'regression':dest.name,'regressionSha256':current,'restoredSha256':sha(target)})
for row in rows:assert sha(live/row['name'])==row['sha256']
report={'oldFramesChecked':len(rows),'changedFramesArchivedAndRestored':changed,'allHistoricalHashesPreserved':True}
(rp/'mission-rejection-historical-visual-preservation.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps({'checked':len(rows),'archivedAndRestored':len(changed)}))
