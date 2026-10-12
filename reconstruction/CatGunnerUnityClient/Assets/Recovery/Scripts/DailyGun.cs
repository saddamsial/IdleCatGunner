using System;
using System.Globalization;
using CatGunner.Recovery;
using UnityEngine;
// Original weekly catalog/limits. Local fulfillment is explicitly routed through RecoveryLocalStore.
public sealed class DailyGun : MonoBehaviour
{
 public static DailyGun instance;
 public static readonly int[] Max_Counts={2,2,1},PetCoin_Values={300,700,1500},Base_GunNums={20,30,35};
 public int[] Purchase_Counts=new int[3];
 public string Week_Key;
 public GameObject dailyGun_popup;
 private RecoveryForestClient client;
 public bool Bound=>client!=null;
 private void Awake()=>instance=this;
 public void Bind(RecoveryForestClient owner){client=owner;Purchase_Counts=new int[3];if(owner.State.DailyGun_Purchase_Counts!=null)Array.Copy(owner.State.DailyGun_Purchase_Counts,Purchase_Counts,Math.Min(3,owner.State.DailyGun_Purchase_Counts.Length));Week_Key=owner.State.DailyGun_Week_Key??"";Week_Refresh();}
 public DateTime WeekStart_return()=>OriginalRaidRules.WeekStart(client.RaidMode.Now());
 public TimeSpan Remain_return()=>WeekStart_return().AddDays(7)-client.RaidMode.Now();
 public string Remain_str_return(){var t=Remain_return();return t.Days>0?$"{t.Days}d {t.Hours}:{t.Minutes:00}:{t.Seconds:00}":$"{(int)t.TotalHours}:{t.Minutes:00}:{t.Seconds:00}";}
 public int WeekIndex_return()=>OriginalRaidRules.SeasonIndex(client.RaidMode.Now());
 public int Week_Offset_return()=>(WeekIndex_return()%5+5)%5;
 public int GunNum_return(int i)=>i>=0&&i<3?Base_GunNums[i]+Week_Offset_return():-1;
 public void Week_Refresh(){if(!Bound)return;string key=WeekStart_return().ToString("yyyyMMdd",CultureInfo.InvariantCulture);if(Week_Key==key)return;Week_Key=key;Array.Clear(Purchase_Counts,0,3);Capture();client.SaveNow();}
 public void Capture(){if(!Bound)return;client.State.DailyGun_Week_Key=Week_Key;client.State.DailyGun_Purchase_Counts=(int[])Purchase_Counts.Clone();}
 public int Remain_Count_return(int i){Week_Refresh();return i>=0&&i<3?Math.Max(0,Max_Counts[i]-Purchase_Counts[i]):0;}
 public bool Is_Purchasable(int i)=>Remain_Count_return(i)>0;
 private void OnDestroy(){if(instance==this)instance=null;}
}
