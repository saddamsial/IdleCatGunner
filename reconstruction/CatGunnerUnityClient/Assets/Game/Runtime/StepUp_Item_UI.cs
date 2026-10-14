using TMPro;
using UnityEngine;
using UnityEngine.UI;
using CatGunner.Runtime;
public sealed class StepUp_Item_UI : MonoBehaviour
{
    public int Step_Num;
    public TextMeshProUGUI Step_txt, Dia_txt, Locked_txt;
    public Gun_Item_Demo gun_item;
    public GameObject Dia_obj, Disable_Panel_obj, Disable_Step_obj, Purchased_obj, Purchase_Btn_obj, Glow_obj;
    public void First_Reload()
    {
        Step_txt.text = string.Format("STEP {0}", Step_Num + 1); gun_item.Reload(LocalPurchases.StepGun(Step_Num));
        int dia = LocalPurchases.StepDiamonds(Step_Num); Dia_obj.SetActive(dia > 0); if (dia > 0) Dia_txt.text = dia.ToString();
        Locked_txt.text = StepUpText.Catalogue.Locked(Step_Num);
    }
    public void Reload()
    {
        var owner = StepUp.instance; if (owner?.Model == null) return;
        bool bought = owner.Purchased[Step_Num], available = owner.Is_Purchasable(Step_Num);
        Disable_Panel_obj.SetActive(!bought && !available); Disable_Step_obj.SetActive(!bought && !available);
        Purchased_obj.SetActive(bought); Purchase_Btn_obj.SetActive(available); Glow_obj.SetActive(available);
        // Keep an eligible original button clickable when inventory is full, so
        // its native rejection feedback can explain the failed action.
        var button = GetComponent<Button>();
        if (button != null) button.interactable = owner.Client.ReadyForPlay && owner.Client.OfflinePurchaseSimulation && !owner.Client.LocalStore.Busy;
    }
    public void OnClick()
    {
        var owner = StepUp.instance; if (owner?.Client == null) return;
        if (!owner.Is_Purchasable(Step_Num)) { Gun_manager.Feedback(false); return; }
        if (owner.Client.Inventory.FirstEmpty < 0)
        {
            Object.FindAnyObjectByType<Alert>(FindObjectsInactive.Include)?.Reload(StepUpText.Catalogue.FullInventory);
            Gun_manager.Feedback(false); return;
        }
        owner.Client.LocalStore.Request("catgunner_stepup_" + Step_Num);
    }
}
