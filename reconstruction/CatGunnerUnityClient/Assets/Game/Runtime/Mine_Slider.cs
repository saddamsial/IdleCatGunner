using System.Globalization;
using UnityEngine;
using TMPro;
public sealed class Mine_Slider : MonoBehaviour
{
    public SlicedFilledImage Value_Fill,Time_Fill;
    public TextMeshProUGUI Dia_txt,Time_txt;
    public void Value_Reload(float ratio)=>Value_Fill.fillAmount=ratio;
    public void Dia_Reload(int score)=>Dia_txt.text=(score/10f).ToString("F1",CultureInfo.InvariantCulture);
    public void Time_Reload(float time,float max){Time_Fill.fillAmount=time/max;Time_txt.text=((int)(time+1))+"s";}
}
