using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using CatGunner.Recovery;
public sealed class SpeedRun_manager : MonoBehaviour
{
    public static SpeedRun_manager instance;
    public Tree_SpeedRun[] Tree_list;
    public List<Tree_SpeedRun> Tree_Alive=new List<Tree_SpeedRun>();
    public int Stage_Now,TreeCount_Now,TreeCount_Max,treesPerFrame=30;
    public float GameTime_Now,GameTime_Max=60;
    public Vector3 CatSpawnPos=new Vector3(-100,0,0);
    public GameObject GameWin_UI,GameFail_UI,Bonus_Btn_obj,NoAds_Btn_obj,Skip_obj,GameSweep_UI,SweepBonus_Btn_obj,SweepNoAds_Btn_obj,SweepSkip_obj,Map_obj;
    public SpeedRun_Start_UI Start_UI;
    public SpeedRun_Slider gameSlider;
    public SpriteRenderer Ground_sprite;
    public float innerRadius=22,outerRadius=70,radialOffset=3,angularOffset=2;
    public const int Reward_Value=30;
    private RecoveryForestClient client;
    private bool bonusClaimed,sweepPending;
    private int resultRevision;
    public bool Bound=>client!=null;
    public bool SweepPending=>sweepPending;
    public bool SweepEntitled=>Bound&&client.PlusActive(2);
    private Coroutine flow;
    public bool Entering {get;private set;}
    public bool Playing=>client!=null&&client.Mode==1&&ForestRuntimeAcceptance.IsGaming;
    public bool AutoReward=>client!=null&&client.OfflinePurchaseSimulation&&client.State.Is_Remove_AD_All;
    private void Awake()=>instance=this;
    public void Bind(RecoveryForestClient owner)
    {
        client=owner;Stage_Now=client.State.SpeedRun_Stage_Now;
        foreach(var tree in Tree_list)tree.enemy.MoneyDropped+=client.AwardModeTreeMoney;
        RecoveryRewardedAds.Button(SweepBonus_Btn_obj);
        if(SweepNoAds_Btn_obj.TryGetComponent<UnityEngine.UI.Button>(out var sweepExit))sweepExit.interactable=true;
        RefreshSettlementButtons(false);
    }
    public static int GetStageTreeCount(int stage)=>Mathf.Clamp(stage*15+20,20,190);
    public void StartPanel_Open(){if(client!=null&&client.Mode==0){Start_UI.transform.parent.gameObject.SetActive(true);Start_UI.Reload();Start_UI.gameObject.SetActive(true);}}
    public void Game_Enter()
    {
        if(client==null||client.Mode!=0||Entering||sweepPending)return;
        if(Stage_Now<0||Stage_Now>=client.Forest.Stage_Health_Balance.Length)throw new NotSupportedException("Speed-run stage beyond validated original health cache");
        resultRevision++;bonusClaimed=false;client.SuspendForestForSpeedRun();Entering=true;Start_UI.gameObject.SetActive(false);Start_UI.transform.parent.gameObject.SetActive(false);GameWin_UI.SetActive(false);GameFail_UI.SetActive(false);
        gameSlider.transform.parent.gameObject.SetActive(true);client.ShowLoading(true);Tree_Alive.Clear();
        TreeCount_Now=TreeCount_Max=GetStageTreeCount(Stage_Now);
        for(int i=0;i<Tree_list.Length;i++){Tree_list[i].gameObject.SetActive(false);if(i<TreeCount_Max)Tree_Alive.Add(Tree_list[i]);}
        Cat.ResetLeaderTrail();client.Team.Warp(CatSpawnPos);client.PetFollowers.Warp(client.Hero.transform.position);
        Sound_manager.instance?.PlaySfx(SfxType.Enter);flow=StartCoroutine(Enter_Cor());
    }
    private IEnumerator Enter_Cor()
    {
        float start=Time.unscaledTime;Map_obj.SetActive(true);Tree_Batch(TreeCount_Max);Ground_sprite.sprite=client.Forest.Ground_sprite_list[Stage_Now%10];
        var h=client.Forest.Stage_Health_Balance[Stage_Now].Value;var m=client.Forest.Stage_Money_Balance[Stage_Now].Value;
        var mult=new[]{new DecimalAmount(1),new DecimalAmount(18,-1),new DecimalAmount(3)};
        for(int i=0;i<TreeCount_Max;i++)
        {int degree=UnityEngine.Random.Range(0,3);Tree_list[i].Spawn(OriginalAmount.FromValue(h*mult[degree]),OriginalAmount.FromValue(m*mult[degree]),Tree_manager.Sprite_return(Stage_Now,degree));Tree_list[i].gameObject.SetActive(true);if((i+1)%treesPerFrame==0)yield return null;}
        if(Time.unscaledTime-start<1.5f)yield return new WaitForSecondsRealtime(1.5f-(Time.unscaledTime-start));
        client.ShowLoading(false);Sound_manager.instance?.BGM_Change_SpeedRun();Entering=false;Game_Start();flow=null;
    }
    public void Game_Start(){if(client.Mode!=1)return;GameTime_Now=GameTime_Max;ForestRuntimeAcceptance.IsGaming=true;gameSlider.Value_Reload(0);gameSlider.Time_Reload(GameTime_Now,GameTime_Max);}
    private void Update(){if(!Playing)return;if(GameTime_Now>0){GameTime_Now-=Time.deltaTime;gameSlider.Time_Reload(GameTime_Now,GameTime_Max);}else Game_Fail();}
    public void Tree_Destroyed(Tree_SpeedRun tree)
    {if(!Playing||!Tree_Alive.Remove(tree))return;TreeCount_Now--;gameSlider.Value_Reload((TreeCount_Max-TreeCount_Now)/(float)TreeCount_Max);if(TreeCount_Now<=0)Game_Win();}
    public void Game_Win()
    {if(!Playing)return;ForestRuntimeAcceptance.IsGaming=false;gameSlider.Value_Reload(1);Stage_Now++;client.State.SpeedRun_Stage_Now=Stage_Now;bonusClaimed=AutoReward;client.AwardDiamonds(Reward_Value*(bonusClaimed?4:1));RefreshSettlementButtons(bonusClaimed);client.SaveNow();Start_UI.transform.parent.gameObject.SetActive(true);GameWin_UI.SetActive(true);Sound_manager.instance?.PlaySfx(SfxType.Win);}
    public void Game_Fail(){if(!Playing)return;ForestRuntimeAcceptance.IsGaming=false;Start_UI.transform.parent.gameObject.SetActive(true);GameFail_UI.SetActive(true);Sound_manager.instance?.PlaySfx(SfxType.Fail);}
    public void Loading_Then_Start(){if(client.Mode==1&&!Entering){if(flow!=null)StopCoroutine(flow);flow=StartCoroutine(DelayedExit());}}
    private IEnumerator DelayedExit(){yield return new WaitForSeconds(2);Game_Exit();}
    public void Game_Exit()
    {
        if(client==null||client.Mode!=1)return;resultRevision++;if(flow!=null)StopCoroutine(flow);Entering=false;ForestRuntimeAcceptance.IsGaming=false;
        Map_obj.SetActive(false);GameWin_UI.SetActive(false);GameFail_UI.SetActive(false);Start_UI.transform.parent.gameObject.SetActive(false);gameSlider.transform.parent.gameObject.SetActive(false);
        client.ShowLoading(true);Sound_manager.instance?.BGM_Change_Main();flow=StartCoroutine(Exit_Cor());
    }
    private IEnumerator Exit_Cor(){yield return new WaitForSeconds(1.5f);client.Restart();client.ShowLoading(true);yield return new WaitForSeconds(.2f);client.ShowLoading(false);flow=null;}
    private bool RewardEligible(int revision,bool sweep)=>Bound&&revision==resultRevision&&!bonusClaimed&&
        (sweep?sweepPending&&client.Mode==0&&GameSweep_UI.activeInHierarchy:client.Mode==1&&GameWin_UI.activeInHierarchy);
    public void Bonus_AD_Show()
    {
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
    public DecimalAmount Power_SpeedRun_return()
    {
        if(!Bound)return new DecimalAmount(0);var total=new DecimalAmount(0);
        int skin=100+(client.Skins?.Speed_Accum_return()??0);
        int rebirth=int.Parse(client.Rebirth.Percent(1).PlainInteger(),System.Globalization.CultureInfo.InvariantCulture);
        int upgrade=OriginalBalanceCatalogue.Load().Speed(client.State.Upgrade_Lv[1]);
        foreach(var cat in client.Team.Cat_list)
        {
            if(cat==null||!cat.gameObject.activeInHierarchy||cat._gunInfo==null)continue;
            var gun=cat._gunInfo;
            float cooldown=OriginalEquipmentCatalogue.CalculateAttackCooldown(gun.AtkSpeed,skin,rebirth,upgrade,0,false,false,false,client.BuffMultiplier(Buff_Type.AtkSpeed));
            total+=OriginalSpeedRunSweepRules.Power(cat.Damage.Value,cat.CriDmg.Value,cat.CriPer,cooldown,gun.type,gun.ShotgunPelletCount);
        }
        return OriginalRaidRules.Precision(total,5).Value;
    }
    public DecimalAmount SweepRequiredPower_return(int stage)
    {
        if(!Bound||stage<0||stage>=client.Forest.Stage_Health_Balance.Length)throw new NotSupportedException("Speed-run sweep beyond validated original health cache");
        return OriginalSpeedRunSweepRules.RequiredPower(client.Forest.Stage_Health_Balance[stage].Value,GetStageTreeCount(stage));
    }
    public bool is_SweepAble()=>Bound&&Power_SpeedRun_return().CompareTo(SweepRequiredPower_return(Stage_Now))>=0;
    public int SweepValue_return()=>OriginalBossSweepRules.FillPercent(Power_SpeedRun_return(),SweepRequiredPower_return(Stage_Now));
    public void Game_Sweep()
    {
        // Local entitlement/page/revision guards supplement the native power gate.
        if(!Bound||client.Mode!=0||Entering||sweepPending||!Start_UI.gameObject.activeInHierarchy||!SweepEntitled||RecoveryRewardedAds.Current?.Busy==true||!is_SweepAble())return;
        SweepRequiredPower_return(Stage_Now+1); // Reject an unsupported next stage before mutating the save.
        resultRevision++;sweepPending=true;bonusClaimed=AutoReward;Stage_Now++;client.State.SpeedRun_Stage_Now=Stage_Now;
        client.AwardDiamonds(Reward_Value*(bonusClaimed?4:1));
        SweepBonus_Btn_obj.SetActive(!bonusClaimed);SweepSkip_obj.SetActive(!bonusClaimed);SweepNoAds_Btn_obj.SetActive(bonusClaimed);
        RecoveryRewardedAds.Button(SweepBonus_Btn_obj,!bonusClaimed);
        GameSweep_UI.SetActive(true);Start_UI.Reload();client.SaveNow();Sound_manager.instance?.PlaySfx(SfxType.Win);
    }
    public void SweepBonus_AD_Show()=>Bonus_AD_Show();
    public void SweepBonus_Get()
    {
        if(RecoveryRewardedAds.Current?.IsCompleting!=true||!RewardEligible(resultRevision,true))return;
        bonusClaimed=true;client.AwardDiamonds(Reward_Value*3);Sweep_Close();
    }
    public void Sweep_Close(){resultRevision++;sweepPending=false;if(GameSweep_UI!=null)GameSweep_UI.SetActive(false);}
    public void Tree_Batch(int count)
    {
        var points=OriginalSpeedRunLayout.Place(count,innerRadius,outerRadius,radialOffset,angularOffset,UnityEngine.Random.Range);
        for(int i=0;i<points.Length;i++)Tree_list[i].transform.localPosition=points[i];
    }
    private void OnDestroy(){if(client!=null)foreach(var t in Tree_list)if(t!=null)t.enemy.MoneyDropped-=client.AwardModeTreeMoney;if(instance==this)instance=null;}
}
