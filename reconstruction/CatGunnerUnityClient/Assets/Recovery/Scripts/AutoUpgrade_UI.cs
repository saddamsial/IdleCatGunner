using CatGunner.Recovery;
using TMPro;
using UnityEngine;

// Original field layout and Button callbacks; local bridge replaces SDK globals.
public sealed class AutoUpgrade_UI : MonoBehaviour
{
    public GameObject NonPurchase_obj,Purchase_obj,On_obj,Off_obj,Shop_Btn_obj,AD_Btn_obj;
    public TextMeshProUGUI Buff_Time_txt;
    bool _buffShowing;
    RecoveryAutomaticUpgrade controller;
    public void Bind(RecoveryAutomaticUpgrade owner)
    {
        if(controller!=null)controller.Changed-=Reload;
        controller=owner;if(isActiveAndEnabled)controller.Changed+=Reload;Reload();
    }
    void OnEnable(){if(controller!=null){controller.Changed+=Reload;Reload();}}
    void OnDisable(){if(controller!=null)controller.Changed-=Reload;}
    public void Reload()
    {
        if(controller==null)return;
        bool active=!controller.Paid&&controller.Active,access=controller.Paid||active;
        NonPurchase_obj.SetActive(!access);Purchase_obj.SetActive(access);
        On_obj.SetActive(!Setting.is_AutoDisable);Off_obj.SetActive(Setting.is_AutoDisable);
        AD_Btn_obj.SetActive(!access&&!controller.WatchedToday);Shop_Btn_obj.SetActive(!access&&controller.WatchedToday);
        Buff_Time_txt.gameObject.SetActive(active);_buffShowing=active;
        if(active)Buff_Time_txt.text=OriginalAutoUpgradeRules.TimeStr(controller.Remaining);
        RecoveryRewardedAds.Button(AD_Btn_obj,controller.Able);
    }
    void Update()
    {
        if(!_buffShowing||controller==null)return;
        if(controller.Active)Buff_Time_txt.text=OriginalAutoUpgradeRules.TimeStr(controller.Remaining);else Reload();
    }
    public void AutoUpgrade_AD_Click(){if(controller==null)return;if(!controller.Able){Reload();return;}controller.RequestReward();}
    public void AutoUpgrade_Disable()=>controller?.SetDisabled(true);
    public void AutoUpgrade_Able()=>controller?.SetDisabled(false);
    public static string TimeStr(System.TimeSpan time)=>OriginalAutoUpgradeRules.TimeStr((float)time.TotalSeconds);
}
