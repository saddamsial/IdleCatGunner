using TMPro;
using UnityEngine;
public sealed class Safe_Slot : MonoBehaviour
{
    public enum State {Locked,Purchase,Empty,Gun}
    public int SlotNum;
    public GameObject Empty_obj,Gun_obj,PurchaseAble_obj,Locked_obj;
    public Gun_Item_Demo gun_item;
    public TextMeshProUGUI Price_txt;
    public Color Price_Enough_Color,Price_Lack_Color;
    public State Current {get;private set;}
    public int GunNum {get;private set;}
    public void Reload(int index)
    {
        SlotNum=index;var m=Safe_manager.instance;GunNum=m.Safe_Gun_list[index];
        Current=m.Inventory.IsOpen(index)?(GunNum<0?State.Empty:State.Gun):m.Inventory.IsNext(index)?State.Purchase:State.Locked;
        Empty_obj.SetActive(Current==State.Empty);Gun_obj.SetActive(Current==State.Gun);PurchaseAble_obj.SetActive(Current==State.Purchase);Locked_obj.SetActive(Current==State.Locked);
        if(Current==State.Gun)gun_item.Reload(GunNum);
        if(Current==State.Purchase){Price_txt.text="<sprite=1>"+m.Next_Price.ToString(System.Globalization.CultureInfo.InvariantCulture);Price_txt.color=m.Inventory.CanPurchase(index)?Price_Enough_Color:Price_Lack_Color;}
    }
    public void onClick()
    {
        if(Current==State.Gun)onClick_Gun();else if(Current==State.Purchase)onClick_Purchase();else if(Current==State.Locked){Safe_manager.instance.Alert("Purchase slots in order");Gun_manager.Feedback(false);}
    }
    public void onClick_Gun(){if(Current!=State.Gun||GunNum<0)return;Gun_manager.Feedback(true,1);Gun_manager.instance.gun_info_ui.Show(GunNum,3,SlotNum);}
    public void onClick_Purchase(){if(Current==State.Purchase)Safe_manager.instance.Purchase_Slot(SlotNum);}
}
