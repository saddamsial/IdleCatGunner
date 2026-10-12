from pathlib import Path
import json,re
source=Path(__file__).with_name('prepare_onboarding_slice.py');s=source.read_text().replace('for root in [758]:include(root)','for root in [962,2013,1010,1997]:include(root)').replace("guids={re.search", "guids={re.search")
s=s.replace("guids={re.search(r'^guid: (\\w+)',(B/'Assets/Scripts/Assembly-CSharp/TutorialArrow_UI.cs.meta').read_text(),re.M)[1]}","guids=set()")
s=s.replace('RecoveredOnboardingSource.unity','RecoveredWeeklyRaidSource2.unity').replace('onboarding-slice-preparation.json','weekly-raid-slice-preparation.json').replace("'roots':[758]","'roots':[962,2013,1010,1997]").replace("'scope':'Original Tutorial_manager root with three hands and equip arrow. External HUD references explicitly rebound by Editor API.'","'scope':'Frozen WeeklyShop, Raid mission manager panels and HUD shop entry. Unsupported controllers stripped; original references rebound in Editor.'")
exec(compile(s,str(source),'exec'),{'__file__':str(source.resolve())})
