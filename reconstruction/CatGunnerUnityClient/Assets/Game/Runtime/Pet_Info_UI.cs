using TMPro;
using UnityEngine;
using UnityEngine.UI;

public sealed class Pet_Info_UI : MonoBehaviour
{
    public Image Pet_img,Shadow_img,Panel_img;
    public GameObject[] Degree_objs;
    public TextMeshProUGUI Money_txt,MoveSpeed_txt;
    public GameObject LeftBtn_obj,RightBtn_obj;
    private int Current_PetNum;
    // Native vc257: arrows use catalogue bounds, including uncollected grades.
    public void Reload(int pet)
    {
        Current_PetNum=pet;
        Pet_manager.Present(pet,Pet_img,Shadow_img,Panel_img,Degree_objs);
        if(Shadow_img!=null)Shadow_img.SetNativeSize();
        if(Pet_img!=null)Pet_img.SetNativeSize();
        var catalogue=Pet_manager.instance.Inventory.Catalogue.Pets;
        var info=catalogue[pet];
        Money_txt.text="+"+CatGunner.Runtime.NumberText.Format(info.Money.Value)+"%";
        MoveSpeed_txt.text="+"+info.MoveSpeed+"%";
        if(LeftBtn_obj!=null)LeftBtn_obj.SetActive(pet>0);
        if(RightBtn_obj!=null)RightBtn_obj.SetActive(pet<catalogue.Length-1);
        gameObject.SetActive(true);
    }
    public void Show_LowerPet(){if(Current_PetNum>0)Reload(Current_PetNum-1);}
    public void Show_HigherPet(){if(Current_PetNum<Pet_manager.instance.Inventory.Catalogue.Pets.Length-1)Reload(Current_PetNum+1);}
    public void Close()=>gameObject.SetActive(false);
}
