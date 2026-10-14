using System;
using System.Collections;
using CatGunner.Runtime;
using UnityEngine;
using UnityEngine.UI;

public sealed class Mission_manager : MonoBehaviour
{
    public static Mission_manager instance;
    public Mission_UI Mission_UI_Panel;
    public Mission_Item_UI[] Mission_Item_UI_List;
    public Mission_Reward_Slot[] Mission_Reward_Slot_List;
    public Mission_Exp_Slider Exp_Slider;
    public GameObject NewSeason_Btn_obj,Vip_Purchase_Panel_obj,Luxury_Purchase_Panel_obj,Mission_Alert_obj,NewSeason_Panel_obj,NewSeason_Panel_Forced_obj;
    public ScrollRect Reward_Scroll,Mission_Scroll;
    public Missions Model {get;private set;}
    private Coroutine _alertCoroutine,_scrollLerpCoroutine,_openScrollCoroutine;
    private void Awake()=>instance=this;
    // Local lifecycle bridge: the original Start/Reload trusted-time bootstrap
    // is replaced by Bind. Owner disable cancels our owned presentation jobs.
    private void OnEnable(){if(Model!=null)RestartAlertLoop();}
    private void OnDisable(){StopOwnedCoroutines();}
    private void StopOwnedCoroutines()
    {
        if(_alertCoroutine!=null)StopCoroutine(_alertCoroutine);_alertCoroutine=null;
        StopScrollCoroutines();
    }
    private void StopScrollCoroutines()
    {
        if(_scrollLerpCoroutine!=null)StopCoroutine(_scrollLerpCoroutine);_scrollLerpCoroutine=null;
        if(_openScrollCoroutine!=null)StopCoroutine(_openScrollCoroutine);_openScrollCoroutine=null;
    }
    public void Bind(Missions model)
    {
        if(Model!=null)Model.Changed-=UI_Reload;
        Model=model;model.Changed+=UI_Reload;
        for(int i=0;i<Mission_Item_UI_List.Length;i++)Mission_Item_UI_List[i].Mission_Index=i;
        for(int i=0;i<Mission_Reward_Slot_List.Length;i++)Mission_Reward_Slot_List[i].Bind(i);
        foreach(var panel in new[]{Vip_Purchase_Panel_obj,Luxury_Purchase_Panel_obj,NewSeason_Panel_obj,NewSeason_Panel_Forced_obj})if(panel!=null)panel.SetActive(false);
        if(Mission_UI_Panel!=null)foreach(var currency in Mission_UI_Panel.GetComponentsInChildren<Currency>(true))currency.Bind(GameClient.Instance);
        UI_Reload();RestartAlertLoop();
    }
    public void UI_Reload()
    {
        if(Model==null)return;Mission_UI_Reload();foreach(var slot in Mission_Reward_Slot_List??Array.Empty<Mission_Reward_Slot>())slot.Reload();
        if(Exp_Slider!=null)Exp_Slider.Reload();if(Mission_UI_Panel!=null)Mission_UI_Panel.Reload();if(NewSeason_Btn_obj!=null)NewSeason_Btn_obj.SetActive(Model.State.Mission_Reward_Lv>24);
    }
    public void Mission_UI_Reload()
    {
        if(Model==null)return;
        var rows=Mission_Item_UI_List??Array.Empty<Mission_Item_UI>();
        foreach(var row in rows)if(row!=null)row.Reload();
        var order=Model.MissionDisplayOrder();
        for(int rank=0;rank<order.Length;rank++)
        {
            int index=order[rank];if(index<rows.Length&&rows[index]!=null)rows[index].transform.SetSiblingIndex(rank);
        }
    }
    public void Mission_Reload(){Model?.ReloadDay();UI_Reload();}
    public void Panel_Open()
    {
        if(Mission_UI_Panel!=null)Mission_UI_Panel.gameObject.SetActive(true);Season_Reload();Mission_Reload();
        if(Mission_Scroll!=null)Mission_Scroll.verticalNormalizedPosition=1;
        StopScrollCoroutines();if(isActiveAndEnabled)_openScrollCoroutine=StartCoroutine(ScrollToRewardLv());
    }
    public void Panel_Close(){StopScrollCoroutines();if(Mission_UI_Panel!=null)Mission_UI_Panel.gameObject.SetActive(false);}
    public void Season_Reload(){if(Model!=null&&Model.ReloadSeason()){SeasonResetPresentation();GameClient.Instance?.SaveNow();}UI_Reload();}
    public void NewSeason_Start()
    {if(Model==null)return;Model.ResetSeason(true);SeasonResetPresentation();Gun_manager.Feedback(true,7);GameClient.Instance.SaveNow();}
    private void SeasonResetPresentation()
    {
        StopScrollCoroutines();if(Reward_Scroll!=null){Reward_Scroll.velocity=Vector2.zero;Reward_Scroll.horizontalNormalizedPosition=0;}
        if(NewSeason_Panel_obj!=null)NewSeason_Panel_obj.SetActive(false);if(NewSeason_Panel_Forced_obj!=null)NewSeason_Panel_Forced_obj.SetActive(false);
        Mission_UI_Panel?.Season_Changed();RestartAlertLoop();UI_Reload();
    }
    public void RestartAlertLoop()
    {
        if(_alertCoroutine!=null)StopCoroutine(_alertCoroutine);_alertCoroutine=null;
        if(Model!=null&&isActiveAndEnabled)_alertCoroutine=StartCoroutine(AlertLoop_Co());
    }
    private IEnumerator AlertLoop_Co()
    {
        while(true){Alert_Check();yield return new WaitForSeconds(2);}
    }
    public void Alert_Check(){if(Model!=null&&Mission_Alert_obj!=null)Mission_Alert_obj.SetActive(Model.HasMissionAlert());}
    public int First_Unclaimed_Reward_Lv_return()=>Model.FirstUnclaimedReward();
    public int Next_GetAble_Reward_Lv_return()=>Model.NextGetAbleReward();
    public int Scroll_Target_Lv_return()=>Model.ScrollTargetReward(Mission_Reward_Slot_List.Length);
    public void Check_All_Reward_Get(){if(Model.FirstUnclaimedReward()==-1&&NewSeason_Panel_Forced_obj!=null)NewSeason_Panel_Forced_obj.SetActive(true);}
    public void RewardClaimPresentationComplete()
    {
        Check_All_Reward_Get();int next=Next_GetAble_Reward_Lv_return();if(next!=-1)ScrollTo_RewardSlot(next);
    }
    public bool ShowRewardSequenceWarning(int level)
    {
        // Native Reward_Get rejects sequence before granting/ad selection. The
        // local expired-season guard remains separate from that native branch.
        if(Model==null||level<0||level>=Model.State.NormalReward_Get.Length||Model.SeasonClosed||
           Model.State.NormalReward_Get[level]||level>=Model.State.Mission_Reward_Lv||!Model.SequenceLocked(level))return false;
        // Reuse the original restored Alert and its Animator/lifetime. Native
        // UI_manager's global rotating alert pool is still a local adapter.
        var alert=GameClient.Instance?.StarUpgrades?.popup?.FeedbackAlert;
        if(alert!=null)alert.Reload(MissionFeedback.Catalogue.SequenceWarning());
        Gun_manager.Feedback(false);int first=First_Unclaimed_Reward_Lv_return();
        if(first!=-1)ScrollTo_RewardSlot(first);return true;
    }
    private bool TryRewardPosition(int level,out float normalized)
    {
        normalized=0;if(Reward_Scroll==null||Reward_Scroll.content==null||Reward_Scroll.viewport==null||Mission_Reward_Slot_List==null||Mission_Reward_Slot_List.Length==0)return false;
        var content=Reward_Scroll.content;var viewport=Reward_Scroll.viewport;
        var slot=Mission_Reward_Slot_List[Mathf.Clamp(level,0,Mission_Reward_Slot_List.Length-1)];if(slot==null)return false;
        var screen=RectTransformUtility.WorldToScreenPoint(null,slot.transform.position);
        RectTransformUtility.ScreenPointToLocalPointInRectangle(content,screen,null,out var local);
        float width=content.rect.width-viewport.rect.width;if(width<=0)return false;
        normalized=Mathf.Clamp01((local.x-content.rect.xMin-viewport.rect.width*.5f)/width);return true;
    }
    private IEnumerator ScrollToRewardLv()
    {
        yield return null;
        if(Model!=null&&TryRewardPosition(Scroll_Target_Lv_return(),out float target))Reward_Scroll.horizontalNormalizedPosition=target;
        _openScrollCoroutine=null;
    }
    public void ScrollTo_RewardSlot(int level)
    {
        StopScrollCoroutines();if(isActiveAndEnabled)_scrollLerpCoroutine=StartCoroutine(ScrollTo_RewardSlot_Co(level));
    }
    private IEnumerator ScrollTo_RewardSlot_Co(int level)
    {
        yield return null;
        if(!TryRewardPosition(level,out float target)){_scrollLerpCoroutine=null;yield break;}
        float start=Reward_Scroll.horizontalNormalizedPosition,elapsed=0;Reward_Scroll.velocity=Vector2.zero;
        const float duration=.3f; // Native preferred VA 0x106c190: 9a99993e.
        while(elapsed<duration)
        {
            elapsed+=Time.deltaTime;float t=Mathf.Clamp01(elapsed/duration);float smooth=t*t*(3-2*t);
            Reward_Scroll.horizontalNormalizedPosition=Mathf.Lerp(start,target,smooth);yield return null;
        }
        Reward_Scroll.horizontalNormalizedPosition=target;_scrollLerpCoroutine=null;
    }
    private void OnDestroy(){StopOwnedCoroutines();if(Model!=null)Model.Changed-=UI_Reload;if(instance==this)instance=null;}
}
