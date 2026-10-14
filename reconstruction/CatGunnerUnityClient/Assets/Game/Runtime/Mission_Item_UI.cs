using TMPro;
using UnityEngine;
using CatGunner.Runtime;
public sealed class Mission_Item_UI : MonoBehaviour
{
    public int Mission_Index,_baseExp;
    public bool _isVipMission;
    public TextMeshProUGUI Exp_txt,Name_txt,Explain_txt,Value_txt;
    public SlicedFilledImage Fill;
    public GameObject NonClear_obj,GetAble_obj,Get_obj,LuxuryBonus_obj,VIP_Panel_obj,VIP_Star_obj,Luxury_Panel_obj,LuxuryLocked_obj,VIPLocked_obj;
    public void Reload()
    {
        var m=Mission_manager.instance.Model;var mission=m.Catalogue.Missions[Mission_Index];int value=m.Value(mission.type);bool claimed=m.State.Mission_ExpGet[Mission_Index],vip=mission.is_VIP_Mission;int status=m.MissionStatus(Mission_Index);
        ReloadText(CatGunner.Runtime.Language.Current);
        if(Value_txt!=null)Value_txt.text=value+"/"+mission.MissionValue;if(Fill!=null)Fill.fillAmount=Mathf.Clamp01(value/(float)mission.MissionValue);
        Set(NonClear_obj,status==0||status==1&&m.SeasonClosed);Set(GetAble_obj,status==1&&!m.SeasonClosed);Set(Get_obj,status==2);
        Set(VIP_Panel_obj,vip);Set(VIP_Star_obj,vip);Set(VIPLocked_obj,vip&&!m.VipAccess);Set(LuxuryBonus_obj,status==3);Set(Luxury_Panel_obj,status==3);// Original recording keeps the bonus offer bright before ownership;
        // reward eligibility is enforced by the model and purchase popup.
        Set(LuxuryLocked_obj,false);
    }
    public void ReloadText(SystemLanguage language)
    {
        var mission=Mission_manager.instance.Model.Catalogue.Missions[Mission_Index];var text=MissionText.Load();
        // Native First_Reload writes plain experience; the original XP icon is separate.
        if(Exp_txt!=null)Exp_txt.text=(Mission_manager.instance.Model.MissionStatus(Mission_Index)==3?Mathf.RoundToInt(mission.ExpValue*.5f):mission.ExpValue).ToString();
        if(Name_txt!=null)WeaponText.Set(Name_txt,text.TaskName(mission.type,language),language);
        if(Explain_txt!=null)WeaponText.Set(Explain_txt,text.TaskExplanation(mission.type,mission.MissionValue,language),language);
    }
    public void Reward_Get(){bool success=Mission_manager.instance.Model.ClaimMission(Mission_Index);Gun_manager.Feedback(success,7);if(success){Mission_manager.instance.Exp_Slider?._bounce?.Bounce_Start();Mission_manager.instance.RestartAlertLoop();GameClient.Instance.SaveNow();}}
    public void Reward_Get_Luxury(){if(!Mission_manager.instance.Model.LuxuryAccess){Mission_manager.instance.Luxury_Purchase_Panel_obj.SetActive(true);Gun_manager.Feedback(true,1);return;}bool success=Mission_manager.instance.Model.ClaimLuxuryMission(Mission_Index);Gun_manager.Feedback(success,7);if(success)GameClient.Instance.SaveNow();}
    public void Luxury_Bonus_Get()=>Reward_Get_Luxury();
    private static void Set(GameObject go,bool value){if(go!=null)go.SetActive(value);}
}
