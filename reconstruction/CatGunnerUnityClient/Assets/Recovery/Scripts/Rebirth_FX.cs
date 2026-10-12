using UnityEngine;
using CatGunner.Recovery;
public sealed class Rebirth_FX : MonoBehaviour
{
    public GameObject Rebirth_Panel_obj,UpgradeRebirth_Panel_obj,UpgradeRebirth_IAP_Panel_obj;
    public void Rebirth_Start()
    {
        var c=RecoveryForestClient.Instance;
        if(c==null||c.Mode!=0||c.Forest.Stage_Now<2||gameObject.activeSelf){Gun_manager.Feedback(false);return;}
        if(!Rebirth_manager.instance.LocalPurchasedRebirthPending&&c.RebirthUI.rebirth_panel_ui.UpgradeRebirth_Popup_obj.activeInHierarchy)
        {Gun_manager.Feedback(Rebirth_manager.instance.RequestAdRebirth());return;}
        Start_Internal();
    }
    public void Rebirth_Start_By_Ad()
    {if(RecoveryForestClient.Instance?.RewardedAds?.IsCompleting==true&&Rebirth_manager.instance.LocalAdRebirthPending)Start_Internal();}
    void Start_Internal(){ForestRuntimeAcceptance.IsGaming=false;gameObject.SetActive(true);Sound_manager.instance?.PlaySfx((SfxType)6);}
    // Original animation event reaches the reset at exactly 2 seconds.
    public void Rebirth()
    {
        if(!gameObject.activeInHierarchy)return;
        Rebirth_manager.instance.Rebirth();foreach(var p in new[]{Rebirth_Panel_obj,UpgradeRebirth_Panel_obj,UpgradeRebirth_IAP_Panel_obj})if(p!=null)p.SetActive(false);gameObject.SetActive(false);
    }
    void OnDisable(){Rebirth_manager.instance?.CancelEnhancedRebirth();}
}
