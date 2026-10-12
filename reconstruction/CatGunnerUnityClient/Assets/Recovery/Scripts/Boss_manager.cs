using System;
using System.Collections;
using CatGunner.Recovery;
using UnityEngine;
using TMPro;
public sealed class Boss_manager : MonoBehaviour
{
    public static Boss_manager instance;
    public int Stage_Now;
    public GameObject GameWin_UI,GameFail_UI,Ingame_Upgrade_UI_obj,Remove_ForceAds_ingame_obj,Bonus_Btn_obj,NoAds_Btn_obj,Skip_obj,GameSweep_UI,SweepBonus_Btn_obj,SweepNoAds_Btn_obj,SweepSkip_obj,Map_obj;
    public Boss_Start_UI boss_start_ui,Start_UI;
    public Sprite[] Boss_Head_sprites,Boss_Head_Die_sprites,Boss_Head_Idle_sprites;
    public OriginalAmount[] Health_Balance;
    public float GameTime_Now;
    public const float GameTime_Max=60;
    public const int Reward_Value=150;
    public int RunReward {get;private set;}
    public float RoundTimeMax {get;private set;}
    public float GameTime_Max_return()=>client?.PlusTimeLimit(3,GameTime_Max)??GameTime_Max;
    public static readonly Vector3 CatSpawnPos=new Vector3(-100,0,0);
    public Boss_Slider gameSlider;
    public TextMeshProUGUI Reward_txt,Bonus_txt,SweepReward_txt,SweepBonus_txt;
    public Boss _boss;
    public GameObject ModeHUD,StartPanel;
    private RecoveryForestClient client;
    private bool bonusClaimed,sweepPending;
    private int resultRevision;
    public bool SweepPending=>sweepPending;
    public bool AutoReward=>client!=null&&client.OfflinePurchaseSimulation&&client.State.Is_Remove_AD_All;
    public bool SweepEntitled=>client!=null&&client.PlusActive(2);
    private Coroutine flow;
    public bool Entering {get;private set;}
    public bool Bound=>client!=null;
    public bool Playing=>Bound&&client.Mode==3&&ForestRuntimeAcceptance.IsGaming;
    private void Awake()=>instance=this;
    public void Bind(RecoveryForestClient owner)
    {
        client=owner;Stage_Now=client.State.Boss_Stage;
        RecoveryRewardedAds.Button(Bonus_Btn_obj);RecoveryRewardedAds.Button(SweepBonus_Btn_obj);
        foreach(var g in new[]{NoAds_Btn_obj,SweepNoAds_Btn_obj})if(g!=null&&g.TryGetComponent<UnityEngine.UI.Button>(out var b))b.interactable=true;
        RefreshSettlementButtons(false,false);
    }
    public OriginalAmount Health_return(int stage)
    {if(stage<0||stage>=Health_Balance.Length)throw new NotSupportedException("Boss stage outside verified original 1000-entry health cache; save preserved");return Health_Balance[stage];}
    public int SkinNum_return(int stage)=>stage%Boss_Head_sprites.Length;
    public Sprite Boss_Head_return(int stage)=>Boss_Head_sprites[SkinNum_return(stage)];
    public void StartPanel_Open(){if(!Bound||client.Mode!=0)return;Health_return(Stage_Now);StartPanel.SetActive(true);Start_UI.Reload();Start_UI.gameObject.SetActive(true);}
    public void Game_Enter()
    {
        if(!Bound||client.Mode!=0||Entering)return;Health_return(Stage_Now);
        Sweep_Close();resultRevision++;bonusClaimed=false;client.SuspendForestForMode(3);Entering=true;Start_UI.gameObject.SetActive(false);StartPanel.SetActive(false);GameWin_UI.SetActive(false);GameFail_UI.SetActive(false);
        if(Ingame_Upgrade_UI_obj!=null)Ingame_Upgrade_UI_obj.SetActive(false);
        ModeHUD.SetActive(true);Map_obj.SetActive(true);_boss.Spawn();
        Cat.ResetLeaderTrail();client.Team.Warp(CatSpawnPos);client.PetFollowers.Warp(client.Hero.transform.position);
        client.ShowLoading(true);Sound_manager.instance?.PlaySfx(SfxType.Enter);flow=StartCoroutine(Enter_Cor());
    }
    private IEnumerator Enter_Cor(){yield return new WaitForSeconds(2);client.ShowLoading(false);Sound_manager.instance?.BGM_Change_SpeedRun();Entering=false;Game_Start();flow=null;}
    public void Game_Start(){if(client.Mode!=3)return;RoundTimeMax=GameTime_Max_return();GameTime_Now=RoundTimeMax;gameSlider.Time_Reload(GameTime_Now,RoundTimeMax);gameSlider.Value_Reload(_boss.enemy.Health_Now,_boss.enemy.Health_Max);ForestRuntimeAcceptance.IsGaming=true;}
    private void Update(){if(!Playing)return;if(GameTime_Now>0){GameTime_Now-=Time.deltaTime;gameSlider.Time_Reload(GameTime_Now,RoundTimeMax);}else Game_Fail();}
    public void Boss_Spawn()=>_boss.Spawn();
    public void Boss_Destroyed()=>Game_Win();
    public void Game_Win()
    {
        if(!Playing)return;ForestRuntimeAcceptance.IsGaming=false;gameSlider.Value_Reload(OriginalAmount.FromValue(new DecimalAmount(0)),_boss.enemy.Health_Max);
        Stage_Now++;client.State.Boss_Stage=Stage_Now;RunReward=client.PlusReward(3,Reward_Value);bonusClaimed=AutoReward;client.AwardDiamonds(RunReward*(bonusClaimed?3:1));
        RefreshSettlementButtons(false,bonusClaimed);
        Reward_txt.text=RunReward.ToString();Bonus_txt.text=(RunReward*3).ToString();
        client.SaveNow();StartPanel.SetActive(true);GameWin_UI.SetActive(true);Sound_manager.instance?.PlaySfx(SfxType.Win);
    }
    public void Game_Fail(){if(!Playing)return;ForestRuntimeAcceptance.IsGaming=false;StartPanel.SetActive(true);GameFail_UI.SetActive(true);Sound_manager.instance?.PlaySfx(SfxType.Fail);}
    public void Loading_Then_Start(){if(Bound&&client.Mode==3&&!Entering){if(flow!=null)StopCoroutine(flow);flow=StartCoroutine(DelayedExit());}}
    private IEnumerator DelayedExit(){yield return new WaitForSeconds(2);Game_Exit();}
    public void Game_Exit()
    {
        if(!Bound||client.Mode!=3)return;resultRevision++;if(flow!=null)StopCoroutine(flow);Entering=false;ForestRuntimeAcceptance.IsGaming=false;
        Map_obj.SetActive(false);GameWin_UI.SetActive(false);GameFail_UI.SetActive(false);StartPanel.SetActive(false);ModeHUD.SetActive(false);
        if(Ingame_Upgrade_UI_obj!=null)Ingame_Upgrade_UI_obj.SetActive(true);
        client.ShowLoading(true);Sound_manager.instance?.BGM_Change_Main();flow=StartCoroutine(Exit_Cor());
    }
    private IEnumerator Exit_Cor(){yield return new WaitForSeconds(1.5f);client.Restart();client.ShowLoading(true);yield return new WaitForSeconds(.2f);client.ShowLoading(false);flow=null;}
    void RefreshSettlementButtons(bool sweep,bool automatic)
    {
        var bonus=sweep?SweepBonus_Btn_obj:Bonus_Btn_obj;
        var noads=sweep?SweepNoAds_Btn_obj:NoAds_Btn_obj;
        var skip=sweep?SweepSkip_obj:Skip_obj;
        if(bonus!=null)bonus.SetActive(!automatic);if(noads!=null)noads.SetActive(automatic);if(skip!=null)skip.SetActive(!automatic);
        RecoveryRewardedAds.Button(bonus,!bonusClaimed);
    }
    bool RewardEligible(int revision,bool sweep)=>Bound&&revision==resultRevision&&!bonusClaimed&&
        (sweep?sweepPending&&client.Mode==0&&GameSweep_UI.activeInHierarchy:client.Mode==3&&GameWin_UI.activeInHierarchy);
    public void Bonus_AD_Show()
    {
        int revision=resultRevision;bool sweep=sweepPending;
        if(RecoveryRewardedAds.Current?.Request(()=>RewardEligible(revision,sweep),Bonus_Get)!=true)Gun_manager.Feedback(false);
    }
    public void Bonus_Get()
    {
        if(sweepPending){SweepBonus_Get();return;}
        if(RecoveryRewardedAds.Current?.IsCompleting!=true||!RewardEligible(resultRevision,false))return;
        bonusClaimed=true;client.AwardDiamonds(RunReward*2);Game_Exit();
    }
    public DecimalAmount Power_Boss_return()
    {
        if(!Bound)return new DecimalAmount(0);var total=new DecimalAmount(0);
        int buff=client.BuffMultiplier(Buff_Type.Power),speedBuff=client.BuffMultiplier(Buff_Type.AtkSpeed);
        int skin=100+(client.Skins?.Damage_Accum_return()??0),speed=100+(client.Skins?.Speed_Accum_return()??0);
        int rebirthSpeed=int.Parse(client.Rebirth.Percent(1).PlainInteger(),System.Globalization.CultureInfo.InvariantCulture);
        foreach(var cat in client.Team.Cat_list)
        {
            if(cat==null||!cat.gameObject.activeInHierarchy)continue;var gun=cat._gunInfo;if(gun==null)continue;
            float cooldown=OriginalEquipmentCatalogue.CalculateAttackCooldown(gun.AtkSpeed,speed,rebirthSpeed,0,0,false,true,false,speedBuff);
            int stars=cat.SlotNum>=0&&cat.SlotNum<client.State.Star_Slot_Lv.Length?client.State.Star_Slot_Lv[cat.SlotNum]:0;
            var expected=OriginalBossSweepRules.ExpectedDamage(gun.Damage.Value,client.Rebirth.Percent(0),skin,
                client.Fish.GetTotalDamage(),client.Relics.Progression.Percent(0),buff,stars,client.Fish.GetTotalCriVal(),
                client.Relics.Progression.Percent(2),client.Fish.GetTotalCriPer());
            total+=OriginalBossSweepRules.Dps(expected,cooldown);
        }
        return OriginalRaidRules.Precision(total,5).Value;
    }
    public DecimalAmount SweepRequiredPower_return(int stage)=>OriginalBossSweepRules.RequiredPower(Health_return(stage).Value,GameTime_Max_return());
    public bool is_SweepAble()=>Bound&&Power_Boss_return().CompareTo(SweepRequiredPower_return(Stage_Now))>=0;
    public int SweepValue_return()=>OriginalBossSweepRules.FillPercent(Power_Boss_return(),SweepRequiredPower_return(Stage_Now));
    public void Game_Sweep()
    {
        // Local session guard closes duplicate and stale callbacks; native power gate and UI entitlement remain separate.
        if(!Bound||client.Mode!=0||Entering||sweepPending||!StartPanel.activeInHierarchy||!SweepEntitled||RecoveryRewardedAds.Current?.Busy==true||!is_SweepAble())return;
        Health_return(Stage_Now+1); // Local verified-cache boundary: reject before any reward or stage mutation.
        resultRevision++;sweepPending=true;bonusClaimed=AutoReward;Stage_Now++;client.State.Boss_Stage=Stage_Now;
        RunReward=client.PlusReward(3,Reward_Value);client.AwardDiamonds(RunReward*(bonusClaimed?3:1));
        SweepReward_txt.text=RunReward.ToString();SweepBonus_txt.text=(RunReward*3).ToString();RefreshSettlementButtons(true,bonusClaimed);
        GameSweep_UI.SetActive(true);Start_UI.Reload();client.SaveNow();Sound_manager.instance?.PlaySfx(SfxType.Win);
    }
    public void SweepBonus_AD_Show()=>Bonus_AD_Show();
    public void SweepBonus_Get()
    {
        if(RecoveryRewardedAds.Current?.IsCompleting!=true||!RewardEligible(resultRevision,true))return;
        bonusClaimed=true;client.AwardDiamonds(RunReward*2);Sweep_Close();
    }
    public void Sweep_Close(){resultRevision++;sweepPending=false;if(GameSweep_UI!=null)GameSweep_UI.SetActive(false);}
    private void OnDestroy(){if(instance==this)instance=null;}
}
