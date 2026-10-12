using System;
namespace CatGunner.Recovery
{
    // vc257 native StarGem_Pig semantics; local calendar/save/payment remain separate.
    public sealed class OriginalStarGemPig
    {
        public readonly OriginalSaveData State;
        readonly Func<DateTime> now;
        static readonly int[] capacities={660,1500,2500},purchaseMax={2,2,1};
        public OriginalStarGemPig(OriginalSaveData state,Func<DateTime> clock){State=state;now=clock;}
        public static int CapacityFor(int level)=>capacities[Math.Min(3,Math.Max(1,level))-1];
        public static int PurchaseMaxFor(int level)=>purchaseMax[Math.Min(3,Math.Max(1,level))-1];
        public int Capacity=>CapacityFor(State.Pig_Lv);
        public int PurchaseMax=>PurchaseMaxFor(State.Pig_Lv);
        public float Fill=>Math.Min(1f,Math.Max(0f,(float)State.Pig_Gem/Capacity));
        public bool SoldOut=>State.Pig_Lv>=3&&State.Pig_PurchaseCount>=PurchaseMax;
        public bool Purchasable=>State.Pig_Gem>=Capacity&&!SoldOut;
        public void Load()
        {
            if(State.Pig_Lv<=0){State.Pig_Lv=1;State.Pig_Gem=State.Pig_PurchaseCount=0;State.Pig_Season_Index=-1;}
            else{State.Pig_Lv=Math.Min(3,State.Pig_Lv);State.Pig_Gem=Math.Max(0,State.Pig_Gem);State.Pig_PurchaseCount=Math.Max(0,State.Pig_PurchaseCount);}
            SeasonCheck();
        }
        public bool SeasonCheck()
        {
            int season=OriginalRaidRules.SeasonIndex(now());if(State.Pig_Season_Index==season)return false;
            State.Pig_Lv=1;State.Pig_Gem=State.Pig_PurchaseCount=0;State.Pig_Season_Index=season;return true;
        }
        public bool Add(int amount)
        {
            if(amount<=0||SoldOut)return false;
            // Saturating intermediate protects malformed local saves from integer wrap.
            int next=(int)Math.Min(Capacity,(long)State.Pig_Gem+amount);
            if(next==State.Pig_Gem)return false;State.Pig_Gem=next;return true;
        }
        public bool ApplyReward(int productLevel)
        {
            if(productLevel<1||productLevel>3)return false;SeasonCheck();
            State.StarGem=checked(State.StarGem+CapacityFor(productLevel));
            if(State.Pig_Lv==productLevel)
            {
                State.Pig_Gem=0;State.Pig_PurchaseCount++;
                if(productLevel<3&&State.Pig_PurchaseCount>=PurchaseMax){State.Pig_PurchaseCount=0;State.Pig_Lv++;}
            }
            return true;
        }
    }
}
