using System;
using System.Linq;

namespace CatGunner.Runtime
{
    // Matching Gun_manager/Gun_Item_List/Gun_Slot business rules over the
    // independent recovery save. UI animation and original manager bootstrap
    // are separate bindings; temporary offers use TemporaryGun.
    [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "OriginalGunInventory")] public sealed class GunInventory
    {
        public SaveData State {get;}
        public event Action Changed;
        public event Action<int,bool> Acquired;
        public event Action Merged;
        internal void NotifyChanged()=>Changed?.Invoke();
        internal void RegisterAcquired(int gun)=>RecordAcquired(gun);
        private readonly Func<int,int,int> random;
        public GunInventory(SaveData state,Func<int,int,int> randomRange)
        {
            State=state;random=randomRange??throw new ArgumentNullException(nameof(randomRange));
            state.Owned_Gun_list=Fit(state.Owned_Gun_list,16,-1);
            state.Owned_Gun_Pause=Fit(state.Owned_Gun_Pause,16,false);
            state.Selected_Pause=Fit(state.Selected_Pause,3,false);
            state.Weapon_Get_Counts=Fit(state.Weapon_Get_Counts,13,0);
            if(state.Gun_Collect==null || state.Gun_Collect.Length!=65)throw new ArgumentException("Original65-gun collection required");
            if(state.Selected_items==null || state.Selected_items.Length!=3 || state.Selected_items.All(v=>v==-1))throw new ArgumentException("At least one of3slots must be equipped");
            if(state.Owned_Gun_list.Concat(state.Selected_items).Any(v=>v< -1 || v>=65))throw new ArgumentException("Unknown gun id; save unchanged");
        }
        private static T[] Fit<T>(T[] source,int length,T fill)
        {
            if(source!=null && source.Length==length)return source;
            var next=Enumerable.Repeat(fill,length).ToArray();if(source!=null)Array.Copy(source,next,Math.Min(source.Length,length));return next;
        }
        public int FirstEmpty => Array.IndexOf(State.Owned_Gun_list,-1);
        public bool IsAdSlot(int index)=>State.AD_Gun_SlotIndex>=0 && State.AD_Gun_SlotIndex==index;
        private bool Occupied(int index)=>index>=0 && index<16 && State.Owned_Gun_list[index]>=0;
        public int DrawNormal()
        {
            if(State.Dia<100 || FirstEmpty<0)return -1;
            int index=FirstEmpty,gun=random(0,5);
            if(gun<0 || gun>=5)throw new InvalidOperationException("Random range outside original grade0");
            State.Owned_Gun_list[index]=gun;State.Owned_Gun_Pause[index]=false;
            State.Dia-=100;State._useDia+=100;State.Gacha_Draw_Count++;
            RecordAcquired(gun);Changed?.Invoke();return gun;
        }
        public int DrawDailyAd(DateTime now,bool earlyPreview=false)
        {
            if((!earlyPreview&&State.Stage_Value_Max<=29)||State.AD_Daily_Gun_LastDate==now.ToString("yyyyMMdd")||FirstEmpty<0)return -1;
            int gun=random(5,10);if(gun<5||gun>=10)throw new InvalidOperationException("Original daily gun range");
            State.AD_Daily_Gun_LastDate=now.ToString("yyyyMMdd");AddRewardGun(gun);return gun;
        }
        private void RecordAcquired(int gun)
        {
            State.Weapon_Get_Counts[gun/5]++;
            bool first=!State.Gun_Collect[gun];State.Gun_Collect[gun]=true;Acquired?.Invoke(gun,first);
        }
        public bool Merge(int source,int target,int expectedSource=-1,int expectedTarget=-1)
        {
            if(source==target || !Occupied(source) || !Occupied(target) || IsAdSlot(source) || IsAdSlot(target) ||
                State.Owned_Gun_Pause[source] || State.Owned_Gun_Pause[target])return false;
            int first=State.Owned_Gun_list[source],second=State.Owned_Gun_list[target];
            if((expectedSource>=0 && first!=expectedSource) || (expectedTarget>=0 && second!=expectedTarget) || first/5!=second/5 || first/5>=12)return false;
            int low=(first/5+1)*5,gun=random(low,Math.Min(low+5,65));
            if(gun<low || gun>=Math.Min(low+5,65))throw new InvalidOperationException("Random range outside original next grade");
            State.Owned_Gun_list[source]=-1;State.Owned_Gun_list[target]=gun;
            State.Owned_Gun_Pause[source]=false;State.Owned_Gun_Pause[target]=false;State.Has_Merged=true;
            RecordAcquired(gun);Changed?.Invoke();Merged?.Invoke();return true;
        }
        public bool Equip(int source,int slot)
        {
            if(!Occupied(source) || IsAdSlot(source) || slot<0 || slot>=3)return false;
            int gun=State.Owned_Gun_list[source],old=State.Selected_items[slot];bool held=State.Owned_Gun_Pause[source],oldHeld=State.Selected_Pause[slot];
            State.Owned_Gun_list[source]=old;State.Owned_Gun_Pause[source]=old>=0 && oldHeld;
            State.Selected_items[slot]=gun;State.Selected_Pause[slot]=held;Changed?.Invoke();return true;
        }
        public bool Unequip(int slot)
        {
            if(slot<0 || slot>=3 || State.Selected_items[slot]<0 || State.Selected_items.Count(v=>v>=0)<2 || FirstEmpty<0)return false;
            int empty=FirstEmpty;State.Owned_Gun_list[empty]=State.Selected_items[slot];State.Owned_Gun_Pause[empty]=State.Selected_Pause[slot];
            State.Selected_items[slot]=-1;State.Selected_Pause[slot]=false;Changed?.Invoke();return true;
        }
        public bool SwapOwned(int first,int second)
        {
            if(first<0 || first>=16 || second<0 || second>=16 || first==second || IsAdSlot(first) || IsAdSlot(second))return false;
            (State.Owned_Gun_list[first],State.Owned_Gun_list[second])=(State.Owned_Gun_list[second],State.Owned_Gun_list[first]);
            (State.Owned_Gun_Pause[first],State.Owned_Gun_Pause[second])=(State.Owned_Gun_Pause[second],State.Owned_Gun_Pause[first]);Changed?.Invoke();return true;
        }
        public bool SwapSelected(int first,int second)
        {
            if(first<0 || first>=3 || second<0 || second>=3 || first==second)return false;
            (State.Selected_items[first],State.Selected_items[second])=(State.Selected_items[second],State.Selected_items[first]);
            (State.Selected_Pause[first],State.Selected_Pause[second])=(State.Selected_Pause[second],State.Selected_Pause[first]);Changed?.Invoke();return true;
        }
        // Called only after an earned native mission reward passes its gates.
        public bool AddRewardGun(int gun)
        {
            if(gun<0||gun>=65||FirstEmpty<0)return false;int empty=FirstEmpty;
            State.Owned_Gun_list[empty]=gun;State.Owned_Gun_Pause[empty]=false;RecordAcquired(gun);Changed?.Invoke();return true;
        }
        public bool SetPaused(int index,bool value,bool equipped=false)
        {
            if(equipped){if(index<0||index>=3||State.Selected_items[index]<0)return false;State.Selected_Pause[index]=value;}
            else {if(!Occupied(index)||IsAdSlot(index))return false;State.Owned_Gun_Pause[index]=value;}
            Changed?.Invoke();return true;
        }
    }
}
