using UnityEngine;
using UnityEngine.UI;
using TMPro;
public sealed class Draw_Relic_Btn : MonoBehaviour
{
 public bool is_Max;public int DrawCount;public Relic_DownPanel downPanel;public Image Panel_img,Core_img;
 public TextMeshProUGUI Price_txt;public Color Color_Panel_Able,Colo_Paner_Disable,Color_Price_Disable;
 public void Reload(bool able,Sprite core,int count){DrawCount=count;Panel_img.color=able?Color_Panel_Able:Colo_Paner_Disable;Core_img.sprite=core;Price_txt.text=(count*20).ToString();Price_txt.color=able?Color.white:Color_Price_Disable;}
 public void onClick()=>Relic_manager.instance.Relic_Draw(downPanel.currentCoreType,DrawCount);
}
