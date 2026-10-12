using TMPro;
using UnityEngine;
using UnityEngine.UI;
public sealed class Raid_GunSlot : MonoBehaviour
{
    public int SlotNum;
    public Image Gun_img,Shadow_img,Panel_img;
    public GameObject Selected_obj,UnSelected_obj,UnEquip_Btn_obj,Weak_obj,Weak_Icon_obj,Weak_Dmg_Panel,StarUpgrade_obj;
    public GameObject[] Degree_objs;
    public TextMeshProUGUI Damage_txt,Speed_txt,Type_txt,StarUpgrade_Lv_txt;
    public Color SpecialDamage_Color;
    public void Reload()
    {
        var m=Raid_manager.instance;int gun=m.Gun_List[SlotNum];bool equipped=gun>=0;
        Selected_obj.SetActive(equipped);UnSelected_obj.SetActive(!equipped);UnEquip_Btn_obj.SetActive(equipped&&m.GetEquippedCount()>1);
        bool weak=equipped&&m.Is_Weak_Gun(gun);foreach(var go in new[]{Weak_obj,Weak_Icon_obj,Weak_Dmg_Panel})if(go!=null)go.SetActive(weak);
        var stars=StarUpgrade_manager.instance;bool unlocked=stars!=null&&stars.IsUnlocked();int level=stars==null?0:stars.Lv_return(SlotNum);
        if(StarUpgrade_obj!=null){StarUpgrade_obj.SetActive(unlocked);var button=StarUpgrade_obj.GetComponent<Button>();if(button!=null)button.interactable=unlocked;}
        StarUpgrade_Lv_txt.text=level.ToString();
        if(!equipped)return;
        Gun_manager.Present(gun,Gun_img,Shadow_img,Panel_img,Degree_objs);Damage_txt.text=CatGunner.Recovery.OriginalNumberText.Format(StarUpgrade_manager.Damage_Apply_Slot(m.Raid_Damage_return(gun),SlotNum).Value);
        Damage_txt.color=weak||unlocked&&level>0?SpecialDamage_Color:Color.white;
        Speed_txt.text=Gun_manager.instance.Gun_list[gun].AtkSpeed.ToString("0.00");CatGunner.Recovery.OriginalWeaponText.Set(Type_txt,Gun_manager.TypeText(gun));
    }
    public void Gun_UnSelect()=>Raid_manager.instance.Gun_UnSelect(SlotNum);
    public void SelectPanel_Open()=>Raid_manager.instance.Gun_SelectPanel_Open(SlotNum);
    public void onClick_StarUpgrade(){var stars=StarUpgrade_manager.instance;if(stars==null||!stars.IsUnlocked())return;Sound_manager.instance?.PlaySfx((SfxType)1);stars.Open_Popup(SlotNum,true);}
}
