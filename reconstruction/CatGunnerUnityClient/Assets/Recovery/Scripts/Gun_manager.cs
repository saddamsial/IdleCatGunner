using System;
using UnityEngine;
using UnityEngine.UI;
using CatGunner.Recovery;

// Original serialized identity and button routes; transactions use an independent
// save adapter. Advertising and store access remain separate; auto merge has an explicit offline preview.
public sealed class Gun_manager : MonoBehaviour
{
    public static Gun_manager instance;
    public Gun_Info[] Gun_list;
    public int[] Selected_items,Owned_Gun_list,Weapon_Get_Counts;
    public bool[] Gun_Collect,Owned_Gun_Pause,Selected_Pause;
    public Sprite[] Gun_sprites;
    public Color[] Degree_Colors;
    public Gun_Item_List gunItemList;
    public bool is_AutoMerge;
    public int AutoMerge_Degree;
    public OnOff OnOff_UI;
    public GameObject Auto_Explain_obj,NonAuto_Explain_obj,Auto_Btn_obj,AD_Draw_Btn_obj;
    public Gun_Slot[] Gun_Slot_List;
    public Gun_Info_UI gun_info_ui;
    public NewGun_UI newGun_ui;
    public int AD_Gun_SlotIndex=-1,AD_Gun_Num=-1,Gacha_Draw_Count;
    public long AD_Gun_EndUtcTicks;
    public bool AD_Gun_Event_Given;
    public OriginalTemporaryGun TemporaryGun {get;private set;}
    float adGunCheckTimer;
    bool acquiringTemporary;
    public bool Has_Merged;
    public Gun_Merge_Tutorial merge_tutorial_ui;
    public OriginalGunInventory Inventory {get;private set;}
    private void Awake()=>instance=this;
    public void AutoMerge_Validate(){if(is_AutoMerge&&!RecoveryAutoMergeAccess.Allowed)Set_AutoMerge(false);}
    private void Update()
    {
        AutoMerge_Validate();if(Inventory==null)return;AD_Draw_Btn_Reload();
        if(TemporaryGun.HasOffer){adGunCheckTimer+=Time.unscaledDeltaTime;if(adGunCheckTimer>=.25f){adGunCheckTimer=0;if(RecoveryRewardedAds.Current?.Busy!=true&&TemporaryGun.RemainingSeconds<=0)AdRewardGun_Expire();}}
    }
    public void Bind(OriginalGunInventory inventory)
    {
        Inventory=inventory;Gun_list=OriginalEquipmentCatalogue.Load().Gun_list;
        TemporaryGun=new OriginalTemporaryGun(inventory);TemporaryGun.OnLoaded();
        inventory.Changed+=ReloadGunUI;
        inventory.Acquired+=OnAcquired;
        inventory.Merged+=CheckAdGunEvent;
        // Original buttons remain visible, explicitly unavailable until their
        // local rewarded placement is gated by its native progression/day rules.
        AD_Draw_Btn_Reload();if(Auto_Btn_obj!=null)Auto_Btn_obj.GetComponent<Button>().interactable=true;
        ReloadGunUI();
    }
    public void ReloadGunUI()
    {
        if(Inventory==null)return;
        var s=Inventory.State;Selected_items=s.Selected_items;Owned_Gun_list=s.Owned_Gun_list;
        Gun_Collect=s.Gun_Collect;Owned_Gun_Pause=s.Owned_Gun_Pause;Selected_Pause=s.Selected_Pause;
        Gacha_Draw_Count=s.Gacha_Draw_Count;Weapon_Get_Counts=s.Weapon_Get_Counts;AD_Gun_SlotIndex=s.AD_Gun_SlotIndex;AD_Gun_Num=s.AD_Gun_Num;AD_Gun_EndUtcTicks=s.AD_Gun_EndUtcTicks;AD_Gun_Event_Given=s.AD_Gun_Event_Given;Has_Merged=s.Has_Merged;
        if(gunItemList!=null)gunItemList.ReloadList();
        foreach(var slot in Gun_Slot_List??Array.Empty<Gun_Slot>())if(slot!=null)slot.Reload();
        merge_tutorial_ui?.Reload();
        AD_Draw_Btn_Reload();AutoMerge_UI_Reload();TryStartAutoMerge();
    }
    private void OnAcquired(int gun,bool first){if(!acquiringTemporary&&first && newGun_ui!=null)newGun_ui.Reload(gun);}
    public bool Has_AdRewardGun=>TemporaryGun?.HasOffer==true;
    public double AD_Gun_RemainSec=>TemporaryGun?.RemainingSeconds??0;
    public void CheckAdGunEvent(){if(TemporaryGun.CheckAdGunEvent(RecoveryForestClient.Instance?.OfflineTemporaryWeaponOffer==true))gunItemList.PlaySpawnBounceAtSlot(AD_Gun_SlotIndex);}
    public void AD_Gun_OnLoaded(){TemporaryGun.OnLoaded();ReloadGunUI();}
    public void AD_Gun_Clear(bool removeOwned)=>TemporaryGun.Clear(removeOwned);
    public void AdRewardGun_Expire()=>TemporaryGun.Expire();
    public bool AdRewardGun_TryWatch()
    {
        var c=RecoveryForestClient.Instance;if(c==null||!Has_AdRewardGun||AD_Gun_RemainSec<=0||!gunItemList.gameObject.activeInHierarchy)return false;
        var state=Inventory.State;int slot=state.AD_Gun_SlotIndex,gun=state.AD_Gun_Num,mode=c.Mode,revision=gunItemList.VisibilityRevision;long end=state.AD_Gun_EndUtcTicks;
        // Native expiry waits while reward advertising is busy: remaining time is
        // checked at entry, identity and page session at completion. A watch begun
        // before expiry may finish after it, matching the native busy branch.
        return c.RewardedAds.Request(()=>TemporaryGun.Matches(slot,gun,end)&&gunItemList.gameObject.activeInHierarchy&&gunItemList.VisibilityRevision==revision&&c.Mode==mode,AdRewardGun_Acquire);
    }
    public void AdRewardGun_Acquire()
    {
        if(RecoveryRewardedAds.Current?.IsCompleting!=true||!Has_AdRewardGun)return;
        int gun=Inventory.State.AD_Gun_Num;acquiringTemporary=true;
        try{if(TemporaryGun.Acquire())newGun_ui?.Reload(gun);}finally{acquiringTemporary=false;}
    }
    public string LastDrawMessage {get;private set;}
    public void DrawRandom_Normal(){
        if(Inventory==null)return;
        if(Inventory.State.Dia<100||Inventory.FirstEmpty<0){LastDrawMessage=Inventory.State.Dia<100?"钻石不足，需要 100 钻石。":"武器库存已满，请先合成或移入保险箱。";RecoveryForestClient.Instance?.StarUpgrades?.popup?.RecoveryAlert?.Reload(LastDrawMessage);Feedback(false);return;}
        LastDrawMessage=null;int slot=Inventory?.FirstEmpty??-1;int gun=Inventory?.DrawNormal()??-1;Feedback(gun>=0,2);if(gun>=0)gunItemList.PlaySpawnBounceAtSlot(slot);}
    bool EarlyAdPreview=>RecoveryForestClient.Instance?.OfflineEarlyWeaponAdPreview==true;
    public bool Is_AD_Daily_Gun_Able=>Inventory!=null&&(EarlyAdPreview||Inventory.State.Stage_Value_Max>29)&&Inventory.State.AD_Daily_Gun_LastDate!=DateTime.Now.ToString("yyyyMMdd")&&Inventory.FirstEmpty>=0;
    public void AD_Draw_Btn_Reload()
    {
        if(AD_Draw_Btn_obj==null)return;
        bool eligible=Is_AD_Daily_Gun_Able&&RecoveryRewardedAds.Available;
        AD_Draw_Btn_obj.SetActive(eligible);
        RecoveryRewardedAds.Button(AD_Draw_Btn_obj,eligible);
    }
    public void AD_Draw_Btn_Click(){if(RecoveryRewardedAds.Current?.Request(()=>Is_AD_Daily_Gun_Able,AD_Daily_Gun_RewardGet)!=true)Feedback(false);}
    public void AD_Daily_Gun_RewardGet(){if(RecoveryRewardedAds.Current?.IsCompleting!=true)return;int slot=Inventory.FirstEmpty;int gun=Inventory.DrawDailyAd(DateTime.Now,EarlyAdPreview);Feedback(gun>=0,2);if(gun>=0)gunItemList.PlaySpawnBounceAtSlot(slot);AD_Draw_Btn_Reload();}
    public bool is_AutoMergeAble=>RecoveryAutoMergeAccess.Entitled;
    public bool AutoMerge_Active=>is_AutoMerge&&RecoveryAutoMergeAccess.Allowed;
    public int Max_Collected_Degree {get{for(int i=(Gun_Collect?.Length??0)-1;i>=0;i--)if(Gun_Collect[i])return i/5;return -1;}}
    public int AutoMerge_Limit_Degree=>Math.Min(6,Math.Min(AutoMerge_Degree,Max_Collected_Degree-1));
    public void Set_AutoMerge(bool value){is_AutoMerge=value&&RecoveryAutoMergeAccess.Allowed;AutoMerge_UI_Reload();if(AutoMerge_Active)TryStartAutoMerge();else gunItemList.StopAutoMergeChain();}
    public void AutoMerge_Change(){Set_AutoMerge(!is_AutoMerge);if(!RecoveryAutoMergeAccess.Allowed)RecoveryAutoMergeAccess.ShowUnavailable();}
    public void AutoMerge_UI_Reload(){if(!RecoveryAutoMergeAccess.Allowed)is_AutoMerge=false;if(OnOff_UI!=null){if(AutoMerge_Active)OnOff_UI.On();else OnOff_UI.Off();}Auto_Explain_obj?.SetActive(AutoMerge_Active);NonAuto_Explain_obj?.SetActive(!AutoMerge_Active);}
    public void TryStartAutoMerge(){if(AutoMerge_Active&&gunItemList.gameObject.activeInHierarchy)gunItemList.StartAutoMergeChain();}
    public bool Set_Owned_Pause(int index,bool value)=>Inventory!=null&&Inventory.SetPaused(index,value);
    public bool Set_Selected_Pause(int index,bool value)=>Inventory!=null&&Inventory.SetPaused(index,value,true);
    public static void Feedback(bool success,int sound=9){if(Sound_manager.instance!=null)Sound_manager.instance.PlaySfx((SfxType)(success?sound:5));}
    public static void DisableButton(GameObject go){if(go!=null){var b=go.GetComponent<Button>();if(b!=null)b.interactable=false;}}
    public static void Present(int gun,Image image,Image shadow,Image panel,GameObject[] degrees)
    {
        var owner=instance;if(owner==null||gun<0||gun>=65)return;
        if(image!=null)image.sprite=owner.Gun_sprites[gun];if(shadow!=null)shadow.sprite=owner.Gun_sprites[gun];
        if(panel!=null)panel.color=owner.Degree_Colors[gun/5];
        for(int i=0;i<(degrees?.Length??0);i++)if(degrees[i]!=null)degrees[i].SetActive(i==gun/5);
    }
    public static string TypeText(int gun)=>OriginalWeaponText.Name(instance.Gun_list[gun].type);
    private void OnDestroy(){if(Inventory!=null){Inventory.Changed-=ReloadGunUI;Inventory.Acquired-=OnAcquired;Inventory.Merged-=CheckAdGunEvent;}if(instance==this)instance=null;}
}
