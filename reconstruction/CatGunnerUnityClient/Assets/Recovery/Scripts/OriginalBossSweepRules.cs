using System;
using System.Numerics;
namespace CatGunner.Recovery
{
    // vc257 Boss sweep arithmetic through the existing decimal adapter.
    public static class OriginalBossSweepRules
    {
        // Bounded local division, retaining ample guard digits before native precision-5 truncation.
        public static DecimalAmount Divide(DecimalAmount value,int divisor)
        {
            if(divisor<=0)throw new ArgumentOutOfRangeException(nameof(divisor));
            const int guardDigits=24;
            return new DecimalAmount(value.Coefficient*BigInteger.Pow(10,guardDigits)/divisor,checked(value.Exponent-guardDigits));
        }
        public static DecimalAmount RequiredPower(DecimalAmount health,float maxSeconds)
        {
            int seconds=Math.Max(1,(int)Math.Round((double)(maxSeconds*70f/100f),MidpointRounding.ToEven));
            return OriginalRaidRules.Precision(Divide(health,seconds),5).Value;
        }
        public static int FillPercent(DecimalAmount power,DecimalAmount required)
        {
            if(required.Coefficient.Sign<=0||power.CompareTo(required)>=0)return 100;
            if(power.Coefficient.Sign<=0)return 0;
            int exponent=Math.Min(power.Exponent,required.Exponent);
            return (int)(power.Coefficient*BigInteger.Pow(10,power.Exponent-exponent)*100/
                (required.Coefficient*BigInteger.Pow(10,required.Exponent-exponent)));
        }
        public static DecimalAmount ExpectedDamage(DecimalAmount gun,DecimalAmount rebirth,int skin,
            int fishDamage,DecimalAmount relic,int buff,int stars,int fishCritical,DecimalAmount relicCritical,int criticalChance)
        {
            var normal=gun.Percent(rebirth).Percent(new DecimalAmount(skin)).Percent(new DecimalAmount(100+fishDamage))
                .Percent(relic).DiscardFraction()*new DecimalAmount(buff);
            normal=OriginalStarRules.DamageApply(normal,stars);
            var critical=normal.Percent(new DecimalAmount(125+fishCritical)).Percent(relicCritical).DiscardFraction();
            int chance=Math.Max(0,Math.Min(100,criticalChance));
            return normal.Percent(new DecimalAmount(100-chance))+critical.Percent(new DecimalAmount(chance));
        }
        public static DecimalAmount Dps(DecimalAmount expected,float cooldown)
        {
            if(cooldown<=0.001f)return new DecimalAmount(0);
            // Native quantizes to centiseconds before InfVal division.
            int centiseconds=(int)(cooldown*100f);
            return centiseconds<1?new DecimalAmount(0):Divide(expected*new DecimalAmount(100),centiseconds);
        }
    }
}
