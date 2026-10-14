using System.Linq;
using TMPro;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public sealed class Gun_Slot : MonoBehaviour,IPointerClickHandler,IBeginDragHandler,IDragHandler,IEndDragHandler
{
    public int SlotNum;
    public Image Gun_img,Shadow_img,Panel_img;
    public GameObject Selected_obj,UnSelected_obj,UnEquip_Btn_obj,Pause_obj,StarUpgrade_obj;
    public GameObject[] Degree_objs;
    public TextMeshProUGUI Damage_txt,Speed_txt,Type_txt,StarUpgrade_Lv_txt;
    public float PressScale,PressAnimDuration;
    public Color SpecialDamage_Color;
    private bool dragging;
    public void Reload()
    {
        // Unowned editor preview hint has no corresponding native slot field.
        transform.Find("FusionAble_obj")?.gameObject.SetActive(false);
        var owner=Gun_manager.instance;int gun=owner.Selected_items[SlotNum];bool equipped=gun>=0;
        if(Selected_obj!=null)Selected_obj.SetActive(equipped);if(UnSelected_obj!=null)UnSelected_obj.SetActive(!equipped);
        if(UnEquip_Btn_obj!=null)UnEquip_Btn_obj.SetActive(equipped&&owner.Selected_items.Count(v=>v>=0)>1);
        if(Pause_obj!=null)Pause_obj.SetActive(equipped&&owner.Selected_Pause[SlotNum]);
        var stars=StarUpgrade_manager.instance;bool unlocked=stars!=null&&stars.IsUnlocked();int level=stars==null?0:stars.Lv_return(SlotNum);
        if(StarUpgrade_obj!=null){StarUpgrade_obj.SetActive(unlocked);var button=StarUpgrade_obj.GetComponent<Button>();if(button!=null)button.interactable=unlocked;}
        if(StarUpgrade_Lv_txt!=null)StarUpgrade_Lv_txt.text=level.ToString();
        if(!equipped)return;
        Gun_manager.Present(gun,Gun_img,Shadow_img,Panel_img,Degree_objs);var info=owner.Gun_list[gun];
        if(Damage_txt!=null){Damage_txt.text=CatGunner.Runtime.NumberText.Format(StarUpgrade_manager.Damage_Apply_Slot(info.Damage,SlotNum).Value);Damage_txt.color=unlocked&&level>0?SpecialDamage_Color:Color.white;}
        if(Speed_txt!=null)Speed_txt.text=info.AtkSpeed.ToString("0.##")+"s";
        if(Type_txt!=null)CatGunner.Runtime.WeaponText.Set(Type_txt,Gun_manager.TypeText(gun));
    }
    public void Unequip()=>Gun_manager.Feedback(Gun_manager.instance.Inventory.Unequip(SlotNum));
    public void onClick_StarUpgrade(){var stars=StarUpgrade_manager.instance;if(stars==null||!stars.IsUnlocked())return;Sound_manager.instance?.PlaySfx((SfxType)1);stars.Open_Popup(SlotNum);}
    public void OnPointerClick(PointerEventData data){if(dragging){dragging=false;return;}int gun=Gun_manager.instance.Selected_items[SlotNum];if(gun>=0)Gun_manager.instance.gun_info_ui.Show(gun,2,SlotNum);}
    public void OnBeginDrag(PointerEventData data)=>dragging=true;
    public void OnDrag(PointerEventData data){}
    public void OnEndDrag(PointerEventData data)
    {
        if(!dragging)return;var owner=Gun_manager.instance;
        var target=owner.Gun_Slot_List.FirstOrDefault(s=>s!=this&&RectTransformUtility.RectangleContainsScreenPoint(s.transform as RectTransform,data.position,data.pressEventCamera));
        if(target!=null)Gun_manager.Feedback(owner.Inventory.SwapSelected(SlotNum,target.SlotNum));
    }
}
