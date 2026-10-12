using TMPro;
using UnityEngine;
public sealed class Mission_Exp_Slider : MonoBehaviour
{
    public TextMeshProUGUI Lv_txt,Exp_txt;
    public SlicedFilledImage Fill;
    public Bounce _bounce;
    public void Reload(){var s=Mission_manager.instance.Model.State;if(Lv_txt!=null)Lv_txt.text="Lv."+(s.Mission_Reward_Lv+1);if(Exp_txt!=null)Exp_txt.text=s.Mission_Reward_Exp+"/100";if(Fill!=null)Fill.fillAmount=Mathf.Clamp01(s.Mission_Reward_Exp/100f);}
}
