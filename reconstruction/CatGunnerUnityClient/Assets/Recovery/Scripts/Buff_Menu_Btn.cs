using UnityEngine;
using TMPro;
public sealed class Buff_Menu_Btn : MonoBehaviour
{
    public GameObject Power_On_obj,Power_Off_obj,Speed_On_obj,Speed_Off_obj,Money_On_obj,Money_Off_obj,NormalValue_obj,SuperValue_obj;
    public TextMeshProUGUI Cool_txt;
    public static readonly Buff_Type[] AllTypes={Buff_Type.Money,Buff_Type.Power,Buff_Type.AtkSpeed};
    static void Pair(GameObject on,GameObject off,bool active){on?.SetActive(active);off?.SetActive(!active);}
    public void Reload()
    {
        var m=Buff_manager.instance;if(m==null)return;
        Pair(Power_On_obj,Power_Off_obj,m.IsBuffActive(Buff_Type.Power));Pair(Speed_On_obj,Speed_Off_obj,m.IsBuffActive(Buff_Type.AtkSpeed));Pair(Money_On_obj,Money_Off_obj,m.IsBuffActive(Buff_Type.Money));Pair(SuperValue_obj,NormalValue_obj,m.IsSuperBuff());
        float minimum=float.PositiveInfinity;foreach(var t in AllTypes){float v=m.GetBuffRemainingTime(t);if(v>0)minimum=Mathf.Min(minimum,v);}
        Cool_txt.text=m.IsPermanentBuff||float.IsPositiveInfinity(minimum)?string.Empty:Buff_manager.FormatRemaining(minimum);
    }
    void OnEnable()=>Reload();
}
