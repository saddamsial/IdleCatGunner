using TMPro;
using UnityEngine;
using UnityEngine.UI;
public sealed class Relic_Item : MonoBehaviour
{
 public Relic_Item_Demo relic_item_demo;public TextMeshProUGUI Lv_txt,Count_txt;public SlicedFilledImage Fill;
 public GameObject Unlock_obj,Locked_obj,Alert_obj;public Image LockedPanel_img,LockedCore_img;public Sprite[] Panel_sprites;
 public void Reload(Relic_Info info)
 {
  relic_item_demo.Reload(info);Unlock_obj.SetActive(info.is_Unlock);Locked_obj.SetActive(!info.is_Unlock);
  if(!info.is_Unlock){LockedPanel_img.sprite=Panel_sprites[(int)info.Core_Type];LockedCore_img.sprite=Relic_manager.instance.CoreSprite(info.Core_Type);return;}
  var cat=Relic_manager.instance.Progression.Catalogue;int price=Relic_manager.Relic_UpgradePrice_return(info.Lv);bool max=info.Lv>=Relic_manager.MaxLv_return(info.Type);
  Lv_txt.text=string.Format(cat.LevelFormat,info.Lv+1);Count_txt.text=max?cat.MaxText:string.Format(cat.CountFormat,info.Count,price);Fill.fillAmount=max?0:info.Count/(float)price;Alert_obj.SetActive(info.Count>=price);
 }
}
