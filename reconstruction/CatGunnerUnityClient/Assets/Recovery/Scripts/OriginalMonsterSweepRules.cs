using System;
namespace CatGunner.Recovery
{
    // vc257 ARM64 Monster sweep. DecimalAmount is the bounded local InfVal adapter.
    public static class OriginalMonsterSweepRules
    {
        static float Single(float value)=>BitConverter.ToSingle(BitConverter.GetBytes(value),0);
        public static DecimalAmount RequiredPower(DecimalAmount waveHealth,int level)
        {
            if(level<0||level>4)throw new ArgumentOutOfRangeException(nameof(level));
            int interval=(int)Single(OriginalMonsterRules.Intervals[level]*100f);
            return OriginalRaidRules.Precision(OriginalBossSweepRules.Divide(
                waveHealth*new DecimalAmount((100+level*40)*150),100*interval),5).Value;
        }
        public static DecimalAmount Power(DecimalAmount expected,float cooldown,GunType type,int pellets)
        {
            if(cooldown<=.001f)return new DecimalAmount(0);
            int interval=(int)Single(cooldown*100f);
            return interval<1?new DecimalAmount(0):OriginalBossSweepRules.Divide(
                expected*new DecimalAmount(OriginalSpeedRunSweepRules.Targets(type,pellets)*100),interval);
        }
        public static void Target(DecimalAmount power,int wave,int level,Func<int,int,DecimalAmount> required,
            out int nextWave,out int nextLevel,out int completed)
        {
            if(wave<0||level<0||level>4)throw new ArgumentOutOfRangeException(nameof(wave));
            nextWave=wave;nextLevel=level;completed=0;
            while(completed<100&&power.CompareTo(required(nextWave,nextLevel))>=0)
            {
                completed++;nextLevel++;
                if(nextLevel>4){nextLevel=0;nextWave=checked(nextWave+1);}
            }
        }
    }
}
