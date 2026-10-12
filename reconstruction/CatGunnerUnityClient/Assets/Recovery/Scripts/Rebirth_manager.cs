using UnityEngine;
using CatGunner.Recovery;
public sealed class Rebirth_manager : MonoBehaviour
{
    public static Rebirth_manager instance;
    public Rebirth_Panel_UI rebirth_panel_ui;
    public int Rebirth_Count;
    public bool LocalPurchasedRebirthPending {get;private set;}
    public bool LocalAdRebirthPending {get;private set;}
    public bool EnhancedRebirthPending=>LocalPurchasedRebirthPending||LocalAdRebirthPending;
    public void StartLocalPurchasedRebirth(){LocalPurchasedRebirthPending=true;rebirth_fx?.Rebirth_Start();}
    public void ConsumePurchasedRebirth()=>LocalPurchasedRebirthPending=false;
    public void ConsumeEnhancedRebirth()
    {
        // Native ad quota is consumed at the original animation-event reset.
        // Paid quota was consumed separately by purchase completion.
        if(LocalAdRebirthPending){Model.State.UpgradeRebirth_UseCount++;Model.State.UpgradeRebirth_LastDate=OriginalRebirth.TodayKey(Model.Now());}
        LocalAdRebirthPending=LocalPurchasedRebirthPending=false;
    }
    public void CancelEnhancedRebirth(){LocalAdRebirthPending=LocalPurchasedRebirthPending=false;}
    public bool RequestAdRebirth()
    {
        var c=RecoveryForestClient.Instance;var page=rebirth_panel_ui?.UpgradeRebirth_Popup_obj;
        if(c==null||c.Mode!=0||c.Forest.Stage_Now<2||page==null||!page.activeInHierarchy||rebirth_fx==null||rebirth_fx.gameObject.activeSelf||EnhancedRebirthPending)return false;
        var guard=page.GetComponent<RecoveryRebirthConfirmation>();int revision=guard.Revision;
        string day=OriginalRebirth.TodayKey(Model.Now());
        return c.RewardedAds.Request(()=>this!=null&&RecoveryForestClient.Instance==c&&c.Mode==0&&c.Forest.Stage_Now>=2&&
            page.activeInHierarchy&&guard.Revision==revision&&day==OriginalRebirth.TodayKey(Model.Now())&&Model.AdAvailable&&
            !EnhancedRebirthPending&&!rebirth_fx.gameObject.activeSelf,UpgradeRebirth_Start_By_Ad);
    }
    public void UpgradeRebirth_Start_By_Ad()
    {
        // This callback is reachable only inside the authorized local simulator.
        var c=RecoveryForestClient.Instance;if(c?.RewardedAds?.IsCompleting!=true||EnhancedRebirthPending)return;
        LocalAdRebirthPending=true;rebirth_fx.Rebirth_Start_By_Ad();
    }
    public Rebirth_FX rebirth_fx;
    public OriginalRebirth Model {get;private set;}
    private void Awake()=>instance=this;
    public void Bind(OriginalRebirth model)
    {
        if(Model!=null)Model.Changed-=Reload;Model=model;model.Changed+=Reload;
        if(rebirth_fx!=null)rebirth_fx.gameObject.SetActive(false);
        var page=rebirth_panel_ui?.UpgradeRebirth_Popup_obj;
        if(page!=null)
        {
            if(page.GetComponent<RecoveryRebirthConfirmation>()==null)page.AddComponent<RecoveryRebirthConfirmation>();
            var button=page.transform.Find("Panel/Rebirth_btn")?.GetComponent<UnityEngine.UI.Button>();
            if(button!=null&&rebirth_fx!=null){button.onClick.RemoveListener(rebirth_fx.Rebirth_Start);button.onClick.AddListener(rebirth_fx.Rebirth_Start);}
        }
        var purchase=rebirth_panel_ui?.UpgradeRebirth_IAP_Popup_obj?.GetComponentInChildren<RecoveryLocalPurchaseButton>(true);
        if(purchase!=null)purchase.RequireVisiblePage=true;
        Reload();
    }
    public void Reload(){Rebirth_Count=Model.State.Rebirth_Count;rebirth_panel_ui?.Reload();}
    public void Rebirth()
    {
        bool success=RecoveryForestClient.Instance.RebirthNow();Gun_manager.Feedback(success,7);
        if(success)
        {
            foreach(var page in new[]{rebirth_panel_ui.gameObject,rebirth_panel_ui.Rebirth_Popup_obj,rebirth_panel_ui.UpgradeRebirth_Popup_obj,rebirth_panel_ui.UpgradeRebirth_IAP_Popup_obj})if(page!=null)page.SetActive(false);
            if(rebirth_fx!=null)rebirth_fx.gameObject.SetActive(false);Reload();
        }
    }
    public void Rebirth_Upgrade(int kind)=>Gun_manager.Feedback(Model.Upgrade(kind),9);
    public void Panel_Open(){rebirth_panel_ui.gameObject.SetActive(true);Reload();}
    private void OnDestroy(){if(Model!=null)Model.Changed-=Reload;if(instance==this)instance=null;}
}
