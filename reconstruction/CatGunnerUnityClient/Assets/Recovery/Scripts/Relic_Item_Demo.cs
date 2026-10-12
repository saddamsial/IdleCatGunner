using UnityEngine;
using UnityEngine.UI;
public sealed class Relic_Item_Demo : MonoBehaviour
{
 private Relic_Info _info;public Relic_Info Info=>_info;
 public GameObject[] Relic_Type_objs;public Image Core_img,Panel_img;public Sprite[] Panel_sprites;
 public void Reload(Relic_Info info){_info=info;for(int i=0;i<Relic_Type_objs.Length;i++)Relic_Type_objs[i].SetActive(i==(int)info.Type);Core_img.sprite=Relic_manager.instance.CoreSprite(info.Core_Type);Panel_img.sprite=Panel_sprites[(int)info.Core_Type];}
 public void onClick(){if(_info!=null)Relic_manager.instance.relic_info_ui.Reload(_info);}
}
