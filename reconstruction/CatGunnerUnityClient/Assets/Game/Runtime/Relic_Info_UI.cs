using TMPro;
using UnityEngine;
using UnityEngine.UI;
using CatGunner.Runtime;
public sealed class Relic_Info_UI : MonoBehaviour
{
 private Relic_Info _info;public Relic_Info Info=>_info;
 public Relic_Item_Demo relic_item_demo;public TextMeshProUGUI Name_txt,Lv_txt,Count_txt,Explain_txt;public SlicedFilledImage Fill;
 public Image Upgrade_Btn_img;public Color Color_UpgradeAble,Color_UpgradeDisable;
 // Readable local labels; native I2 term keys and original source remain in evidence contract.
 private static readonly string[] Labels={"Damage","Coins","Critical damage","Movement speed","Offline reward","Rebirth reward","Skip"};
 public void Reload(Relic_Info info)
 {
  _info=info;relic_item_demo.Reload(info);var c=Relic_manager.instance.Progression.Catalogue;int price=Relic_manager.Relic_UpgradePrice_return(info.Lv);bool max=info.Lv>=Relic_manager.MaxLv_return(info.Type);
  Lv_txt.text=string.Format(c.LevelFormat,info.Lv+1);Count_txt.text=max?c.MaxText:string.Format(c.CountFormat,info.Count,price);Fill.fillAmount=max?1:info.Count/(float)price;
  Upgrade_Btn_img.color=!max&&info.Count>=price?Color_UpgradeAble:Color_UpgradeDisable;
  int t=(int)info.Type;Name_txt.text=Labels[t<=8?t/3:t-6];var val=Relic_manager.Relic_Value_return(info);Explain_txt.text=Name_txt.text+" +"+Display(val)+"%";gameObject.SetActive(true);
 }
 private static string Display(DecimalAmount a)=>NumberText.Format(a);
 public void Relic_Upgrade(){if(_info==null)return;Relic_manager.instance.Relic_Upgrade(_info);Reload(_info);}
 public void Close()=>gameObject.SetActive(false);
}
