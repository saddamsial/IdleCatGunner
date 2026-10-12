using TMPro;
using UnityEngine;
using UnityEngine.UI;
public sealed class Relic_DownPanel : MonoBehaviour
{
 public Relic_DrawMode_Btn[] DrawMode_Btn_list;public Draw_Relic_Btn[] Draw_Relic_Btn_list;
 public Image Core_img;public TextMeshProUGUI Count_txt;public TextMeshProUGUI[] Draw_Percent_txt_list;
 public TextMeshProUGUI MaxDraw_Count_txt,MaxDraw_Price_txt;public GameObject[] Core_Alert_objs;public Core_Type currentCoreType;
 public void UI_Reload()
 {
  var m=Relic_manager.instance;if(m==null||m.Progression==null)return;int count=m.CoreCount(currentCoreType),n=Mathf.Max(1,count/20);var sprite=m.CoreSprite(currentCoreType);
  Core_img.sprite=sprite;Count_txt.text=count.ToString();MaxDraw_Count_txt.text="Draw ×"+n;MaxDraw_Price_txt.text=(n*20).ToString();
  foreach(var b in Draw_Relic_Btn_list)b.Reload(count>=(b.is_Max?n:1)*20,sprite,b.is_Max?n:1);
  for(int i=0;i<DrawMode_Btn_list.Length;i++)DrawMode_Btn_list[i].Reload((int)currentCoreType==i);
  for(int i=0;i<Draw_Percent_txt_list.Length;i++)Draw_Percent_txt_list[i].text=Percent_str_return(i);
  for(int i=0;i<Core_Alert_objs.Length;i++)Core_Alert_objs[i].SetActive(m.CoreCount((Core_Type)i)>=20);
 }
 public string Percent_str_return(int type)=>Relic_manager.instance.Progression.Catalogue.PercentTexts[currentCoreType==Core_Type.ALL?2:(int)currentCoreType==type?0:1];
 public void DrawMode_Change(Core_Type type){currentCoreType=type;UI_Reload();}
}
