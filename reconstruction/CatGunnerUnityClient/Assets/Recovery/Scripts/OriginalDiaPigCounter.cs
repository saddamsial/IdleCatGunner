using System;
using System.Globalization;

namespace CatGunner.Recovery
{
    // Ordinary DiaPig arithmetic from vc257. This is a counter, never a purchase
    // provider. Trusted wall-clock catch-up/RecordGain are deliberately absent.
    public sealed class OriginalDiaPigCounter
    {
        public readonly int Maximum;
        public int TickAmount { get; private set; }
        public int Count { get; private set; }
        public DateTime LastTickUtc { get; private set; }
        public double LastTickMono { get; private set; }
        public bool Unlocked => TickAmount > 0;
        public OriginalDiaPigCounter(int maximum, int tickAmount)
        {
            if (maximum <= 0 || tickAmount < 0 || tickAmount > 2) throw new ArgumentOutOfRangeException();
            Maximum = maximum; TickAmount = tickAmount;
        }
        // Native Shop getter is evaluated at each accumulation. Changing a pack
        // must preserve both clock references and the unfinished minute.
        public void SetTickAmount(int amount)
        {
            if (amount < 0 || amount > 2) throw new ArgumentOutOfRangeException(nameof(amount));
            TickAmount = amount;
        }
        public void Init(DiaPigSave data, DateTime utc, double mono)
        {
            if (data == null) { Count = 0; SetLastTick(utc, mono); return; }
            Count = data.Dia_Now;
            if (!DateTime.TryParse(data.LastTickTime, CultureInfo.InvariantCulture, DateTimeStyles.RoundtripKind, out var parsed)) parsed = utc;
            else if (parsed.Kind != DateTimeKind.Utc) parsed = parsed.ToUniversalTime();
            LastTickUtc = parsed > utc ? utc : parsed; LastTickMono = mono;
            if (Unlocked) Tick(utc, mono); else SetLastTick(utc, mono);
        }
        public void SetLastTick(DateTime utc, double mono) { LastTickUtc = utc; LastTickMono = mono; }
        public void Tick(DateTime utc, double mono)
        {
            if (!Unlocked || Count >= Maximum) return;
            if (LastTickUtc > utc) { SetLastTick(utc, mono); return; }
            double wall = (utc - LastTickUtc).TotalSeconds, elapsed = mono - LastTickMono;
            // Native ordinary branch: min(wall, mono) when difference <=300.
            // Catch-up requires the excluded trusted-time provider; absent => mono.
            if (wall - elapsed <= 300) elapsed = Math.Min(wall, elapsed);
            int ticks = (int)(elapsed / 60);
            if (ticks <= 0) return;
            Count = Math.Min(unchecked(Count + TickAmount * ticks), Maximum);
            LastTickUtc = LastTickUtc.AddSeconds(unchecked(ticks * 60));
            LastTickMono = mono - (elapsed - unchecked(ticks * 60));
        }
        public int SecondsUntilNextTick(double mono) => !Unlocked || Count >= Maximum ? 0 : Math.Max(0, 60 - (int)(mono - LastTickMono) % 60);
        public int Claim(DateTime utc, double mono)
        {
            if (!Unlocked || Count < 1) return 0;
            int amount = Count; Count = 0;
            if (amount >= Maximum) SetLastTick(utc, mono);
            return amount;
        }
        public DiaPigSave GetSaveData() => new DiaPigSave { Dia_Now = Count, LastTickTime = LastTickUtc.ToString("o", CultureInfo.InvariantCulture) };
    }
}
