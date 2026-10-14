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
public sealed class StarGemPigTests
{
    string folder; GameClient client; bool background;
    void Configure(Scene s,LoadSceneMode mode){if(s.name=="GameClient")s.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single().SaveFolderOverride=folder;}
    [UnitySetUp] public IEnumerator Setup(){background=Application.runInBackground;Application.runInBackground=true;folder=Path.Combine(Application.temporaryCachePath,"StarGemPig-"+Guid.NewGuid().ToString("N"));SceneManager.sceneLoaded+=Configure;yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();client=GameClient.Instance;ForestRuntimeAcceptance.IsGaming=false;}
    [UnityTearDown] public IEnumerator Cleanup(){yield return TestSceneLoader.LoadAsync("TargetPreview");SceneManager.sceneLoaded-=Configure;Time.timeScale=1;if(Directory.Exists(folder))Directory.Delete(folder,true);Application.runInBackground=background;}
    static string Report(string name)=>Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports",name));
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
    StarGem_Pig Pig=>client.StarGemPig;
    StarGem_Pig_HUD Hud=>client.gameObject.scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<StarGem_Pig_HUD>(true)).Single();
    void Fill(){Pig.Add(Pig.Capacity_Now);}
    void HideAlert()=>UnityEngine.Object.FindAnyObjectByType<Alert>(FindObjectsInactive.Include)?.gameObject.SetActive(false);
    IEnumerator Capture(string name){ScreenCapture.CaptureScreenshot(Report("visual/stargem-pig-"+name+"-gpu.png"));yield return new WaitForSeconds(.2f);}
    [UnityTest] public IEnumerator OriginalPigControllerIsConnected()
    {Assert.That(Pig,Is.Not.Null);Assert.That(Pig.pig_ui,Is.Not.Null);Assert.That(Pig.pig_ui.Gem_Fill,Is.Not.Null);Assert.That(Hud.Gem_Fill,Is.Not.Null);Assert.That(Hud.Alert_obj,Is.Null,"native null alert reference retained");Assert.That(Pig.Lv,Is.EqualTo(1));Assert.That(Pig.Gem,Is.Zero);yield return null;}
    [UnityTest] public IEnumerator OriginalHudOpensLockedPageAndOriginalCloseButtonReturns()
    {
        PreparePage();yield return new WaitForSeconds(.7f);yield return Click(Hud.GetComponent<Button>());yield return new WaitForSeconds(.5f);
        var ui=Pig.pig_ui;Assert.That(ui.gameObject.activeInHierarchy,Is.True);Assert.That(ui.Locked_obj.activeSelf,Is.True);Assert.That(ui.Sale_obj.activeSelf,Is.False);Assert.That(ui.GemCount_txt.text,Is.EqualTo("0/660"));Assert.That(ui.Price_txt.text,Is.EqualTo("$0.99"));Assert.That(ui.Purchase_Btn_obj.GetComponent<Button>().interactable,Is.False);
        yield return Capture("locked-page");var close=ui.GetComponentsInChildren<Button>(true).Single(b=>b.name=="Close_Btn");yield return Click(close);Assert.That(ui.gameObject.activeSelf,Is.False);Assert.That(client.LocalStore.Completed,Is.Zero);
    }
    [UnityTest] public IEnumerator FiveOriginalCashClicksAdvanceTwoTwoOneAndShowSoldOut()
    {
        PreparePage();yield return new WaitForSeconds(.7f);yield return Click(Hud.GetComponent<Button>());yield return new WaitForSeconds(.5f);int wallet=client.State.StarGem;
        foreach(int level in new[]{1,1,2,2,3})
        {
            Assert.That(Pig.Lv,Is.EqualTo(level));Fill();yield return null;Assert.That(Hud.Percent_txt.text,Is.EqualTo("100%"));Assert.That(Hud.Glow_obj.activeSelf,Is.True);
            var ui=Pig.pig_ui;Assert.That(ui.Locked_obj.activeSelf,Is.False);Assert.That(ui.Sale_obj.activeSelf,Is.True);Assert.That(ui.Sale_Value_txt.text,Is.EqualTo(level==1?"Sale 50%":"Sale 35%"));Assert.That(ui.Gem_Fill.fillAmount,Is.EqualTo(1));
            if(client.LocalStore.Completed==0)yield return Capture("full-page");yield return Click(ui.Purchase_Btn_obj.GetComponent<Button>());yield return null;yield return null;
            wallet+=StarGemPig.CapacityFor(level);Assert.That(client.State.StarGem,Is.EqualTo(wallet));Assert.That(Pig.Gem,Is.Zero);Assert.That(new SaveArchive(folder).Load().StarGem,Is.EqualTo(wallet));HideAlert();yield return null;
            if(client.LocalStore.Completed==2)yield return Capture("level-two");
        }
        Assert.That(client.LocalStore.Completed,Is.EqualTo(5));Assert.That(Pig.Is_SoldOut,Is.True);Assert.That(Pig.PurchaseCount,Is.EqualTo(1));Assert.That(Pig.pig_ui.SoldOut_obj.activeSelf,Is.True);Assert.That(Pig.pig_ui.Purchase_Btn_obj.activeSelf,Is.False);Assert.That(Hud.Glow_obj.activeSelf,Is.False);Pig.Add(2500);Assert.That(Pig.Gem,Is.Zero);Assert.That(client.State.PurchaseHistory,Is.Empty);Assert.That(client.State.ProcessedTxnIds,Is.Empty);yield return Capture("sold-out");
    }
    [UnityTest] public IEnumerator DisabledSimulationCancelAndDuplicateKeepAccumulationAndWallet()
    {
        Fill();int amount=Pig.Gem;client.OfflinePurchaseSimulation=false;Pig.Purchase();yield return null;Assert.That(client.LocalStore.Completed,Is.Zero);Assert.That(Pig.Gem,Is.EqualTo(amount));
        client.OfflinePurchaseSimulation=true;Assert.That(client.LocalStore.Request(Pig.Product_id_Now),Is.True);Assert.That(client.LocalStore.Request(Pig.Product_id_Now),Is.False);client.LocalStore.Cancel();yield return null;Assert.That(Pig.Gem,Is.EqualTo(amount));Assert.That(client.State.StarGem,Is.Zero);
        Assert.That(client.LocalStore.Request(Pig.Product_id_Now),Is.True);yield return null;yield return null;Assert.That(Pig.Gem,Is.Zero);Assert.That(client.State.StarGem,Is.EqualTo(660));Assert.That(client.LocalStore.Request(Pig.Product_id_Now),Is.False);Assert.That(client.LocalStore.Completed,Is.EqualTo(1));
    }
    [UnityTest] public IEnumerator ColdReloadRestoresUnclaimedAmountLevelAndPurchaseCount()
    {
        Fill();Assert.That(client.LocalStore.Request(Pig.Product_id_Now),Is.True);yield return null;yield return null;Pig.Add(125);client.SaveNow();int season=Pig.Season_Index;
        yield return TestSceneLoader.LoadAsync("TargetPreview");yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();client=GameClient.Instance;
        Assert.That((Pig.Lv,Pig.Gem,Pig.PurchaseCount,Pig.Season_Index),Is.EqualTo((1,125,1,season)));Assert.That(client.State.StarGem,Is.EqualTo(660));Assert.That(client.LocalStore.Model.Recorded("catgunner_stargem_pig_1"),Is.True);
        PreparePage();yield return null;Assert.That(Hud.Percent_txt.text,Is.EqualTo("18%"));
    }
    [UnityTest] public IEnumerator LocalCalendarObserverResetsOpenPageAndRejectsPendingOldLevelPurchase()
    {
        var day=new DateTime(2026,10,11,23,59,59);client.RaidMode.Now=()=>day;Pig.Season_Check();client.State.Pig_Lv=2;client.State.Pig_Gem=1500;client.State.Pig_PurchaseCount=1;Pig.ReloadFromState();client.State.StarGem=123;
        PreparePage();yield return new WaitForSeconds(.5f);yield return Click(Hud.GetComponent<Button>());yield return new WaitForSeconds(.4f);Assert.That(client.LocalStore.Request("catgunner_stargem_pig_2"),Is.True);
        day=day.AddSeconds(1);yield return new WaitForSeconds(.4f);Assert.That((Pig.Lv,Pig.Gem,Pig.PurchaseCount),Is.EqualTo((1,0,0)));Assert.That(client.LocalStore.Completed,Is.Zero);Assert.That(client.State.StarGem,Is.EqualTo(123));Assert.That(Pig.pig_ui.GemCount_txt.text,Is.EqualTo("0/660"));Assert.That(Pig.pig_ui.Price_txt.text,Is.EqualTo("$0.99"));client.SaveNow();Assert.That(new SaveArchive(folder).Load().Pig_Season_Index,Is.EqualTo(RaidRules.SeasonIndex(day)));
    }
    [UnityTest] public IEnumerator CancelledEntryDoesNotFillAndRealProjectilesFillFiftyPlusTwentyFivePerBar()
    {
        var day=new DateTime(2024,1,1);client.RaidMode.Now=()=>day;client.State.Raid_Entry_Charge_Date=day.ToString("O");client.RaidMode.Ticket_Reload();client.RaidMode.Season_Check();Pig.Season_Check();client.State.Owned_Gun_list[0]=30;
        PreparePage();var raid=client.RaidMode;raid.Game_Enter_Normal();raid.Game_Exit();yield return new WaitForSeconds(2.5f);Assert.That(Pig.Gem,Is.Zero);
        raid.Panel_Open();raid.Gun_UnSelect(1);raid.Game_Enter_Normal();yield return new WaitForSeconds(2.1f);Assert.That(Pig.Gem,Is.EqualTo(50));var start=client.Hero.transform.position;float limit=Time.realtimeSinceStartup+25;
        while(raid.Score_Now<1&&Time.realtimeSinceStartup<limit)yield return null;
        Assert.That(raid.Score_Now,Is.GreaterThanOrEqualTo(1));Assert.That(Pig.Gem,Is.EqualTo(Math.Min(660,50+25*raid.Score_Now)));Assert.That(client.Hero.joystick.Direction,Is.EqualTo(Vector2.zero));
        File.WriteAllText(Report("stargem-pig-projectile-observation.json"),JsonUtility.ToJson(new Observation{score=raid.Score_Now,gem=Pig.Gem,moved=Vector3.Distance(start,client.Hero.transform.position),fixture="Independent original Gun30; zero input; native Boss health/timer; actual projectile damage, no injected damage/health; one cancelled loading entry gives no fill"},true));
        foreach(var cat in client.Team.Cat_list)cat.GetComponent<ForestCombatAcceptance>().enabled=false;client.SaveNow();Assert.That(new SaveArchive(folder).Load().Pig_Gem,Is.EqualTo(Pig.Gem));raid.Game_Exit();yield return new WaitForSeconds(2);Assert.That(client.Mode,Is.Zero);
    }
    [Serializable] sealed class Observation{public int score,gem;public float moved;public string fixture;}
}
public sealed class StarGemPigRulesTests
{
    static readonly DateTime Monday=new DateTime(2024,1,1);
    static StarGemPig Model(out SaveData state){state=new SaveData();var model=new StarGemPig(state,()=>Monday);model.Load();return model;}
    [Test] public void NativeCapLoadNormalizationAndPositiveAddsAreExact()
    {
        var p=Model(out var s);Assert.That((s.Pig_Lv,s.Pig_Gem,s.Pig_PurchaseCount),Is.EqualTo((1,0,0)));Assert.That(p.Add(0)||p.Add(-1),Is.False);p.Add(50);p.Add(25);Assert.That(s.Pig_Gem,Is.EqualTo(75));p.Add(1000);Assert.That(s.Pig_Gem,Is.EqualTo(660));Assert.That(p.Add(1),Is.False);s.Pig_Lv=99;s.Pig_Gem=4000;s.Pig_PurchaseCount=-3;p.Load();Assert.That((s.Pig_Lv,s.Pig_Gem,s.Pig_PurchaseCount),Is.EqualTo((3,4000,0)));Assert.That(p.Fill,Is.EqualTo(1));
    }
    [Test] public void TwoTwoOneRewardsAreSixThousandEightHundredTwentyAndStopAccumulation()
    {
        var p=Model(out var s);foreach(int level in new[]{1,1,2,2,3}){Assert.That(s.Pig_Lv,Is.EqualTo(level));p.Add(p.Capacity);Assert.That(p.Purchasable,Is.True);p.ApplyReward(level);Assert.That(s.Pig_Gem,Is.Zero);}Assert.That(s.StarGem,Is.EqualTo(6820));Assert.That(p.SoldOut,Is.True);Assert.That(p.Purchasable||p.Add(25),Is.False);
    }
    [Test] public void ChangedWeekResetsPigOnlyAndPreservesWalletAndSimulationLedger()
    {
        var day=Monday.AddDays(6);var s=new SaveData{Pig_Lv=3,Pig_Gem=777,Pig_PurchaseCount=1,Pig_Season_Index=0,StarGem=123};var p=new StarGemPig(s,()=>day);p.Load();Assert.That(s.Pig_Gem,Is.EqualTo(777));day=day.AddDays(1);Assert.That(p.SeasonCheck(),Is.True);Assert.That((s.Pig_Lv,s.Pig_Gem,s.Pig_PurchaseCount,s.Pig_Season_Index,s.StarGem),Is.EqualTo((1,0,0,1,123)));Assert.That(p.SeasonCheck(),Is.False);
    }
    [Test] public void NativeRewardCallbackValidatesLevelAndOnlyResetsMatchingTier()
    {
        var p=Model(out var s);p.Add(125);Assert.That(p.ApplyReward(0)||p.ApplyReward(4),Is.False);Assert.That(p.ApplyReward(2),Is.True);Assert.That((s.StarGem,s.Pig_Lv,s.Pig_Gem,s.Pig_PurchaseCount),Is.EqualTo((1500,1,125,0)));Assert.That(StarGem_Pig_UI.Price_str_return(0),Is.EqualTo("$0.99"));Assert.That(StarGem_Pig_UI.Price_str_return(4),Is.EqualTo("$4.99"));
    }
}
