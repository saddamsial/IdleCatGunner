using UnityEngine;
using UnityEngine.UI;
using TMPro;
using CatGunner.Runtime;

public sealed class Gun_Item_Collection : MonoBehaviour
{
    public int GunNum;
    public Image Gun_img,Shadow_img,Panel_img;
    public GameObject[] Degree_objs;
    public TextMeshProUGUI Type_txt;
    public GameObject Locked_obj;
    public void Reload(int gun)
    {
        GunNum=gun;Gun_manager.Present(gun,Gun_img,Shadow_img,Panel_img,Degree_objs);
        WeaponText.Set(Type_txt,Gun_manager.TypeText(gun));
        Locked_obj.SetActive(!Gun_manager.instance.Gun_Collect[gun]);
    }
    public void Touch()=>Gun_manager.instance.gun_info_ui.Show(GunNum,0,-1);
}
