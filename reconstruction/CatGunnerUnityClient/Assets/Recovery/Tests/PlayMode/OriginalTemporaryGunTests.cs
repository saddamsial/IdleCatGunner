using System;
using System.IO;
using System.Linq;
using System.Collections;
using CatGunner.Recovery;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;
using UnityEngine.EventSystems;
using UnityEngine.UI;
using System.Collections.Generic;

public sealed class OriginalTemporaryGunTests
{
    string folder;RecoveryForestClient c;bool background;DateTime now;
    void Independent(Scene scene,LoadSceneMode mode){if(scene.name=="RecoveredClient")scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<RecoveryForestClient>(true)).Single().SaveFolderOverride=folder;}
    [UnitySetUp] public IEnumerator Setup(){background=Application.runInBackground;Application.runInBackground=true;folder=Path.Combine(Application.temporaryCachePath,"TemporaryGun-"+Guid.NewGuid().ToString("N"));SceneManager.sceneLoaded+=Independent;yield return SceneManager.LoadSceneAsync("RecoveredClient");yield return ClientStartupWait.Ready();c=RecoveryForestClient.Instance;ForestRuntimeAcceptance.IsGaming=false;c.DailyLogin.Close();c.Tutorial.SetCleared();now=DateTime.UtcNow;c.Guns.TemporaryGun.UtcNow=()=>now;}
    [UnityTearDown] public IEnumerator Cleanup(){Time.timeScale=1;yield return SceneManager.LoadSceneAsync("RecoveredTarget");SceneManager.sceneLoaded-=Independent;Application.runInBackground=background;if(Directory.Exists(folder))Directory.Delete(folder,true);}
    [UnityTest] public IEnumerator OriginalTimedOfferShowsItsCountdown()
    {
        c.State.Owned_Gun_list[7]=14;c.State.AD_Gun_SlotIndex=7;c.State.AD_Gun_Num=14;c.State.AD_Gun_EndUtcTicks=now.AddSeconds(1800).Ticks;c.Guns.ReloadGunUI();
        var item=c.Guns.gunItemList.ActiveItems.Single(i=>i.ListIndex==7);yield return null;Assert.That(item.IsAdReward,Is.True);Assert.That(item.AD_Reward_obj.activeSelf,Is.True);Assert.That(item.AD_Time_txt.text,Is.EqualTo("30:00"),"Original timed offer must show remaining mm:ss, not dummy text");
    }
    Gun_manager G=>c.Guns;
    OriginalTemporaryGun T=>G.TemporaryGun;
    IEnumerator Frames(){yield return null;yield return null;yield return null;}
    void ClearOwned(){Array.Fill(c.State.Owned_Gun_list,-1);Array.Fill(c.State.Owned_Gun_Pause,false);Array.Clear(c.State.Gun_Collect,0,65);Array.Clear(c.State.Weapon_Get_Counts,0,13);c.State.AD_Gun_SlotIndex=c.State.AD_Gun_Num=-1;c.State.AD_Gun_EndUtcTicks=0;c.State.AD_Gun_Event_Given=false;c.State.Has_Merged=false;G.ReloadGunUI();}
    IEnumerator Click(Component target)
    {
        Assert.That(target.gameObject.activeInHierarchy,Is.True,target.name);Canvas.ForceUpdateCanvases();var module=EventSystem.current.GetComponent<StandaloneInputModule>();var mouse=module.gameObject.AddComponent<ForestFeedbackMouseFixture>();module.inputOverride=mouse;
        try
        {
            var rect=(RectTransform)target.transform;mouse.Position=RectTransformUtility.WorldToScreenPoint(null,rect.TransformPoint(rect.rect.center));var hits=new List<RaycastResult>();EventSystem.current.RaycastAll(new PointerEventData(EventSystem.current){position=mouse.Position},hits);
            Assert.That(hits.FirstOrDefault().gameObject?.GetComponentInParent(target.GetType()),Is.SameAs(target),string.Join("|",hits.Take(5).Select(h=>h.gameObject.name)));
            mouse.Down=true;mouse.Held=true;yield return null;mouse.Down=false;mouse.Held=false;mouse.Up=true;yield return null;mouse.Up=false;yield return null;
        }
        finally{module.inputOverride=null;UnityEngine.Object.Destroy(mouse);}
    }
    IEnumerator Open(){yield return Click(UnityEngine.Object.FindObjectsByType<Button>(FindObjectsInactive.Include,FindObjectsSortMode.None).Single(b=>b.name=="Gun_Btn"));yield return new WaitForSecondsRealtime(.6f);}
    IEnumerator Capture(string name){yield return new WaitForSecondsRealtime(.1f);ScreenCapture.CaptureScreenshot(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/visual/temporary-gun-"+name+"-gpu.png")));yield return new WaitForSecondsRealtime(.2f);}
    void Offer(){ClearOwned();c.State.Has_Merged=true;G.CheckAdGunEvent();Assert.That(c.State.AD_Gun_SlotIndex,Is.Zero);Assert.That(c.State.Owned_Gun_list[0],Is.EqualTo(14));Assert.That(c.State.AD_Gun_Event_Given,Is.True);}
    [UnityTest] public IEnumerator NativeMergeEntryActualOfferClickPermanentCollectionEquipAndColdReload()
    {
        ClearOwned();int dia=c.State.Dia,draws=c.State.Gacha_Draw_Count;c.State.Owned_Gun_list[4]=0;c.State.Owned_Gun_list[9]=1;for(int i=5;i<10;i++)c.State.Gun_Collect[i]=true;G.ReloadGunUI();
        Assert.That(c.Inventory.Merge(4,9),Is.True);Assert.That(c.State.Has_Merged,Is.True);Assert.That(c.State.AD_Gun_SlotIndex,Is.Zero);Assert.That(c.State.AD_Gun_Num,Is.EqualTo(14));Assert.That(c.State.AD_Gun_Event_Given,Is.True);Assert.That(c.State.AD_Gun_EndUtcTicks,Is.EqualTo(now.AddSeconds(1800).Ticks));Assert.That(c.State.Gun_Collect[14],Is.False);Assert.That(c.State.Weapon_Get_Counts[2],Is.Zero);
        yield return Open();var item=G.gunItemList.ActiveItems.Single(i=>i.IsAdReward);Assert.That(item.AD_Time_txt.text,Is.EqualTo("30:00"));yield return Capture("offer");yield return Click(item);yield return Frames();
        Assert.That(T.HasOffer,Is.False);Assert.That(c.State.AD_Gun_Num,Is.EqualTo(-1));Assert.That(c.State.AD_Gun_EndUtcTicks,Is.Zero);Assert.That(c.State.Owned_Gun_list[0],Is.EqualTo(14));Assert.That(c.State.Gun_Collect[14],Is.True);Assert.That(c.State.Weapon_Get_Counts[2],Is.EqualTo(1));Assert.That(c.RewardedAds.CompletedWatches,Is.EqualTo(1));Assert.That(G.newGun_ui.gameObject.activeInHierarchy,Is.True);Assert.That(G.newGun_ui.Gun_img.sprite,Is.SameAs(G.Gun_sprites[14]));yield return Capture("acquired");
        G.AdRewardGun_Acquire();Assert.That(c.State.Weapon_Get_Counts[2],Is.EqualTo(1));G.newGun_ui.gameObject.SetActive(false);Assert.That(c.Inventory.Equip(0,1),Is.True);Assert.That(c.State.Selected_items[1],Is.EqualTo(14));Assert.That(c.Team.Cat_list[1].gameObject.activeSelf,Is.True);Assert.That(c.State.Dia,Is.EqualTo(dia));Assert.That(c.State.Gacha_Draw_Count,Is.EqualTo(draws));
        c.SaveNow();yield return SceneManager.LoadSceneAsync("RecoveredTarget");yield return SceneManager.LoadSceneAsync("RecoveredClient");yield return ClientStartupWait.Ready();c=RecoveryForestClient.Instance;ForestRuntimeAcceptance.IsGaming=false;c.DailyLogin.Close();c.Tutorial.SetCleared();Assert.That(c.State.Selected_items[1],Is.EqualTo(14));Assert.That(c.State.Gun_Collect[14],Is.True);Assert.That(c.State.Weapon_Get_Counts[2],Is.EqualTo(1));Assert.That(c.State.AD_Gun_Event_Given,Is.True);Assert.That(G.Has_AdRewardGun,Is.False);G.CheckAdGunEvent();Assert.That(G.Has_AdRewardGun,Is.False);
    }
    [UnityTest] public IEnumerator NativeEventGatesAndInventoryProtectionBeforePermanentAcquisition()
    {
        ClearOwned();G.CheckAdGunEvent();Assert.That(T.HasOffer,Is.False);c.State.Has_Merged=true;c.OfflineTemporaryWeaponOffer=false;G.CheckAdGunEvent();Assert.That(c.State.AD_Gun_Event_Given,Is.False);c.OfflineTemporaryWeaponOffer=true;c.State.Gun_Collect[20]=true;G.CheckAdGunEvent();Assert.That(c.State.AD_Gun_Event_Given,Is.True);Assert.That(T.HasOffer,Is.False);
        ClearOwned();Array.Fill(c.State.Owned_Gun_list,0);c.State.Has_Merged=true;G.CheckAdGunEvent();Assert.That(c.State.AD_Gun_Event_Given,Is.False);c.State.Owned_Gun_list[3]=-1;G.CheckAdGunEvent();Assert.That(c.State.AD_Gun_SlotIndex,Is.EqualTo(3));Assert.That(T.AddAdRewardGun(14,1800),Is.EqualTo(-1));Assert.That(c.State.Weapon_Get_Counts[2],Is.Zero);
        c.State.Owned_Gun_list[4]=14;c.State.Gun_Collect[5]=true;G.ReloadGunUI();Assert.That(c.Inventory.Merge(3,4),Is.False);Assert.That(c.Inventory.Equip(3,1),Is.False);Assert.That(c.Inventory.SwapOwned(3,5),Is.False);Assert.That(c.Inventory.SetPaused(3,true),Is.False);c.State.Stage_Value_Max=c.Forest.Stage_Value_Max=990;Assert.That(c.Safe.Inventory.Put(3,14),Is.EqualTo(-1));
        var ad=G.gunItemList.ActiveItems.Single(i=>i.ListIndex==3);Assert.That(ad.IsAdReward,Is.True);Assert.That(ad.IsPaused,Is.False);Assert.That(G.gunItemList.FindAutoMergePair(out var a,out var b),Is.True);Assert.That(a.IsAdReward||b.IsAdReward,Is.False);G.CheckAdGunEvent();Assert.That(c.State.Owned_Gun_list.Count(v=>v==14),Is.EqualTo(2));yield return null;
    }
    [UnityTest] public IEnumerator DisabledCancelledDuplicateAndUnauthorizedRewardsCannotAcquire()
    {
        Offer();yield return Open();G.AdRewardGun_Acquire();Assert.That(T.HasOffer,Is.True);c.RewardedAds.Enabled=false;Assert.That(G.AdRewardGun_TryWatch(),Is.False);c.RewardedAds.Enabled=true;Assert.That(G.AdRewardGun_TryWatch(),Is.True);Assert.That(G.AdRewardGun_TryWatch(),Is.False);c.RewardedAds.Cancel();yield return Frames();Assert.That(T.HasOffer,Is.True);Assert.That(c.State.Weapon_Get_Counts[2],Is.Zero);Assert.That(c.RewardedAds.CompletedWatches,Is.Zero);
        Assert.That(G.AdRewardGun_TryWatch(),Is.True);yield return Frames();Assert.That(T.HasOffer,Is.False);Assert.That(c.RewardedAds.CompletedWatches,Is.EqualTo(1));G.AdRewardGun_Acquire();Assert.That(c.State.Weapon_Get_Counts[2],Is.EqualTo(1));
    }
    [UnityTest] public IEnumerator ClosedReopenedReplacedOfferAndChangedModeRejectStaleAdCompletion()
    {
        Offer();yield return Open();Assert.That(G.AdRewardGun_TryWatch(),Is.True);G.gunItemList.gameObject.SetActive(false);G.gunItemList.gameObject.SetActive(true);yield return Frames();Assert.That(T.HasOffer,Is.True);Assert.That(c.RewardedAds.CompletedWatches,Is.Zero);
        Assert.That(G.AdRewardGun_TryWatch(),Is.True);c.State.AD_Gun_EndUtcTicks=now.AddSeconds(1700).Ticks;yield return Frames();Assert.That(T.HasOffer,Is.True);Assert.That(c.RewardedAds.CompletedWatches,Is.Zero);
        Assert.That(G.AdRewardGun_TryWatch(),Is.True);c.SuspendForestForMode(1);yield return Frames();Assert.That(T.HasOffer,Is.True);Assert.That(c.RewardedAds.CompletedWatches,Is.Zero);Assert.That(c.State.Gun_Collect[14],Is.False);
    }
    [UnityTest] public IEnumerator UtcExpiryContinuesAtPausedGameAndRemovesOnlyMatchingOwnedCell()
    {
        Offer();yield return Open();Time.timeScale=0;now=now.AddSeconds(1720.8);yield return new WaitForSecondsRealtime(.24f);var item=G.gunItemList.ActiveItems.Single(i=>i.IsAdReward);Assert.That(item.AD_Time_txt.text,Is.EqualTo("01:19"));yield return Capture("countdown");c.State.Owned_Gun_list[7]=5;now=now.AddSeconds(80);yield return new WaitForSecondsRealtime(.35f);Assert.That(T.HasOffer,Is.False);Assert.That(c.State.Owned_Gun_list[0],Is.EqualTo(-1));Assert.That(c.State.Owned_Gun_list[7],Is.EqualTo(5));Assert.That(c.State.Gun_Collect[14],Is.False);Assert.That(c.State.Weapon_Get_Counts[2],Is.Zero);Assert.That(c.State.AD_Gun_Event_Given,Is.True);G.CheckAdGunEvent();Assert.That(T.HasOffer,Is.False);c.SaveNow();var saved=new OriginalSaveArchive(folder).Load();Assert.That(saved.AD_Gun_SlotIndex,Is.EqualTo(-1));Assert.That(saved.Owned_Gun_list[7],Is.EqualTo(5));
        c.State.Owned_Gun_list[3]=5;c.State.AD_Gun_SlotIndex=3;c.State.AD_Gun_Num=14;c.State.AD_Gun_EndUtcTicks=now.AddSeconds(-1).Ticks;G.AdRewardGun_Expire();Assert.That(c.State.Owned_Gun_list[3],Is.EqualTo(5));
    }
    [UnityTest] public IEnumerator WatchStartedBeforeExpiryMayFinishAfterDeadlineAndGrantOnlyOnce()
    {
        Offer();yield return Open();Assert.That(G.AdRewardGun_TryWatch(),Is.True);now=now.AddSeconds(1801);yield return Frames();Assert.That(T.HasOffer,Is.False);Assert.That(c.State.Owned_Gun_list[0],Is.EqualTo(14));Assert.That(c.State.Gun_Collect[14],Is.True);Assert.That(c.RewardedAds.CompletedWatches,Is.EqualTo(1));yield return new WaitForSecondsRealtime(.35f);Assert.That(c.State.Owned_Gun_list[0],Is.EqualTo(14));
    }
    [UnityTest] public IEnumerator ColdLoadRetainsLiveOfferExpiresPastDeadlineAndPreservesMismatchedOrdinaryWeapon()
    {
        Offer();c.SaveNow();yield return Reload();Assert.That(T.HasOffer,Is.True);Assert.That(c.State.AD_Gun_Num,Is.EqualTo(14));Assert.That(T.RemainingSeconds,Is.GreaterThan(1700));Assert.That(c.State.Gun_Collect[14],Is.False);
        c.State.AD_Gun_EndUtcTicks=DateTime.UtcNow.AddSeconds(-1).Ticks;c.SaveNow();yield return Reload();Assert.That(T.HasOffer,Is.False);Assert.That(c.State.Owned_Gun_list[0],Is.EqualTo(-1));Assert.That(c.State.AD_Gun_Event_Given,Is.True);Assert.That(c.State.Weapon_Get_Counts[2],Is.Zero);
        c.State.Owned_Gun_list[4]=5;c.State.AD_Gun_SlotIndex=4;c.State.AD_Gun_Num=14;c.State.AD_Gun_EndUtcTicks=DateTime.UtcNow.AddMinutes(30).Ticks;c.SaveNow();yield return Reload();Assert.That(T.HasOffer,Is.False);Assert.That(c.State.Owned_Gun_list[4],Is.EqualTo(5));Assert.That(c.State.AD_Gun_EndUtcTicks,Is.Zero);c.State.AD_Gun_SlotIndex=99;c.State.AD_Gun_Num=14;c.State.AD_Gun_EndUtcTicks=DateTime.UtcNow.AddMinutes(30).Ticks;c.SaveNow();yield return Reload();Assert.That(T.HasOffer,Is.False);Assert.That(c.State.Owned_Gun_list[4],Is.EqualTo(5));
    }
    IEnumerator Reload(){yield return SceneManager.LoadSceneAsync("RecoveredTarget");yield return SceneManager.LoadSceneAsync("RecoveredClient");yield return ClientStartupWait.Ready();c=RecoveryForestClient.Instance;ForestRuntimeAcceptance.IsGaming=false;c.DailyLogin.Close();c.Tutorial.SetCleared();}

}
