using System;
using System.Linq;

namespace CatGunner.Recovery
{
    // Ordinary Safe_manager transactions from vc257. The local profile adapter
    // refuses malformed saves before normalization, instead of erasing items.
    public sealed class OriginalSafeInventory
    {
        public const int SlotCount=16,FreeSlots=6,UnlockStageValue=390;
        public readonly OriginalSaveData State;
        private readonly OriginalGunInventory guns;
        private readonly Func<int> stageValue;
        public event Action Changed;
        public bool Unlocked=>stageValue()>=UnlockStageValue;
        public int OpenCount=>Math.Min(SlotCount,FreeSlots+State.Safe_Purchased_Count);
        public int NextPrice=>50+50*State.Safe_Purchased_Count;
        public int GunCount=>State.Safe_Gun_list.Count(g=>g>=0);
        public int FirstEmpty=>Array.FindIndex(State.Safe_Gun_list,0,OpenCount,g=>g==-1);
        public OriginalSafeInventory(OriginalGunInventory inventory,Func<int> stage=null)
        {
            guns=inventory;State=inventory.State;stageValue=stage??(()=>State.Stage_Value_Max);
            ValidateState(State);
            if(State.Safe_Gun_list==null||State.Safe_Gun_list.Length!=SlotCount)
            {
                var expanded=Enumerable.Repeat(-1,SlotCount).ToArray();
                if(State.Safe_Gun_list!=null)Array.Copy(State.Safe_Gun_list,expanded,State.Safe_Gun_list.Length);
                State.Safe_Gun_list=expanded;
            }
        }
        public static void ValidateState(OriginalSaveData state)
        {
            if(state.Safe_Purchased_Count<0||state.Safe_Purchased_Count>10||
                (state.Safe_Gun_list!=null&&(state.Safe_Gun_list.Length>SlotCount||state.Safe_Gun_list.Any(g=>g< -1||g>=65))))
                throw new NotSupportedException("Unsupported safe profile; original save preserved.");
        }
        public bool IsOpen(int index)=>index>=0&&index<OpenCount;
        public bool IsNext(int index)=>index>=0&&index<SlotCount&&index==OpenCount;
        public bool CanPurchase(int index)=>IsNext(index)&&State.Dia>=NextPrice;
        public bool Purchase(int index)
        {
            if(!CanPurchase(index))return false;
            int use=checked(State._useDia+NextPrice);
            State.Dia-=NextPrice;State._useDia=use;State.Safe_Purchased_Count++;
            Changed?.Invoke();return true;
        }
        public int Put(int inventoryIndex,int expected=-1)
        {
            if(!Unlocked||inventoryIndex<0||inventoryIndex>=16||guns.IsAdSlot(inventoryIndex))return -1;
            int gun=State.Owned_Gun_list[inventoryIndex];
            if(gun<0||(expected>=0&&gun!=expected))return -1;
            int at=FirstEmpty;if(at<0)return -1;
            State.Safe_Gun_list[at]=gun;State.Owned_Gun_list[inventoryIndex]=-1;
            State.Owned_Gun_Pause[inventoryIndex]=false;
            Changed?.Invoke();return at;
        }
        public int TakeOut(int safeIndex,int expected=-1)
        {
            // Native Take_Out permits any stored slot, including a legacy slot
            // outside OpenCount. It does not recheck the stage unlock gate.
            if(safeIndex<0||safeIndex>=SlotCount)return -1;
            int gun=State.Safe_Gun_list[safeIndex];
            if(gun<0||(expected>=0&&gun!=expected))return -1;
            int at=guns.FirstEmpty;if(at<0)return -1;
            State.Owned_Gun_list[at]=gun;State.Owned_Gun_Pause[at]=true;
            State.Safe_Gun_list[safeIndex]=-1;
            Changed?.Invoke();return at;
        }
    }
}
