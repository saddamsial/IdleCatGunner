using System;
using System.Linq;

namespace CatGunner.Runtime
{
    [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "OriginalPetInventory")] public sealed class PetInventory
    {
        public SaveData State {get;}
        public ProgressionCatalogue Catalogue {get;}
        public event Action Changed;
        public event Action<int,bool> Acquired;
        public PetInventory(SaveData state,ProgressionCatalogue catalogue)
        {
            State=state;Catalogue=catalogue;
            state.Pet_Selected_items=Fit(state.Pet_Selected_items,3,-1);state.Owned_Pet_list=Fit(state.Owned_Pet_list,16,-1);
            state.Owned_Pet_LockGroup=Fit(state.Owned_Pet_LockGroup,16,-1);state.Selected_LockGroup=Fit(state.Selected_LockGroup,3,-1);
            if(state.Pet_Collect==null||state.Pet_Collect.Length==0)state.Pet_Collect=new bool[10];
            if(state.Pet_Collect.Length!=10||state.Pet_Selected_items.Concat(state.Owned_Pet_list).Any(v=>v< -1||v>=10))throw new ArgumentException("Unsupported pet id; preserve save");
        }
        private static int[] Fit(int[] old,int n,int empty){if(old!=null&&old.Length==n)return old;var next=Enumerable.Repeat(empty,n).ToArray();if(old!=null)Array.Copy(old,next,Math.Min(n,old.Length));return next;}
        public int FirstEmpty=>Array.IndexOf(State.Owned_Pet_list,-1);
        public int Draw(bool diamonds=false)
        {
            if(FirstEmpty<0||(diamonds?State.Dia:State.PetCoin)<100)return -1;int slot=FirstEmpty;
            State.Owned_Pet_list[slot]=0;State.Owned_Pet_LockGroup[slot]=-1;
            if(diamonds){State.Dia-=100;State._useDia+=100;}else State.PetCoin-=100;
            Record(0);Changed?.Invoke();return 0;
        }
        public int DrawDailyAd(DateTime now)
        {
            if((State.Wave_Now<1&&State.Lv_Now<1)||State.AD_Daily_Pet_LastDate==now.ToString("yyyyMMdd")||FirstEmpty<0)return -1;
            int slot=FirstEmpty;State.Owned_Pet_list[slot]=1;State.Owned_Pet_LockGroup[slot]=-1;
            State.AD_Daily_Pet_LastDate=now.ToString("yyyyMMdd");Record(1);Changed?.Invoke();return 1;
        }
        private void Record(int pet){bool first=!State.Pet_Collect[pet];State.Pet_Collect[pet]=true;Acquired?.Invoke(pet,first);}
#if UNITY_EDITOR
        public bool EditorGrantPet(int pet)
        {
            if(!GameDebugTools.Enabled || pet<0 || pet>=10 || FirstEmpty<0)return false;
            int slot=FirstEmpty;
            State.Owned_Pet_list[slot]=pet;State.Owned_Pet_LockGroup[slot]=-1;
            Record(pet);Changed?.Invoke();return true;
        }
#endif
        public bool Merge(int source,int target,int expected=-1)
        {
            if(source<0||source>=16||target<0||target>=16||source==target)return false;int pet=State.Owned_Pet_list[source];
            if(pet<0||pet>=9||State.Owned_Pet_list[target]!=pet||(expected>=0&&pet!=expected)||State.Owned_Pet_LockGroup[source]>=0||State.Owned_Pet_LockGroup[target]>=0)return false;
            State.Owned_Pet_list[source]=-1;State.Owned_Pet_list[target]=pet+1;State.Owned_Pet_LockGroup[source]=State.Owned_Pet_LockGroup[target]=-1;Record(pet+1);Changed?.Invoke();return true;
        }
        public bool Equip(int source,int slot)
        {
            if(source<0||source>=16||slot<0||slot>=3||State.Owned_Pet_list[source]<0||State.Owned_Pet_LockGroup[source]>=0||State.Selected_LockGroup[slot]>=0)return false;
            (State.Owned_Pet_list[source],State.Pet_Selected_items[slot])=(State.Pet_Selected_items[slot],State.Owned_Pet_list[source]);
            (State.Owned_Pet_LockGroup[source],State.Selected_LockGroup[slot])=(State.Selected_LockGroup[slot],State.Owned_Pet_LockGroup[source]);Changed?.Invoke();return true;
        }
        public bool Unequip(int slot)
        {
            if(slot<0||slot>=3||State.Pet_Selected_items[slot]<0||State.Selected_LockGroup[slot]>=0||FirstEmpty<0)return false;int empty=FirstEmpty;
            State.Owned_Pet_list[empty]=State.Pet_Selected_items[slot];State.Owned_Pet_LockGroup[empty]=State.Selected_LockGroup[slot];State.Pet_Selected_items[slot]=-1;State.Selected_LockGroup[slot]=-1;Changed?.Invoke();return true;
        }
        public bool SwapOwned(int a,int b)
        {
            if(a<0||a>=16||b<0||b>=16||a==b||State.Owned_Pet_LockGroup[a]>=0||State.Owned_Pet_LockGroup[b]>=0)return false;
            (State.Owned_Pet_list[a],State.Owned_Pet_list[b])=(State.Owned_Pet_list[b],State.Owned_Pet_list[a]);Changed?.Invoke();return true;
        }
        public DecimalAmount MoneyPercent=>State.Pet_Selected_items.Where(v=>v>=0).Aggregate(new DecimalAmount(100),(sum,id)=>sum+Catalogue.Pets[id].Money.Value);
        public int MoveSpeedPercent=>100+State.Pet_Selected_items.Where(v=>v>=0).Sum(id=>Catalogue.Pets[id].MoveSpeed);
    }
}
