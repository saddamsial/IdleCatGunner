using System;
using CatGunner.Recovery;
using UnityEngine;
public sealed class StarUpgrade_manager : MonoBehaviour
{
    public enum UpgradeResult { Success=0,Fail=1,MaxLv=2,NotEnoughGem=3,Locked=4 }
    public static StarUpgrade_manager instance;
    public static event Action<int,int> OnLvChanged;
    public int SlotCount=3;
    public StarUpgrade_popup popup;
    public int[] Slot_Lv,Slot_FailCount;
    public OriginalStarProgression Progression {get;private set;}
    [NonSerialized] public Func<int,int,int> RecoveryRandom=UnityEngine.Random.Range;
    private RecoveryForestClient client;
    public void Awake()=>instance=this;
    public void Bind(RecoveryForestClient owner)
    {
        client=owner;Progression=new OriginalStarProgression(owner.State,(min,max)=>RecoveryRandom(min,max),()=>owner.Forest.Stage_Value_Max);
        Slot_Lv=owner.State.Star_Slot_Lv;Slot_FailCount=owner.State.Star_Slot_FailCount;
        Progression.GemChanged+=GemReload;Progression.LevelChanged+=LevelReload;
    }
    private void GemReload(){if(popup.gameObject.activeInHierarchy)popup.Reload();}
    private void LevelReload(int slot,int level)
    {client.ApplyBalance();client.Guns.ReloadGunUI();client.RaidMode?.raidStart_ui.Reload_Slots();OnLvChanged?.Invoke(slot,level);}
    public bool IsUnlocked()=>Progression!=null&&Progression.IsUnlocked;
    public bool IsValidSlot(int slot)=>slot>=0&&slot<SlotCount;
    public int Lv_return(int slot)=>IsValidSlot(slot)?Slot_Lv[slot]:0;
    public bool IsMaxLv(int slot)=>Lv_return(slot)>=20;
    public int Cost_return(int slot)=>Progression.Cost(slot);
    public int SuccessRate_return(int slot)=>Progression.Rate(slot);
    public static OriginalAmount BonusPct_return(int level)=>OriginalAmount.FromValue(OriginalStarRules.BonusPct(level));
    public static OriginalAmount Damage_Apply(OriginalAmount damage,int level)=>OriginalAmount.FromValue(OriginalStarRules.DamageApply(damage.Value,level));
    public static OriginalAmount Damage_Apply_Slot(OriginalAmount damage,int slot)=>Damage_Apply(damage,instance==null?0:instance.Lv_return(slot));
    public UpgradeResult Upgrade(int slot)
    {
        if(Progression==null)return UpgradeResult.Locked;
        var result=Progression.Upgrade(slot);
        if(result==UpgradeResult.Success||result==UpgradeResult.Fail)client.SaveNow();
        return result;
    }
    public void Open_Popup(int slot,bool isRaid=false)
    {if(client!=null&&client.Mode==0&&IsUnlocked()&&IsValidSlot(slot))popup.Open(slot,isRaid);}
    public int[] SaveLv_return()=>(int[])Slot_Lv.Clone();
    public int[] SaveFailCount_return()=>(int[])Slot_FailCount.Clone();
    public void RefreshWallet()=>GemReload();
    private void OnDestroy()
    {if(Progression!=null){Progression.GemChanged-=GemReload;Progression.LevelChanged-=LevelReload;}if(instance==this)instance=null;}
}
