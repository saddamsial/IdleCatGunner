using System;
using System.Globalization;
using System.Numerics;
using UnityEngine;

namespace CatGunner.Recovery
{
    [Serializable] public sealed class OriginalStarCatalogue
    {
        public int[] SuccessRates;
        public string[] LocaleCodes, SlotUpgrade, NotEnoughGem, Success, Fail;
        public static OriginalStarCatalogue Load()
        {
            var asset=Resources.Load<TextAsset>("OriginalStarCatalogue");
            if(asset==null)throw new InvalidOperationException("Original star catalogue missing");
            var data=JsonUtility.FromJson<OriginalStarCatalogue>(asset.text);
            if(data.SuccessRates.Length!=20||data.LocaleCodes.Length!=14||
               data.SlotUpgrade.Length!=14||data.NotEnoughGem.Length!=14||data.Success.Length!=14||data.Fail.Length!=14)
                throw new InvalidOperationException("Original star catalogue incomplete");
            return data;
        }
        // Local locale selection, not the original I2 language manager lifecycle.
        public string Text(string[] values)=>values[Mathf.Max(0,RecoveryLanguage.Index)];
    }

    public static class OriginalStarRules
    {
        public const int MaxLv=20, UnlockStageValue=390;
        private static OriginalStarCatalogue catalogue;
        private static DecimalAmount[] bonuses;
        public static OriginalStarCatalogue Catalogue=>catalogue??(catalogue=OriginalStarCatalogue.Load());
        public static double StepMult(int targetLevel)=>targetLevel<1?1:1.5*Math.Pow(1.07,targetLevel-1);
        private static DecimalAmount FromNativeDouble(double value)
        {
            string s=value.ToString("G17",CultureInfo.InvariantCulture);
            int at=s.IndexOfAny(new[]{'e','E'}),exponent=0;
            if(at>=0){exponent=int.Parse(s.Substring(at+1),CultureInfo.InvariantCulture);s=s.Substring(0,at);}
            int point=s.IndexOf('.');
            if(point>=0){exponent-=s.Length-point-1;s=s.Remove(point,1);}
            return new DecimalAmount(BigInteger.Parse(s,CultureInfo.InvariantCulture),exponent);
        }
        public static DecimalAmount BonusPct(int level)
        {
            if(bonuses==null)
            {
                bonuses=new DecimalAmount[21];bonuses[0]=new DecimalAmount(0);double total=1;
                for(int i=1;i<=20;i++)
                {
                    // Preserve native multiplication order and unrounded accumulator.
                    total=total*Math.Pow(1.07,i-1)*1.5;
                    bonuses[i]=OriginalRaidRules.Precision(FromNativeDouble((total-1)*100),2).Value;
                }
            }
            return bonuses[Math.Max(0,Math.Min(20,level))];
        }
        public static DecimalAmount DamageApply(DecimalAmount damage,int level)=>level<1?damage:
            damage.Percent(new DecimalAmount(100)+BonusPct(level));
        public static int Cost(int level)=>level>=20?0:(level+1)*50;
        public static int Rate(int level,int failed)
        {
            if(level>=20)return 0;
            int value=Catalogue.SuccessRates[Math.Max(0,level)];
            return level+1>=18?(int)Math.Min(5,(long)value+failed):value;
        }
        public static void ValidateState(OriginalSaveData state)
        {
            // Strict local preservation boundary for corrupt nonempty profiles.
            // Native LoadData clamps/copies; recovery does not silently truncate a save.
            if(state.StarGem<0||state.Star_Slot_Lv!=null&&state.Star_Slot_Lv.Length!=0&&
               (state.Star_Slot_Lv.Length!=3||Array.Exists(state.Star_Slot_Lv,v=>v<0||v>20))||
               state.Star_Slot_FailCount!=null&&state.Star_Slot_FailCount.Length!=0&&
               (state.Star_Slot_FailCount.Length!=3||Array.Exists(state.Star_Slot_FailCount,v=>v<0)))
                throw new InvalidOperationException("Invalid star profile; save preserved");
            if(state.Star_Slot_Lv==null||state.Star_Slot_Lv.Length==0)state.Star_Slot_Lv=new int[3];
            if(state.Star_Slot_FailCount==null||state.Star_Slot_FailCount.Length==0)state.Star_Slot_FailCount=new int[3];
        }
    }

    public sealed class OriginalStarProgression
    {
        public readonly OriginalSaveData State;
        private readonly Func<int,int,int> random;
        private readonly Func<int> maxStage;
        public event Action GemChanged;
        public event Action<int,int> LevelChanged;
        public OriginalStarProgression(OriginalSaveData state,Func<int,int,int> random,Func<int> maxStage=null)
        {OriginalStarRules.ValidateState(state);State=state;this.random=random;this.maxStage=maxStage??(()=>State.Stage_Value_Max);}
        public bool IsUnlocked=>maxStage()>=390;
        public bool ValidSlot(int slot)=>slot>=0&&slot<3;
        public int Level(int slot)=>ValidSlot(slot)?State.Star_Slot_Lv[slot]:0;
        public int Cost(int slot)=>OriginalStarRules.Cost(Level(slot));
        public int Rate(int slot)=>OriginalStarRules.Rate(Level(slot),ValidSlot(slot)?State.Star_Slot_FailCount[slot]:0);
        public StarUpgrade_manager.UpgradeResult Upgrade(int slot)
        {
            if(!ValidSlot(slot)||!IsUnlocked)return StarUpgrade_manager.UpgradeResult.Locked;
            if(Level(slot)>=20)return StarUpgrade_manager.UpgradeResult.MaxLv;
            int cost=Cost(slot);if(State.StarGem<cost)return StarUpgrade_manager.UpgradeResult.NotEnoughGem;
            int rate=Rate(slot);State.StarGem-=cost;GemChanged?.Invoke();
            bool success=random(0,100)<rate;
            if(success){State.Star_Slot_Lv[slot]++;State.Star_Slot_FailCount[slot]=0;LevelChanged?.Invoke(slot,Level(slot));}
            else State.Star_Slot_FailCount[slot]++;
            return success?StarUpgrade_manager.UpgradeResult.Success:StarUpgrade_manager.UpgradeResult.Fail;
        }
    }
}
