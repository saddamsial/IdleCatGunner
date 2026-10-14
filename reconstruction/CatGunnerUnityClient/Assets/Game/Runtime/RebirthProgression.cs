using System;
using System.Globalization;
using System.Numerics;

namespace CatGunner.Runtime
{
    [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "OriginalRebirth")] public sealed class RebirthProgression
    {
        public SaveData State {get;}
        public ProgressionCatalogue Catalogue {get;}
        public event Action Changed;
        public int RewardPercent=100;
        public Func<DateTime> Now;
        public static string TodayKey(DateTime now)=>now.ToString("yyyyMMdd",CultureInfo.InvariantCulture);
        // Migration only: older recovery builds stored ISO dates here. Keep their
        // same-day quota instead of treating their different spelling as a new day.
        public static string NormalizeDateKey(string text)
        {
            if(DateTime.TryParseExact(text,"yyyyMMdd",CultureInfo.InvariantCulture,DateTimeStyles.None,out var day))return TodayKey(day);
            return DateTime.TryParse(text,CultureInfo.InvariantCulture,DateTimeStyles.RoundtripKind,out day)?TodayKey(day):text;
        }
        public static bool IsDifferentDay(SaveData state,DateTime now)=>NormalizeDateKey(state.UpgradeRebirth_LastDate)!=TodayKey(now);
        public static void DayCheck(SaveData state,DateTime now)
        {
            if(!IsDifferentDay(state,now))return;
            state.UpgradeRebirth_LastDate=TodayKey(now);state.UpgradeRebirth_UseCount=state.UpgradeRebirth_IAP_UseCount=0;
        }
        public void DayCheck()=>DayCheck(State,Now());
        public bool AdAvailable {get{DayCheck();return State.UpgradeRebirth_UseCount<1;}}
        public bool PaidAvailable {get{DayCheck();return State.Stage_Value_Max>989&&State.UpgradeRebirth_IAP_UseCount<1;}}
        public DecimalAmount RewardReturn(int stage,int wave)=>Reward(stage,wave,RewardPercent);
        public RebirthProgression(SaveData state,ProgressionCatalogue catalogue,Func<DateTime> now=null)
        {
            State=state;Catalogue=catalogue;Now=now??(()=>DateTime.Now);if(state.Rebirth_Upgrade_Lv==null||state.Rebirth_Upgrade_Lv.Length==0)state.Rebirth_Upgrade_Lv=new int[3];
            if(state.Rebirth_Upgrade_Lv.Length!=3||Array.Exists(state.Rebirth_Upgrade_Lv,level=>level<0||level>20000))throw new ArgumentException("Unsupported rebirth levels");
        }
        public DecimalAmount Percent(int kind)=>new DecimalAmount(100)+Catalogue.RebirthValues[kind].Values[State.Rebirth_Upgrade_Lv[kind]].Value;
        public bool Upgrade(int kind)
        {
            if(kind<0||kind>2)return false;int level=State.Rebirth_Upgrade_Lv[kind];if(level>=20000)return false;
            var price=Catalogue.RebirthPrice[level].Value;if(State.Ruby.Value.CompareTo(price)<0)return false;
            State.Ruby=CurrencyAmount.FromValue(State.Ruby.Value-price);State.Rebirth_Upgrade_Lv[kind]++;Changed?.Invoke();return true;
        }
        // Positive 5-significant-digit adapter for the cache-supported forest
        // domain. Double sqrt and commercial InfVal-wide precision parity are
        // explicitly outside this claim; do not use lifetime money as reward.
        public static DecimalAmount Reward(int stage,int wave,int relicPercent=100)
        {
            if(stage<2)return new DecimalAmount(0);if(stage>=5000||wave<0||wave>4)throw new ArgumentOutOfRangeException();
            int n=stage*5+wave;double value=n*(double)n*Math.Sqrt(n)*relicPercent/100d;int power=(int)Math.Floor(Math.Log10(value))-4;
            var coefficient=new BigInteger(Math.Floor(value/Math.Pow(10,power)));return new DecimalAmount(coefficient,power);
        }
        public bool ResetForest(int stage,int wave,int multiplier=1)
        {
            var reward=RewardReturn(stage,wave)*new DecimalAmount(multiplier);if(reward.Coefficient.IsZero)return false;
            State.Ruby=CurrencyAmount.FromValue(State.Ruby.Value+reward);State.Rebirth_Count++;
            State.Money=CurrencyAmount.FromValue(new DecimalAmount(0));State.Money_Accum=CurrencyAmount.FromValue(new DecimalAmount(0));
            Array.Clear(State.Upgrade_Lv,0,3);State.Stage_Now=State.Level_Now=0;
            return true;
        }
    }
}
