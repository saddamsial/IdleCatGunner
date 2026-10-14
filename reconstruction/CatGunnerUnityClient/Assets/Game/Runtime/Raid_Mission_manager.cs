using System;
using System.Linq;
using CatGunner.Runtime;
using UnityEngine;
public enum Raid_Mission_Type { TryCount=0,BestLevel=1 }
// Exact native catalog and state transitions with the existing independent save/clock adapter.
public sealed class Raid_Mission_manager : MonoBehaviour
{
 [Serializable] public sealed class Raid_Mission_Info {public Raid_Mission_Type type;public int Value,Reward;}
 public static Raid_Mission_manager instance;
 public const int Mission_Count=8;
 public Raid_Mission_Info[] Mission_list;
 public int Season_Index=-1;
 public bool[] Mission_Clear,Mission_Reward_Get,Mission_Reward_ReGet;
 public bool Ticket_Purchased;
 public Raid_Mission_UI mission_ui;
 public GameObject Ticket_Popup_obj;
 public static event Action OnChanged;
 private GameClient client;
 private bool refreshing;
 public bool Bound=>client!=null;
 private void Awake()=>instance=this;
 public void Bind(GameClient owner){client=owner;Balance_Reload();LoadFromSaveData(owner.State);}
 public void Balance_Reload(){int[] types={0,0,0,1,1,1,1,1},values={1,4,7,1,5,10,20,30},rewards={300,500,800,200,300,400,500,600};Mission_list=Enumerable.Range(0,8).Select(i=>new Raid_Mission_Info{type=(Raid_Mission_Type)types[i],Value=values[i],Reward=rewards[i]}).ToArray();EnsureArrays();}
 private static bool[] Fit(bool[] source){var result=new bool[8];if(source!=null)Array.Copy(source,result,Math.Min(source.Length,8));return result;}
 public void EnsureArrays(){if(Mission_Clear==null||Mission_Clear.Length!=8)Mission_Clear=Fit(Mission_Clear);if(Mission_Reward_Get==null||Mission_Reward_Get.Length!=8)Mission_Reward_Get=Fit(Mission_Reward_Get);if(Mission_Reward_ReGet==null||Mission_Reward_ReGet.Length!=8)Mission_Reward_ReGet=Fit(Mission_Reward_ReGet);}
 public void LoadFromSaveData(SaveData state){Season_Index=state.RaidMission_Season_Index;Mission_Clear=Fit(state.RaidMission_Clear);Mission_Reward_Get=Fit(state.RaidMission_Reward_Get);Mission_Reward_ReGet=Fit(state.RaidMission_Reward_ReGet);Ticket_Purchased=state.RaidMission_Ticket;Refresh_Clear();Capture();OnChanged?.Invoke();}
 public void Capture(){if(!Bound)return;var s=client.State;s.RaidMission_Season_Index=Season_Index;s.RaidMission_Clear=(bool[])Mission_Clear.Clone();s.RaidMission_Reward_Get=(bool[])Mission_Reward_Get.Clone();s.RaidMission_Reward_ReGet=(bool[])Mission_Reward_ReGet.Clone();s.RaidMission_Ticket=Ticket_Purchased;}
 private bool CheckSeason(){if(!Bound)return false;int now=RaidRules.SeasonIndex(client.RaidMode.Now());if(Season_Index==now)return false;Season_Index=now;EnsureArrays();Array.Clear(Mission_Clear,0,8);Array.Clear(Mission_Reward_Get,0,8);Array.Clear(Mission_Reward_ReGet,0,8);Ticket_Purchased=false;return true;}
 public void Season_Check(){if(CheckSeason()){Capture();OnChanged?.Invoke();}}
 public int Current_Value(Raid_Mission_Type type){if(!Bound)return 0;client.RaidMode.Season_Check();return type==Raid_Mission_Type.TryCount?client.RaidMode.Season_TryCount:client.RaidMode.Season_BestLevel;}
 public void Refresh_Clear(){if(!Bound||refreshing)return;refreshing=true;bool changed=false;try{changed=CheckSeason();for(int i=0;i<8;i++)if(!Mission_Clear[i]&&Current_Value(Mission_list[i].type)>=Mission_list[i].Value){Mission_Clear[i]=true;changed=true;}Capture();if(changed)OnChanged?.Invoke();}finally{refreshing=false;}}
 public Raid_Mission_Info Info_return(int i)=>i>=0&&i<8?Mission_list[i]:null;
 public int Reward_return(int i)=>Info_return(i)?.Reward??0;
 public int Reward_Total=>Mission_list.Sum(m=>m.Reward);
 public bool Ticket_Active_Now {get{Season_Check();return Ticket_Purchased;}}
 public bool Is_Ticket_Purchased=>Ticket_Purchased;
 public int Clear_Count {get{Refresh_Clear();return Mission_Clear.Count(x=>x);}}
 public int ReGet_Count=>Mission_Reward_ReGet.Count(x=>x);
 public int ReClaimable_Reward {get{Refresh_Clear();return Enumerable.Range(0,8).Where(i=>Mission_Clear[i]&&!Mission_Reward_ReGet[i]).Sum(Reward_return);}}
 public TimeSpan Season_Remain=>Bound?RaidRules.WeekStart(client.RaidMode.Now()).AddDays(7)-client.RaidMode.Now():TimeSpan.Zero;
 public int State_return(int i){if(i<0||i>=8)return 0;Refresh_Clear();return !Mission_Clear[i]?0:!Mission_Reward_Get[i]?1:!Mission_Reward_ReGet[i]?2:3;}
 public bool Is_Clear(int i){Refresh_Clear();return i>=0&&i<8&&Mission_Clear[i];}
 public bool Has_Claimable {get{Refresh_Clear();return Enumerable.Range(0,8).Any(i=>State_return(i)==1||(State_return(i)==2&&Ticket_Purchased));}}
 public void Progress_return(int i,out int current,out int max){current=0;max=1;if(!Bound||i<0||i>=8)return;Season_Check();max=Math.Max(1,Mission_list[i].Value);current=Mission_Clear[i]?max:Mathf.Clamp(Current_Value(Mission_list[i].type),0,max);}
 public string Explain_return(int i){var info=Info_return(i);return info==null?"":string.Format(info.type==Raid_Mission_Type.TryCount?"Challenge the Raid {0} times!":"Reach Lv.{0} in the Raid!",info.Value);}
 public bool Reward_Get(int i){if(!Bound||State_return(i)!=1){Gun_manager.Feedback(false);return false;}Mission_Reward_Get[i]=true;Award(i);return true;}
 public bool Reward_ReGet(int i){if(!Bound||State_return(i)!=2){Gun_manager.Feedback(false);return false;}if(!Ticket_Purchased){Ticket_Popup_Open();return false;}Mission_Reward_ReGet[i]=true;Award(i);return true;}
 private void Award(int i){client.State.StarGem=checked(client.State.StarGem+Reward_return(i));Capture();client.StarUpgrades?.RefreshWallet();client.SaveNow();Sound_manager.instance?.PlaySfx((SfxType)7);OnChanged?.Invoke();}
 public int Reward_GetAll(){int count=0;for(int i=0;i<8;i++){int state=State_return(i);if(state==1&&Reward_Get(i)||state==2&&Ticket_Purchased&&Reward_ReGet(i))count++;}return count;}
 public void Open_Popup(){Refresh_Clear();mission_ui.Open();}
 public void Close_Popup()=>mission_ui.Close();
 public void Ticket_Popup_Open(){if(Ticket_Popup_obj!=null)Ticket_Popup_obj.SetActive(true);}
 public void Ticket_Popup_Close(){if(Ticket_Popup_obj!=null)Ticket_Popup_obj.SetActive(false);}
 // User-authorized local ticket preview; no store receipt or real purchase.
 public void Ticket_Purchase(string place){client?.LocalStore?.Request("catgunner_raid_mission_ticket");}
 private void OnDestroy(){if(instance==this)instance=null;}
}
