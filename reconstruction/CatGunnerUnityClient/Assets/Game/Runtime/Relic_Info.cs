using System;
public enum Core_Type { Forest,Desert,Tundra,ALL }
public enum Relic_Type { Dmg_0,Dmg_1,Dmg_2,Money_0,Money_1,Money_2,CriDmg_0,CriDmg_1,CriDmg_2,MoveSpeed,Offline,Rebirth,Skip }
[Serializable] public sealed class Relic_Info {public Relic_Type Type;public Core_Type Core_Type;public int Lv,Count;public bool is_Unlock;}
