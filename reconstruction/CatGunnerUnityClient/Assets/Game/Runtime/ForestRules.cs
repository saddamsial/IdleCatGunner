using System;

namespace CatGunner.Runtime
{
    // Pure planning contract from Tree_manager StageAdvance/Tree_Batch/Map_Batch.
    // Original grids, tree degree multipliers and runtime lifecycle remain to be connected.
    [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "OriginalForestRules")] public static class ForestRules
    {
        public static void Advance(ref int stage, ref int level)
        {
            // preferred VA 0x2bad6ac; level 4 advances the stage and resets level to zero.
            if (level>3) {level=0;stage=unchecked(stage+1);} else level=unchecked(level+1);
        }
        public static bool AdvanceAfterWin(ref int stage, ref int level, ref int maximum, int skipPercent, Func<float> roll)
        {
            // Tree_manager.Game_Win 0x2bad174: roll before testing the old frontier.
            Advance(ref stage,ref level);
            bool skipped=false;
            if(skipPercent>=1 && roll()*100f<skipPercent)
            {
                int candidateStage=stage,candidateLevel=level;
                Advance(ref candidateStage,ref candidateLevel);
                if(unchecked(candidateStage*10+candidateLevel)<maximum)
                {stage=candidateStage;level=candidateLevel;skipped=true;}
            }
            maximum=Math.Max(maximum,unchecked(stage*10+level));
            return skipped;
        }
        public static int TreesPerGrid(int stage)
        {
            // 0x2bad8b4 preserves the compiled 32-bit expression and clamps it.
            int count=unchecked(stage*10+30);
            if(count>99) count=100;
            if(count<31) count=30;
            return count;
        }
        public static int TreeCount(int stage, int level)
        {
            int count=unchecked(TreesPerGrid(stage)*(level+1));
            return level==4 ? count|1 : count;
        }
        public static int ActiveGridCount(int level) => unchecked(level+1);
        public static bool HasBoss(int level) => level==4;
        public static float LastBorderLocalZ(int level) => unchecked((level+1)*50+60);
        public static int GroundSpriteIndex(int stage) => stage%10;

        // Tree_Grid::.cctor FieldRef 34 / field 37640. The 80-byte initializer
        // SHA256 matches its compiler-generated field name (see contract report).
        private static readonly float[,] DegreeRates =
        {
            {80, 20, 0, 0}, {50, 45, 5, 0}, {20, 55, 25, 0},
            {5, 35, 60, 0}, {0, 15, 85, 0}
        };

        public static int DegreeAtRoll(int wave, float roll)
        {
            float cumulative = 0;
            for (int degree=0; degree<DegreeRates.GetLength(1); degree++)
            {
                cumulative += DegreeRates[wave,degree];
                if (roll<cumulative) return degree;
            }
            return 0;
        }

        public static uint Spread(uint value)
        {
            value=(value | value<<8) & 0x00ff00ff;
            value=(value | value<<4) & 0x0f0f0f0f;
            value=(value | value<<2) & 0x33333333;
            return (value | value<<1) & 0x55555555;
        }
        public static uint Morton(uint x, uint z) => Spread(x) | (Spread(z)<<1);

        public static bool[] SelectSlots(int poolSize, int requestedCount)
        {
            var order = new int[poolSize];
            var selected = new bool[poolSize];
            for (int slot=0; slot<poolSize; slot++) order[slot]=slot;
            Array.Sort(order, (a,b) => Morton((uint)(a%10),(uint)(a/10))
                .CompareTo(Morton((uint)(b%10),(uint)(b/10))));
            int count=Math.Min(requestedCount,poolSize);
            for (int k=0, cursor=0; k<count; k++,cursor+=poolSize)
                selected[order[cursor/count]]=true;
            return selected;
        }
    }
}
