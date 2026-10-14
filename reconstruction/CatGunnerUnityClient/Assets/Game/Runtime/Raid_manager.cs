using System;
using System.Collections;
using System.Linq;
using CatGunner.Runtime;
using TMPro;
using UnityEngine;
public sealed class Raid_manager : MonoBehaviour
{
    public static Raid_manager instance;
    public int BossType_Num,Reward_Value,Free_Use_Count,Season_Index=-1,Season_TryCount,Season_BestLevel,GunSelect_See_SlotNum,Score_Now,Helper_Season_Index=-1;
    public CurrencyAmount[] Health_Balance;
    public Raid_Start_UI raidStart_ui;
    public Raid_GunSelect_Panel gunSelect_panel;
    public Raid_HelperSlot helperSlot;
    public GameObject GameEnd_UI,Ingame_Upgrade_UI_obj,Remove_ForceAds_ingame_obj,Map_obj,Helper_Popup_obj;
    public TextMeshProUGUI Reward_txt,Score_txt,HighScore_txt;
    public DateTime Entry_Charge_Date;
    public bool AD_Enter_Used,IAP_Enter_Used;
    public int[] Gun_List={-1,-1,-1},Gun_Index_List={-1,-1,-1},Best_Level_ByType=new int[7];
    public float GameTime_Now,GameTime_Max;
    public Raid_Ingame_UI ingame_ui;
    public Vector3 CatSpawnPos=new Vector3(-100,0,0);
    public Raid_Boss _boss;
    public GameObject StartPanel,ModeHUD;
    [NonSerialized] public Func<DateTime> Now=()=>DateTime.Now;
    private GameClient client;
    private Coroutine entryFlow,gameFlow,exitFlow;
    private bool resultAwarded;
    public bool Bound=>client!=null;
    public bool Entering {get;private set;}
    public bool Exiting {get;private set;}
    public bool Playing=>Bound&&client.Mode==5&&ForestRuntimeAcceptance.IsGaming;
    public int Free_Remain=>Mathf.Max(0,2-Free_Use_Count);
    public void Awake()=>instance=this;
    public void Bind(GameClient owner)
    {
        var s=owner.State;RaidRules.ValidateState(s);client=owner;
        Season_Index=s.Raid_Season_Index;Season_TryCount=s.Raid_Season_TryCount;Season_BestLevel=s.Raid_Season_BestLevel;Helper_Season_Index=s.Raid_Helper_Season_Index;
        Best_Level_ByType=RaidRules.EnsureBestArray(s.Raid_Best_Level_ByType);Ticket_Reload();Season_Check();Balance_Reload();
    }
    public void Ticket_Reload()
    {
        if(!Bound)return;RaidRules.ReloadLocalTickets(client.State,Now());var s=client.State;
        Free_Use_Count=s.Raid_Free_Use_Count;AD_Enter_Used=s.Raid_AD_Enter_Used;IAP_Enter_Used=s.Raid_IAP_Enter_Used;
        DateTime.TryParse(s.Raid_Entry_Charge_Date,out Entry_Charge_Date);
    }
    public void Season_Check()
    {int season=RaidRules.SeasonIndex(Now());if(Season_Index!=season){Season_Index=season;Season_TryCount=Season_BestLevel=0;}BossType_Num=RaidRules.BossIndex(Now());SyncProgress();Helper_UI_Reload();}
    public bool Is_Helper_Active=>RaidHelperRules.IsActive(Helper_Season_Index,Now())&&(!Bound||client.OfflinePurchaseSimulation);
    public int Helper_GunNum_return()=>Gun_manager.instance==null?-1:RaidHelperRules.GunNumber(Gun_manager.instance.Gun_list,Buff_GunType_Now());
    public int Helper_StarLv_return()=>StarUpgrade_manager.instance==null?0:RaidHelperRules.MinimumStars(Enumerable.Range(0,Gun_List.Length).Select(i=>StarUpgrade_manager.instance.Lv_return(i)).ToArray());
    public void Helper_UI_Reload(){helperSlot?.Reload();Helper_Popup_obj?.GetComponent<Raid_Helper_Purchase_Popup>()?.Reload();}
    public void Helper_Popup_Open(){if(Is_Helper_Active)return;Helper_Popup_obj?.SetActive(true);}
    public void Helper_Purchase(){if(!Bound||Is_Helper_Active){Helper_UI_Reload();return;}client.LocalStore?.Request("catgunner_raid_helper");}
    // User-authorized local store callback; only an already granted local entitlement is consumed.
    public void Helper_Apply()
    {
        if(!Bound||!client.OfflinePurchaseSimulation||!RaidHelperRules.IsActive(client.State.Raid_Helper_Season_Index,Now()))return;
        Helper_Season_Index=client.State.Raid_Helper_Season_Index;client.SaveNow();Helper_Popup_obj?.SetActive(false);Helper_UI_Reload();
        if(client.Mode==5)client.ApplyBalance();
    }
    int helperMask=int.MinValue;
    // Local entitlement observer runs on the always-active recovery service, not the closed raid UI.
    public void RefreshHelperEntitlements()
    {
        if(!Bound||!client.ReadyForPlay)return;
        bool active=Is_Helper_Active;int mask=active?Helper_Season_Index:int.MinValue+1;
        // A purchase can activate combat before the next observer tick. Compare the consumer too.
        bool shouldSpawn=active&&client.Mode==5&&Helper_GunNum_return()>=0;
        if(mask==helperMask&&client.Team.Helper_Active==shouldSpawn)return;helperMask=mask;
        Helper_UI_Reload();if(client.Mode==5)client.ApplyBalance();else client.Team.Helper_Off();
    }
    public CurrencyAmount Boss_Health_return(int level)=>RaidRules.BossHealth(level);
    public void Balance_Reload(){for(int i=0;i<Health_Balance.Length;i++)Health_Balance[i]=Boss_Health_return(i);}
    public int Index_Count=>3+client.State.Owned_Gun_list.Length+(client.State.Safe_Gun_list?.Length??0);
    public int GunNum_By_Index(int index)
    {
        if(index<0)return -1;var s=client.State;if(index<3)return s.Selected_items[index];index-=3;
        if(index<s.Owned_Gun_list.Length)return s.Owned_Gun_list[index];index-=s.Owned_Gun_list.Length;
        return s.Safe_Gun_list!=null&&index<s.Safe_Gun_list.Length?s.Safe_Gun_list[index]:-1;
    }
    public GunType Buff_GunType_Now()=>Gun_manager.instance.Gun_list[30+BossType_Num].type;
    public bool Is_Weak_Gun(int gun)=>gun>=0&&Gun_manager.instance.Gun_list[gun].type==Buff_GunType_Now();
    public CurrencyAmount Raid_Damage_return(int gun)=>CurrencyAmount.FromValue(Gun_manager.instance.Gun_list[gun].Damage.Value*new DecimalAmount(Is_Weak_Gun(gun)?10:1));
    public int[] Sorted_Index_List()
    {
        var indices=Enumerable.Range(0,Index_Count).Where(i=>GunNum_By_Index(i)!=-1).ToArray();
        Array.Sort(indices,(a,b)=>{int cmp=Raid_Damage_return(GunNum_By_Index(b)).Value.CompareTo(Raid_Damage_return(GunNum_By_Index(a)).Value);return cmp!=0?cmp:a.CompareTo(b);});return indices;
    }
    public bool Is_Index_Used_By_AnySlot(int index)=>index!=-1&&Gun_Index_List.Contains(index);
    public int GetEquippedCount()=>Gun_List.Count(g=>g!=-1);
    public void Gun_Select_Default(int slot){int gun=GunNum_By_Index(slot);if(gun==-1)return;Gun_List[slot]=gun;Gun_Index_List[slot]=slot;}
    public void Gun_Auto_Select()
    {if(!Bound||client.Mode!=0)return;var sorted=Sorted_Index_List();for(int i=0;i<3;i++){Gun_Index_List[i]=i<sorted.Length?sorted[i]:-1;Gun_List[i]=GunNum_By_Index(Gun_Index_List[i]);}raidStart_ui.Reload_Slots();}
    public void Gun_SelectPanel_Open(int slot){if(!Bound||client.Mode!=0||slot<0||slot>=3)return;GunSelect_See_SlotNum=slot;gunSelect_panel.Panel_Open();}
    public void Gun_Select(int index)
    {if(!Bound||client.Mode!=0)return;int gun=GunNum_By_Index(index);if(gun==-1||Is_Index_Used_By_AnySlot(index))return;Gun_List[GunSelect_See_SlotNum]=gun;Gun_Index_List[GunSelect_See_SlotNum]=index;gunSelect_panel.Close();raidStart_ui.Reload_Slots();}
    public void Gun_UnSelect(int slot)
    {if(!Bound||client.Mode!=0||slot<0||slot>=3||Gun_List[slot]==-1||GetEquippedCount()<2)return;Gun_List[slot]=Gun_Index_List[slot]=-1;raidStart_ui.Reload_Slots();}
    public void Panel_Open(){if(!Bound||client.Mode!=0)return;Ticket_Reload();Season_Check();StartPanel.SetActive(true);raidStart_ui.gameObject.SetActive(true);Gun_Auto_Select();raidStart_ui.Reload();client.SaveNow();}
    public void Panel_Close(){if(Bound&&client.Mode==0){gunSelect_panel.Close();StartPanel.SetActive(false);}}
    public void Game_Enter_Normal()=>EnterLocal(0);
    private void EnterLocal(int entry)
    {
        if(!Bound||client.Mode!=0||Entering||Exiting)return;Ticket_Reload();
        if((entry==0&&Free_Use_Count>=2)||(entry==2&&AD_Enter_Used)||(entry==3&&!IAP_Enter_Used)){Gun_manager.Feedback(false);raidStart_ui.Reload_Entry();return;}
        // Refresh stale positions before entering. No weapons are granted or moved.
        for(int i=0;i<3;i++)Gun_List[i]=GunNum_By_Index(Gun_Index_List[i]);
        if(GetEquippedCount()==0)for(int i=0;i<3;i++)Gun_Select_Default(i);
        if(GetEquippedCount()==0)return;
        if(entry==0){Free_Use_Count++;client.State.Raid_Free_Use_Count=Free_Use_Count;}else if(entry==2){AD_Enter_Used=true;client.State.Raid_AD_Enter_Used=true;}Season_Check();Score_Now=Reward_Value=0;resultAwarded=false;
        client.SuspendForestForMode(5);Entering=true;StartPanel.SetActive(false);raidStart_ui.gameObject.SetActive(false);gunSelect_panel.Close();GameEnd_UI.SetActive(false);
        ModeHUD.SetActive(true);Map_obj.SetActive(true);_boss.gameObject.SetActive(false);Ingame_Upgrade_UI_obj.SetActive(false);
        Cat.ResetLeaderTrail();client.Team.Warp(CatSpawnPos);client.PetFollowers.Warp(client.Hero.transform.position);client.ShowLoading(true);
        client.SaveNow();Sound_manager.instance?.PlaySfx(SfxType.Enter);entryFlow=StartCoroutine(Enter_Cor());
    }
    private IEnumerator Enter_Cor(){yield return new WaitForSeconds(2);entryFlow=null;Entering=false;client.ShowLoading(false);Sound_manager.instance?.BGM_Change_SpeedRun();Game_Start();}
    public void Game_Start()
    {if(!Bound||client.Mode!=5||Exiting||Playing)return;ForestRuntimeAcceptance.IsGaming=true;Season_TryCount++;SyncProgress();client.RaidMissions?.Refresh_Clear();client.StarGemPig?.OnRaidEnter();Boss_Spawn();GameTime_Now=GameTime_Max=client.PlusTimeLimit(5,60);ingame_ui.Time_Reload(GameTime_Now,GameTime_Max);gameFlow=StartCoroutine(Game_Cor());client.SaveNow();}
    private IEnumerator Game_Cor(){while(Playing&&GameTime_Now>0){GameTime_Now-=Time.deltaTime;ingame_ui.Time_Reload(GameTime_Now,GameTime_Max);yield return null;}gameFlow=null;if(Playing&&GameTime_Now<=0)Game_End();}
    public void Boss_Spawn(){if(Playing){_boss.Spawn(Boss_Health_return(Score_Now),BossType_Num);Boss_UI_Reload();}}
    public void Boss_Reload(){if(Playing){_boss.Reload(Boss_Health_return(Score_Now));Boss_UI_Reload();}}
    public void Boss_UI_Reload(){ingame_ui.Level_Reload(Score_Now+1);ingame_ui.Health_Reload(_boss.enemy.Health_Now,_boss.enemy.Health_Max);ingame_ui.HighScore_Reload(Score_Now,Season_BestLevel);}
    public void Boss_Destroyed(){if(!Playing)return;Score_Now++;client.StarGemPig?.OnBossBarCleared();Boss_Reload();}
    public void Game_End()
    {
        if(!Playing)return;ForestRuntimeAcceptance.IsGaming=false;Season_BestLevel=Math.Max(Season_BestLevel,Score_Now);
        int type=(int)Buff_GunType_Now();Best_Level_ByType[type]=Math.Max(Best_Level_ByType[type],Score_Now);SyncProgress();client.RaidMissions?.Refresh_Clear();
        StartPanel.SetActive(true);GameEnd_UI.SetActive(true);Reward_Panel_Reload();client.SaveNow();Sound_manager.instance?.PlaySfx(SfxType.Fail);
    }
    public void Reward_Panel_Reload()
    {
        Reward_Value=RaidRules.StarGemReward(Score_Now);Reward_txt.text=Reward_Value.ToString();Score_txt.text=string.Format("Lv.{0}",Score_Now);HighScore_txt.text=string.Format("Lv.{0}",Season_BestLevel);
        // Native reload grants the reward. Local once-only guard prevents repeated
        // presentation refreshes from duplicating an earned reward.
        if(!resultAwarded){resultAwarded=true;client.State.StarGem=checked(client.State.StarGem+Reward_Value);client.StarUpgrades?.RefreshWallet();}
    }
    private void SyncProgress(){if(!Bound)return;client.State.Raid_Season_Index=Season_Index;client.State.Raid_Season_TryCount=Season_TryCount;client.State.Raid_Season_BestLevel=Season_BestLevel;client.State.Raid_Best_Level_ByType=(int[])Best_Level_ByType.Clone();}
    public void Game_Exit()
    {
        if(!Bound||client.Mode!=5||Exiting)return;ForestRuntimeAcceptance.IsGaming=false;StopAllCoroutines();entryFlow=gameFlow=null;Entering=false;Exiting=true;
        Map_obj.SetActive(false);GameEnd_UI.SetActive(false);StartPanel.SetActive(false);ModeHUD.SetActive(false);gunSelect_panel.Close();Ingame_Upgrade_UI_obj.SetActive(true);
        client.ShowLoading(true);Sound_manager.instance?.BGM_Change_Main();exitFlow=StartCoroutine(Exit_Cor());
    }
    private IEnumerator Exit_Cor(){yield return new WaitForSeconds(1.5f);client.Restart();client.ShowLoading(true);yield return new WaitForSeconds(.2f);client.ShowLoading(false);Exiting=false;exitFlow=null;}
    public void Game_Enter_AD(){Ticket_Reload();if(RewardedAds.Current?.Request(()=>Bound&&client.Mode==0&&!Entering&&!Exiting&&!AD_Enter_Used,AD_Enter_RewardGet)!=true)Gun_manager.Feedback(false);}
    public void AD_Enter_RewardGet(){if(RewardedAds.Current?.IsCompleting==true&&!AD_Enter_Used)EnterLocal(2);}
    public void Game_Enter_IAP()=>client?.LocalStore?.Request("catgunner_raid_ticket");
    public void EnterPurchasedTicket()=>EnterLocal(3);
    private void OnDestroy(){if(instance==this)instance=null;}
}
