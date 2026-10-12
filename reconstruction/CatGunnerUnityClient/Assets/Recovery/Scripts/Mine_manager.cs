using System;
using System.Collections;
using CatGunner.Recovery;
using UnityEngine;
using TMPro;
public sealed class Mine_manager : MonoBehaviour
{
    public static Mine_manager instance;
    public Ore[] Ore_list;
    public Mine_Start_UI mineStart_ui;
    public GameObject Map_obj,GameEnd_UI,MineTicket_Inapp_UI_obj,Bonus_Btn_obj,NoAds_Btn_obj,Skip_obj,GameSweep_UI,SweepBonus_Btn_obj,SweepNoAds_Btn_obj,SweepSkip_obj;
    public Sprite[] Ore_sprites;
    public int TicketUse_Count,Best_Reward,Dia_Score,OreCount_Now,OreCount_Max,Reward_Value,orePerFrame=30;
    public DateTime TicketCharge_Date;
    public float GameTime_Now,outerRadius=150,innerRadius=24.3f,noiseScale=.085f,noiseThreshold=.517f;
    public Vector3 center=new Vector3(-100,0,0);
    public Mine_Slider gameSlider;
    public TextMeshProUGUI Reward_txt,Bonus_txt,SweepReward_txt,SweepBonus_txt;
    public GameObject ModeHUD,StartPanel,Ingame_Upgrade_UI_obj;
    public const float GameTime_Max=60;
    public float RoundTimeMax {get;private set;}
    public static readonly Vector3 CatSpawnPos=new Vector3(-100,0,0);
    [NonSerialized] public Func<DateTime> Today=()=>DateTime.Now;
    private RecoveryForestClient client;
    private bool bonusClaimed,sweepPending;
    private int resultRevision;
    public bool SweepPending=>sweepPending;
    private Coroutine flow;
    public bool Bound=>client!=null;
    public bool Entering {get;private set;}
    public bool Playing=>Bound&&client.Mode==2&&ForestRuntimeAcceptance.IsGaming;
    public bool AutoReward=>Bound&&client.OfflinePurchaseSimulation&&client.State.Is_Remove_AD_All;
    private void Awake()=>instance=this;
    public void Bind(RecoveryForestClient owner)
    {
        client=owner;Ticket_Reload();Best_Reward=client.State.Best_Reward;
        RecoveryRewardedAds.Button(SweepBonus_Btn_obj,true);
        if(SweepNoAds_Btn_obj.TryGetComponent<UnityEngine.UI.Button>(out var b))b.interactable=true;
        RefreshSettlementButtons(false);
    }
    public int Ticket_MaxCount_return()=>client!=null&&client.State.Is_Mine_Pack?6:2;
    public float GameTime_Max_return()=>client?.PlusTimeLimit(2,GameTime_Max)??GameTime_Max;
    public void Ticket_Reload()
    {
        if(!Bound)return;bool changed=OriginalMineTickets.Reload(client.State,Today());
        TicketUse_Count=client.State.TicketUse_Count;DateTime.TryParse(client.State.TicketCharge_Date,out TicketCharge_Date);
        if(changed)client.SaveNow();
    }
    public void StartPanel_Open(){if(!Bound||client.Mode!=0)return;StartPanel.SetActive(true);mineStart_ui.gameObject.SetActive(true);mineStart_ui.Reload();}
    public void Game_Enter()
    {
        if(!Bound||client.Mode!=0||Entering||sweepPending)return;Ticket_Reload();
        if(TicketUse_Count>=Ticket_MaxCount_return()){Gun_manager.Feedback(false);mineStart_ui.Reload();return;}
        resultRevision++;bonusClaimed=false;client.SuspendForestForMode(2);TicketUse_Count++;client.State.TicketUse_Count=TicketUse_Count;Dia_Score=0;Reward_Value=0;
        // Native counters retain the entire serialized pool length, even if Perlin yields fewer positions.
        OreCount_Now=OreCount_Max=Ore_list.Length;Entering=true;
        mineStart_ui.gameObject.SetActive(false);StartPanel.SetActive(false);GameEnd_UI.SetActive(false);GameSweep_UI.SetActive(false);
        Ingame_Upgrade_UI_obj.SetActive(true);ModeHUD.SetActive(true);Map_obj.SetActive(true);ClearOres();
        Cat.ResetLeaderTrail();client.Team.Warp(CatSpawnPos);client.PetFollowers.Warp(client.Hero.transform.position);
        client.Missions.Increase(3);client.SaveNow();client.ShowLoading(true);Sound_manager.instance?.PlaySfx(SfxType.Enter);flow=StartCoroutine(Enter_Cor());
    }
    private IEnumerator Enter_Cor()
    {
        float start=Time.unscaledTime;yield return PlaceOres();
        if(Time.unscaledTime-start<1.5f)yield return new WaitForSecondsRealtime(1.5f-(Time.unscaledTime-start));
        client.ShowLoading(false);Sound_manager.instance?.BGM_Change_SpeedRun();Entering=false;Game_Start();flow=null;
    }
    public IEnumerator PlaceOres()
    {
        OriginalMineLayout.Point[] points=null;
        yield return OriginalMineLayout.Generate(UnityEngine.Random.Range(0,99999),Ore_list.Length,center,innerRadius,outerRadius,noiseScale,noiseThreshold,orePerFrame,result=>points=result);
        for(int i=0;i<Ore_list.Length;i++)
        {
            var ore=Ore_list[i];if(ore!=null){ore.gameObject.SetActive(i<points.Length);if(i<points.Length)ore.Spawn(points[i].Position,points[i].Degree,Ore_sprites[points[i].Degree]);}
            if((i+1)%orePerFrame==0)yield return null;
        }
    }
    public void ClearOres(){foreach(var ore in Ore_list)if(ore!=null)ore.gameObject.SetActive(false);}
    public void Game_Start(){if(!Bound||client.Mode!=2)return;RoundTimeMax=GameTime_Max_return();GameTime_Now=RoundTimeMax;gameSlider.Value_Reload(0);gameSlider.Dia_Reload(Dia_Score);gameSlider.Time_Reload(GameTime_Now,RoundTimeMax);ForestRuntimeAcceptance.IsGaming=true;}
    private void Update(){if(!Playing)return;if(GameTime_Now>0){GameTime_Now-=Time.deltaTime;gameSlider.Time_Reload(GameTime_Now,RoundTimeMax);}else Game_End();}
    public void Ore_Destroyed(Ore ore)
    {if(!Playing)return;OreCount_Now--;Dia_Score+=ore._diaValue;gameSlider.Value_Reload((OreCount_Max-OreCount_Now)/(float)OreCount_Max);gameSlider.Dia_Reload(Dia_Score);if(OreCount_Now<=0)Game_End();}
    public void Game_End()
    {
        if(!Playing)return;ForestRuntimeAcceptance.IsGaming=false;gameSlider.Dia_Reload(Dia_Score);
        int baseReward=Dia_Score/10;Best_Reward=Math.Max(Best_Reward,baseReward);client.State.Best_Reward=Best_Reward;Reward_Value=client.PlusReward(2,baseReward);
        Reward_txt.text=Reward_Value.ToString();Bonus_txt.text=(Reward_Value*4).ToString();
        bonusClaimed=AutoReward;client.AwardDiamonds(Reward_Value*(bonusClaimed?4:1));client.SaveNow();
        StartPanel.SetActive(true);GameEnd_UI.SetActive(true);RefreshSettlementButtons(bonusClaimed);Sound_manager.instance?.PlaySfx(SfxType.Win);
    }
    public void Game_Exit()
    {
        if(!Bound||client.Mode!=2)return;resultRevision++;if(flow!=null)StopCoroutine(flow);Entering=false;ForestRuntimeAcceptance.IsGaming=false;
        // Local cancellation closure prevents an interrupted placement from starting a late game.
        Map_obj.SetActive(false);GameEnd_UI.SetActive(false);StartPanel.SetActive(false);ModeHUD.SetActive(false);Ingame_Upgrade_UI_obj.SetActive(true);
        client.ShowLoading(true);Sound_manager.instance?.BGM_Change_Main();flow=StartCoroutine(Exit_Cor());
    }
    private IEnumerator Exit_Cor(){yield return new WaitForSeconds(1.5f);client.Restart();client.ShowLoading(true);yield return new WaitForSeconds(.2f);client.ShowLoading(false);flow=null;}
    private bool RewardEligible(int revision,bool sweep)=>Bound&&revision==resultRevision&&!bonusClaimed&&
        (sweep?sweepPending&&client.Mode==0&&GameSweep_UI.activeInHierarchy:client.Mode==2&&GameEnd_UI.activeInHierarchy);
    public void Bonus_AD_Show()
    {
        // Both original result buttons serialize Bonus_AD_Show, including the sweep popup.
        int revision=resultRevision;bool sweep=sweepPending;
        if(RecoveryRewardedAds.Current?.Request(()=>RewardEligible(revision,sweep),Bonus_Get)!=true)Gun_manager.Feedback(false);
    }
    public void Bonus_Get()
    {
        if(sweepPending){SweepBonus_Get();return;}
        if(RecoveryRewardedAds.Current?.IsCompleting!=true||!RewardEligible(resultRevision,false))return;
        bonusClaimed=true;client.AwardDiamonds(Reward_Value*3);Game_Exit();
    }
    private void RefreshSettlementButtons(bool automatic)
    {
        Bonus_Btn_obj.SetActive(!automatic);Skip_obj.SetActive(!automatic);NoAds_Btn_obj.SetActive(automatic);
        RecoveryRewardedAds.Button(Bonus_Btn_obj,!bonusClaimed);
        if(NoAds_Btn_obj.TryGetComponent<UnityEngine.UI.Button>(out var b))b.interactable=true;
    }
    public bool is_SweepAble()=>Bound&&client.PlusActive(2)&&Best_Reward>0;
    private int SweepBaseReward()=>client.PlusReward(2,Best_Reward);
    public int SweepReward_return()=>!Bound?0:checked(SweepBaseReward()*(AutoReward?4:1));
    public void Game_Sweep()
    {
        // Local page, mode and in-flight guards supplement the original entitlement/best-record gate.
        if(!Bound||client.Mode!=0||Entering||sweepPending||!mineStart_ui.gameObject.activeInHierarchy||RecoveryRewardedAds.Current?.Busy==true||!is_SweepAble())return;
        Ticket_Reload();
        if(TicketUse_Count>=Ticket_MaxCount_return())
        {
            Gun_manager.Feedback(false);mineStart_ui.Reload();
            if(!client.State.Is_Mine_Pack)MineTicket_Inapp_UI_obj.SetActive(true);
            return;
        }
        int reward=SweepBaseReward();int four=checked(reward*4); // Validate the payout before mutating tickets or wallet.
        resultRevision++;sweepPending=true;bonusClaimed=AutoReward;
        TicketUse_Count++;client.State.TicketUse_Count=TicketUse_Count;Reward_Value=reward;
        client.AwardDiamonds(bonusClaimed?four:reward);
        SweepReward_txt.text=reward.ToString();SweepBonus_txt.text=four.ToString();
        SweepBonus_Btn_obj.SetActive(!bonusClaimed);SweepSkip_obj.SetActive(!bonusClaimed);SweepNoAds_Btn_obj.SetActive(bonusClaimed);
        RecoveryRewardedAds.Button(SweepBonus_Btn_obj,!bonusClaimed);
        if(SweepNoAds_Btn_obj.TryGetComponent<UnityEngine.UI.Button>(out var b))b.interactable=true;
        client.Missions.Increase(3);client.SaveNow();GameSweep_UI.SetActive(true);mineStart_ui.Reload();Sound_manager.instance?.PlaySfx(SfxType.Win);
    }
    public void SweepBonus_AD_Show()=>Bonus_AD_Show();
    public void SweepBonus_Get()
    {
        if(RecoveryRewardedAds.Current?.IsCompleting!=true||!RewardEligible(resultRevision,true))return;
        bonusClaimed=true;client.AwardDiamonds(Reward_Value*3);Sweep_Close();
    }
    public void Sweep_Close(){resultRevision++;sweepPending=false;if(GameSweep_UI!=null)GameSweep_UI.SetActive(false);}
    private void OnDestroy(){if(instance==this)instance=null;}
}
