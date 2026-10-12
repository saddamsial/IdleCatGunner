using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
namespace CatGunner.Recovery
{
 // Matching vc257 native Fish_manager transactions. Daily clock is the explicit
 // independent offline adapter, not the original server/time-ledger implementation.
 public static class OriginalFishRules
 {
  public const int Capacity=20,Grades=13,PremiumPrice=200,DailyCount=5,NoAdCount=3;
  public static void ValidateState(OriginalSaveData s)
  {
   if(s.FishInventory!=null&&(s.FishInventory.Count>Capacity||s.FishInventory.Any(g=>g<0||g>=Grades))||s.FreeGachaCount<0||s.FreeGachaCount>DailyCount)throw new InvalidOperationException("Invalid fish state; save preserved");
   if(!string.IsNullOrEmpty(s.Free_GachaDate))Date(s.Free_GachaDate);
  }
  public static DateTime Date(string text)=>DateTime.Parse(text,CultureInfo.InvariantCulture,DateTimeStyles.RoundtripKind);
  public static int Roll(float roll,int offset,float[] chances)
  {float total=0;for(int i=0;i<chances.Length;i++){total+=chances[i];if(roll<total)return offset+i;}return offset;}
 }
 public sealed class OriginalFishInventory
 {
  public OriginalSaveData State{get;} public Fish_Info[] Catalogue{get;} public Func<DateTime> Now; public Func<float> RandomPercent;
  public float[] Chances={60,30,10,0};public event Action Changed;
  public OriginalFishInventory(OriginalSaveData s,Fish_Info[] catalogue,Func<DateTime> now=null,Func<float> random=null)
  {OriginalFishRules.ValidateState(s);if(catalogue==null||catalogue.Length!=13)throw new InvalidOperationException("Missing original fish catalogue");State=s;Catalogue=catalogue;Now=now??(()=>DateTime.Now);RandomPercent=random??(()=>UnityEngine.Random.Range(0f,100f));s.FishInventory??=new List<int>();}
  public bool Full=>State.FishInventory.Count>=20;
  public void RefreshDay(){var today=Now().Date;if(string.IsNullOrEmpty(State.Free_GachaDate)||OriginalFishRules.Date(State.Free_GachaDate).Date<today){State.Free_GachaDate=today.ToString("O",CultureInfo.InvariantCulture);State.FreeGachaCount=0;}}
  public int Draw(bool premium)
  {
   if(!premium)RefreshDay();if(Full||(!premium&&State.FreeGachaCount>=3)||(premium&&State.Dia<200))return -1;
   int grade=OriginalFishRules.Roll(RandomPercent(),premium?1:0,Chances);
   if(premium){int spent=checked(State._useDia+200);State.Dia-=200;State._useDia=spent;}else State.FreeGachaCount++;
   State.FishInventory.Add(grade);Changed?.Invoke();return grade;
  }
  public int DrawAd()
  {RefreshDay();if(Full||State.FreeGachaCount>=5)return -1;int grade=OriginalFishRules.Roll(RandomPercent(),0,Chances);State.FreeGachaCount++;State.FishInventory.Add(grade);Changed?.Invoke();return grade;}
  public int Fuse(int a,int b,int expectedA=-1,int expectedB=-1)
  {
   var items=State.FishInventory;if(a<0||b<0||a==b||a>=items.Count||b>=items.Count)return -1;int grade=items[a];
   if(grade>=12||grade!=items[b]||expectedA>=0&&grade!=expectedA||expectedB>=0&&items[b]!=expectedB)return -1;
   items.RemoveAt(Math.Max(a,b));items.RemoveAt(Math.Min(a,b));items.Add(++grade);Changed?.Invoke();return grade;
  }
  public bool Delete(int index,int expected)
  {if(index<0||index>=State.FishInventory.Count||State.FishInventory[index]!=expected)return false;State.FishInventory.RemoveAt(index);Changed?.Invoke();return true;}
  public int Damage=>State.FishInventory.Sum(g=>Catalogue[g].Damage);
  public int CriticalChance=>State.FishInventory.Sum(g=>Catalogue[g].CriPer);
  public int CriticalDamage=>State.FishInventory.Sum(g=>Catalogue[g].CriVal);
 }
}
