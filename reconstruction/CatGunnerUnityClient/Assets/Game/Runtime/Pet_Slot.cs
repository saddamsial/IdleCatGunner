using TMPro;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public sealed class Pet_Slot : MonoBehaviour,IPointerClickHandler
{
    public int SlotNum;
    public Image Pet_img,Shadow_img,Panel_img;
    public GameObject Selected_obj,UnSelected_obj,Lock_obj;
    public GameObject[] Degree_objs;
    public TextMeshProUGUI Money_txt,MoveSpeed_txt;
    public float PressScale,PressAnimDuration;
    public void Reload()
    {
        var o=Pet_manager.instance;int pet=o.Inventory.State.Pet_Selected_items[SlotNum];bool selected=pet>=0;
        if(Selected_obj!=null)Selected_obj.SetActive(selected);if(UnSelected_obj!=null)UnSelected_obj.SetActive(!selected);if(Lock_obj!=null)Lock_obj.SetActive(selected&&o.Inventory.State.Selected_LockGroup[SlotNum]>=0);
        if(!selected)return;Pet_manager.Present(pet,Pet_img,Shadow_img,Panel_img,Degree_objs);var info=o.Inventory.Catalogue.Pets[pet];
        if(Money_txt!=null)Money_txt.text="+"+CatGunner.Runtime.NumberText.Format(info.Money.Value)+"%";if(MoveSpeed_txt!=null)MoveSpeed_txt.text="+"+info.MoveSpeed+"%";
    }
    public void Unequip()=>Gun_manager.Feedback(Pet_manager.instance.Inventory.Unequip(SlotNum));
    public void OnPointerClick(PointerEventData data){int pet=Pet_manager.instance.Inventory.State.Pet_Selected_items[SlotNum];if(pet>=0)Pet_manager.instance.pet_info_ui.Reload(pet);}
}
