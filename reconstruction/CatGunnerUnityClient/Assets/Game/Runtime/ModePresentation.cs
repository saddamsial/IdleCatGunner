using System;
using TMPro;
using UnityEngine;
namespace CatGunner.Runtime
{
    // UI_manager.UI_Reload native 0x2b2a560: select exactly one of the
    // six original serialized UI_objs. Runtime binding is a local adapter.
    [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "RecoveryModePresentation")] public sealed class ModePresentation : MonoBehaviour
    {
        GameObject[] roots;GameObject upgrades;
        public int CurrentMode {get;private set;}
        public void Bind(GameClient client)
        {
            var safe=UiAuthoring.Find(client.Slider.GetComponentInParent<Canvas>().transform,"SafeArea");
            string[] names={"Main_UI","SpeedRun_UI","Mine_UI","Boss_UI","Monster_UI","Raid_UI"};roots=new GameObject[names.Length];
            for(int i=0;i<names.Length;i++)roots[i]=UiAuthoring.Find(safe,names[i]).gameObject;
            upgrades=UiAuthoring.Find(safe,"Ingame/Upgrade_List").gameObject;
            foreach(var name in new[]{"SpeedRun_UI","Boss_UI","Raid_UI"})
            {
                var root=UiAuthoring.Find(safe,name+"/Currency");if(root==null)continue;
                var currency=root.GetComponent<Currency>()??root.gameObject.AddComponent<Currency>();
                currency.Money_txt=UiAuthoring.Find(root,"Money/Price_txt").GetComponent<TextMeshProUGUI>();currency.Dia_txt=UiAuthoring.Find(root,"Dia/Price_txt").GetComponent<TextMeshProUGUI>();currency.Bind(client);
            }
            var floor=UiAuthoring.Find(client.MonsterMode.Map_obj.transform,"Groud (1)").GetComponent<SpriteRenderer>();
            var material=Resources.Load<Material>("MonsterFloor");if(material==null)throw new InvalidOperationException("Original clipped monster floor adapter missing");floor.sharedMaterial=material;
            Select(0);
        }
        public void Select(int mode)
        {
            if(roots==null)return;if(mode<0||mode>=roots.Length)throw new ArgumentOutOfRangeException(nameof(mode));
            CurrentMode=mode;for(int i=0;i<roots.Length;i++)roots[i].SetActive(i==mode);
            // Native Boss/Monster/Raid fields hide Upgrade_List. Challenge and
            // Mine have no such field; original recording keeps upgrades visible.
            upgrades.SetActive(mode<=2);
        }
    }
}
