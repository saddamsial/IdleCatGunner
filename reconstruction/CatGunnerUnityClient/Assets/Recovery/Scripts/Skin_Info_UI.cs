using CatGunner.Recovery;
using TMPro;
using UnityEngine;
using UnityEngine.UI;
public sealed class Skin_Info_UI : MonoBehaviour
{
    private int _skinNum;public int SkinNum=>_skinNum;
    public Image Cat_img,Shadow_img,Locked_img;public GameObject Next_Btn_obj,Before_Btn_obj;
    public TMP_Text Num_txt,Damage_txt,Speed_txt,Money_txt,Price_txt;
    public GameObject Purchase_Btn_obj,Select_Btn_obj,Selected_obj;public Button Purchase_Btn;public Color Color_Disable;
    public void Reload()=>Reload(_skinNum);
    public void Reload(int index)
    {
        var m=Skin_manager.instance;if(m==null||m.Progression==null||!OriginalSkinRules.Valid(index))return;
        _skinNum=index;Cat_img.sprite=Shadow_img.sprite=Locked_img.sprite=m.Skin_sprites[index];
        Before_Btn_obj.SetActive(index!=0);Next_Btn_obj.SetActive(index<25-1);Num_txt.text=(index+1).ToString();
        var r=m.Skin_list[index];var c=m.Progression.Catalogue;
        Damage_txt.text=string.Format(c.PercentFormat,r.Damage);Speed_txt.text=string.Format(c.PercentFormat,r.Speed);Money_txt.text=string.Format(c.PercentFormat,r.Money);
        bool unlocked=m.is_Unlock(index),selected=m.Selected_num==index;
        Locked_img.gameObject.SetActive(!unlocked);Purchase_Btn_obj.SetActive(!unlocked);Select_Btn_obj.SetActive(unlocked&&!selected);Selected_obj.SetActive(selected);
        int price=m.Price_return(index);Price_txt.text=string.Format(c.PriceFormat,price);Purchase_Btn.interactable=m.Diamonds>=price;Price_txt.color=Purchase_Btn.interactable?Color.white:Color_Disable;
        gameObject.SetActive(true);
    }
    public void Panel_Next(){if(_skinNum<24)Reload(_skinNum+1);}
    public void Panel_Before(){if(_skinNum!=0)Reload(_skinNum-1);}
    public void Purchase()=>Skin_manager.instance.Skin_Purchse(_skinNum);
    public void Skin_Select()=>Skin_manager.instance.Skin_Select(_skinNum);
    public void Close()=>gameObject.SetActive(false);
}
