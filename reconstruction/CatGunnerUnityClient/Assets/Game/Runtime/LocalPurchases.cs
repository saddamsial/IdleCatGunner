using System;
using System.Globalization;
using System.Collections.Generic;
namespace CatGunner.Runtime
{
 // Rewards/limits read from vc257 native Shop_manager. Payment completion and
 // the separate local ledger are preview adapters, never store receipts.
 [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "OriginalLocalPurchases")] public sealed class LocalPurchases
 {
  public readonly SaveData State; readonly GunInventory guns; readonly Missions missions;
  public Func<DateTime> Now;
  public static readonly string[] Packs={"remove_forced_ads","remove_all_ads","autoupgrade_pack","buff_pack","dia_pack","mine_pack"};
  public static readonly string[] Cores={"catgunner_core_100","catgunner_core_500","catgunner_core_1050","catgunner_core_3300","catgunner_core_daily_750","catgunner_core_weekly_1750","catgunner_core_weekly_6000"};
  static readonly int[] Diamonds={240,600,1500,3500,8000},CoreAmounts={100,500,1050,3300,750,1750,6000},StepGuns={23,28,33,39,44},StepDia={0,200,400,600,1000};
  public static int StepGun(int step)=>StepGuns[step];
  public static int StepDiamonds(int step)=>StepDia[step];
  public LocalPurchases(SaveData state,GunInventory inventory,Missions model,Func<DateTime> now){State=state;guns=inventory;missions=model;Now=now;state.SimulatedPurchases??=new List<SimulatedPurchase>();state.Dia_FirstBuy_Used=Fit(state.Dia_FirstBuy_Used,5);state.StepUp_Purchased=Fit(state.StepUp_Purchased,5);state.PlusPack_Purchase_Dates=Fit(state.PlusPack_Purchase_Dates,3);}
  static T[] Fit<T>(T[] a,int n){if(a?.Length==n)return a;var b=new T[n];if(a!=null)Array.Copy(a,b,Math.Min(a.Length,n));return b;}
  public bool Recorded(string id)=>State.SimulatedPurchases.Exists(p=>p!=null&&p.productId==id&&p.count>0);
  public bool PremiumVerified=>Recorded("vip_pass")||Recorded("catgunner_luxury_pass")||Recorded("catgunner_luxury_upgrade");
  public string Resolve(string id)=>id=="stargem_pig_dynamic"?"catgunner_stargem_pig_"+Math.Max(1,State.Pig_Lv):id;
  static int Suffix(string id,string prefix,int count)=>id.StartsWith(prefix,StringComparison.Ordinal)&&int.TryParse(id.Substring(prefix.Length),out int n)&&n>=0&&n<count?n:-1;
  static DateTime Date(string text)=>DateTime.TryParse(text,CultureInfo.InvariantCulture,DateTimeStyles.RoundtripKind,out var d)?d:DateTime.MinValue;
  public bool PlusActive(int i)=>i>=0&&i<3&&Recorded("catgunner_pluspack_"+i)&&Date(State.PlusPack_Purchase_Dates[i])!=DateTime.MinValue&&Now().ToUniversalTime()<Date(State.PlusPack_Purchase_Dates[i]).ToUniversalTime().AddDays(7);
  public TimeSpan PlusRemaining(int i)
  {
   if(!PlusActive(i))return TimeSpan.Zero;
   return Date(State.PlusPack_Purchase_Dates[i]).ToUniversalTime().AddDays(7)-Now().ToUniversalTime();
  }
  // vc257 getters/consumers: time does not alter SpeedRun or Monster.
  public static float PlusTimeLimit(int mode,float baseline,bool active)=>!active?baseline:mode==0||mode==3?baseline*2:mode==2?baseline*1.3f:mode==5?baseline+10:baseline;
  // Mine truncates AFTER integer score/10 and the original float multiplier.
  public static int PlusReward(int mode,int baseline,bool active)=>!active?baseline:mode==3||mode==4?checked(baseline*2):mode==2?(int)(baseline*1.5f):baseline;
  bool PackOwned(int i)=>i==0?State.Is_Remove_AD_forced:i==1?State.Is_Remove_AD_All:i==2?State.Is_AutoUpgrade_Pack:i==3?State.Is_Buff_Pack:i==4?State.Is_Dia_Pack:State.Is_Mine_Pack;
  public bool CanBuy(string request)
  {
   string id=Resolve(request);int i=Array.IndexOf(Packs,id);if(i>=0)return !PackOwned(i);
   i=Suffix(id,"dia_",5);if(i>=0)return true;
   if(id=="vip_pass")return !missions.SeasonClosed&&!State.Mission_is_Vip;
   if(id=="catgunner_luxury_pass")return !missions.SeasonClosed&&!State.Mission_is_Luxury;
   if(id=="catgunner_luxury_upgrade")return !missions.SeasonClosed&&State.Mission_is_Vip&&!State.Mission_is_Luxury;
   i=Array.IndexOf(Cores,id);if(i>=0)return i<4||Now()-Date(i==4?State.LastDailyCorePurchase_Date:i==5?State.LastWeeklyCorePurchase_Date:State.LastWeekly6000CorePurchase_Date)>=TimeSpan.FromHours(i==4?24:168);
   i=Suffix(id,"catgunner_dailygun_",3);if(i>=0)return guns.FirstEmpty>=0&&(State.DailyGun_Purchase_Counts?[i]??0)<DailyGun.Max_Counts[i];
   i=Suffix(id,"catgunner_stepup_",5);if(i>=0)return guns.FirstEmpty>=0&&StepUpOffer.Purchasable(State.StepUp_Purchased,i);
   i=Suffix(id,"catgunner_pluspack_",3);if(i>=0)return !PlusActive(i);
   if(id=="catgunner_raid_mission_ticket")return !State.RaidMission_Ticket;
   if(id=="catgunner_raid_helper")return State.Raid_Helper_Season_Index!=RaidRules.SeasonIndex(Now());
   if(id=="catgunner_raid_ticket")return !State.Raid_IAP_Enter_Used;
   i=Suffix(id,"catgunner_stargem_pig_",4);if(i>=1){var pig=new StarGemPig(State,Now);pig.SeasonCheck();return i==Math.Max(1,State.Pig_Lv)&&pig.Purchasable;}
   if(id=="catgunner_rebirth_single")return State.Stage_Value_Max>989&&State.Stage_Now>=2&&(RebirthProgression.IsDifferentDay(State,Now())||State.UpgradeRebirth_IAP_UseCount<1);
   return false;
  }
  public bool Apply(string request)
  {
   if(!CanBuy(request))return false;string id=Resolve(request);int i=Array.IndexOf(Packs,id);
   if(i>=0){switch(i){case 0:State.Is_Remove_AD_forced=true;break;case 1:State.Is_Remove_AD_All=true;break;case 2:State.Is_AutoUpgrade_Pack=true;Award(500);break;case 3:State.Is_Buff_Pack=true;Award(1000);break;case 4:State.Is_Dia_Pack=true;Award(16000);break;case 5:State.Is_Mine_Pack=true;Award(500);break;}}
   else if((i=Suffix(id,"dia_",5))>=0){Award(Diamonds[i]*(State.Dia_FirstBuy_Used[i]?1:2));State.Dia_FirstBuy_Used[i]=true;}
   else if(id=="vip_pass"){State.Mission_is_Vip=true;Award(500);}
   else if(id=="catgunner_luxury_pass"||id=="catgunner_luxury_upgrade"){State.Mission_is_Vip=State.Mission_is_Luxury=true;Award(1000);missions.AddExperience(300);}
   else if((i=Array.IndexOf(Cores,id))>=0){State.Adventure_Currency_Core=Fit(State.Adventure_Currency_Core,4);State.Adventure_Currency_Core[3]=checked(State.Adventure_Currency_Core[3]+CoreAmounts[i]);string date=Now().ToString("O");if(i==4)State.LastDailyCorePurchase_Date=date;if(i==5)State.LastWeeklyCorePurchase_Date=date;if(i==6)State.LastWeekly6000CorePurchase_Date=date;}
   else if((i=Suffix(id,"catgunner_dailygun_",3))>=0){int week=RaidRules.SeasonIndex(Now());if(!guns.AddRewardGun(DailyGun.Base_GunNums[i]+(week%5+5)%5))return false;State.PetCoin=checked(State.PetCoin+DailyGun.PetCoin_Values[i]);State.DailyGun_Purchase_Counts=Fit(State.DailyGun_Purchase_Counts,3);State.DailyGun_Purchase_Counts[i]++;}
   else if((i=Suffix(id,"catgunner_stepup_",5))>=0){if(!guns.AddRewardGun(StepGuns[i]))return false;Award(StepDia[i]);State.StepUp_Purchased[i]=true;}
   else if((i=Suffix(id,"catgunner_pluspack_",3))>=0)State.PlusPack_Purchase_Dates[i]=Now().ToUniversalTime().ToString("O");
   else if(id=="catgunner_raid_mission_ticket")State.RaidMission_Ticket=true;
   else if(id=="catgunner_raid_helper")State.Raid_Helper_Season_Index=RaidRules.SeasonIndex(Now());
   else if(id=="catgunner_raid_ticket")State.Raid_IAP_Enter_Used=true;
   else if((i=Suffix(id,"catgunner_stargem_pig_",4))>=1){new StarGemPig(State,Now).ApplyReward(i);}
   else if(id=="catgunner_rebirth_single"){RebirthProgression.DayCheck(State,Now());State.UpgradeRebirth_LastDate=RebirthProgression.TodayKey(Now());State.UpgradeRebirth_IAP_UseCount++;}
   var entry=State.SimulatedPurchases.Find(p=>p!=null&&p.productId==id);if(entry==null)State.SimulatedPurchases.Add(new SimulatedPurchase{productId=id,count=1});else entry.count=checked(entry.count+1);return true;
  }
  void Award(int n){if(n>0)DiamondReward.Apply(State,n);}
 }
}
