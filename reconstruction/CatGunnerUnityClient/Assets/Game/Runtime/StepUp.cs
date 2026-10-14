using System;
using CatGunner.Runtime;
using UnityEngine;

public sealed class StepUp : MonoBehaviour
{
    public static StepUp instance;
    public StepUp_Banner stepup_banner;
    public StepUp_popup popup;
    public StepUp_Hud stepup_hud;
    public bool[] Purchased = new bool[5];
    public DateTime Start_dateTime;
    public string Open_Place;
    public StepUpOffer Model { get; private set; }
    public GameClient Client { get; private set; }
    float nextRefresh;
    void Awake() => instance = this;
    public void Bind(GameClient client)
    {
        if (Client != null) Client.Inventory.Changed -= Banner_Reload;
        Client = client; Purchased = client.State.StepUp_Purchased;
        Model = new StepUpOffer(client.State, () => client.LocalStore.Model.Now());
        client.Inventory.Changed += Banner_Reload; Banner_Reload();
    }
    public bool is_Started => Model?.Started == true;
    public TimeSpan Remain_Duration() => Model?.Remaining ?? TimeSpan.FromDays(7);
    public bool Is_Expired() => Model?.Expired == true;
    public bool Is_Purchasable(int step) => Model != null && StepUpOffer.Purchasable(Purchased, step);
    public int Current_Purchasable_Step() => Model?.CurrentStep ?? -1;
    public bool Banner_ShouldShow() => Model?.ShouldShow == true;
    public void StepUp_Start() { if (Model?.StartOnce() == true) Client.SaveNow(); DateTime.TryParse(Client?.State.StepUp_Start_Date, out Start_dateTime); }
    public void Banner_Reload()
    {
        if (Model == null) return;
        if (Banner_ShouldShow()) { StepUp_Start(); stepup_banner.Reload(); }
        else stepup_banner.gameObject.SetActive(false);
        Hud_Reload();
    }
    public void Hud_Reload() => stepup_hud?.Reload();
    public void Popup_Reload() { if (popup != null && popup.gameObject.activeInHierarchy) popup.Reload(); }
    public void Popup_Open(string place)
    {
        if (Client == null || !Client.ReadyForPlay) return;
        Open_Place = place; popup.Reload(); popup.transform.SetAsLastSibling();
    }
    public void OnPurchased(int step) { if (step < 0 || step >= 5) return; Popup_Reload(); Banner_Reload(); }
    // Local periodic visibility refresh replaces the unavailable original global
    // reload/timer orchestration, retaining the tutorial's HUD ownership.
    void Update()
    {
        if (Client == null || !Client.ReadyForPlay || Time.unscaledTime < nextRefresh) return;
        nextRefresh = Time.unscaledTime + .25f; Banner_Reload();
        if (popup.gameObject.activeInHierarchy) { popup.Time_Reload(); foreach (var item in popup.StepUp_Item_list) item.Reload(); }
    }
    void OnDestroy() { if (Client != null && Client.Inventory != null) Client.Inventory.Changed -= Banner_Reload; if (instance == this) instance = null; }
}
