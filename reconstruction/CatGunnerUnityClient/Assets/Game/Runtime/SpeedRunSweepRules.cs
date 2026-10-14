using System;
namespace CatGunner.Runtime
{
    // vc257 ARM64 Power_SpeedRun_return and SweepRequiredPower_return.
    // Uses the existing bounded DecimalAmount/precision adapter, not full InfVal.
    [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "OriginalSpeedRunSweepRules")] public static class SpeedRunSweepRules
    {
        public static DecimalAmount RequiredPower(DecimalAmount stageHealth, int treeCount) =>
            RaidRules.Precision(BossSweepRules.Divide(stageHealth * new DecimalAmount(treeCount * 193), 2400), 5).Value;
        public static int Targets(GunType type, int pellets)
        {
            switch (type)
            {
                case GunType.LASER: return 7;
                case GunType.PIERCE: return 5;
                case GunType.SHOTGUN: return Math.Max(1, pellets);
                case GunType.EXPLOSIVE: case GunType.MISSILE: return 5;
                case GunType.BLAST_SNIPER: return 10;
                default: return 1;
            }
        }
        // ARM64 FMUL rounds to float32 before conversion. Mono may retain an
        // extended intermediate; the byte roundtrip explicitly preserves that boundary.
        static float Single(float value) => BitConverter.ToSingle(BitConverter.GetBytes(value), 0);
        public static DecimalAmount Power(DecimalAmount damage, DecimalAmount critical, float chance,
            float cooldown, GunType type, int pellets)
        {
            if (cooldown <= .001f) return new DecimalAmount(0);
            int centiseconds = (int)Single(cooldown * 100f);
            if (centiseconds < 1) return new DecimalAmount(0); // Defensive local decimal boundary; normal cooldown >= .05.
            int percent = Math.Max(0, Math.Min(100, (int)Math.Round((double)Single(chance * 100f), MidpointRounding.ToEven)));
            var weighted = damage.Percent(new DecimalAmount(100 - percent)) + critical.Percent(new DecimalAmount(percent));
            return BossSweepRules.Divide(weighted * new DecimalAmount(Targets(type, pellets) * 100), centiseconds);
        }
    }
}
