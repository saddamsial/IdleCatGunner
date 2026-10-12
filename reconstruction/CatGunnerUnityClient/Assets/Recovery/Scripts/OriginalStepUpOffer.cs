using System;
using System.Globalization;
using System.Linq;
using UnityEngine;

namespace CatGunner.Recovery
{
    // vc257 native visibility, sequential steps and date arithmetic. Uses a local
    // clock; purchase fulfillment remains OriginalLocalPurchases' offline adapter.
    public sealed class OriginalStepUpOffer
    {
        public readonly OriginalSaveData State;
        public Func<DateTime> Now;
        public OriginalStepUpOffer(OriginalSaveData state, Func<DateTime> now) { State = state; Now = now; }
        DateTime Start => DateTime.TryParse(State.StepUp_Start_Date, CultureInfo.InvariantCulture,
            DateTimeStyles.RoundtripKind, out var date) ? date.ToUniversalTime() : DateTime.MinValue;
        public bool Started => Start != DateTime.MinValue;
        public TimeSpan Remaining
        {
            get { if (!Started) return TimeSpan.FromDays(7); var value = Start.AddDays(7) - Now().ToUniversalTime(); return value < TimeSpan.Zero ? TimeSpan.Zero : value; }
        }
        public bool Expired => Started && Remaining <= TimeSpan.Zero;
        public bool AllPurchased => State.StepUp_Purchased.Take(5).All(value => value);
        public int CurrentStep { get { for (int i = 0; i < 5; i++) if (Purchasable(State.StepUp_Purchased, i)) return i; return -1; } }
        // Native Is_Purchasable deliberately has no time or inventory predicate.
        public static bool Purchasable(bool[] purchased, int step) => step >= 0 && step < 5 &&
            !purchased[step] && (step == 0 || purchased[step - 1]);
        public bool ShouldShow => !AllPurchased && !Expired && State.Gun_Collect.Skip(10).Any(value => value);
        public bool StartOnce()
        {
            if (Started) return false;
            State.StepUp_Start_Date = Now().ToUniversalTime().ToString("O"); return true;
        }
        public static string FullTime(TimeSpan value) => value.TotalDays >= 1 ?
            string.Format("{0}d {1}:{2:00}:{3:00}", (int)value.TotalDays, value.Hours, value.Minutes, value.Seconds) :
            string.Format("{0}:{1:00}:{2:00}", value.Hours, value.Minutes, value.Seconds);
        public static string HudTime(TimeSpan value) => value.TotalDays >= 1 ?
            string.Format("{0}D {1}H", (int)value.TotalDays, value.Hours) : value.TotalHours >= 1 ?
            string.Format("{0}h {1:00}m", value.Hours, value.Minutes) : string.Format("{0}m {1:00}s", value.Minutes, value.Seconds);
    }
    [Serializable] public sealed class OriginalStepUpText
    {
        public string[] LocaleCodes, StepLocked, SaleValue, InventoryFull;
        static OriginalStepUpText instance;
        public static OriginalStepUpText Catalogue => instance ??= JsonUtility.FromJson<OriginalStepUpText>(Resources.Load<TextAsset>("OriginalStepUpText").text);
        // Same explicit system-language adapter as the existing original feedback.
        int Locale => Mathf.Max(0,RecoveryLanguage.Index);
        public string Locked(int step) => string.Format(StepLocked[Locale], step);
        public string Sale(int value) => string.Format(SaleValue[Locale], value);
        public string FullInventory => InventoryFull[Locale];
    }
}
