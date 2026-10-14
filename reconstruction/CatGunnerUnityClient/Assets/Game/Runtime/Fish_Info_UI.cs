using TMPro;
using UnityEngine;
using UnityEngine.UI;
public sealed class Fish_Info_UI:MonoBehaviour
{
 public Image Fish_img,Panel_img;public TextMeshProUGUI Name_txt,Damage_txt,CriPer_txt,CriVal_txt;public GameObject[] Degree_objs;public Color[] Degree_Colors;public GameObject LeftBtn_obj,RightBtn_obj;public int Current_Grade;
 public void Reload(int grade){if(grade<0||grade>=13)return;Current_Grade=grade;var m=Fish_manager.instance;Fish_img.sprite=m.Fish_sprites[grade];if(Panel_img!=null)Panel_img.color=Degree_Colors[grade];for(int i=0;i<Degree_objs.Length;i++)Degree_objs[i].SetActive(i==grade);Name_txt.text=m.Fish_info_list[grade].Name;var f=m.GetFishStat(grade);Damage_txt.text="+"+f.Damage+"%";CriPer_txt.text="+"+f.CriPer+"%";CriVal_txt.text="+"+f.CriVal+"%";LeftBtn_obj.SetActive(grade>0);RightBtn_obj.SetActive(grade<12);gameObject.SetActive(true);}
 public void Show_LowerFish()=>Reload(Current_Grade-1);public void Show_HigherFish()=>Reload(Current_Grade+1);public void Close()=>gameObject.SetActive(false);
}
