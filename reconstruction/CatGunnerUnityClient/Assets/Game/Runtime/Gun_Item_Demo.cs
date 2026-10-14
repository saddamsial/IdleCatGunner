using TMPro;
using UnityEngine;
using UnityEngine.UI;
public sealed class Gun_Item_Demo : MonoBehaviour
{
    public int GunNum;
    public Image Gun_img,Shadow_img,Panel_img;
    public GameObject[] Degree_objs;
    public TextMeshProUGUI Type_txt;
    public void Reload(int gunNum){GunNum=gunNum;Gun_manager.Present(gunNum,Gun_img,Shadow_img,Panel_img,Degree_objs);if(Type_txt!=null)CatGunner.Runtime.WeaponText.Set(Type_txt,Gun_manager.TypeText(gunNum));}
    // Original info popup belongs to another branch; no inventory mutation.
    public void Touch()=>Gun_manager.Feedback(false);
}
