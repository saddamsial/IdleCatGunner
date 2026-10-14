using TMPro;
using UnityEngine;
using CatGunner.Runtime;
public sealed class StepUp_Hud : MonoBehaviour
{
    public TextMeshProUGUI Time_txt;
    public GameObject Price_obj;
    public void Reload()
    {
        var owner = StepUp.instance; if (owner?.Model == null) return;
        bool show = owner.Banner_ShouldShow() && owner.Client.Tutorial?.gameObject.activeSelf != true;
        gameObject.SetActive(show); if (!show) return;
        owner.StepUp_Start(); Time_Reload();
    }
    public void Time_Reload()
    {
        var owner = StepUp.instance; if (owner?.Model == null) return;
        bool firstPurchased = owner.Purchased[0]; Time_txt.gameObject.SetActive(firstPurchased); Price_obj.SetActive(!firstPurchased);
        if (firstPurchased) Time_txt.text = StepUpOffer.HudTime(owner.Remain_Duration());
    }
    public void OnClick() => StepUp.instance?.Popup_Open("hud");
}
