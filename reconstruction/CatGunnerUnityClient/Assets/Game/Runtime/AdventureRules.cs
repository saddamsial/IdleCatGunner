using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using UnityEngine;
namespace CatGunner.Runtime
{
 [Serializable] [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "OriginalAdventureCatalogue")] public sealed class AdventureCatalogue
 {
  public int[] DurationHours,UnlockLevels,PetSlotUnlockLevels,ExpBalance;
  public int CorePerHour,ExpPerHour;public float PetDegreeFactor;
  public static AdventureCatalogue Load()=>JsonUtility.FromJson<AdventureCatalogue>(Resources.Load<TextAsset>("AdventureCatalogue").text);
 }
 [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "OriginalAdventureRules")] public static class AdventureRules
 {
  public const int MaxLevel=15,TicketMax=20;public static readonly TimeSpan TicketInterval=TimeSpan.FromHours(4);
  public static int Group(Map_Type type,int index)=>checked((int)type*100+index);
  public static bool OpenDay(Map_Type type,DayOfWeek day)=>type switch {Map_Type.Forest=>day==DayOfWeek.Sunday||day==DayOfWeek.Monday||day==DayOfWeek.Thursday,Map_Type.Desert=>day==DayOfWeek.Sunday||day==DayOfWeek.Tuesday||day==DayOfWeek.Friday,Map_Type.Tundra=>day==DayOfWeek.Sunday||day==DayOfWeek.Wednesday||day==DayOfWeek.Saturday,_=>false};
  public static DateTime ParseDate(string date)=>DateTime.Parse(date,CultureInfo.InvariantCulture,DateTimeStyles.RoundtripKind);
  public static bool ValidGroup(int group)=>group>=0&&group/100<3&&group%100<5;
  public static void ValidateState(SaveData s)
  {
   if(s.Adventure_Lv<0||s.Adventure_Lv>15||s.Adventure_Exp<0||s.Adventure_Ticket_Now<0||s.Adventure_Ticket_Now>20)throw new InvalidOperationException("Invalid Adventure progression; save preserved");
   bool legacy=s.Adventure_Maps==null||s.Adventure_Maps.Length==0;
   if(!legacy&&(s.Adventure_Maps.Length!=3||s.Adventure_Maps.Any(g=>g==null||g.maps==null||g.maps.Length!=5||g.maps.Any(m=>m==null))))throw new InvalidOperationException("Invalid Adventure map schema; save preserved");
   foreach(var locks in new[]{s.Owned_Pet_LockGroup,s.Selected_LockGroup})if(locks!=null&&locks.Any(x=>x< -1||(x>=0&&!ValidGroup(x))))throw new InvalidOperationException("Invalid dispatch lock group; save preserved");
   if(s.Owned_Pet_LockGroup!=null&&s.Owned_Pet_LockGroup.Length!=0&&s.Owned_Pet_LockGroup.Length!=16||s.Selected_LockGroup!=null&&s.Selected_LockGroup.Length!=0&&s.Selected_LockGroup.Length!=3)throw new InvalidOperationException("Invalid dispatch lock array; save preserved");
   if(!string.IsNullOrEmpty(s.Adventure_LastTicketCharge_Date))ParseDate(s.Adventure_LastTicketCharge_Date);
   if(!legacy)foreach(var m in s.Adventure_Maps.SelectMany(g=>g.maps))
   {
    if(m.Dispatched_Pet_Slots!=null&&m.Dispatched_Pet_Slots.Length>0)throw new NotSupportedException("Legacy Dispatched_Pet_Slots encoding unresolved; save preserved");
    if(m.is_Enter&&(string.IsNullOrEmpty(m.Enter_dateTime)||ParseDate(m.Enter_dateTime)==DateTime.MinValue))throw new InvalidOperationException("Dispatch start date missing; save preserved");
   }
   foreach(var row in new[]{(s.Owned_Pet_list,s.Owned_Pet_LockGroup),(s.Pet_Selected_items,s.Selected_LockGroup)})
   {
    if(row.Item2==null)continue;
    for(int i=0;i<row.Item2.Length;i++)if(row.Item2[i]>=0)
    {
     int group=row.Item2[i];if(legacy||!s.Adventure_Maps[group/100].maps[group%100].is_Enter||row.Item1==null||i>=row.Item1.Length||row.Item1[i]<0)throw new InvalidOperationException("Orphan dispatch pet lock; save preserved");
    }
   }
   if(legacy)
   {
    if(s.Adventure_Lv!=0||s.Adventure_Exp!=0||s.Adventure_Ticket_Now!=0||!string.IsNullOrEmpty(s.Adventure_LastTicketCharge_Date))throw new InvalidOperationException("Missing maps for nonneutral Adventure state; save preserved");
    s.Adventure_Maps=Enumerable.Range(0,3).Select(_=>new AdventureMapTypeSave{maps=Enumerable.Range(0,5).Select(i=>new AdventureMapSave()).ToArray()}).ToArray();s.Adventure_Ticket_Now=20;
   }
  }
 }
 [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "OriginalAdventureProgression")] public sealed class AdventureProgression
 {
  public SaveData State{get;}public AdventureCatalogue Catalogue{get;}public Func<DateTime> Now=()=>DateTime.Now;
  public event Action Changed;public event Action<Map_Type,int,int,int,int> Rewarded;
  public AdventureProgression(SaveData s,AdventureCatalogue catalogue=null,Func<DateTime> now=null)
  {
   AdventureRules.ValidateState(s);RelicRules.ValidateState(s);State=s;Catalogue=catalogue??AdventureCatalogue.Load();if(now!=null)Now=now;
   if(string.IsNullOrEmpty(s.Adventure_LastTicketCharge_Date))s.Adventure_LastTicketCharge_Date=Now().ToString("O",CultureInfo.InvariantCulture);
   if(s.Owned_Pet_list==null||s.Owned_Pet_list.Length!=16||s.Pet_Selected_items==null||s.Pet_Selected_items.Length!=3||s.Owned_Pet_LockGroup==null||s.Owned_Pet_LockGroup.Length!=16||s.Selected_LockGroup==null||s.Selected_LockGroup.Length!=3)throw new InvalidOperationException("Initialize ordinary pet inventory before dispatch");
  }
  public AdventureMapSave Map(Map_Type t,int i){if((int)t<0||(int)t>=3||i<0||i>=5)throw new ArgumentOutOfRangeException();return State.Adventure_Maps[(int)t].maps[i];}
  public bool Unlocked(int i)=>i>=0&&i<5&&State.Adventure_Lv>=Catalogue.UnlockLevels[i];
  public int OpenSlots=>Catalogue.PetSlotUnlockLevels.Count(x=>State.Adventure_Lv>=x);
  public int Grade(Dispatch_Pet p)=>p.Source==Pet_Source.Owned?(p.Index>=0&&p.Index<16?State.Owned_Pet_list[p.Index]:-1):(p.Source==Pet_Source.Selected&&p.Index>=0&&p.Index<3?State.Pet_Selected_items[p.Index]:-1);
  public bool CanDispatch(Dispatch_Pet p)=>Grade(p)>=0&&(p.Source==Pet_Source.Owned?State.Owned_Pet_LockGroup[p.Index]:State.Selected_LockGroup[p.Index])<0;
  public List<Dispatch_Pet> Available()=>Enumerable.Range(0,3).Select(Dispatch_Pet.Selected).Concat(Enumerable.Range(0,16).Select(Dispatch_Pet.Owned)).Where(CanDispatch).ToList();
  public List<Dispatch_Pet> Best(){var pets=Available();pets.Sort((a,b)=>Grade(b).CompareTo(Grade(a)));return pets.Take(OpenSlots).ToList();}
  public List<int> Grades(Map_Type t,int i)
  {
   int g=AdventureRules.Group(t,i);return State.Owned_Pet_list.Where((p,n)=>p>=0&&State.Owned_Pet_LockGroup[n]==g).Concat(State.Pet_Selected_items.Where((p,n)=>p>=0&&State.Selected_LockGroup[n]==g)).ToList();
  }
  public int CoreReward(IEnumerable<int> grades,int index){float sum=0;foreach(int grade in grades)sum=sum+(grade*Catalogue.PetDegreeFactor+1f);return checked((int)(sum*Catalogue.CorePerHour*Catalogue.DurationHours[index]));}
  public int ExpReward(int count,int index)=>checked(count*Catalogue.ExpPerHour*Catalogue.DurationHours[index]);
  public TimeSpan Remaining(Map_Type t,int i)=>AdventureRules.ParseDate(Map(t,i).Enter_dateTime).AddHours(Catalogue.DurationHours[i])-Now();
  public Adventure_Map_Status Status(Map_Type t,int i)=>!Unlocked(i)?Adventure_Map_Status.Lock:!Map(t,i).is_Enter?Adventure_Map_Status.EnterAble:Remaining(t,i)>TimeSpan.Zero?Adventure_Map_Status.Entered:Adventure_Map_Status.Finish;
  public bool HasFinish(Map_Type t)=>Enumerable.Range(0,5).Any(i=>Map(t,i).is_Enter&&Remaining(t,i)<=TimeSpan.Zero);
  public bool RefreshTickets()
  {
   if(State.Adventure_Ticket_Now>=20)return false;var now=Now();
   if(string.IsNullOrEmpty(State.Adventure_LastTicketCharge_Date)||AdventureRules.ParseDate(State.Adventure_LastTicketCharge_Date)==DateTime.MinValue){State.Adventure_LastTicketCharge_Date=now.ToString("O",CultureInfo.InvariantCulture);return true;}
   var last=AdventureRules.ParseDate(State.Adventure_LastTicketCharge_Date);long count=(now-last).Ticks/AdventureRules.TicketInterval.Ticks;if(count<1)return false;
   State.Adventure_Ticket_Now=(int)Math.Min(20,State.Adventure_Ticket_Now+count);State.Adventure_LastTicketCharge_Date=(State.Adventure_Ticket_Now==20?now:last.AddTicks(count*AdventureRules.TicketInterval.Ticks)).ToString("O",CultureInfo.InvariantCulture);return true;
  }
  public TimeSpan TicketRemaining(){RefreshTickets();if(State.Adventure_Ticket_Now>=20)return TimeSpan.Zero;return AdventureRules.ParseDate(State.Adventure_LastTicketCharge_Date).Add(AdventureRules.TicketInterval)-Now();}
  public bool Start(Map_Type t,int index,IEnumerable<Dispatch_Pet> pets)
  {
   if(!Unlocked(index)||Map(t,index).is_Enter||!AdventureRules.OpenDay(t,Now().DayOfWeek))return false;
   var valid=(pets??Array.Empty<Dispatch_Pet>()).Distinct().Where(CanDispatch).Take(OpenSlots).ToArray();if(valid.Length==0)return false;RefreshTickets();if(State.Adventure_Ticket_Now<valid.Length)return false;
   bool full=State.Adventure_Ticket_Now>=20;State.Adventure_Ticket_Now-=valid.Length;if(full)State.Adventure_LastTicketCharge_Date=Now().ToString("O",CultureInfo.InvariantCulture);
   var map=Map(t,index);map.is_Enter=true;map.Enter_dateTime=Now().ToString("O",CultureInfo.InvariantCulture);int group=AdventureRules.Group(t,index);
   foreach(var p in valid){if(p.Source==Pet_Source.Owned)State.Owned_Pet_LockGroup[p.Index]=group;else State.Selected_LockGroup[p.Index]=group;}
   Changed?.Invoke();return true;
  }
  public bool Claim(Map_Type t,int index)
  {
   if(!Map(t,index).is_Enter||Remaining(t,index)>TimeSpan.Zero)return false;var grades=Grades(t,index);int core=CoreReward(grades,index),exp=ExpReward(grades.Count,index);int wallet=checked(State.Adventure_Currency_Core[(int)t]+core),lv=State.Adventure_Lv,xp=State.Adventure_Exp;
   if(lv!=15){xp=checked(xp+exp);while(lv<15&&xp>=Catalogue.ExpBalance[lv]){xp-=Catalogue.ExpBalance[lv++];}if(lv==15)xp=0;}
   int beforeLv=State.Adventure_Lv,beforeExp=State.Adventure_Exp;State.Adventure_Currency_Core[(int)t]=wallet;State.Adventure_Lv=lv;State.Adventure_Exp=xp;Unlock(t,index);Map(t,index).is_Enter=false;Changed?.Invoke();Rewarded?.Invoke(t,core,exp,beforeLv,beforeExp);return true;
  }
  private void Unlock(Map_Type t,int index){int group=AdventureRules.Group(t,index);for(int i=0;i<16;i++)if(State.Owned_Pet_LockGroup[i]==group)State.Owned_Pet_LockGroup[i]=-1;for(int i=0;i<3;i++)if(State.Selected_LockGroup[i]==group)State.Selected_LockGroup[i]=-1;}
  public bool Cancel(Map_Type t,int index){if(!Map(t,index).is_Enter)return false;Unlock(t,index);Map(t,index).is_Enter=false;Changed?.Invoke();return true;}
 }
}
