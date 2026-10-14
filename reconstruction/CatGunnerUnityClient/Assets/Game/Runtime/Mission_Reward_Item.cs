using CatGunner.Runtime;
using TMPro;
using UnityEngine;
using UnityEngine.UI;
public sealed class Mission_Reward_Item : MonoBehaviour
{
    public int _degree,_Lv;
    public GameObject Dia_obj,Gun_obj,Core_obj,NonClear_obj,GetAble_obj,Get_obj,Locked_obj,SequenceLocked_obj,SequenceLocked_obj2,AD_Reward_obj;
    public TextMeshProUGUI Dia_Reward_txt,Core_Reward_txt,Type_txt;
    public Image Gun_img,Shadow_img,Panel_img;
    public GameObject[] Degree_objs;
    public void Bind(int index,bool epic)
    {
        _Lv=index;_degree=epic?1:0;
        var b=GetComponent<Button>();if(b==null&&GetAble_obj!=null)b=GetAble_obj.GetComponent<Button>();
        if(b!=null){b.onClick.RemoveAllListeners();if(!HasClaimCallback(b))b.onClick.AddListener(Claim);}
    }
    private bool HasClaimCallback(Button button)
    {
        for(int i=0;i<button.onClick.GetPersistentEventCount();i++)
        {
            if(button.onClick.GetPersistentListenerState(i)==UnityEngine.Events.UnityEventCallState.Off)continue;
            var target=button.onClick.GetPersistentTarget(i);var method=button.onClick.GetPersistentMethodName(i);
            if(target==this&&method==nameof(Claim))return true;
            if(target is Mission_Reward_Slot slot)
            {
                if(_degree==0&&slot.Normal_Reward_item==this&&method==nameof(Mission_Reward_Slot.Normal_Reward_Click))return true;
                if(_degree!=0&&slot.Epic_Reward_item==this&&method==nameof(Mission_Reward_Slot.Epic_Reward_Click))return true;
            }
        }
        return false;
    }
    // Native First_Reload 0x2b04180. Preview setup does not rebind Buttons:
    // all six source preview Buttons reference a separate original slot.
    public void First_Reload(int degree,int level,int rewardType,int value)
    {
        _degree=degree;_Lv=level;
        Set(Dia_obj,rewardType==0);Set(Gun_obj,rewardType==1);Set(Core_obj,rewardType==2);
        if(rewardType==0&&Dia_Reward_txt!=null)Dia_Reward_txt.text=value.ToString();
        else if(rewardType==2&&Core_Reward_txt!=null)Core_Reward_txt.text=value.ToString();
        else if(rewardType==1)
        {
            Gun_manager.Present(value,Gun_img,Shadow_img,Panel_img,Degree_objs);
            if(Type_txt!=null)WeaponText.Set(Type_txt,Gun_manager.TypeText(value));
        }
    }
    // Only the exact NewSeason caller's Value_Reload(status,false,false)
    // branch: Epic rewards have no AD badge. Other reward flows keep Reload.
    public void ReloadPreviewStatus(int status)
    {
        if(_degree!=1)throw new System.InvalidOperationException("Only original epic preview branch restored here");
        Set(NonClear_obj,status==0);Set(GetAble_obj,status==1);Set(Get_obj,status==2);
        Set(SequenceLocked_obj,false);Set(SequenceLocked_obj2,false);Set(Locked_obj,false);Set(AD_Reward_obj,false);
    }
    public void Reload()
    {
        var m=Mission_manager.instance.Model;var reward=m.Reward(_Lv,_degree!=0);var s=m.State;
        Set(Dia_obj,reward.type==0);Set(Gun_obj,reward.type==1);Set(Core_obj,reward.type==2);
        if(Dia_Reward_txt!=null)Dia_Reward_txt.text=reward.value.ToString();if(Core_Reward_txt!=null)Core_Reward_txt.text=reward.value.ToString();
        if(reward.type==1){Gun_manager.Present(reward.value,Gun_img,Shadow_img,Panel_img,Degree_objs);if(Type_txt!=null)CatGunner.Runtime.WeaponText.Set(Type_txt,Gun_manager.TypeText(reward.value));}
        bool claimed=(_degree==0?s.NormalReward_Get:s.EpicReward_Get)[_Lv],locked=_degree!=0&&!m.VipAccess,sequence=m.SequenceLocked(_Lv),ad=_degree==0&&m.NeedsAd(_Lv),ready=_Lv<s.Mission_Reward_Lv&&!m.SeasonClosed;
        bool sequenceVisible=!claimed&&ready&&sequence;
        Set(Get_obj,claimed);Set(NonClear_obj,!claimed&&!ready);Set(GetAble_obj,!claimed&&ready&&!locked&&!sequence);Set(Locked_obj,locked);Set(SequenceLocked_obj,sequenceVisible);Set(SequenceLocked_obj2,sequenceVisible);Set(AD_Reward_obj,ad&&!claimed);
        // Original normal Button remains clickable under its sequence overlay,
        // allowing the native rejection/warning path. Commercial claims remain
        // unavailable, except an earlier sequence rejection cannot grant them.
        var b=GetComponent<Button>();if(b==null&&GetAble_obj!=null)b=GetAble_obj.GetComponent<Button>();if(b!=null)b.interactable=ready&&!claimed&&!locked&&(!ad||sequence||RewardedAds.Available);
    }
    public void Claim()
    {
        if(_degree==0&&Mission_manager.instance.ShowRewardSequenceWarning(_Lv))return;
        var m=Mission_manager.instance.Model;
        if(_degree==0&&m.NeedsAd(_Lv)&&!m.SeasonClosed&&!m.SequenceLocked(_Lv)&&_Lv<m.State.Mission_Reward_Lv&&!m.State.NormalReward_Get[_Lv])
        {if(RewardedAds.Current?.Request(()=>gameObject.activeInHierarchy&&!m.SeasonClosed&&!m.SequenceLocked(_Lv)&&!m.State.NormalReward_Get[_Lv],()=>CompleteClaim(true))!=true)Gun_manager.Feedback(false);return;}
        CompleteClaim(false);
    }
    private void CompleteClaim(bool ad)
    {
        bool success=_degree==0?Mission_manager.instance.Model.ClaimReward(_Lv,ad&&RewardedAds.Current?.IsCompleting==true):Mission_manager.instance.Model.ClaimEpicReward(_Lv);
        Gun_manager.Feedback(success,7);if(success){if(Mission_manager.instance.Model.Reward(_Lv,_degree!=0).type==0)Mission_manager.instance.Mission_Reward_Slot_List[_Lv].Dia_Spawn_Play(_degree);Mission_manager.instance.RewardClaimPresentationComplete();GameClient.Instance.SaveNow();}
    }
    // Native 0x2b044f8: the original diamond icon is the emission origin.
    // Presentation never awards currency; ClaimReward already committed it.
    public void Dia_Spawn_Play()
    {
        if(Dia_Attraction.instance==null)return;
        var origin=(Dia_obj!=null?Dia_obj.transform:transform) as RectTransform;
        if(origin!=null)Dia_Attraction.instance.Dia_Spawn(origin,8);
    }
    private static void Set(GameObject go,bool value){if(go!=null)go.SetActive(value);}
}
