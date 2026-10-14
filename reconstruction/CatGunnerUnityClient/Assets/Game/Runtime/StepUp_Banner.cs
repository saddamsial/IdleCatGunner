using TMPro;
using UnityEngine;
using CatGunner.Runtime;
public sealed class StepUp_Banner : MonoBehaviour
{
    public TextMeshProUGUI Time_txt, Sale_txt;
    public Gun_Item_Demo gun_item;
    public void Reload()
    {
        if (StepUp.instance?.Model == null) return;
        gameObject.SetActive(true); StepUp.instance.StepUp_Start();
        int step = StepUp.instance.Current_Purchasable_Step();
        if (step >= 0) gun_item.Reload(LocalPurchases.StepGun(step));
        Sale_txt.text = StepUpText.Catalogue.Sale(step == 0 ? 12 : 5); Time_Reload();
    }
    public void Time_Reload() { if (StepUp.instance?.Model != null) Time_txt.text = StepUpOffer.FullTime(StepUp.instance.Remain_Duration()); }
    public void OnClick() => StepUp.instance?.Popup_Open("banner_weapon");
}
