using System;
using TMPro;
using UnityEngine;
namespace CatGunner.Recovery
{
    // UI_manager.UI_Reload native 0x2b2a560: select exactly one of the
    // six original serialized UI_objs. Runtime binding is a local adapter.
    public sealed class RecoveryModePresentation : MonoBehaviour
    {
        GameObject[] roots;GameObject upgrades;
        public int CurrentMode {get;private set;}
        public void Bind(RecoveryForestClient client)
        {
            var safe=client.Slider.GetComponentInParent<Canvas>().transform.Find("SafeArea");
            string[] names={"Main_UI","SpeedRun_UI","Mine_UI","Boss_UI","Monster_UI","Raid_UI"};roots=new GameObject[names.Length];
            for(int i=0;i<names.Length;i++)roots[i]=safe.Find(names[i]).gameObject;
            upgrades=safe.Find("Ingame/Upgrade_List").gameObject;
            foreach(var name in new[]{"SpeedRun_UI","Boss_UI","Raid_UI"})
            {
                var root=safe.Find(name+"/Currency");if(root==null)continue;
                var currency=root.GetComponent<Currency>()??root.gameObject.AddComponent<Currency>();
                currency.Money_txt=root.Find("Money/Price_txt").GetComponent<TextMeshProUGUI>();currency.Dia_txt=root.Find("Dia/Price_txt").GetComponent<TextMeshProUGUI>();currency.Bind(client);
            }
            var floor=client.MonsterMode.Map_obj.transform.Find("Groud (1)").GetComponent<SpriteRenderer>();
            var material=Resources.Load<Material>("OriginalMonsterFloor");if(material==null)throw new InvalidOperationException("Original clipped monster floor adapter missing");floor.sharedMaterial=material;
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
