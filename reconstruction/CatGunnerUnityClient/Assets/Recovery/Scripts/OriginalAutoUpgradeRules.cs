using System;
using System.Globalization;

namespace CatGunner.Recovery
{
    // Upgrade_manager vc257: this budget consumes scaled frames, not offline time.
    public static class OriginalAutoUpgradeRules
    {
        public const float RewardSeconds=600;
        public static string TodayKey(DateTime now)=>now.ToString("yyyyMMdd",CultureInfo.InvariantCulture);
        public static bool Active(OriginalSaveData state)=>state.AD_AutoUpgrade_RemainSec>0;
        public static bool Enabled(OriginalSaveData state)=>state.Is_AutoUpgrade_Pack||Active(state);
        public static bool WatchedToday(OriginalSaveData state,DateTime now)=>state.AD_AutoUpgrade_LastDate==TodayKey(now);
        public static bool Able(OriginalSaveData state,DateTime now)=>!state.Is_AutoUpgrade_Pack&&!Active(state)&&!WatchedToday(state,now);
        public static void Load(OriginalSaveData state)
        {
            state.AD_AutoUpgrade_LastDate=state.AD_AutoUpgrade_LastDate??string.Empty;
            float seconds=state.AD_AutoUpgrade_RemainSec;
            state.AD_AutoUpgrade_RemainSec=seconds>=0?(seconds<=RewardSeconds?seconds:RewardSeconds):0;
        }
        public static void Reward(OriginalSaveData state,DateTime now)
        {state.AD_AutoUpgrade_LastDate=TodayKey(now);state.AD_AutoUpgrade_RemainSec=RewardSeconds;}
        public static bool Tick(OriginalSaveData state,float scaledDelta,bool adShowing)
        {
            if(!Active(state)||state.Is_AutoUpgrade_Pack||adShowing)return false;
            state.AD_AutoUpgrade_RemainSec=Math.Max(0,state.AD_AutoUpgrade_RemainSec-Math.Min(scaledDelta,.5f));
            return !Active(state);
        }
        public static string TimeStr(float seconds)
        {int total=Math.Max(0,(int)seconds);return string.Format(CultureInfo.InvariantCulture,"{0}:{1:00}",total/60,total%60);}
    }
}
