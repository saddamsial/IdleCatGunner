using System;
using System.Globalization;
using System.Numerics;
using UnityEngine;

namespace CatGunner.Runtime
{
    // Independent decimal arithmetic adapter. Serialized coefficient/exponent values
    // are exact original data; this is not the commercial InfiniteValue implementation.
    public readonly struct DecimalAmount : IComparable<DecimalAmount>
    {
        public readonly BigInteger Coefficient;
        public readonly int Exponent;
        public DecimalAmount(BigInteger coefficient, int exponent = 0)
        {
            Coefficient = coefficient;
            Exponent = exponent;
        }
        public int CompareTo(DecimalAmount other)
        {
            if (Coefficient.Sign != other.Coefficient.Sign) return Coefficient.Sign.CompareTo(other.Coefficient.Sign);
            if (Coefficient.IsZero && other.Coefficient.IsZero) return 0;
            int exponent = Math.Min(Exponent,other.Exponent);
            return Scale(Coefficient,Exponent-exponent).CompareTo(Scale(other.Coefficient,other.Exponent-exponent));
        }
        public static DecimalAmount operator -(DecimalAmount a, DecimalAmount b)
        {
            int exponent = Math.Min(a.Exponent,b.Exponent);
            return new DecimalAmount(Scale(a.Coefficient,a.Exponent-exponent)-Scale(b.Coefficient,b.Exponent-exponent),exponent);
        }
        public static DecimalAmount operator +(DecimalAmount a, DecimalAmount b)
        {
            int exponent = Math.Min(a.Exponent,b.Exponent);
            return new DecimalAmount(Scale(a.Coefficient,a.Exponent-exponent)+Scale(b.Coefficient,b.Exponent-exponent),exponent);
        }
        public static DecimalAmount operator *(DecimalAmount a, DecimalAmount b) =>
            new DecimalAmount(a.Coefficient*b.Coefficient,checked(a.Exponent+b.Exponent));
        // Independent exact base-ten percentage arithmetic; does not copy InfVal
        // significant-digit normalization or formatting.
        public DecimalAmount Percent(DecimalAmount percent) =>
            new DecimalAmount(Coefficient*percent.Coefficient,checked(Exponent+percent.Exponent-2));
        public DecimalAmount DiscardFraction() => Exponent>=0 ? this :
            new DecimalAmount(Coefficient/BigInteger.Pow(10,checked(-Exponent)));
        public string PlainInteger() => Exponent>=0 ?
            Scale(Coefficient,Exponent).ToString(CultureInfo.InvariantCulture) :
            DiscardFraction().Coefficient.ToString(CultureInfo.InvariantCulture);
        private static BigInteger Scale(BigInteger coefficient, int power) => coefficient * BigInteger.Pow(10,power);
        public override string ToString() => Coefficient.ToString(CultureInfo.InvariantCulture)+"e"+Exponent.ToString(CultureInfo.InvariantCulture);
    }

    [Serializable] [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "OriginalAmount")] public sealed class CurrencyAmount
    {
        public string s_digits;
        public int s_exponent;
        public DecimalAmount Value => new DecimalAmount(BigInteger.Parse(s_digits,CultureInfo.InvariantCulture),s_exponent);
        public static CurrencyAmount FromValue(DecimalAmount value) => new CurrencyAmount
        { s_digits=value.Coefficient.ToString(CultureInfo.InvariantCulture),s_exponent=value.Exponent };
    }

    [Serializable] [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "OriginalBalanceCatalogue")] public sealed class BalanceCatalogue
    {
        public CurrencyAmount[] Price_balance, Power_balance, Money_balance;
        public int[] Speed_balance;
        public CurrencyAmount[] Stage_Health_Balance, Stage_Money_Balance;
        public static BalanceCatalogue Load()
        {
            var asset = Resources.Load<TextAsset>("BalanceCatalogue");
            if (asset == null) throw new InvalidOperationException("Original numeric catalogue is missing");
            var result = JsonUtility.FromJson<BalanceCatalogue>(asset.text);
            if (result.Price_balance.Length!=10001 || result.Power_balance.Length!=10001 || result.Money_balance.Length!=10001 ||
                result.Speed_balance.Length!=10001 || result.Stage_Health_Balance.Length!=5000 || result.Stage_Money_Balance.Length!=5000)
                throw new InvalidOperationException("Original numeric catalogue has an incomplete contract");
            return result;
        }
        public DecimalAmount Price(int level) => Price_balance[level].Value;
        public DecimalAmount Power(int level) => Power_balance[level].Value;
        public DecimalAmount Money(int level) => Money_balance[level].Value;
        public int Speed(int level) => Speed_balance[level];
    }

    [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "OriginalUpgradeTransaction")] public static class UpgradeTransaction
    {
        // Pure transaction core from Upgrade_manager.Upgrade, preferred VA 0x2bb15b4.
        // Presentation, Cat balance invalidation and Sound callbacks are separate pending integration.
        public static bool TryUpgrade(BalanceCatalogue catalogue, int[] levels, int kind, ref DecimalAmount wallet)
        {
            int level = levels[kind];
            if (level > 9999) return false;
            var price = catalogue.Price(level);
            if (wallet.CompareTo(price) < 0) return false;
            wallet -= price;
            levels[kind] = level + 1;
            return true;
        }

        public static bool TryAutoUpgradeAll(BalanceCatalogue catalogue, int[] levels, ref DecimalAmount wallet)
        {
            // AutoUpgrade_All 0x2bb1dfc chooses the lowest AFFORDABLE level;
            // strict less-than keeps the earlier slot on equal levels.
            bool changed=false;
            while (true)
            {
                int selected=-1, minimum=int.MaxValue;
                for (int kind=0; kind<levels.Length; kind++)
                {
                    int level=levels[kind];
                    if (level>=10000 || wallet.CompareTo(catalogue.Price(level))<0 || level>=minimum) continue;
                    minimum=level;
                    selected=kind;
                }
                if (selected<0 || !TryUpgrade(catalogue,levels,selected,ref wallet)) return changed;
                changed=true;
            }
        }
    }
}
