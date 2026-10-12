using TMPro;
using UnityEngine;
using UnityEngine.UI;
public sealed class Raid_Start_UI : MonoBehaviour
{
    public TextMeshProUGUI MaxScore_txt,Enter_Ticket_txt,Remain_Time_txt,WeakType_txt;
    public Raid_GunSlot[] Gun_Slot_list;
    public GameObject Enter_Normal_obj,Enter_AD_obj,Enter_IAP_obj,Enter_Disable_obj;
    public Image Boss_img;
    public Sprite[] Boss_Sprites;
    public void Reload(){Reload_Boss();Reload_Entry();Reload_Slots();MaxScore_txt.text=string.Format("Score {0}",Raid_manager.instance.Season_BestLevel);WeakType_txt.text=Raid_manager.instance.Buff_GunType_Now().ToString();var duration=CatGunner.Recovery.OriginalRaidRules.WeekStart(Raid_manager.instance.Now()).AddDays(7)-Raid_manager.instance.Now();Remain_Time_txt.text=string.Format("{0}d {1}h {2}m {3}s",duration.Days,duration.Hours,duration.Minutes,duration.Seconds);}
    public void Reload_Boss()=>Boss_img.sprite=Boss_Sprites[Raid_manager.instance.BossType_Num];
    public void Reload_Entry()
    {
        var m=Raid_manager.instance;bool available=m.Free_Remain>0;
        Enter_Normal_obj.SetActive(available);Enter_Disable_obj.SetActive(!available&&m.AD_Enter_Used&&m.IAP_Enter_Used);
        Enter_AD_obj.SetActive(!available&&!m.AD_Enter_Used);Enter_IAP_obj.SetActive(!available&&m.AD_Enter_Used&&!m.IAP_Enter_Used);
        CatGunner.Recovery.RecoveryRewardedAds.Button(Enter_AD_obj,!m.AD_Enter_Used);Gun_manager.DisableButton(Enter_IAP_obj);Enter_Ticket_txt.text=string.Format("{0}/{1}",m.Free_Remain,2);
    }
    public void Reload_Slots(){foreach(var slot in Gun_Slot_list)slot.Reload();Raid_manager.instance.Helper_UI_Reload();}
    public void OnClick_Enter_Normal()=>Raid_manager.instance.Game_Enter_Normal();
    public void OnClick_Enter_AD()=>Raid_manager.instance.Game_Enter_AD();
    public void OnClick_Enter_IAP()=>Gun_manager.Feedback(false);
}
