using System;
using System.Linq;
using UnityEngine;
namespace CatGunner.Recovery
{
 [Serializable] public sealed class OriginalRelicCatalogue
 {
  public Relic_Info[] Rows;public OriginalAmount[] Damage_Balance,Money_Balance,CriDmg_Balance;
  public string LevelFormat,CountFormat,MaxText;public string[] PercentTexts;
  public static OriginalRelicCatalogue Load()
  {
   var asset=Resources.Load<TextAsset>("OriginalRelicCatalogue");if(asset==null)throw new InvalidOperationException("Original relic catalogue missing");
   var c=JsonUtility.FromJson<OriginalRelicCatalogue>(asset.text);
   if(c.Rows.Length!=15||c.Damage_Balance.Length!=300||c.Money_Balance.Length!=300||c.CriDmg_Balance.Length!=300)throw new InvalidOperationException("Original relic catalogue incomplete");return c;
  }
 }
 public static class OriginalRelicRules
 {
  public const int DrawPrice=20;
  public static int MaxLevel(Relic_Type t)=>(int)t<=8?300:50;
  public static int UpgradePrice(int level)=>Mathf.Clamp(level*2+2,2,50);
  public static bool HasTableRow(Relic_Type t,int lv)=>(int)t>8||lv<300;
  public static void ValidateState(OriginalSaveData s)
  {
   // Validate both complete families before initializing a neutral legacy array.
   if(s.Adventure_Currency_Core!=null&&s.Adventure_Currency_Core.Length!=0&&(s.Adventure_Currency_Core.Length!=4||s.Adventure_Currency_Core.Any(v=>v<0)))throw new InvalidOperationException("Invalid core wallet; save preserved");
   if(s.Relics!=null&&s.Relics.Length!=0)
   {
    var rows=OriginalRelicCatalogue.Load().Rows;
    if(s.Relics.Length!=15)throw new InvalidOperationException("Invalid relic save length; save preserved");
    for(int i=0;i<15;i++)
    {
     var v=s.Relics[i];if(v==null||v.Lv<0||v.Lv>MaxLevel(rows[i].Type)||!HasTableRow(rows[i].Type,v.Lv)||v.Count<0||(!v.is_Unlock&&(v.Lv!=0||v.Count!=0)))throw new InvalidOperationException("Unsupported relic state/table row; save preserved");
    }
   }
   if(s.Adventure_Currency_Core==null||s.Adventure_Currency_Core.Length==0)s.Adventure_Currency_Core=new int[4];
   if(s.Relics==null||s.Relics.Length==0)s.Relics=Enumerable.Range(0,15).Select(_=>new RelicSave()).ToArray();
  }
  public static DecimalAmount Value(Relic_Info info,OriginalRelicCatalogue c)
  {
   int t=(int)info.Type,lv=info.Lv;if(t<0||t>12||lv<0||lv>MaxLevel(info.Type)||!HasTableRow(info.Type,lv))throw new NotSupportedException("No verified native relic value for this level");
   if(t<=8)
   {
    var table=t<3?c.Damage_Balance:t<6?c.Money_Balance:c.CriDmg_Balance;var value=table[lv].Value;
    return t%3==0?value:t%3==1?(value*new DecimalAmount(15,-1)).DiscardFraction():value*new DecimalAmount(2);
   }
   return new DecimalAmount((lv+1)*(t==10?10:t==11?5:2));
  }
 }
 public sealed class OriginalRelicProgression
 {
  public readonly OriginalSaveData State;public readonly OriginalRelicCatalogue Catalogue;
  private readonly Func<int,int,int> random;
  public OriginalRelicProgression(OriginalSaveData s,Func<int,int,int> range=null){OriginalRelicRules.ValidateState(s);State=s;Catalogue=OriginalRelicCatalogue.Load();random=range??UnityEngine.Random.Range;}
  public Relic_Info Row(int i){var v=State.Relics[i];var r=Catalogue.Rows[i];return new Relic_Info{Type=r.Type,Core_Type=r.Core_Type,Lv=v.Lv,Count=v.Count,is_Unlock=v.is_Unlock};}
  public int[] Candidates(Core_Type type)
  {
   int t=(int)type;if(t<0||t>3)throw new ArgumentOutOfRangeException(nameof(type));
   var group=Enumerable.Range(t==3?0:t*5,t==3?15:5).ToArray();var below=group.Where(i=>State.Relics[i].Lv<OriginalRelicRules.MaxLevel(Catalogue.Rows[i].Type)).ToArray();return below.Length>0?below:group;
  }
  public int CoreCount(Core_Type t)=>State.Adventure_Currency_Core[(int)t];
  public int MaxDrawCount(Core_Type t)=>CoreCount(t)/20;
  public int[] Draw(Core_Type type,int count)
  {
   if((int)type<0||(int)type>3||count<=0||count>CoreCount(type)/20)return Array.Empty<int>();
   var results=new int[count];var staged=State.Relics.Select(v=>new RelicSave{Lv=v.Lv,Count=v.Count,is_Unlock=v.is_Unlock}).ToArray();
   for(int n=0;n<count;n++)
   {
    var group=Candidates(type);int pos=random(0,group.Length);if(pos<0||pos>=group.Length)throw new InvalidOperationException("Range adapter outside native candidate domain");
    int i=group[pos];var v=staged[i];if(v.is_Unlock)v.Count=checked(v.Count+1);else v.is_Unlock=true;results[n]=i;
   }
   State.Adventure_Currency_Core[(int)type]-=checked(count*20);
   for(int i=0;i<15;i++){State.Relics[i].Count=staged[i].Count;State.Relics[i].is_Unlock=staged[i].is_Unlock;}
   return results;
  }
  public bool Upgrade(int i)
  {
   if(i<0||i>=15)return false;var v=State.Relics[i];var t=Catalogue.Rows[i].Type;int price=OriginalRelicRules.UpgradePrice(v.Lv);
   if(v.Lv>=OriginalRelicRules.MaxLevel(t)||v.Count<price||!OriginalRelicRules.HasTableRow(t,v.Lv+1))return false;
   v.Count-=price;v.Lv++;return true;
  }
  public DecimalAmount Percent(int kind)
  {
   var sum=new DecimalAmount(100);for(int i=0;i<15;i++){var r=Row(i);if(r.is_Unlock&&(int)r.Type/3==kind&&(int)r.Type<=8)sum+=OriginalRelicRules.Value(r,Catalogue);}return sum;
  }
  public int Special(Relic_Type type)
  {
   int sum=type==Relic_Type.Rebirth?100:0;for(int i=0;i<15;i++){var r=Row(i);if(r.is_Unlock&&r.Type==type)sum+=int.Parse(OriginalRelicRules.Value(r,Catalogue).PlainInteger());}return sum;
  }
 }
}
