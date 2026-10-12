using System;
using System.Linq;

namespace CatGunner.Recovery
{
    // vc257 native offer: an owned inventory cell awaiting advertising placement9.
    // It is never equipped as a borrowed weapon. Service completion belongs to the
    // explicitly requested local adapter in Gun_manager.
    public sealed class OriginalTemporaryGun
    {
        readonly OriginalGunInventory inventory;
        OriginalSaveData State=>inventory.State;
        public Func<DateTime> UtcNow=()=>DateTime.UtcNow;
        public OriginalTemporaryGun(OriginalGunInventory owner){inventory=owner??throw new ArgumentNullException(nameof(owner));}
        public bool HasOffer=>State.AD_Gun_SlotIndex!=-1;
        public double RemainingSeconds=>!HasOffer?0:(new DateTime(State.AD_Gun_EndUtcTicks,DateTimeKind.Utc)-UtcNow()).TotalSeconds;
        public bool Matches(int slot,int gun,long end)=>HasOffer&&slot>=0&&slot<16&&State.AD_Gun_SlotIndex==slot&&State.AD_Gun_Num==gun&&State.AD_Gun_EndUtcTicks==end&&State.Owned_Gun_list[slot]==gun;
        public int AddAdRewardGun(int gun,float seconds)=>Add(gun,seconds,true);
        int Add(int gun,float seconds,bool notify)
        {
            if(HasOffer||inventory.FirstEmpty<0)return -1;
            if(gun<0||gun>=65)throw new ArgumentOutOfRangeException(nameof(gun));
            long end=UtcNow().AddSeconds(seconds).Ticks;int slot=inventory.FirstEmpty;
            State.Owned_Gun_list[slot]=gun;State.Owned_Gun_Pause[slot]=false;
            State.AD_Gun_SlotIndex=slot;State.AD_Gun_Num=gun;State.AD_Gun_EndUtcTicks=end;
            if(notify)inventory.NotifyChanged();return slot;
        }
        public bool CheckAdGunEvent(bool weapon02AdOn)
        {
            if(State.AD_Gun_Event_Given||!weapon02AdOn)return false;
            if(State.Gun_Collect.Skip(10).Any(v=>v)){State.AD_Gun_Event_Given=true;inventory.NotifyChanged();return false;}
            if(!State.Has_Merged||HasOffer)return false;
            int slot=Add(14,1800,false);if(slot<0)return false;
            State.AD_Gun_Event_Given=true;inventory.NotifyChanged();return true;
        }
        public bool Acquire()
        {
            if(!HasOffer)return false;int gun=State.AD_Gun_Num;
            // Caller validates a captured offer identity before asynchronous completion.
            Clear(false,false);inventory.RegisterAcquired(gun);inventory.NotifyChanged();return true;
        }
        public void Clear(bool removeOwned,bool notify=true)
        {
            int slot=State.AD_Gun_SlotIndex;
            if(removeOwned&&slot>=0&&slot<16&&State.Owned_Gun_list[slot]==State.AD_Gun_Num){State.Owned_Gun_list[slot]=-1;State.Owned_Gun_Pause[slot]=false;}
            State.AD_Gun_SlotIndex=State.AD_Gun_Num=-1;State.AD_Gun_EndUtcTicks=0;
            if(notify)inventory.NotifyChanged();
        }
        public bool Expire(){if(!HasOffer)return false;Clear(true);return true;}
        public void OnLoaded()
        {
            if(!HasOffer)return;
            if(!Matches(State.AD_Gun_SlotIndex,State.AD_Gun_Num,State.AD_Gun_EndUtcTicks)){Clear(false,false);return;}
            if(RemainingSeconds<=0)Clear(true,false);
        }
        public string TimeText
        {
            get{int seconds=(int)Math.Max(0,RemainingSeconds);return string.Format(System.Globalization.CultureInfo.InvariantCulture,"{0:00}:{1:00}",seconds/60,seconds%60);}
        }
    }
}
