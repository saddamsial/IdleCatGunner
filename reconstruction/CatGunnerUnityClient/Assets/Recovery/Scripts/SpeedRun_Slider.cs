using UnityEngine;
using TMPro;
public sealed class SpeedRun_Slider : MonoBehaviour
{
    public SlicedFilledImage Value_Fill,Time_Fill;
    public TextMeshProUGUI Value_txt,Time_txt;
    public void Value_Reload(float ratio){Value_Fill.fillAmount=ratio;Value_txt.text=((int)(ratio*100))+"%";}
    public void Time_Reload(float time,float max){Time_Fill.fillAmount=time/max;Time_txt.text=((int)(time+1))+"s";}
}
