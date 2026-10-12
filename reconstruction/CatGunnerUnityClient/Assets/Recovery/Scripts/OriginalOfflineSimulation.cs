using System;
using System.Collections;
using System.Globalization;
using System.Linq;
using System.Numerics;
namespace CatGunner.Recovery
{
    public sealed class OfflineResult
    {
        public float ElapsedSeconds,AbsentSeconds;
        public DecimalAmount MoneyGained,MoneyFinal,MoneyAccumFinal;
        public int PowerLv,SpeedLv,MoneyUpgradeLv,PowerLvGained,SpeedLvGained,MoneyLvGained,StageNow,LevelNow,StageValueMax,StagesCleared;
        public bool IsCapped=>AbsentSeconds>ElapsedSeconds+1;
        public static string FormatTime(float seconds){var t=TimeSpan.FromSeconds(Math.Max(0,seconds));return string.Format("{0:00}:{1:00}:{2:00}",(int)t.TotalHours,t.Minutes,t.Seconds);}
    }
    public sealed class OfflineModifiers
    {
        public DecimalAmount Power=new DecimalAmount(100),Speed=new DecimalAmount(100),Money=new DecimalAmount(100);
        public DecimalAmount RelicPower=new DecimalAmount(100),RelicCritical=new DecimalAmount(100),RelicMoney=new DecimalAmount(100);
        public int SkinPower=100,SkinSpeed=100,SkinMoney=100,PetMoney=100,PetSpeed=100,FishPower,FishCritical,FishChance,BuffMult=1;
        // vc257 RunCoroutine snapshots SaveData.Is_Buff_Pack (+0x1ff) into
        // <buffMult>5__21 (+0x178), choosing 1/4. Temporary timers are not used.
        public static OfflineModifiers Capture(RecoveryForestClient c)=>new OfflineModifiers{
            Power=c.Rebirth.Percent(0),Speed=c.Rebirth.Percent(1),Money=c.Rebirth.Percent(2),
            RelicPower=c.Relics.Progression.Percent(0),RelicCritical=c.Relics.Progression.Percent(2),RelicMoney=c.Relics.Progression.Percent(1),
            SkinPower=100+c.Skins.Damage_Accum_return(),SkinSpeed=100+c.Skins.Speed_Accum_return(),SkinMoney=100+c.Skins.Money_Accum_return(),
            PetMoney=(int)OriginalOfflineSimulation.Ratio(c.Pets.MoneyPercent,new DecimalAmount(1)),PetSpeed=c.Pets.MoveSpeedPercent,
            FishPower=c.Fish.GetTotalDamage(),FishCritical=c.Fish.GetTotalCriVal(),FishChance=c.Fish.GetTotalCriPer(),BuffMult=c.State.Is_Buff_Pack?4:1};
    }
    // Native vc257 algorithm, with independent decimal arithmetic and a local
    // UTC clock adapter. It farms the saved frontier, never advances beyond it.
    public static class OriginalOfflineSimulation
    {
        static readonly double[] Health={1,1.8,3,35},MoneyDegree={1,1.8,3,100};
        static readonly float[,] Rates={{80,20,0,0},{50,45,5,0},{20,55,25,0},{5,35,60,0},{0,15,85,0}};
        public const int MaxIterations=30000;
        public static bool ComputeElapsed(string last,DateTime utcNow,float maximum,out float elapsed,out float absent)
        {
            elapsed=absent=0;if(!DateTime.TryParse(last,CultureInfo.InvariantCulture,DateTimeStyles.RoundtripKind,out var saved))return false;
            double delta=(utcNow.ToUniversalTime()-saved.ToUniversalTime()).TotalSeconds;
            if(double.IsNaN(delta)||double.IsInfinity(delta)||delta<30)return false;
            absent=(float)delta;elapsed=Math.Min(absent,Math.Max(0,maximum));return elapsed>=30;
        }
        public static DecimalAmount Number(double value)
        {
            if(double.IsNaN(value)||double.IsInfinity(value))throw new ArgumentOutOfRangeException(nameof(value));
            string text=value.ToString("R",CultureInfo.InvariantCulture);var parts=text.Split('E','e');int exp=parts.Length==2?int.Parse(parts[1],CultureInfo.InvariantCulture):0;
            int dot=parts[0].IndexOf('.');if(dot>=0)exp-=parts[0].Length-dot-1;
            return new DecimalAmount(BigInteger.Parse(parts[0].Replace(".",""),CultureInfo.InvariantCulture),exp);
        }
        public static double Ratio(DecimalAmount a,DecimalAmount b)
        {
            if(b.Coefficient.IsZero)return double.PositiveInfinity;if(a.Coefficient.IsZero)return 0;
            // Leading digits bound the conversion, while the exponent preserves
            // balances beyond Double.MaxValue. This is an explicit numeric adapter.
            string x=BigInteger.Abs(a.Coefficient).ToString(),y=BigInteger.Abs(b.Coefficient).ToString();int nx=Math.Min(15,x.Length),ny=Math.Min(15,y.Length);
            return (a.Coefficient.Sign*b.Coefficient.Sign)*(double.Parse(x.Substring(0,nx),CultureInfo.InvariantCulture)/double.Parse(y.Substring(0,ny),CultureInfo.InvariantCulture))*Math.Pow(10,a.Exponent-b.Exponent+x.Length-nx-y.Length+ny);
        }
        static double Average(int level,double[] mult){double result=0;for(int i=0;i<3;i++)result+=Rates[level,i]/100d*mult[i];return result;}
        public static int TreeCount(int stage,int level)=>Math.Max(30,Math.Min(100,stage*10+30))*(level+1);
        public readonly struct ClearInfo
        {public readonly float Seconds;public readonly double KillsPerSecond;public ClearInfo(float t,double k){Seconds=t;KillsPerSecond=k;}}
        public static ClearInfo CalculateClear(OriginalSaveData state,int[] levels,int stage,int level,OriginalBalanceCatalogue balance,OriginalEquipmentCatalogue equipment,OfflineModifiers mod)
        {
            var health=balance.Stage_Health_Balance[stage].Value*Number(Average(level,Health));
            int speed=Math.Max(100,Math.Min(10000,balance.Speed(levels[1])-stage*30+(int)Ratio(mod.Speed,new DecimalAmount(1))+mod.SkinSpeed-200));
            float pet=Math.Max(.01f,mod.PetSpeed/100f);bool revisit=stage*10+level<state.Stage_Value_Max;
            float minimum=.1f/pet*(revisit?.5f:1);double kills=0;var bossDps=new DecimalAmount(0);
            foreach(int id in state.Selected_items.Where(id=>id>=0))
            {
                var gun=equipment.Gun_list[id];
                var damage=gun.Damage.Value.Percent(balance.Power(levels[0])).Percent(mod.Power).DiscardFraction()
                    .Percent(new DecimalAmount(mod.SkinPower)).DiscardFraction().Percent(new DecimalAmount(100+mod.FishPower)).DiscardFraction()
                    .Percent(mod.RelicPower).DiscardFraction()*new DecimalAmount(mod.BuffMult);
                var critical=damage.Percent(new DecimalAmount(125+mod.FishCritical)).DiscardFraction().Percent(mod.RelicCritical).DiscardFraction();
                float chance=Math.Max(0,Math.Min(1,mod.FishChance/100f));var expected=damage*Number(1-chance)+critical*Number(chance);
                if(expected.Coefficient.Sign<=0)continue;
                float cool=Math.Max(.05f,Math.Min(2,(gun.AtkSpeed/speed*100)/mod.BuffMult));
                int targets=(int)gun.type==1||(int)gun.type==2?10:(int)gun.type==3?Math.Max(1,gun.ShotgunPelletCount):(int)gun.type>=4&&(int)gun.type<=6?5:1;
                if(expected.CompareTo(health)>=0)kills+=targets/Math.Max(cool,minimum);
                else kills+=1/Math.Max(minimum,(float)Math.Min(1e9,Math.Max(1,Math.Floor(Ratio(health,expected)))*cool));
                if(level==4)bossDps+=expected*Number(1/cool);
            }
            if(kills<=0)return new ClearInfo(float.PositiveInfinity,0);
            float traversal=.05f/pet*(revisit?.5f:1);float time=Math.Max((float)(TreeCount(stage,level)/kills),traversal*TreeCount(stage,level));
            if(level==4){if(bossDps.Coefficient.Sign<=0)return new ClearInfo(float.PositiveInfinity,kills);time+=Math.Max(minimum,(float)Ratio(balance.Stage_Health_Balance[stage].Value*new DecimalAmount(35),bossDps));}
            return new ClearInfo(float.IsNaN(time)||time>180?float.PositiveInfinity:time,kills);
        }
        static DecimalAmount MoneyBase(int moneyLv,int stage,int level,OriginalBalanceCatalogue balance,OfflineModifiers m)=>balance.Stage_Money_Balance[stage].Value
            .Percent(balance.Money(moneyLv)).Percent(m.Money).Percent(new DecimalAmount(m.SkinMoney)).Percent(new DecimalAmount(m.PetMoney)).Percent(m.RelicMoney)*new DecimalAmount(m.BuffMult);
        public static DecimalAmount PerStage(int moneyLv,int stage,int level,OriginalBalanceCatalogue b,OfflineModifiers m)=>MoneyBase(moneyLv,stage,level,b,m)*Number(Average(level,MoneyDegree)*TreeCount(stage,level)+(level==4?100:0));
        public static IEnumerator Run(OriginalSaveData data,float elapsed,float absent,OriginalBalanceCatalogue balance,OriginalEquipmentCatalogue equipment,OfflineModifiers mod,Action<OfflineResult> done)
        {
            var levels=(int[])data.Upgrade_Lv.Clone();var money=data.Money.Value;var accum=data.Money_Accum.Value;int stage=data.Stage_Now,level=data.Level_Now,cleared=0;float left=elapsed;
            int[] cacheLevels=null;int cacheStage=-1,cacheLevel=-1;ClearInfo clear=default;DecimalAmount perSec=default,perStage=default;
            var stopwatch=System.Diagnostics.Stopwatch.StartNew();
            for(int iter=0;iter<MaxIterations&&left>.05f;iter++)
            {
                BuyAll(balance,levels,ref money);
                if(cacheLevels==null||!cacheLevels.SequenceEqual(levels)||cacheStage!=stage||cacheLevel!=level)
                {
                    clear=CalculateClear(data,levels,stage,level,balance,equipment,mod);
                    perSec=MoneyBase(levels[2],stage,level,balance,mod)*Number(Average(level,MoneyDegree)*clear.KillsPerSecond);
                    perStage=PerStage(levels[2],stage,level,balance,mod);cacheLevels=(int[])levels.Clone();cacheStage=stage;cacheLevel=level;
                }
                float cost=float.IsInfinity(clear.Seconds)?float.PositiveInfinity:clear.Seconds*1.3f+5;
                if(!float.IsInfinity(cost)&&cost<=left)
                {
                    money+=perStage;accum+=perStage;left-=cost;int nextLevel=level+1,nextStage=stage;if(nextLevel>4){nextLevel=0;nextStage++;}
                    if(nextStage*10+nextLevel<=data.Stage_Value_Max&&nextStage<5000){stage=nextStage;level=nextLevel;cleared++;}
                }
                else
                {
                    if(perSec.Coefficient.Sign<=0)break;
                    float interval=left;
                    if(float.IsInfinity(cost))
                    {
                        int min=levels.Where(l=>l<10000).DefaultIfEmpty(-1).Min();
                        if(min>=0)interval=Math.Min(left,(float)Math.Min(1e9,Ratio(balance.Price(min)-money,perSec)));
                    }
                    // Floating conversion must make progress at an upgrade boundary.
                    interval=Math.Max(.0001f,interval);interval=Math.Min(interval,left);
                    var gained=perSec*Number(interval);money+=gained;accum+=gained;left-=interval;
                }
                if(stopwatch.Elapsed.TotalMilliseconds>=4){yield return null;stopwatch.Restart();}
            }
            BuyAll(balance,levels,ref money);
            done(new OfflineResult{ElapsedSeconds=elapsed,AbsentSeconds=absent,MoneyFinal=money,MoneyAccumFinal=accum,MoneyGained=money-data.Money.Value,
                PowerLv=levels[0],SpeedLv=levels[1],MoneyUpgradeLv=levels[2],PowerLvGained=levels[0]-data.Upgrade_Lv[0],SpeedLvGained=levels[1]-data.Upgrade_Lv[1],MoneyLvGained=levels[2]-data.Upgrade_Lv[2],
                StageNow=stage,LevelNow=level,StageValueMax=data.Stage_Value_Max,StagesCleared=cleared});
        }
        static void BuyAll(OriginalBalanceCatalogue b,int[] levels,ref DecimalAmount money)
        {
            for(int count=0;count<30000;count++){int selected=-1;for(int i=0;i<3;i++)if(levels[i]<10000&&(selected<0||levels[i]<levels[selected]))selected=i;
                if(selected<0||!OriginalUpgradeTransaction.TryUpgrade(b,levels,selected,ref money))break;}
        }
        public static void Apply(OriginalSaveData data,OfflineResult result)
        {data.Money=OriginalAmount.FromValue(result.MoneyFinal);data.Money_Accum=OriginalAmount.FromValue(result.MoneyAccumFinal);data.Upgrade_Lv=new[]{result.PowerLv,result.SpeedLv,result.MoneyUpgradeLv};data.Stage_Now=result.StageNow;data.Level_Now=result.LevelNow;data.Stage_Value_Max=result.StageValueMax;}
    }
}
