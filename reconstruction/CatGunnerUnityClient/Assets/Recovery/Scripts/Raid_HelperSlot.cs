using CatGunner.Recovery;
using TMPro;
using UnityEngine;
using UnityEngine.UI;
public sealed class Raid_HelperSlot : MonoBehaviour
{
    public Image Gun_img,Shadow_img,Panel_img;
    public GameObject Locked_obj,Weak_obj,Weak_Icon_obj,Weak_Dmg_Panel,StarUpgrade_obj;
    public GameObject[] Degree_objs;
    public TextMeshProUGUI Damage_txt,Speed_txt,Type_txt,StarUpgrade_Lv_txt;
    public void Reload()
    {
        var raid=Raid_manager.instance;if(raid==null)return;Locked_obj?.SetActive(!raid.Is_Helper_Active);
        int gun=raid.Helper_GunNum_return();if(gun<0)return;
        Gun_manager.Present(gun,Gun_img,Shadow_img,Panel_img,Degree_objs);
        int stars=raid.Helper_StarLv_return();Damage_txt.text=OriginalNumberText.Format(OriginalStarRules.DamageApply(raid.Raid_Damage_return(gun).Value,stars));
        Speed_txt.text=string.Format("{0}s",Gun_manager.instance.Gun_list[gun].AtkSpeed);CatGunner.Recovery.OriginalWeaponText.Set(Type_txt,Gun_manager.TypeText(gun));
        foreach(var go in new[]{Weak_obj,Weak_Icon_obj,Weak_Dmg_Panel})go?.SetActive(raid.Is_Weak_Gun(gun));
        bool unlocked=StarUpgrade_manager.instance!=null&&StarUpgrade_manager.instance.IsUnlocked();StarUpgrade_obj?.SetActive(unlocked);
        if(unlocked&&StarUpgrade_Lv_txt!=null)StarUpgrade_Lv_txt.text=stars.ToString();
    }
    public void OnClick_Slot(){var raid=Raid_manager.instance;if(raid==null||raid.Is_Helper_Active)return;Sound_manager.instance?.PlaySfx((SfxType)1);raid.Helper_Popup_Open();}
}
