using System;
using System.Collections;
using System.Collections.Generic;
using CatGunner.Recovery;
using UnityEngine;
using TMPro;
public sealed class Monster_manager : MonoBehaviour
{
    public static Monster_manager instance;
    public int Wave_Now,Lv_Now,HP_Now,HP_Max=1,PetCoin_Accum;
    public GameObject GameEnd_UI,GameExplain_obj,Ingame_Upgrade_UI_obj,Remove_ForceAds_ingame_obj,LevelClear_obj,Map_obj,GameSweep_UI;
    public GameObject SweepBonus_Btn_obj,SweepNoAds_Btn_obj,SweepSkip_obj,Bonus_Btn_obj,NoAds_Btn_obj,Skip_obj;
    public Monster_Start_UI monster_start_ui;
    public Monster_Game_Slider monster_game_slider;
    public Sprite[] Monster_sprites;
    public OriginalAmount[] Health_Balance;
    public Color[] Monster_Colors;
    public Shapes.Disc HP_Disc;
    public ParticleSystem _slimeParticle;
    public TextMeshProUGUI Accum_PetCoin_txt,Reward_txt,Bonus_txt,SweepReward_txt,SweepBonus_txt;
    public List<Monster> NonSpawned_Monster=new List<Monster>(),Spawned_Monster=new List<Monster>();
    public GameObject ModeHUD,StartPanel;
    public Vector3 CatSpawnPos=OriginalMonsterRules.Center;
    private RecoveryForestClient client;
    private bool bonusClaimed,sweepPending;
    private int resultRevision;
    public bool SweepPending=>sweepPending;
    private Coroutine entryFlow,gameFlow,clearFlow,exitFlow;
    private OriginalAmount currentWaveHealth;
    private int killedCount,invasionPending,cachedHealthWave=-1;
    private OriginalAmount cachedHealth;
    private bool clearing;
    public bool Bound=>client!=null;
    public bool Entering {get;private set;}
    public bool Exiting {get;private set;}
    public bool Playing=>Bound&&client.Mode==4&&ForestRuntimeAcceptance.IsGaming;
    public bool AutoReward=>Bound&&client.OfflinePurchaseSimulation&&client.State.Is_Remove_AD_All;
    public int KilledCount=>killedCount;
    public int InvasionPending=>invasionPending;
    public bool Clearing=>clearing;
    public void Awake()=>instance=this;
    public void Bind(RecoveryForestClient owner)
    {
        client=owner;Wave_Now=client.State.Wave_Now;Lv_Now=client.State.Lv_Now;
        if(Wave_Now<0||Lv_Now<0||Lv_Now>4)throw new InvalidOperationException("Monster progression out of native domain");
        RecoveryRewardedAds.Button(SweepBonus_Btn_obj,true);
        if(SweepNoAds_Btn_obj.TryGetComponent<UnityEngine.UI.Button>(out var b))b.interactable=true;
        RefreshSettlementButtons(false);
    }
    public void StartPanel_Open(){if(!Bound||client.Mode!=0)return;StartPanel.SetActive(true);monster_start_ui.gameObject.SetActive(true);monster_start_ui.Reload();}
    public void StartPanel_Close(){if(Bound&&client.Mode==0)StartPanel.SetActive(false);}
    public void Game_Enter()
    {
        if(!Bound||client.Mode!=0||Entering||Exiting||sweepPending)return;resultRevision++;bonusClaimed=false;client.SuspendForestForMode(4);StopAllGameCoroutines();
        HP_Now=HP_Max;HP_Disc.AngRadiansEnd=360;PetCoin_Accum=0;Accum_PetCoin_txt.text="0";invasionPending=0;clearing=false;RecycleAll();
        Ingame_Upgrade_UI_obj.SetActive(false);if(Remove_ForceAds_ingame_obj!=null)Remove_ForceAds_ingame_obj.SetActive(false);GameEnd_UI.SetActive(false);GameSweep_UI.SetActive(false);
        StartPanel.SetActive(false);monster_start_ui.gameObject.SetActive(false);LevelClear_obj.SetActive(false);GameExplain_obj.SetActive(false);ModeHUD.SetActive(true);Map_obj.SetActive(true);
        Cat.ResetLeaderTrail();client.Team.Warp(CatSpawnPos);client.PetFollowers.Warp(client.Hero.transform.position);Camera.main.orthographicSize=45;
        Entering=true;client.ShowLoading(true);Sound_manager.instance?.PlaySfx(SfxType.Enter);entryFlow=StartCoroutine(Enter_Cor());
    }
    private IEnumerator Enter_Cor(){yield return new WaitForSeconds(2);client.ShowLoading(false);Sound_manager.instance?.BGM_Change_SpeedRun();Entering=false;Game_Start();yield return new WaitForSeconds(1);GameExplain_obj.SetActive(true);entryFlow=null;}
    public void Game_Start(){if(!Bound||client.Mode!=4||Exiting)return;ForestRuntimeAcceptance.IsGaming=true;StartNextLevel();}
    public void StartNextLevel()
    {
        if(!Playing)return;if(gameFlow!=null)StopCoroutine(gameFlow);killedCount=0;clearing=false;currentWaveHealth=WaveBaseHealth_return(Wave_Now);
        monster_game_slider.Wave_Reload(Wave_Now,Lv_Now);monster_game_slider.Value_Reload(0);var main=_slimeParticle.main;main.startColor=MonsterColor_return();gameFlow=StartCoroutine(Level_Coroutine());
    }
    private IEnumerator Level_Coroutine()
    {
        int quota=OriginalMonsterRules.Counts[Lv_Now],spawned=0;
        while(killedCount<quota)
        {
            if(!Playing)yield break;
            if(spawned<quota){if(invasionPending>0)invasionPending--;else spawned++;}
            else if(invasionPending>0)invasionPending--;
            else{yield return new WaitForSeconds(.1f);continue;}
            Monster_Spawn();yield return new WaitForSeconds(Spawned_Monster.Count<=2?.04f:OriginalMonsterRules.Intervals[Lv_Now]);
        }
        gameFlow=null;if(Playing)LevelClear();
    }
    public void Monster_Spawn()
    {
        if(!Playing||NonSpawned_Monster.Count==0)return;var monster=NonSpawned_Monster[0];var pos=EnemySpawn_Pos_return();bool big=UnityEngine.Random.Range(0f,1f)<=Lv_Now*.2f;
        var health=big?OriginalMonsterRules.Precision2(currentWaveHealth.Value*new DecimalAmount(3)):currentWaveHealth;
        monster.Spawn(health,pos,SkinSprite_return(big),big);NonSpawned_Monster.RemoveAt(0);Spawned_Monster.Add(monster);
    }
    public void Monster_Destroyed(Monster monster)
    {
        // Local idempotence closure for duplicate/late callbacks; native normal order retained.
        if(!Playing||monster==null||!Spawned_Monster.Remove(monster))return;
        NonSpawned_Monster.Add(monster);killedCount++;monster_game_slider.Value_Reload(Mathf.Clamp01(killedCount/(float)OriginalMonsterRules.Counts[Lv_Now]));
    }
    public void Monster_Invade(Monster monster)
    {
        if(!Playing||monster==null||!Spawned_Monster.Contains(monster))return;
        HP_Now--;HP_Disc.AngRadiansEnd=HP_Now/(float)HP_Max*360;
        if(HP_Now<1){Game_Fail();return;}
        Spawned_Monster.Remove(monster);NonSpawned_Monster.Add(monster);invasionPending++;
    }
    public void LevelClear()
    {
        if(!Playing||clearing||killedCount<OriginalMonsterRules.Counts[Lv_Now])return;clearing=true;
        // Native accumulation retains the base reward; auto bonus is paid per clear.
        int reward=client.PlusReward(4,30);PetCoin_Accum+=reward;Accum_PetCoin_txt.text=PetCoin_Accum.ToString();client.AwardPetCoin(reward*(AutoReward?2:1));
        Lv_Now++;if(Lv_Now>4){Wave_Now++;Lv_Now=0;}client.State.Wave_Now=Wave_Now;client.State.Lv_Now=Lv_Now;client.SaveNow();
        LevelClear_obj.SetActive(true);Sound_manager.instance?.PlaySfx(SfxType.Win);clearFlow=StartCoroutine(LevelClear_Then_Next());
    }
    private IEnumerator LevelClear_Then_Next(){yield return new WaitForSeconds(2);clearFlow=null;if(Playing){LevelClear_obj.SetActive(false);StartNextLevel();}}
    public void Game_Fail(){if(!Playing)return;EndRun();Sound_manager.instance?.PlaySfx(SfxType.Fail);}
    public void Game_GiveUp(){if(!Playing)return;EndRun();}
    private void EndRun(){ForestRuntimeAcceptance.IsGaming=false;StopAllGameCoroutines();foreach(var monster in Spawned_Monster)monster.Freeze();GameEnd_Panel_Reload();StartPanel.SetActive(true);GameEnd_UI.SetActive(true);client.SaveNow();}
    public void GameEnd_Panel_Reload(){Reward_txt.text=PetCoin_Accum.ToString();Bonus_txt.text=(PetCoin_Accum*2).ToString();bonusClaimed|=AutoReward;RefreshSettlementButtons(AutoReward);}
    public void StopAllGameCoroutines(){if(gameFlow!=null)StopCoroutine(gameFlow);if(clearFlow!=null)StopCoroutine(clearFlow);if(entryFlow!=null)StopCoroutine(entryFlow);gameFlow=clearFlow=entryFlow=null;Entering=false;}
    private void RecycleAll(){foreach(var monster in Spawned_Monster){monster.Freeze();monster.gameObject.SetActive(false);if(!NonSpawned_Monster.Contains(monster))NonSpawned_Monster.Add(monster);}Spawned_Monster.Clear();foreach(var monster in NonSpawned_Monster)monster.gameObject.SetActive(false);}
    public void Game_Exit()
    {
        if(!Bound||client.Mode!=4||Exiting)return;ForestRuntimeAcceptance.IsGaming=false;StopAllGameCoroutines();RecycleAll();
        Exiting=true;GameEnd_UI.SetActive(false);GameExplain_obj.SetActive(false);LevelClear_obj.SetActive(false);StartPanel.SetActive(false);ModeHUD.SetActive(false);Map_obj.SetActive(false);Ingame_Upgrade_UI_obj.SetActive(true);
        Camera.main.orthographicSize=40;client.ShowLoading(true);Sound_manager.instance?.BGM_Change_Main();exitFlow=StartCoroutine(Exit_Cor());
    }
    private IEnumerator Exit_Cor(){yield return new WaitForSeconds(1.5f);client.Restart();client.ShowLoading(true);yield return new WaitForSeconds(.2f);client.ShowLoading(false);Exiting=false;exitFlow=null;}
    public OriginalAmount WaveBaseHealth_Pure(int wave)
    {if(wave<0)throw new ArgumentOutOfRangeException(nameof(wave));var health=Health_Balance[Mathf.Min(wave,Health_Balance.Length-1)];for(int i=Health_Balance.Length;i<=wave;i++)health=OriginalMonsterRules.Precision2(health.Value*new DecimalAmount(3));return health;}
    public OriginalAmount WaveBaseHealth_return(int wave)
    {
        if(wave<Health_Balance.Length)return Health_Balance[wave];int last=Health_Balance.Length-1;
        if(cachedHealthWave<last||wave<cachedHealthWave){cachedHealthWave=last;cachedHealth=Health_Balance[last];}
        while(cachedHealthWave<wave){cachedHealth=OriginalMonsterRules.Precision2(cachedHealth.Value*new DecimalAmount(3));cachedHealthWave++;}return cachedHealth;
    }
    public void Balance_Reload(){for(int i=1;i<Health_Balance.Length;i++)Health_Balance[i]=OriginalMonsterRules.Precision2(Health_Balance[i-1].Value*new DecimalAmount(3));cachedHealthWave=-1;}
    public Vector3 EnemySpawn_Pos_return()=>OriginalMonsterRules.SpawnPoint(Camera.main.aspect,UnityEngine.Random.Range(0f,6.2831854820251465f),UnityEngine.Random.Range(-5f,5f));
    public Sprite SkinSprite_return(bool is_boss)=>Monster_sprites[Wave_Now%10*2+(is_boss?1:0)];
    public Color MonsterColor_return()=>Monster_Colors[Wave_Now%10];
    public void Bonus_AD_Show(){if(RecoveryRewardedAds.Current?.Request(()=>client!=null&&client.Mode==4&&GameEnd_UI.activeInHierarchy&&!bonusClaimed,Bonus_Get)!=true)Gun_manager.Feedback(false);}
    public void Bonus_Get(){if(RecoveryRewardedAds.Current?.IsCompleting!=true||client.Mode!=4||!GameEnd_UI.activeSelf||bonusClaimed)return;bonusClaimed=true;client.AwardPetCoin(PetCoin_Accum);Game_Exit();}
    private void RefreshSettlementButtons(bool automatic)
    {
        Bonus_Btn_obj.SetActive(!automatic);Skip_obj.SetActive(!automatic);NoAds_Btn_obj.SetActive(automatic);
        RecoveryRewardedAds.Button(Bonus_Btn_obj,!bonusClaimed);
        if(NoAds_Btn_obj.TryGetComponent<UnityEngine.UI.Button>(out var b))b.interactable=true;
    }
    public DecimalAmount Power_Monster_return()
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
            total+=OriginalMonsterSweepRules.Power(expected,cooldown,gun.type,gun.ShotgunPelletCount);
        }
        return OriginalRaidRules.Precision(total,5).Value;
    }
    public DecimalAmount SweepRequiredPower_return(int wave,int level)=>OriginalMonsterSweepRules.RequiredPower(WaveBaseHealth_Pure(wave).Value,level);
    public void SweepTarget_return(out int wave,out int level,out int count)=>OriginalMonsterSweepRules.Target(Power_Monster_return(),Wave_Now,Lv_Now,SweepRequiredPower_return,out wave,out level,out count);
    public bool is_SweepAble()=>Bound&&client.PlusActive(2)&&Power_Monster_return().CompareTo(SweepRequiredPower_return(Wave_Now,Lv_Now))>=0;
    public int SweepValue_return()=>!Bound?0:OriginalBossSweepRules.FillPercent(Power_Monster_return(),SweepRequiredPower_return(Wave_Now,Lv_Now));
    public void Game_Sweep()
    {
        // Local lifecycle guards protect against duplicate UI and stale simulated-ad callbacks.
        if(!Bound||client.Mode!=0||Entering||Exiting||sweepPending||!monster_start_ui.gameObject.activeInHierarchy||RecoveryRewardedAds.Current?.Busy==true||!is_SweepAble())return;
        SweepTarget_return(out int wave,out int level,out int count);if(count<1)return;
        int reward=checked(client.PlusReward(4,30)*count),twice=checked(reward*2);
        resultRevision++;sweepPending=true;bonusClaimed=AutoReward;PetCoin_Accum=reward;
        Wave_Now=client.State.Wave_Now=wave;Lv_Now=client.State.Lv_Now=level;
        client.AwardPetCoin(bonusClaimed?twice:reward);client.SaveNow();
        SweepReward_txt.text=reward.ToString();SweepBonus_txt.text=twice.ToString();
        SweepBonus_Btn_obj.SetActive(!bonusClaimed);SweepSkip_obj.SetActive(!bonusClaimed);SweepNoAds_Btn_obj.SetActive(bonusClaimed);
        RecoveryRewardedAds.Button(SweepBonus_Btn_obj,!bonusClaimed);
        if(SweepNoAds_Btn_obj.TryGetComponent<UnityEngine.UI.Button>(out var b))b.interactable=true;
        GameSweep_UI.SetActive(true);monster_start_ui.Reload();Sound_manager.instance?.PlaySfx(SfxType.Win);
    }
    private bool SweepRewardEligible(int revision)=>Bound&&resultRevision==revision&&sweepPending&&!bonusClaimed&&client.Mode==0&&GameSweep_UI.activeInHierarchy;
    public void SweepBonus_AD_Show()
    {
        int revision=resultRevision;
        if(RecoveryRewardedAds.Current?.Request(()=>SweepRewardEligible(revision),SweepBonus_Get)!=true)Gun_manager.Feedback(false);
    }
    public void SweepBonus_Get()
    {
        if(RecoveryRewardedAds.Current?.IsCompleting!=true||!SweepRewardEligible(resultRevision))return;
        bonusClaimed=true;client.AwardPetCoin(PetCoin_Accum);Sweep_Close();
    }
    public void Sweep_Close(){resultRevision++;sweepPending=false;if(GameSweep_UI!=null)GameSweep_UI.SetActive(false);}
    private void OnDestroy(){if(instance==this)instance=null;}
}
