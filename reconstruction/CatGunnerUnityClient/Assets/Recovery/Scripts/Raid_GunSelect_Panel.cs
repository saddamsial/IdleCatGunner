using UnityEngine;
public sealed class Raid_GunSelect_Panel : MonoBehaviour
{
    public Raid_GunSelect_item[] item_list;
    public void Panel_Open(){gameObject.SetActive(true);ReloadList();}
    public void ReloadList(){var sorted=Raid_manager.instance.Sorted_Index_List();for(int i=0;i<item_list.Length;i++)item_list[i].Reload(i<sorted.Length?sorted[i]:-1);}
    public void Close()=>gameObject.SetActive(false); // Missing UI_manager close target adapter.
}
