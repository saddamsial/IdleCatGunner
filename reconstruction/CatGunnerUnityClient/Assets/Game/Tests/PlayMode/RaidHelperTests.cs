using System;
using System.Collections;
using System.IO;
using System.Linq;
using CatGunner.Runtime;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;
using UnityEngine.EventSystems;
using UnityEngine.UI;
using System.Collections.Generic;
public sealed class RaidHelperTests
{
    string folder; GameClient client;
    void Configure(Scene s,LoadSceneMode mode){if(s.name=="GameClient")s.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single().SaveFolderOverride=folder;}
    [UnitySetUp] public IEnumerator Setup(){folder=Path.Combine(Application.temporaryCachePath,"RaidHelper-"+Guid.NewGuid().ToString("N"));SceneManager.sceneLoaded+=Configure;yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();client=GameClient.Instance;ForestRuntimeAcceptance.IsGaming=false;}
    [UnityTearDown] public IEnumerator Cleanup(){yield return TestSceneLoader.LoadAsync("TargetPreview");SceneManager.sceneLoaded-=Configure;Time.timeScale=1;if(Directory.Exists(folder))Directory.Delete(folder,true);}
    [UnityTest] public IEnumerator OriginalFourthCatIsPresentAndLockedOutsideRaid(){Assert.That(client.Team.Helper_Cat,Is.Not.Null,"original paid raid helper model is still missing");Assert.That(client.Team.Helper_Cat.is_AI,Is.True);Assert.That(client.Team.Helper_Cat.gameObject.activeSelf,Is.False);yield return null;}
    static string Report(string name)=>Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports",name));
    IEnumerator Buy(){Assert.That(client.LocalStore.Request("catgunner_raid_helper"),Is.True);yield return null;yield return null;yield return null;Assert.That(client.RaidMode.Is_Helper_Active,Is.True);}
    void PreparePage(){client.DailyLogin.Close();client.Tutorial.SetCleared();ContentNavigationFixture.Unlock(client,Content_Type.Raid);UnityEngine.Object.FindAnyObjectByType<Alert>(FindObjectsInactive.Include)?.gameObject.SetActive(false);client.RaidMode.Panel_Open();}
    IEnumerator Click(Button b)
    {
        Assert.That(b.gameObject.activeInHierarchy&&b.interactable,Is.True,b.name);Canvas.ForceUpdateCanvases();var module=EventSystem.current.GetComponent<StandaloneInputModule>();var mouse=module.gameObject.AddComponent<ForestFeedbackMouseFixture>();module.inputOverride=mouse;
        try
        {
            var rect=(RectTransform)b.transform;mouse.Position=RectTransformUtility.WorldToScreenPoint(null,rect.TransformPoint(rect.rect.center));
            var evt=new PointerEventData(EventSystem.current){position=mouse.Position};var hits=new List<RaycastResult>();EventSystem.current.RaycastAll(evt,hits);Assert.That(hits.FirstOrDefault().gameObject?.GetComponentInParent<Button>(),Is.SameAs(b),string.Join("|",hits.Take(5).Select(h=>h.gameObject.name)));
            mouse.Down=true;mouse.Held=true;yield return null;mouse.Down=false;mouse.Held=false;mouse.Up=true;yield return null;mouse.Up=false;yield return null;
        }
        finally{module.inputOverride=null;UnityEngine.Object.Destroy(mouse);}
    }
    [Test] public void NativeSeasonSentinelAndMondayBoundaryAreExact()
    {var sunday=new DateTime(2026,10,11);int season=RaidRules.SeasonIndex(sunday);Assert.That(RaidHelperRules.IsActive(-1,sunday),Is.False);Assert.That(RaidHelperRules.IsActive(season,sunday),Is.True);Assert.That(RaidHelperRules.IsActive(season,sunday.AddDays(1)),Is.False);Assert.That(RaidHelperRules.IsActive(season+1,sunday),Is.False);}
    [Test] public void NativeGunSearchAndVerifiedSevenTypeFallbackAreExact()
    {
        var guns=EquipmentCatalogue.Load().Gun_list;foreach(var weak in guns.Skip(30).Take(5).Select(g=>g.type)){int expected=Enumerable.Range(50,5).First(i=>guns[i].type==weak);Assert.That(RaidHelperRules.GunNumber(guns,weak),Is.EqualTo(expected));}
        var sparse=Enumerable.Range(0,65).Select(i=>new Gun_Info{type=GunType.SINGLE}).ToArray();Assert.That(RaidHelperRules.GunNumber(sparse,GunType.PIERCE),Is.EqualTo(50));Assert.That(RaidHelperRules.GunNumber(sparse,GunType.LASER),Is.EqualTo(52));Assert.That(RaidHelperRules.GunNumber(sparse,GunType.SHOTGUN),Is.EqualTo(54));Assert.That(RaidHelperRules.GunNumber(guns.Take(49).ToArray(),GunType.PIERCE),Is.EqualTo(-1));Assert.That(RaidHelperRules.GunNumber(null,GunType.PIERCE),Is.EqualTo(-1));
    }
    [Test] public void NativeMinimumIncludesEmptyWeaponSlotAndZeroLength()
    {Assert.That(RaidHelperRules.MinimumStars(new[]{20,0,18}),Is.Zero);Assert.That(RaidHelperRules.MinimumStars(new[]{4,2,3}),Is.EqualTo(2));Assert.That(RaidHelperRules.MinimumStars(Array.Empty<int>()),Is.Zero);}
    [UnityTest] public IEnumerator OriginalSlotOpensPopupAndOriginalCashButtonGrantsOnlyCurrentSeason()
    {
        PreparePage();yield return new WaitForSeconds(.7f);var raid=client.RaidMode;var slot=raid.helperSlot;Assert.That(slot.Locked_obj.activeSelf,Is.True);
        var owned=(int[])client.State.Owned_Gun_list.Clone();var selected=(int[])client.State.Selected_items.Clone();var collect=(bool[])client.State.Gun_Collect.Clone();
        ScreenCapture.CaptureScreenshot(Report("visual/raid-helper-locked-slot-gpu.png"));yield return new WaitForSeconds(.2f);
        yield return Click(slot.GetComponent<Button>());yield return new WaitForSeconds(.7f);var popup=raid.Helper_Popup_obj.GetComponent<Raid_Helper_Purchase_Popup>();Assert.That(popup.gameObject.activeInHierarchy,Is.True);Assert.That(popup.Purchase_obj.activeSelf,Is.False);
        ScreenCapture.CaptureScreenshot(Report("visual/raid-helper-purchase-popup-gpu.png"));yield return new WaitForSeconds(.2f);
        var cash=popup.Purchase_Btn_obj.GetComponent<Button>();yield return Click(cash);yield return null;yield return null;
        Assert.That(raid.Is_Helper_Active,Is.True);Assert.That(popup.gameObject.activeSelf,Is.False);Assert.That(slot.Locked_obj.activeSelf,Is.False);Assert.That(client.Team.Helper_Active,Is.False);
        Assert.That(client.State.Raid_Helper_Season_Index,Is.EqualTo(RaidRules.SeasonIndex(raid.Now())));Assert.That(client.State.Owned_Gun_list,Is.EqualTo(owned));Assert.That(client.State.Selected_items,Is.EqualTo(selected));Assert.That(client.State.Gun_Collect,Is.EqualTo(collect));Assert.That(client.LocalStore.Request("catgunner_raid_helper"),Is.False);
        UnityEngine.Object.FindAnyObjectByType<Alert>(FindObjectsInactive.Include)?.gameObject.SetActive(false);
        yield return new WaitForSeconds(.3f);ScreenCapture.CaptureScreenshot(Report("visual/raid-helper-owned-slot-gpu.png"));yield return new WaitForSeconds(.2f);
        popup.Open();Assert.That(popup.Purchase_obj.activeSelf,Is.True);Assert.That(popup.Purchase_Btn_obj.activeSelf,Is.False);popup.OnClick_Close();Assert.That(popup.gameObject.activeSelf,Is.False);
    }
    [UnityTest] public IEnumerator SimulationGateCancellationAndDuplicateDoNotGrantWeaponsOrSeason()
    {
        int season=client.State.Raid_Helper_Season_Index;client.OfflinePurchaseSimulation=false;Assert.That(client.LocalStore.Request("catgunner_raid_helper"),Is.False);client.RaidMode.Helper_Apply();Assert.That(client.State.Raid_Helper_Season_Index,Is.EqualTo(season));
        client.OfflinePurchaseSimulation=true;Assert.That(client.LocalStore.Request("catgunner_raid_helper"),Is.True);client.LocalStore.Cancel();yield return null;yield return null;Assert.That(client.State.Raid_Helper_Season_Index,Is.EqualTo(season));
        yield return Buy();int completed=client.LocalStore.Completed;Assert.That(client.LocalStore.Request("catgunner_raid_helper"),Is.False);yield return null;Assert.That(client.LocalStore.Completed,Is.EqualTo(completed));
        client.OfflinePurchaseSimulation=false;Assert.That(client.RaidMode.Is_Helper_Active,Is.False);client.SaveNow();Assert.That(new SaveArchive(folder).Load().Raid_Helper_Season_Index,Is.EqualTo(client.State.Raid_Helper_Season_Index));
    }
    [UnityTest] public IEnumerator PurchaseColdReloadRestoresEntitlementWithoutSpawningForestHelper()
    {
        yield return Buy();int season=client.State.Raid_Helper_Season_Index;client.SaveNow();Assert.That(new SaveArchive(folder).Load().Raid_Helper_Season_Index,Is.EqualTo(season));
        yield return TestSceneLoader.LoadAsync("TargetPreview");yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();client=GameClient.Instance;
        Assert.That(client.RaidMode.Helper_Season_Index,Is.EqualTo(season));Assert.That(client.RaidMode.Is_Helper_Active,Is.True);Assert.That(client.Team.Helper_Active,Is.False);client.RaidMode.Panel_Open();Assert.That(client.RaidMode.helperSlot.Locked_obj.activeSelf,Is.False);
    }
    [UnityTest] public IEnumerator NativeMinimumStarsWeakDamageAndCriticalReachOriginalFourthCat()
    {
        client.RaidMode.Now=()=>new DateTime(2024,1,1);client.RaidMode.Season_Check();yield return Buy();client.State.Star_Slot_Lv[0]=4;client.State.Star_Slot_Lv[1]=2;client.State.Star_Slot_Lv[2]=3;client.Forest.Stage_Value_Max=client.State.Stage_Value_Max=390;client.State.Upgrade_Lv[0]=100;client.State.Upgrade_Lv[1]=100;
        PreparePage();client.RaidMode.Gun_UnSelect(2);client.RaidMode.Game_Enter_Normal();yield return new WaitForSeconds(2.15f);
        var helper=client.Team.Helper_Cat;var gun=Gun_manager.instance.Gun_list[client.RaidMode.Helper_GunNum_return()];
        Assert.That(client.Team.Helper_Active,Is.True);Assert.That(helper.is_Helper,Is.True);Assert.That(helper.SlotNum,Is.EqualTo(-1));Assert.That(client.RaidMode.Helper_StarLv_return(),Is.EqualTo(2));
        var expected=StarRules.DamageApply(gun.Damage.Value,2)*new DecimalAmount(10);Assert.That(helper.Damage.Value.PlainInteger(),Is.EqualTo(expected.PlainInteger()));Assert.That(helper.CriDmg.Value.PlainInteger(),Is.EqualTo(expected.Percent(new DecimalAmount(125)).DiscardFraction().PlainInteger()));
        Assert.That(helper.FormationOffset,Is.EqualTo(new Vector3(7,0,-7)));Assert.That(helper.moveSpeed,Is.EqualTo(17));Assert.That(helper.AtkCool_Max,Is.EqualTo(Mathf.Clamp(gun.AtkSpeed,.05f,2f)).Within(.00001f));Assert.That(helper.GunNum,Is.EqualTo(client.RaidMode.Helper_GunNum_return()));
        Assert.That(client.RaidMode.helperSlot.StarUpgrade_Lv_txt.text,Is.EqualTo("2"));Assert.That(client.RaidMode.helperSlot.Damage_txt.text,Is.EqualTo(expected.PlainInteger()));client.RaidMode.Game_Exit();yield return new WaitForSeconds(2);Assert.That(client.Team.Helper_Active,Is.False);Assert.That(client.Mode,Is.Zero);
    }
    [UnityTest] public IEnumerator OnlyHelperNaturallyShootsBossAndMovesWithoutJoystickInput()
    {
        client.RaidMode.Now=()=>new DateTime(2024,1,1);client.RaidMode.Season_Check();yield return Buy();
        foreach(var cat in client.Team.Cat_list)cat.GetComponent<ForestCombatAcceptance>().enabled=false;
        client.RaidMode.Game_Enter_Normal();yield return new WaitForSeconds(2.1f);var helper=client.Team.Helper_Cat;var start=helper.transform.position;float moved=0;int initialScore=client.RaidMode.Score_Now;var initial=client.RaidMode._boss.enemy.Health_Now.Value;float deadline=Time.realtimeSinceStartup+8;
        while(Time.realtimeSinceStartup<deadline&&client.RaidMode.Score_Now==initialScore&&client.RaidMode._boss.enemy.Health_Now.Value.CompareTo(initial)>=0){moved=Mathf.Max(moved,Vector3.Distance(start,helper.transform.position));yield return null;}
        Assert.That(client.RaidMode.Score_Now>initialScore||client.RaidMode._boss.enemy.Health_Now.Value.CompareTo(initial)<0,Is.True,"Only restored helper can dispatch actual damage in this fixture");Assert.That(moved,Is.GreaterThan(.2f));Assert.That(client.Hero.joystick.Direction,Is.EqualTo(Vector2.zero));
        File.WriteAllText(Report("raid-helper-projectile-observation.json"),JsonUtility.ToJson(new Observation{gun=helper.GunNum,damage=helper.Damage.Value.PlainInteger(),moved=moved,initialHealth=initial.PlainInteger(),remainingHealth=client.RaidMode._boss.enemy.Health_Now.Value.PlainInteger(),score=client.RaidMode.Score_Now,normalCatsCombatDisabled=true,damageInjected=false},true));
        ScreenCapture.CaptureScreenshot(Report("visual/raid-helper-live-combat-gpu.png"));yield return new WaitForSeconds(.2f);client.RaidMode.Game_Exit();yield return new WaitForSeconds(2);Assert.That(client.Team.Helper_Active,Is.False);
    }
    [UnityTest] public IEnumerator MidRaidPurchaseActivatesOnceAndSeasonExpiryHidesHelperWithoutErasingRecord()
    {
        var day=new DateTime(2026,10,11);client.RaidMode.Now=()=>day;client.RaidMode.Season_Check();client.RaidMode.Game_Enter_Normal();yield return new WaitForSeconds(2.1f);Assert.That(client.Team.Helper_Active,Is.False);
        yield return Buy();Assert.That(client.Team.Helper_Active,Is.True);Assert.That(client.Team.Cat_Count_All,Is.EqualTo(4));var helper=client.Team.Helper_Cat;Assert.That(client.Team.Cat_At(3),Is.SameAs(helper));Assert.That(client.Team.Cat_list.Length,Is.EqualTo(3));int record=client.State.Raid_Helper_Season_Index;
        day=day.AddDays(1);float expiryDeadline=Time.realtimeSinceStartup+3;while(client.Team.Helper_Active&&Time.realtimeSinceStartup<expiryDeadline)yield return null;Assert.That(client.RaidMode.Is_Helper_Active,Is.False,"expired season ownership");Assert.That(client.Team.Helper_Active,Is.False,"expired helper combat visibility: service="+client.LocalStore.isActiveAndEnabled+", ready="+client.ReadyForPlay+", raid="+client.RaidMode.isActiveAndEnabled);Assert.That(client.RaidMode.helperSlot.Locked_obj.activeSelf,Is.True);Assert.That(client.State.Raid_Helper_Season_Index,Is.EqualTo(record));Assert.That(client.LocalStore.CanBuy("catgunner_raid_helper"),Is.True);
        client.RaidMode.Season_Check();client.SaveNow();Assert.That(new SaveArchive(folder).Load().Raid_Helper_Season_Index,Is.EqualTo(record));yield return Buy();Assert.That(client.State.Raid_Helper_Season_Index,Is.EqualTo(record+1));Assert.That(client.Team.Helper_Active,Is.True);client.RaidMode.Game_Exit();yield return new WaitForSeconds(2);
    }
    [UnityTest] public IEnumerator FiveWeeklyWeakTypesSelectAndNaturallyFireTheirOriginalHelperWeapons()
    {
        foreach(var cat in client.Team.Cat_list)cat.GetComponent<ForestCombatAcceptance>().enabled=false;
        var day=new DateTime(2024,1,1);client.RaidMode.Now=()=>day;client.State.Raid_Entry_Charge_Date=day.ToString("O");client.RaidMode.Ticket_Reload();var guns=new HashSet<int>();
        for(int i=0;i<5;i++)
        {
            client.RaidMode.Season_Check();yield return Buy();client.RaidMode.Game_Enter_Normal();yield return new WaitForSeconds(2.1f);
            var helper=client.Team.Helper_Cat;Assert.That(helper._gunInfo.type,Is.EqualTo(client.RaidMode.Buff_GunType_Now()));guns.Add(helper.GunNum);
            var initial=client.RaidMode._boss.enemy.Health_Now.Value;int score=client.RaidMode.Score_Now;float deadline=Time.realtimeSinceStartup+8;
            while(Time.realtimeSinceStartup<deadline&&client.RaidMode.Score_Now==score&&client.RaidMode._boss.enemy.Health_Now.Value.CompareTo(initial)>=0)yield return null;
            Assert.That(client.RaidMode.Score_Now>score||client.RaidMode._boss.enemy.Health_Now.Value.CompareTo(initial)<0,Is.True,"original helper gun "+helper.GunNum+" must hit through the real projectile path");
            client.RaidMode.Game_Exit();yield return new WaitForSeconds(2);Assert.That(client.Team.Helper_Active,Is.False);day=day.AddDays(7);
        }
        Assert.That(guns.OrderBy(x=>x),Is.EqualTo(new[]{50,51,52,53,54}));
    }
    [Serializable] sealed class Observation{public int gun,score;public string damage,initialHealth,remainingHealth;public float moved;public bool normalCatsCombatDisabled,damageInjected;}
}
