using TMPro;
using UnityEngine;
using CatGunner.Runtime;
public sealed class Rebirth_Panel_UI : MonoBehaviour
{
    public TextMeshProUGUI Ruby_txt,Reward_txt,UpgradeReward_txt,Reward_Popup_txt,UpgradeReward_Popup_txt,UpgradeReward_IAP_Popup_txt;
    public Rebirth_Upgrade_Item[] Upgrade_item_list;
    public GameObject UpgradeRebirth_Able_obj,UpgradeRebirth_IAP_obj,UpgradeRebirth_Disable_obj,Rebirth_Popup_obj,UpgradeRebirth_Popup_obj,UpgradeRebirth_IAP_Popup_obj;
    private void OnEnable(){if(Rebirth_manager.instance!=null&&Rebirth_manager.instance.Model!=null)Reload();}
    public void Reload()
    {
        var c=GameClient.Instance;var model=Rebirth_manager.instance.Model;
        var reward=model.RewardReturn(c.Forest.Stage_Now,c.Forest.Level_Now);string ordinary=NumberText.Format(reward),enhanced=NumberText.Format(reward*new DecimalAmount(3));
        if(Ruby_txt!=null)Ruby_txt.text=NumberText.Format(model.State.Ruby.Value);
        if(Reward_txt!=null)Reward_txt.text=ordinary;if(Reward_Popup_txt!=null)Reward_Popup_txt.text=ordinary;
        foreach(var text in new[]{UpgradeReward_txt,UpgradeReward_Popup_txt,UpgradeReward_IAP_Popup_txt})if(text!=null)text.text=enhanced;
        for(int i=0;i<Upgrade_item_list.Length;i++){Upgrade_item_list[i]._num=i;Upgrade_item_list[i].Reload();}
        RefreshAvailability();
    }
    // Refresh local availability without reactivating the panel or restarting its Animator.
    private void LateUpdate(){if(Rebirth_manager.instance?.Model!=null)RefreshAvailability();}
    void RefreshAvailability()
    {
        var c=GameClient.Instance;var model=Rebirth_manager.instance.Model;bool ad=model.AdAvailable,paid=model.PaidAvailable;
        UpgradeRebirth_Able_obj?.SetActive(ad);UpgradeRebirth_IAP_obj?.SetActive(!ad&&paid);UpgradeRebirth_Disable_obj?.SetActive(!ad&&!paid);
        RewardedAds.Button(UpgradeRebirth_Able_obj,c.Mode==0&&c.Forest.Stage_Now>=2&&ad&&!Rebirth_manager.instance.EnhancedRebirthPending);
        RewardedAds.Button(UpgradeRebirth_Popup_obj?.transform.Find("Panel/Rebirth_btn")?.gameObject,c.Mode==0&&c.Forest.Stage_Now>=2&&ad&&!Rebirth_manager.instance.EnhancedRebirthPending&&!c.RewardedAds.Busy);
        if(UpgradeRebirth_IAP_obj!=null&&UpgradeRebirth_IAP_obj.TryGetComponent<UnityEngine.UI.Button>(out var button))button.interactable=c.OfflinePurchaseSimulation&&c.Mode==0&&c.Forest.Stage_Now>=2&&paid;
    }
    public void Rebirth_Popup_Open(){var c=GameClient.Instance;if(c.Mode!=0||c.Forest.Stage_Now<2){Gun_manager.Feedback(false);return;}Reload();UpgradeRebirth_Popup_obj.SetActive(false);UpgradeRebirth_IAP_Popup_obj.SetActive(false);Rebirth_Popup_obj.SetActive(true);}
    public void UpgradeRebirth_Popup_Open()
    {var c=GameClient.Instance;if(c.Mode!=0||c.Forest.Stage_Now<2||!Rebirth_manager.instance.Model.AdAvailable){Reload();Gun_manager.Feedback(false);return;}Reload();Rebirth_Popup_obj.SetActive(false);UpgradeRebirth_IAP_Popup_obj.SetActive(false);UpgradeRebirth_Popup_obj.SetActive(true);}
    public void UpgradeRebirth_IAP_Popup_Open()
    {var c=GameClient.Instance;if(c.Mode!=0||c.Forest.Stage_Now<2||!Rebirth_manager.instance.Model.PaidAvailable){Reload();Gun_manager.Feedback(false);return;}Reload();Rebirth_Popup_obj.SetActive(false);UpgradeRebirth_Popup_obj.SetActive(false);UpgradeRebirth_IAP_Popup_obj.SetActive(true);}
}
