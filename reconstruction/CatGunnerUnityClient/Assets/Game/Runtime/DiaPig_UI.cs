using TMPro;
using UnityEngine;

// Source layout/fields preserved. I2 description uses the native '+' fallback;
// purchase status uses the recovered flags with an explicit local simulation gate.
public sealed class DiaPig_UI : MonoBehaviour
{
    public GameObject Locked_obj, Unlock_obj, Remove_Ads_All_obj, Remove_Ads_Forced_obj;
    public TextMeshProUGUI CoolTime_txt, Count_txt, DiaValue_txt;
    public GameObject Descrip_obj, Descrip_obj_Init;
    private bool is_unlock;
    private void OnEnable() { if (DiaPig.instance != null) UI_Reload(); }
    public void UI_Reload()
    {
        var pig = DiaPig.instance; if (pig == null) return;
        is_unlock = pig.IsUnlocked;
        Locked_obj.SetActive(!is_unlock); Unlock_obj.SetActive(is_unlock);
        Count_txt.text = string.Format("{0}<size=30>/{1}", pig.Dia_Now, pig.Dia_Max);
        Descrip_obj.SetActive(is_unlock); Descrip_obj_Init.SetActive(!is_unlock);
        DiaValue_txt.text = "+" + pig.TickAmount;
        // vc257 intentionally retains both offers when both flags are true.
        // Do not simplify this serialized/native branch to an invented upsell.
        Remove_Ads_All_obj.SetActive(!pig.HasAllAdsPack || pig.HasForcedAdsPack);
        Remove_Ads_Forced_obj.SetActive(pig.HasAllAdsPack);
        Update();
    }
    private void Update()
    {
        if (!is_unlock || DiaPig.instance == null) return;
        var pig = DiaPig.instance;
        Count_txt.text = string.Format("{0}<size=30>/{1}", pig.Dia_Now, pig.Dia_Max);
        CoolTime_txt.text = pig.Dia_Now < pig.Dia_Max ? pig.GetSecondsUntilNextTick() + "s" : "Max";
    }
    public void Get_Dia() => DiaPig.instance?.Dia_Get();
}
