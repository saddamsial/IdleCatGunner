from pathlib import Path
import json,sys
R=Path(__file__).resolve().parents[1];P=R.parents[2]/'reconstruction/CatGunnerUnityClient';key,output,count=sys.argv[1],sys.argv[2],int(sys.argv[3]);p=P/'Temp/pipeline_test_status.json';d=json.loads(p.read_text());assert d['status']=='completed' and d['summary']['total']==d['summary']['passed']==count and d['summary']['failed']==0;assert all(key in x['FullName'] for x in d['results']);(R/'reports'/output).write_text(p.read_text());print({'filter':key,'duration':d['duration'],'summary':d['summary']})
