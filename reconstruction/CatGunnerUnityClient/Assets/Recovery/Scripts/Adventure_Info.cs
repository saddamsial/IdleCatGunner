using System;
public enum Map_Type{Forest,Desert,Tundra}
public enum Adventure_Map_Status{Lock,EnterAble,Entered,Finish}
public enum Pet_Source{Owned,Selected}
public enum Adventure_PetSlot_Status{Selected,Empty,Locked}
[Serializable] public struct Dispatch_Pet : IEquatable<Dispatch_Pet>
{
 public Pet_Source Source;public int Index;
 public Dispatch_Pet(Pet_Source source,int index){Source=source;Index=index;}
 public static Dispatch_Pet Owned(int i)=>new Dispatch_Pet(Pet_Source.Owned,i);
 public static Dispatch_Pet Selected(int i)=>new Dispatch_Pet(Pet_Source.Selected,i);
 public bool Equals(Dispatch_Pet p)=>Source==p.Source&&Index==p.Index;
 public override bool Equals(object o)=>o is Dispatch_Pet p&&Equals(p);
 public override int GetHashCode()=>((int)Source*397)^Index;
}
[Serializable] public sealed class Adventure_Map_Info{public bool is_Enter;public DateTime Enter_dateTime;}
[Serializable] public sealed class Adventure_Map_Info_list{public string Name;public Adventure_Map_Info[] Map_info_list;}
