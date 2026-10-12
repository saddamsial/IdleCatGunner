using UnityEngine;
public sealed class Raid_GunSelect_item : MonoBehaviour
{
    public GameObject Disable_obj,Weak_obj;
    public Gun_Item_Demo gun_item_demo;
    public int index;
    public void Reload(int idx)
    {
        index=idx;var m=Raid_manager.instance;int gun=m.GunNum_By_Index(idx);
        gun_item_demo.gameObject.SetActive(gun!=-1);Disable_obj.SetActive(gun!=-1&&m.Is_Index_Used_By_AnySlot(idx));
        if(Weak_obj!=null)Weak_obj.SetActive(gun!=-1&&m.Is_Weak_Gun(gun));if(gun!=-1)gun_item_demo.Reload(gun);
    }
    public void OnClick()=>Raid_manager.instance.Gun_Select(index);
}
