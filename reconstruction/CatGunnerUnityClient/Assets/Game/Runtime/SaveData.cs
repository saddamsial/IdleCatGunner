using System;
using System.Collections.Generic;

namespace CatGunner.Runtime
{
// Data contract only: 161 original SaveData fields and six nested DTOs.
// Constructor values below follow matching native SaveData::.ctor; live state collection remains pending.
    [Serializable] [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "OriginalSaveData")] public sealed class SaveData
    {
        public string BundleCode;
        public CurrencyAmount Money = new CurrencyAmount {s_digits="0",s_exponent=0};
        public CurrencyAmount Money_Accum = new CurrencyAmount {s_digits="0",s_exponent=0};
        public CurrencyAmount Ruby = new CurrencyAmount {s_digits="0",s_exponent=0};
        public int Dia;
        public int _getDia;
        public int _useDia;
        public int PetCoin;
        public int StarGem;
        public float TotalPlayTime;
        public bool is_TimeHacker;
        public int OfflineFailStreak;
        public string OfflineFailLastDate;
        public string TimeHack_FlagDate;
        public string TimeHack_ServerDate;
        public string TimeHack_Reason;
        public double SavedOffsetSec;
        public bool HasSavedOffset;
        public string LastTrustedUtc;
        public List<GainEntrySave> TimeLedger;
        public int TimeStrike;
        public string TimeStrike_Log;
        public string TimeStrike_LastServer;
        public string Redeem_UsedCodes;
        public int[] Star_Slot_Lv;
        public int[] Star_Slot_FailCount;
        public int[] Upgrade_Lv;
        public string AD_AutoUpgrade_LastDate;
        public float AD_AutoUpgrade_RemainSec;
        public int[] Rebirth_Upgrade_Lv;
        public int Rebirth_Count;
        public int UpgradeRebirth_UseCount;
        public int UpgradeRebirth_IAP_UseCount;
        public string UpgradeRebirth_LastDate;
        public int[] Selected_items;
        public bool[] Gun_Collect;
        public int[] Owned_Gun_list;
        public int[] Weapon_Get_Counts;
        public int AD_Gun_SlotIndex = -1;
        public int AD_Gun_Num = -1;
        public long AD_Gun_EndUtcTicks;
        public int Gacha_Draw_Count;
        public bool AD_Gun_Event_Given;
        public bool Has_Merged;
        public bool Merge_Tutorial_Logged;
        public string AD_Daily_Gun_LastDate;
        public bool[] Owned_Gun_Pause;
        public bool[] Selected_Pause;
        public int[] Safe_Gun_list;
        public int Safe_Purchased_Count;
        public int[] Pet_Selected_items;
        public bool[] Pet_Collect;
        public int[] Owned_Pet_list;
        public int[] Owned_Pet_LockGroup;
        public int[] Selected_LockGroup;
        public string AD_Daily_Pet_LastDate;
        public int Stage_Now;
        public int Level_Now;
        public int Stage_Value_Max;
        public List<string> SentWaveRatios = new List<string>();
        public int SpeedRun_Stage_Now;
        public bool[] Skin_Unlock;
        public int Skin_Selected_num;
        public bool Is_Remove_AD_forced;
        public bool Is_Remove_AD_All;
        public bool Is_AutoUpgrade_Pack;
        public bool Is_Buff_Pack;
        public bool Is_Dia_Pack;
        public bool Is_Mine_Pack;
        public int PurchaseCount;
        public List<string> ProcessedTxnIds = new List<string>();
        public List<int> PurchaseHistory = new List<int>();
        public string[] PlusPack_Purchase_Dates;
        public DiaPigSave diaPig;
        public bool BGM_Mute;
        public bool SFX_Mute;
        public bool Vibration_Mute;
        public string LastSaveTime;
        public string PlayFab_Email;
        public string PlayFab_Password;
        public string PlayFab_DisplayName;
        public string LastCheck_Date;
        public int CheckNum;
        public int TotalCheckNum;
        public string Coupang_LastGet_Date;
        public bool is_FirstGacha;
        public string Free_GachaDate;
        public int FreeGachaCount;
        public List<int> FishInventory = new List<int>();
        public int TicketUse_Count;
        public string TicketCharge_Date;
        public int Best_Reward;
        public string Raid_Entry_Charge_Date;
        public int Raid_Free_Use_Count;
        public bool Raid_AD_Enter_Used;
        public bool Raid_IAP_Enter_Used;
        public int Raid_Season_Index = -1;
        public int Raid_Season_TryCount;
        public int Raid_Season_BestLevel;
        public int[] Raid_Best_Level_ByType;
        public int Boss_Stage;
        public int Wave_Now;
        public int Lv_Now;
        public int Mission_Reward_Lv;
        public int Mission_Reward_Exp;
        public int Mission_TreeCount_Value;
        public int Mission_StageClear_Value;
        public int Mission_Rebirth_Value;
        public int Mission_PlayMine_Value;
        public bool Mission_is_SeasonStart;
        public bool Mission_is_Vip;
        public bool Mission_is_Luxury;
        public string Mission_SeasonEnd_Date;
        public string Mission_MissionStart_Date;
        public bool[] Mission_ExpGet;
        public bool[] Mission_ExpGet_Luxury;
        public bool[] NormalReward_Get;
        public bool[] EpicReward_Get;
        public int Mission_Season_Num;
        public bool Mission_is_GunSeason;
        public float MoneyBuffTime;
        public float PowerBuffTime;
        public float AtkSpeedBuffTime;
        public AdventureMapTypeSave[] Adventure_Maps;
        public int[] Adventure_Currency_Core;
        public int Adventure_Lv;
        public int Adventure_Exp;
        public int Adventure_Ticket_Now;
        public string Adventure_LastTicketCharge_Date;
        public int Adventure_AD_Reduce_UseCount;
        public string Adventure_AD_Reduce_LastDate;
        public RelicSave[] Relics;
        public string LastDailyCorePurchase_Date;
        public string LastWeeklyCorePurchase_Date;
        public string LastWeekly6000CorePurchase_Date;
        public bool[] Dia_FirstBuy_Used;
        public int Dia_FirstBuy_Season;
        public bool FreeCash_LinkRewardReceived;
        public bool FreeCash_PopLogSent;
        public bool FreeCash_RewardAdRemoved;
        public string InstallDate;
        public string InstallDate_Source;
        public int RewardAdWatchCount;
        public string SegmentPost_LastDate;
        public string ServerConfig_Cache;
        public bool is_reviewed;
        public bool TutorialCleared;
        public bool[] StepUp_Purchased;
        public string StepUp_Start_Date;
        public int[] DailyGun_Purchase_Counts;
        public string DailyGun_Week_Key;
        public int Pig_Lv;
        public int Pig_Gem;
        public int Pig_PurchaseCount;
        public int Pig_Season_Index = -1;
        // Local preview ledger, deliberately separate from real transactions.
        [UnityEngine.Serialization.FormerlySerializedAs("Recovery_SimulatedPurchases")]
        public List<SimulatedPurchase> SimulatedPurchases = new List<SimulatedPurchase>();
        [UnityEngine.Serialization.FormerlySerializedAs("Recovery_WeeklyVipFirstOpened")]
        public bool WeeklyVipFirstOpened;
        public int RaidMission_Season_Index = -1;
        public bool[] RaidMission_Clear;
        public bool[] RaidMission_Reward_Get;
        public bool[] RaidMission_Reward_ReGet;
        public bool RaidMission_Ticket;
        public int Raid_Helper_Season_Index = -1;
    }
    [Serializable] [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "RecoverySimulatedPurchase")] public sealed class SimulatedPurchase
    {
        public string productId;
        public int count;
    }
    [Serializable] public sealed class GainEntrySave
    {
        public string kind;
        public string gameUtc;
        public int trust;
        public string session;
        public double mono;
    }
    [Serializable] public sealed class DiaPigSave
    {
        public int Dia_Now;
        public string LastTickTime;
    }
    [Serializable] public sealed class AdventureMapTypeSave
    {
        public AdventureMapSave[] maps;
    }
    [Serializable] public sealed class AdventureMapSave
    {
        public bool is_Enter;
        public string Enter_dateTime;
        public int[] Dispatched_Pet_Slots;
    }
    [Serializable] public sealed class RelicSave
    {
        public int Lv;
        public int Count;
        public bool is_Unlock;
    }
}
