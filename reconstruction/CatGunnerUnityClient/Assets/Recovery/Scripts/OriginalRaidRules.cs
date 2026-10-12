using System;
using System.Collections.Generic;
using System.Globalization;
using System.Numerics;
using System.Linq;
namespace CatGunner.Recovery
{
    // vc257 Raid_manager and DailyGun native business rules. Clock and decimal
    // storage are local adapters; no trusted-server time or ranking is simulated.
    public static class OriginalRaidRules
    {
        public static readonly int[] StarGemTier={25,20,10};
        public const int FreeEnterMax=2;
        public const float GameTimeBase=60;
        public static void ValidateState(OriginalSaveData state)
        {
            if(state.Raid_Free_Use_Count<0||state.Raid_Free_Use_Count>FreeEnterMax||
               state.Raid_Season_TryCount<0||state.Raid_Season_BestLevel<0||
               state.Raid_Best_Level_ByType!=null&&(state.Raid_Best_Level_ByType.Length>7||state.Raid_Best_Level_ByType.Any(x=>x<0)))
                throw new InvalidOperationException("Unsupported Raid state; save preserved");
            if(!string.IsNullOrEmpty(state.Raid_Entry_Charge_Date)&&!DateTime.TryParse(state.Raid_Entry_Charge_Date,CultureInfo.InvariantCulture,DateTimeStyles.RoundtripKind,out _))
                throw new InvalidOperationException("Invalid Raid entry date; save preserved");
        }
        // Native EnsureBestArray allocates GunType count (7) and copies the
        // available prefix. Empty arrays are emitted by JsonUtility for old saves.
        // Oversized/negative local profiles are rejected instead of losing data.
        public static int[] EnsureBestArray(int[] previous)
        {
            if(previous!=null&&(previous.Length>7||previous.Any(x=>x<0)))
                throw new InvalidOperationException("Unsupported Raid best levels; save preserved");
            var best=new int[7];
            if(previous!=null)Array.Copy(previous,best,previous.Length);
            return best;
        }
        public static OriginalAmount Precision(DecimalAmount value,int digits)
        {
            if(value.Coefficient.IsZero)return OriginalAmount.FromValue(value);
            int length=BigInteger.Abs(value.Coefficient).ToString(CultureInfo.InvariantCulture).Length;
            int shift=length-digits;
            return OriginalAmount.FromValue(shift>0?new DecimalAmount(value.Coefficient/BigInteger.Pow(10,shift),value.Exponent+shift):
                new DecimalAmount(value.Coefficient*BigInteger.Pow(10,-shift),value.Exponent+shift));
        }
        public static OriginalAmount BossHealth(int level)
        {
            level=Math.Max(0,level);var cached=new DecimalAmount(10000000);
            for(int i=0;i<level;i++)cached=Precision(cached*new DecimalAmount(3),3).Value;
            return Precision(cached,2);
        }
        public static int StarGemPerLevel(int level)=>level<1?0:(level<=30?StarGemTier[(level-1)/10]:5);
        public static int StarGemReward(int cleared)
        {int value=0;for(int i=1;i<=cleared;i++)value=checked(value+StarGemPerLevel(i));return value;}
        public static DateTime WeekStart(DateTime now)=>now.Date.AddDays(-((int)now.DayOfWeek+6)%7);
        public static int SeasonIndex(DateTime now)=>(int)(WeekStart(now)-new DateTime(2024,1,1)).TotalDays/7;
        public static int BossIndex(DateTime now)=>(SeasonIndex(now)%5+5)%5;
        // Independent recovery clock. Original CanRolloverDaily/RecordGain are
        // not claimed: only this client's ordinary daily entry fields are touched.
        public static bool ReloadLocalTickets(OriginalSaveData state,DateTime now)
        {
            if(!string.IsNullOrEmpty(state.Raid_Entry_Charge_Date)&&!DateTime.TryParse(state.Raid_Entry_Charge_Date,CultureInfo.InvariantCulture,DateTimeStyles.RoundtripKind,out _))
                throw new InvalidOperationException("Invalid Raid entry date; save preserved");
            DateTime.TryParse(state.Raid_Entry_Charge_Date,CultureInfo.InvariantCulture,DateTimeStyles.RoundtripKind,out var date);
            if(date.Date>=now.Date)return false;
            state.Raid_Entry_Charge_Date=now.Date.ToString("O",CultureInfo.InvariantCulture);state.Raid_Free_Use_Count=0;
            state.Raid_AD_Enter_Used=state.Raid_IAP_Enter_Used=false;return true;
        }
    }
}
