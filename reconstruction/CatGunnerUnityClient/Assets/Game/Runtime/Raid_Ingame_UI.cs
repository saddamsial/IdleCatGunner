using TMPro;
using UnityEngine;
using UnityEngine.UI;
using CatGunner.Runtime;
public sealed class Raid_Ingame_UI : MonoBehaviour
{
    public TextMeshProUGUI Time_txt,Lv_txt,Health_txt,HighScore_txt;
    public GameObject HighScore_obj;
    public SlicedFilledImage Time_Fill,HP_Fill;
    public Image HP_Background_img;
    public Color[] Level_Colors;
    public void Level_Reload(int level){Lv_txt.text=string.Format("Lv.{0}",level);HP_Fill.color=Level_Colors[(level-1)%Level_Colors.Length];HP_Background_img.color=Level_Colors[level%Level_Colors.Length];}
    public void Health_Reload(CurrencyAmount now,CurrencyAmount max){HP_Fill.fillAmount=Mathf.Clamp01(MonsterRules.Ratio(now.Value,max.Value));Health_txt.text=NumberText.Format(now.Value);}
    public void Time_Reload(float now,float max){Time_Fill.fillAmount=now/max;Time_txt.text=string.Format("{0}s",(int)(now+1));}
    public void HighScore_Reload(int cleared,int best){HighScore_obj.SetActive(cleared>best);HighScore_txt.text=string.Format("<size=45>Lv.{0}</size>",Mathf.Max(cleared,best));}
}
