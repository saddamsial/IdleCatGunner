using UnityEngine;
public sealed class Raid_Helper_Purchase_Popup : MonoBehaviour
{
    public Gun_Item_Demo Gun_Demo;
    public GameObject Purchase_obj,Purchase_Btn_obj;
    public void Reload()
    {
        var raid=Raid_manager.instance;if(raid==null)return;bool owned=raid.Is_Helper_Active;
        Purchase_obj?.SetActive(owned);Purchase_Btn_obj?.SetActive(!owned);int gun=raid.Helper_GunNum_return();if(gun>=0)Gun_Demo?.Reload(gun);
    }
    void OnEnable()=>Reload();
    public void Open(){gameObject.SetActive(true);Reload();}
    public void OnClick_Close()=>gameObject.SetActive(false);
    public void OnClick_Purchase(){var raid=Raid_manager.instance;if(raid==null)return;if(raid.Is_Helper_Active){Reload();return;}Sound_manager.instance?.PlaySfx((SfxType)1);raid.Helper_Purchase();}
}
