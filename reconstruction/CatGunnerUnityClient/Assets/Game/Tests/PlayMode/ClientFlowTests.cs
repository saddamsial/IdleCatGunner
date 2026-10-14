using System;
using System.Collections;
using System.IO;
using System.Linq;
using CatGunner.Runtime;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;
using UnityEngine.UI;
using Object=UnityEngine.Object;

public sealed class ClientFlowTests
{
    private string folder;
    private GameClient client;
    [UnitySetUp] public IEnumerator SetUp()
    {
        Time.timeScale=1;
        folder=Path.Combine(Application.temporaryCachePath,"ClientFlowTests-"+Guid.NewGuid().ToString("N"));
        yield return LoadClient();
    }
    private IEnumerator LoadClient()
    {
        void Configure(Scene scene,LoadSceneMode mode)
        {
            if(scene.name!="GameClient")return;
            var owner=scene.GetRootGameObjects().SelectMany(go=>go.GetComponentsInChildren<GameClient>(true)).Single();
            owner.SaveFolderOverride=folder;
        }
        SceneManager.sceneLoaded+=Configure;
        try {yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();yield return null;}
        finally {SceneManager.sceneLoaded-=Configure;}
        client=GameClient.Instance;
        Assert.That(client,Is.Not.Null);
        Assert.That(client.State,Is.Not.Null);
    }
    [UnityTearDown] public IEnumerator TearDown()
    {
        yield return TestSceneLoader.LoadAsync("TargetPreview");yield return null;
        if(Directory.Exists(folder))Directory.Delete(folder,true);
        Time.timeScale=1;
    }
    private void IsolateCombat()
    {
        client.Hero.GetComponent<ForestCombatAcceptance>().enabled=false;
        client.Hero.GetComponent<ForestMovementAcceptance>().enabled=false;
        client.Hero.rb.linearVelocity=Vector3.zero;
    }
    [UnityTest] public IEnumerator OriginalHudAndDefaultZeroInputAutoMovementRunTogether()
    {
        Assert.That(client.Slider.Stage_txt.text,Is.EqualTo("Stage 1-1"));
        Assert.That(client.UpgradePanels.Length,Is.EqualTo(3));
        foreach(var panel in client.UpgradePanels)
        {
            Assert.That(panel.Fill.sprite,Is.Not.Null);
            Assert.That(panel.Lv_txt.text,Is.EqualTo("Lv.0"));
            Assert.That(panel.GetComponent<Button>().onClick.GetPersistentTarget(0),Is.SameAs(panel));
        }
        Vector3 start=client.Hero.transform.position;
        yield return new WaitForSeconds(3);
        Assert.That(client.Hero.joystick.Direction,Is.EqualTo(Vector2.zero));
        Assert.That(Vector3.Distance(start,client.Hero.transform.position),Is.GreaterThan(.5f));
        Assert.That(client.Forest.GameTime_Now,Is.LessThan(180));
        Assert.That(client.Slider.Time_Fill.fillAmount,Is.InRange(.9f,1));
        Assert.That(client.Currency.Money_txt.text,Is.EqualTo(client.State.Money.Value.PlainInteger()));
    }
    [UnityTest] public IEnumerator TreeDeathAwardsNativeAmountOnceAndHonorsDontDropAndGamingGate()
    {
        IsolateCombat();
        var trees=Object.FindObjectsByType<Tree>(FindObjectsInactive.Exclude);
        var enemy=trees[0].enemy;var before=client.State.Money.Value;var accumulated=client.State.Money_Accum.Value;
        var expected=enemy.Money.Value.Percent(client.Balance.Money(0));
        enemy.Damaged(enemy.Health_Now);enemy.Die();
        Assert.That((client.State.Money.Value-before).CompareTo(expected),Is.Zero);
        Assert.That((client.State.Money_Accum.Value-accumulated).CompareTo(expected),Is.Zero);
        before=client.State.Money.Value;trees[1].enemy.is_MoneyDontDrop=true;trees[1].enemy.Die();
        Assert.That(client.State.Money.Value.CompareTo(before),Is.Zero);
        ForestRuntimeAcceptance.IsGaming=false;trees[2].enemy.Die();
        Assert.That(trees[2].enemy.is_Die,Is.False);
        yield return null;
    }
    [UnityTest] public IEnumerator OriginalButtonsSpendWalletAndApplyAllThreeUpgradeBalances()
    {
        IsolateCombat();
        // Synthetic wallet is confined to this independent test folder.
        client.State.Money=CurrencyAmount.FromValue(client.Balance.Price(0)*new DecimalAmount(10));
        for(int kind=0;kind<3;kind++)
        {
            var before=client.State.Money.Value;
            client.UpgradePanels[kind].GetComponent<Button>().onClick.Invoke();
            Assert.That(client.State.Upgrade_Lv[kind],Is.EqualTo(1),"Original persistent callback dispatch");
            Assert.That((before-client.State.Money.Value).CompareTo(client.Balance.Price(0)),Is.Zero);
        }
        var equipment=EquipmentCatalogue.Load();
        var damage=equipment.Gun_list[0].Damage.Value.Percent(client.Balance.Power(1)).DiscardFraction();
        Assert.That(client.Hero.Damage.Value.CompareTo(damage),Is.Zero);
        float interval=EquipmentCatalogue.CalculateAttackCooldown(equipment.Gun_list[0].AtkSpeed,100,100,client.Balance.Speed(1),0,true,false,false,1);
        Assert.That(client.Hero.AtkCool_Max,Is.EqualTo(interval).Within(.00001f));
        var enemy=Object.FindObjectsByType<Tree>(FindObjectsInactive.Exclude).First().enemy;
        var beforeKill=client.State.Money.Value;var money=enemy.Money.Value.Percent(client.Balance.Money(1));enemy.Die();
        Assert.That((client.State.Money.Value-beforeKill).CompareTo(money),Is.Zero);
        client.State.Money=CurrencyAmount.FromValue(new DecimalAmount(0));
        Assert.That(client.Upgrade(0),Is.False);
        Assert.That(client.State.Upgrade_Lv[0],Is.EqualTo(1));
        yield return null;
        Assert.That(client.UpgradePanels[0].UpgradeAble_obj.activeSelf,Is.False);
        Assert.That(client.UpgradePanels[0].Fill.fillAmount,Is.Zero);
    }
    [UnityTest] public IEnumerator HoldStartsAfterDelayRepeatsAndStopsOnPointerUp()
    {
        IsolateCombat();client.State.Money=CurrencyAmount.FromValue(client.Balance.Price(0)*new DecimalAmount(100000));
        var panel=client.UpgradePanels[0];var evt=new PointerEventData(EventSystem.current);
        panel.OnPointerDown(evt);yield return new WaitForSeconds(.2f);
        Assert.That(client.State.Upgrade_Lv[0],Is.Zero);
        yield return new WaitForSeconds(.55f);
        Assert.That(client.State.Upgrade_Lv[0],Is.GreaterThanOrEqualTo(2));
        panel.OnPointerUp(evt);int level=client.State.Upgrade_Lv[0];yield return new WaitForSeconds(.3f);
        Assert.That(client.State.Upgrade_Lv[0],Is.EqualTo(level));
    }
    [UnityTest] public IEnumerator ActualRaycastRoutesAllUpgradeClicksAboveJoystickAndLeavesWorldDragAvailable()
    {
        IsolateCombat();
        client.State.Money=CurrencyAmount.FromValue(client.Balance.Price(0)*new DecimalAmount(10));
        Canvas.ForceUpdateCanvases();
        foreach(var panel in client.UpgradePanels)
        {
            var rect=panel.transform as RectTransform;
            var data=new PointerEventData(EventSystem.current){position=RectTransformUtility.WorldToScreenPoint(null,rect.TransformPoint(rect.rect.center))};
            var hits=new System.Collections.Generic.List<RaycastResult>();EventSystem.current.RaycastAll(data,hits);
            Assert.That(hits.Count,Is.GreaterThan(0));
            Assert.That(hits[0].gameObject.GetComponentInParent<Upgrade_Ingame>(),Is.SameAs(panel),"The actual top UI hit must route to the upgrade, not the full-screen joystick");
            var down=ExecuteEvents.ExecuteHierarchy(hits[0].gameObject,data,ExecuteEvents.pointerDownHandler);
            Assert.That(down,Is.SameAs(panel.gameObject));
            ExecuteEvents.ExecuteHierarchy(hits[0].gameObject,data,ExecuteEvents.pointerUpHandler);
            ExecuteEvents.ExecuteHierarchy(hits[0].gameObject,data,ExecuteEvents.pointerClickHandler);
            Assert.That(client.State.Upgrade_Lv[panel.type],Is.EqualTo(1));
        }
        var worldData=new PointerEventData(EventSystem.current){position=new Vector2(Screen.width*.5f,Screen.height*.5f)};
        var worldHits=new System.Collections.Generic.List<RaycastResult>();EventSystem.current.RaycastAll(worldData,worldHits);
        Assert.That(worldHits[0].gameObject.GetComponentInParent<FloatingJoystick>(),Is.Not.Null,"World pointer input still belongs to the original floating joystick");
        yield return null;
    }
    [UnityTest] public IEnumerator AllFiveWavesAutomaticallyContinueThroughBossIntoNextStage()
    {
        IsolateCombat();
        int[] counts={30,60,90,120,151};
        for(int wave=0;wave<5;wave++)
        {
            Assert.That(client.Forest.Level_Now,Is.EqualTo(wave));
            Assert.That(client.Forest.TreeCount_Max,Is.EqualTo(counts[wave]));
            foreach(var tree in Object.FindObjectsByType<Tree>(FindObjectsInactive.Exclude))tree.enemy.Die();
            Assert.That(ForestRuntimeAcceptance.IsGaming,Is.False);
            Assert.That(client.WinUI.activeSelf,Is.True);
            Assert.That(client.Slider.Value_Fill.fillAmount,Is.EqualTo(1));
            yield return new WaitForSeconds(2.1f);
            Assert.That(client.LoadingUI.activeSelf,Is.True);
            Assert.That(ForestRuntimeAcceptance.IsGaming,Is.False);
            yield return new WaitForSeconds(1.7f);
            Assert.That(ForestRuntimeAcceptance.IsGaming,Is.True);
            Assert.That(client.WinUI.activeSelf,Is.False);
            Assert.That(client.LoadingUI.activeSelf,Is.False);
            Assert.That(client.Hero.AtkCool_Max,Is.EqualTo(EquipmentCatalogue.CalculateAttackCooldown(.6f,100,100,100,client.Forest.Level_Now,true,false,false,1)).Within(.00001f));
        }
        Assert.That(client.Forest.Stage_Now,Is.EqualTo(1));Assert.That(client.Forest.Level_Now,Is.Zero);
        Assert.That(client.Forest.Stage_Value_Max,Is.EqualTo(10));
        Assert.That(client.Slider.Stage_txt.text,Is.EqualTo("Stage 2-1"));
        Assert.That(client.RoundsStarted,Is.EqualTo(6));
    }
    [UnityTest] public IEnumerator TimeoutRetriesSameWaveAndRestartCancelsPendingTransition()
    {
        IsolateCombat();client.Forest.GameTime_Now=0;yield return null;
        Assert.That(client.Failures,Is.EqualTo(1));Assert.That(client.FailUI.activeSelf,Is.True);
        Assert.That(client.Forest.Level_Now,Is.Zero);
        yield return new WaitForSeconds(3.8f);
        Assert.That(client.RoundsStarted,Is.EqualTo(2));Assert.That(client.FailUI.activeSelf,Is.False);
        client.GameWin();Assert.That(client.IsTransitioning,Is.True);
        client.Restart();int started=client.RoundsStarted;
        yield return new WaitForSeconds(4);
        Assert.That(client.RoundsStarted,Is.EqualTo(started));Assert.That(client.IsTransitioning,Is.False);
    }
    [UnityTest] public IEnumerator IndependentSaveRestoresWalletUpgradesWaveAndUnrelatedFields()
    {
        IsolateCombat();
        client.State.Money=CurrencyAmount.FromValue(client.Balance.Price(0)*new DecimalAmount(10));
        client.Upgrade(0);client.State.Dia=17;client.State.TotalPlayTime=77;
        client.GameWin();client.SaveNow();
        var expected=client.State.Money.Value;
        Assert.That(File.Exists(Path.Combine(folder,"NoSaveFile.json")),Is.True);
        Assert.That(File.Exists(Path.Combine(folder,"NoSaveFile.json.bak")),Is.True);
        yield return TestSceneLoader.LoadAsync("TargetPreview");yield return LoadClient();IsolateCombat();
        Assert.That(client.State.Money.Value.CompareTo(expected),Is.Zero);
        Assert.That(client.State.Upgrade_Lv[0],Is.EqualTo(1));
        Assert.That(client.Forest.Level_Now,Is.EqualTo(1));Assert.That(client.Forest.TreeCount_Max,Is.EqualTo(60));
        Assert.That(client.State.Dia,Is.EqualTo(17));Assert.That(client.State.TotalPlayTime,Is.EqualTo(77));
        Assert.That(client.Currency.Dia_txt.text,Is.EqualTo("17"));
        Assert.That(client.Hero.Damage.Value.CompareTo(EquipmentCatalogue.Load().Gun_list[0].Damage.Value.Percent(client.Balance.Power(1)).DiscardFraction()),Is.Zero);
    }
}
