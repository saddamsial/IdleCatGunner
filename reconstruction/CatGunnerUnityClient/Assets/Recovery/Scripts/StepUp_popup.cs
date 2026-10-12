using TMPro;
using UnityEngine;
using CatGunner.Recovery;
public sealed class StepUp_popup : MonoBehaviour
{
    public TextMeshProUGUI Time_txt;
    public StepUp_Item_UI[] StepUp_Item_list;
    bool first;
    public void Reload()
    {
        if (StepUp.instance?.Model == null) return;
        gameObject.SetActive(true); StepUp.instance.StepUp_Start();
        if (!first)
        {
            first = true;
            for (int i = 0; i < StepUp_Item_list.Length; i++) { StepUp_Item_list[i].Step_Num = i; StepUp_Item_list[i].First_Reload(); }
        }
        Time_Reload(); foreach (var item in StepUp_Item_list) item.Reload();
    }
    public void Time_Reload() { if (StepUp.instance?.Model != null) Time_txt.text = OriginalStepUpOffer.FullTime(StepUp.instance.Remain_Duration()); }
    public void Close() => gameObject.SetActive(false);
}
