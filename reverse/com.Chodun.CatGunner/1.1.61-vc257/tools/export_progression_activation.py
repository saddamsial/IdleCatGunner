"""Exact original active flags for complete imported progression subtrees."""
from pathlib import Path
import json,re
R=Path(__file__).resolve().parents[1]
idx={int(k):v for k,v in json.loads((R/'reports/original-main-document-index.json').read_text()).items()}
gos={};trans={};by={}
with (R/'assetripper-baseline/ExportedProject/Assets/Scenes/Main.unity').open('rb') as f:
    for k,(cid,offset,size) in idx.items():
        if cid not in [1,4,224]:continue
        f.seek(offset);s=f.read(size).decode()
        if cid==1:
            name=re.search('  m_Name: (.*)',s)[1]
            if name.startswith("'") and name.endswith("'"):name=name[1:-1].replace("''","'")
            gos[k]=(name,int(re.search('  m_IsActive: (\\d+)',s)[1]))
        else:
            g=int(re.search('m_GameObject: {fileID: (\\d+)}',s)[1]);by[g]=k
            block=s[s.index('  m_Children:'):s.index('  m_Father:')]
            trans[k]=[int(x) for x in re.findall('{fileID: (\\d+)}',block)]
    go_for_transform={v:k for k,v in by.items()};rows=[]
    def walk(root,g,path):
        name,active=gos[g];rows.append({'root':root,'source_go':g,'path':path,'active':bool(active)})
        counts={}
        for child in trans[by[g]]:
            go=go_for_transform[child];n=gos[go][0];ordinal=counts.get(n,0);counts[n]=ordinal+1
            walk(root,go,path+[{'name':n,'ordinal':ordinal}])
    for root in [412,1534,1146,1386,1340,1457,1373,1440,992]:walk(root,root,[])
    (R/'reports/original-progression-activation.json').write_text(json.dumps(rows,ensure_ascii=False,indent=2)+'\n')
    print('Exported',len(rows),'original active flags; renderer/component bytes untouched')
