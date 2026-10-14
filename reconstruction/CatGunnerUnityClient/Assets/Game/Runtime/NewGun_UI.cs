using TMPro;
using UnityEngine;
using UnityEngine.UI;

public sealed class NewGun_UI : MonoBehaviour
{
    public Image Gun_img,Shadow_img,Panel_img;
    public GameObject[] Degree_objs;
    public TextMeshProUGUI Type_txt;
    public void Reload(int gun){gameObject.SetActive(false);Gun_manager.Present(gun,Gun_img,Shadow_img,Panel_img,Degree_objs);if(Type_txt!=null)CatGunner.Runtime.WeaponText.Set(Type_txt,Gun_manager.TypeText(gun));gameObject.SetActive(true);}
}
