using System;
using System.Linq;
using System.Globalization;

namespace CatGunner.Runtime
{
    // Native task/reward rules. The injected clock is an explicit offline
    // substitute for Time_manager; it does not represent server time trust.
    [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "OriginalMissions")] public sealed class Missions
    {
        public SaveData State {get;}
        public ProgressionCatalogue Catalogue {get;}
        private readonly GunInventory guns;
        private readonly Func<DateTime> clock;
        public event Action Changed;
        public Func<bool> PremiumAccess=()=>false;
        public bool VipAccess=>State.Mission_is_Vip&&PremiumAccess();
        public bool LuxuryAccess=>State.Mission_is_Luxury&&PremiumAccess();
        public Missions(SaveData state,ProgressionCatalogue catalogue,GunInventory inventory,Func<DateTime> now)
        {
            State=state;Catalogue=catalogue;guns=inventory;clock=now;
            state.Mission_ExpGet=Fit(state.Mission_ExpGet,23);state.Mission_ExpGet_Luxury=Fit(state.Mission_ExpGet_Luxury,23);
            state.NormalReward_Get=Fit(state.NormalReward_Get,25);state.EpicReward_Get=Fit(state.EpicReward_Get,25);
            if(state.Mission_Reward_Lv<0||state.Mission_Reward_Lv>25||state.Mission_Reward_Exp<0)throw new ArgumentException("Unsupported mission progress");
        }
        private static bool[] Fit(bool[] old,int n){if(old!=null&&old.Length==n)return old;var next=new bool[n];if(old!=null)Array.Copy(old,next,Math.Min(n,old.Length));return next;}
        private static DateTime Parse(string value)=>DateTime.TryParse(value,CultureInfo.InvariantCulture,DateTimeStyles.RoundtripKind,out var d)?d:DateTime.MinValue;
        public bool SeasonClosed=>!State.Mission_is_SeasonStart||Parse(State.Mission_SeasonEnd_Date).Date<=clock().Date;
        public void ReloadDay()
        {
            if(Parse(State.Mission_MissionStart_Date).Date>=clock().Date)return;
            State.Mission_TreeCount_Value=State.Mission_StageClear_Value=State.Mission_Rebirth_Value=State.Mission_PlayMine_Value=0;
            Array.Clear(State.Mission_ExpGet,0,23);Array.Clear(State.Mission_ExpGet_Luxury,0,23);State.Mission_MissionStart_Date=clock().ToString("O");Changed?.Invoke();
        }
        public bool StartSeason(){if(!SeasonClosed)return false;ResetSeason(true);return true;}
        public bool ReloadSeason()
        {if(!SeasonClosed)return false;ResetSeason(State.Mission_is_SeasonStart);return true;}
        // Native NewSeason_Start explicitly resets an active capped season too.
        public void ResetSeason(bool increase)
        {
            if(increase)State.Mission_Season_Num++;
            State.Mission_is_GunSeason=State.Mission_is_SeasonStart=true;
            State.Mission_Reward_Lv=State.Mission_Reward_Exp=0;
            State.Mission_SeasonEnd_Date=clock().AddMonths(1).ToString("O");
            State.Mission_is_Vip=State.Mission_is_Luxury=false;
            Array.Clear(State.NormalReward_Get,0,25);Array.Clear(State.EpicReward_Get,0,25);
            State.Mission_TreeCount_Value=State.Mission_StageClear_Value=State.Mission_Rebirth_Value=State.Mission_PlayMine_Value=0;
            Array.Clear(State.Mission_ExpGet,0,23);Array.Clear(State.Mission_ExpGet_Luxury,0,23);
            State.Mission_MissionStart_Date=clock().Date.ToString("O");Changed?.Invoke();
        }
        public DateTime Now=>clock();
        // Native Mission_manager.Reward_Slot_fillValue_return (vc257 0x2aa6b30).
        public float RewardSlotFill(int index)=>State.Mission_Reward_Lv>index?1:State.Mission_Reward_Lv==index?State.Mission_Reward_Exp/100f:0;
        public void Increase(int kind)
        {
            ReloadDay();switch(kind){case 0:State.Mission_TreeCount_Value++;break;case 1:State.Mission_StageClear_Value++;break;case 2:State.Mission_Rebirth_Value++;break;case 3:State.Mission_PlayMine_Value++;break;default:return;}Changed?.Invoke();
        }
        public int Value(int kind)=>kind==0?State.Mission_TreeCount_Value:kind==1?State.Mission_StageClear_Value:kind==2?State.Mission_Rebirth_Value:State.Mission_PlayMine_Value;
        // Native Mission_Status_return checks the counter before either claim
        // flag. VIP/season eligibility belongs to claim/presentation adapters.
        public int MissionStatus(int index)
        {
            var mission=Catalogue.Missions[index];
            if(Value(mission.type)<mission.MissionValue)return 0;
            if(!State.Mission_ExpGet[index])return 1;
            return State.Mission_ExpGet_Luxury[index]?2:3;
        }
        private int MissionSortPriorityForStatus(int index,int status)
        {
            switch(status)
            {
                case 0:return State.Mission_is_Luxury?1:2;
                case 1:return Catalogue.Missions[index].is_VIP_Mission&&!State.Mission_is_Vip?1:0;
                case 2:return State.Mission_is_Luxury?2:3;
                case 3:return State.Mission_is_Luxury?0:1;
                default:return 99;
            }
        }
        public int MissionSortPriority(int index)=>MissionSortPriorityForStatus(index,MissionStatus(index));
        public int[] MissionDisplayOrder()
        {
            var order=Enumerable.Range(0,Catalogue.Missions.Length).ToArray();var priorities=new int[order.Length];
            // Match original statusCache: compute once before comparison. The
            // sorted index array never changes task IDs or the saved catalogue.
            for(int i=0;i<order.Length;i++)priorities[i]=MissionSortPriority(i);
            Array.Sort(order,(a,b)=>
            {
                int result=priorities[a].CompareTo(priorities[b]);if(result!=0)return result;
                result=Catalogue.Missions[a].type.CompareTo(Catalogue.Missions[b].type);
                return result!=0?result:a.CompareTo(b);
            });
            return order;
        }
        public bool ClaimMission(int index)
        {
            ReloadDay();if(index<0||index>=23||SeasonClosed||State.Mission_ExpGet[index])return false;var mission=Catalogue.Missions[index];
            // Premium actions require explicitly recorded local simulation ownership.
            if((mission.is_VIP_Mission&&!VipAccess)||Value(mission.type)<mission.MissionValue)return false;
            State.Mission_ExpGet[index]=true;
            AddExperience(mission.ExpValue);
            Changed?.Invoke();return true;
        }
        public void AddExperience(int amount)
        {
            if(amount<0)throw new ArgumentOutOfRangeException(nameof(amount));
            if(State.Mission_Reward_Lv>=25)return;
            State.Mission_Reward_Exp+=amount;
            while(State.Mission_Reward_Exp>=100&&State.Mission_Reward_Lv<25){State.Mission_Reward_Exp-=100;State.Mission_Reward_Lv++;}
            Changed?.Invoke();
        }
        public bool ClaimLuxuryMission(int index)
        {
            ReloadDay();if(index<0||index>=23||SeasonClosed||!LuxuryAccess||!State.Mission_ExpGet[index]||State.Mission_ExpGet_Luxury[index])return false;
            State.Mission_ExpGet_Luxury[index]=true;
            AddExperience((int)Math.Round(Catalogue.Missions[index].ExpValue*.5,MidpointRounding.ToEven));Changed?.Invoke();return true;
        }
        public bool ClaimEpicReward(int index)
        {
            if(!VipAccess||index<0||index>=25||SeasonClosed||index>=State.Mission_Reward_Lv||State.EpicReward_Get[index]||SequenceLocked(index))return false;
            var reward=Reward(index,true);if(reward.type==0)DiamondReward.Apply(State,reward.value);
            else if(reward.type==1){if(!guns.AddRewardGun(reward.value))return false;}
            else {if(State.Adventure_Currency_Core?.Length!=4)return false;State.Adventure_Currency_Core[3]+=reward.value;}
            State.EpicReward_Get[index]=true;Changed?.Invoke();return true;
        }
        public (int type,int value) Reward(int index,bool epic=false)
        {
            if(index<0||index>=25)throw new ArgumentOutOfRangeException(nameof(index));
            if(index%3!=2){int dia=State.Mission_Season_Num<1?200+index*40:600+index*20;return(0,epic?dia*3:dia);}
            if(State.Mission_Season_Num>=1&&!State.Mission_is_GunSeason)return(2,epic?1200+index*30:400+index*10);
            int gun=State.Mission_Season_Num<1?10+Math.Min((index/3%2)*4+index/6*5,19):Catalogue.HighTierGuns[Math.Min(index/3,7)];return(1,gun+(epic?5:0));
        }
        public bool SequenceLocked(int index)=>Enumerable.Range(0,index).Any(i=>!State.NormalReward_Get[i]||(State.Mission_is_Vip&&!State.EpicReward_Get[i]));
        public bool NeedsAd(int index)=>index>=3&&index%3==0;
        // Native Alert_Check has no season-date gate. Premium flags affect
        // indicator selection only; they do not enable commercial claim adapters.
        public bool HasMissionAlert()
        {
            for(int i=0;i<Catalogue.Missions.Length;i++)
            {
                var mission=Catalogue.Missions[i];
                if(mission.is_VIP_Mission&&!State.Mission_is_Vip)continue;
                if(Value(mission.type)<mission.MissionValue)continue;
                if(!State.Mission_ExpGet[i]||(State.Mission_is_Luxury&&!State.Mission_ExpGet_Luxury[i]))return true;
            }
            return false;
        }
        public int FirstUnclaimedReward()
        {
            for(int i=0;i<State.NormalReward_Get.Length;i++)
                if(!State.NormalReward_Get[i]||(State.Mission_is_Vip&&!State.EpicReward_Get[i]))return i;
            return -1;
        }
        // Navigation includes an ad/premium slot even when its local action is
        // unavailable. This selector neither grants nor skips such rewards.
        public int NextGetAbleReward()
        {
            int first=FirstUnclaimedReward();return first>=0&&first<State.Mission_Reward_Lv?first:-1;
        }
        public int ScrollTargetReward(int slotCount)
        {
            int first=FirstUnclaimedReward();int target=first>=0&&first<State.Mission_Reward_Lv?first:State.Mission_Reward_Lv;
            return Math.Max(0,Math.Min(target,slotCount-1));
        }
        public bool ClaimReward(int index,bool localAdCompleted=false)
        {
            if(index<0||index>=25||SeasonClosed||index>=State.Mission_Reward_Lv||State.NormalReward_Get[index]||SequenceLocked(index)||(NeedsAd(index)&&!localAdCompleted))return false;
            var reward=Reward(index);
            if(reward.type==0)DiamondReward.Apply(State,reward.value);
            else if(reward.type==1){if(!guns.AddRewardGun(reward.value))return false;}
            else {if(State.Adventure_Currency_Core==null)State.Adventure_Currency_Core=new int[4];if(State.Adventure_Currency_Core.Length<4)return false;State.Adventure_Currency_Core[3]+=reward.value;}
            State.NormalReward_Get[index]=true;Changed?.Invoke();return true;
        }
    }
}
