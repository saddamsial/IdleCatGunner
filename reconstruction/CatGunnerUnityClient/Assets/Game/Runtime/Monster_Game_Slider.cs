using UnityEngine;
using UnityEngine.UI;
using TMPro;
public sealed class Monster_Game_Slider : MonoBehaviour
{
    public SlicedFilledImage Stage_Fill,Value_Fill;
    public TextMeshProUGUI Wave_txt,Value_txt;
    public Transform Player_Icon_trans;
    public Image[] Hole_imgs;
    public Color[] Hole_Color;
    public void Wave_Reload(int wave,int level)
    {
        Wave_txt.text=string.Format("Wave {0}-{1}",wave+1,level+1);Stage_Fill.fillAmount=level/4f;
        for(int i=0;i<Hole_imgs.Length;i++)Hole_imgs[i].color=Hole_Color[i<level?2:(i==level?1:0)];
        Player_Icon_trans.position=Hole_imgs[level].transform.position;
    }
    public void Value_Reload(float value){Value_txt.text=((int)(value*100))+"%";Value_Fill.fillAmount=value;}
}
