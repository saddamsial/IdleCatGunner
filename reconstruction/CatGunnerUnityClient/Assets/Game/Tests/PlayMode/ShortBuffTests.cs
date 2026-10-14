using System;
using System.IO;
using System.Linq;
using System.Collections;
using System.Collections.Generic;
using CatGunner.Runtime;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public sealed class ShortBuffTests
{
    string folder; GameClient c; bool background;

    void Independent(Scene scene, LoadSceneMode mode)
    {
        if (scene.name == "GameClient") scene.GetRootGameObjects().SelectMany(g => g.GetComponentsInChildren<GameClient>(true)).Single().SaveFolderOverride = folder;
    }
    [UnitySetUp] public IEnumerator Setup()
    {
        background = Application.runInBackground; Application.runInBackground = true;
        folder = Path.Combine(Application.temporaryCachePath, "ShortBuff-" + Guid.NewGuid().ToString("N"));
        SceneManager.sceneLoaded += Independent;
        yield return TestSceneLoader.LoadAsync("GameClient"); yield return ClientStartupWait.Ready();
        c = GameClient.Instance; ForestRuntimeAcceptance.IsGaming = false;
        c.DailyLogin.Close(); c.Tutorial.SetCleared();
    }
    [UnityTearDown] public IEnumerator Cleanup()
    {
        yield return TestSceneLoader.LoadAsync("TargetPreview"); SceneManager.sceneLoaded -= Independent;
        Time.timeScale = 1; Application.runInBackground = background;
        if (Directory.Exists(folder)) Directory.Delete(folder, true);
    }
    Buff_manager M=>c.Buffs;
    Buff_Panel Panel(Buff_Type type)=>M.GetComponentsInChildren<Buff_Panel>(true).Single(p=>p.type==type);
    static string Report(string name)=>Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports",name));
    IEnumerator Capture(string name){yield return new WaitForSecondsRealtime(1.7f);ScreenCapture.CaptureScreenshot(Report("visual/short-buff-"+name+"-gpu.png"));yield return new WaitForSecondsRealtime(.2f);}
    IEnumerator Click(Button button)
    {
        Assert.That(button.gameObject.activeInHierarchy&&button.interactable,Is.True,button.name);Canvas.ForceUpdateCanvases();
        var module=EventSystem.current.GetComponent<StandaloneInputModule>();var mouse=module.gameObject.AddComponent<ForestFeedbackMouseFixture>();module.inputOverride=mouse;
        try
        {
            var rect=(RectTransform)button.transform;mouse.Position=RectTransformUtility.WorldToScreenPoint(null,rect.TransformPoint(rect.rect.center));
            var hits=new List<RaycastResult>();EventSystem.current.RaycastAll(new PointerEventData(EventSystem.current){position=mouse.Position},hits);
            Assert.That(hits.FirstOrDefault().gameObject?.GetComponentInParent<Button>(),Is.SameAs(button),string.Join("|",hits.Take(5).Select(h=>h.gameObject.name)));
            mouse.Down=true;mouse.Held=true;yield return null;mouse.Down=false;mouse.Held=false;mouse.Up=true;yield return null;mouse.Up=false;yield return null;
        }
        finally{module.inputOverride=null;UnityEngine.Object.Destroy(mouse);}
    }
    [UnityTest] public IEnumerator OriginalBuffMenuAndAdvertGrantAreAvailable()
    {
        Assert.That(M,Is.Not.Null);Assert.That(M.Buff_Menu_Btn,Is.Not.Null);
        var button=M.Buff_Menu_Btn.GetComponent<Button>();yield return Click(button);Assert.That(M.Popup.activeInHierarchy,Is.True);
        yield return Capture("inactive-popup");int dia=c.State.Dia,pet=c.State.PetCoin;var money=c.State.Money.Value;
        foreach(Buff_Type type in Enum.GetValues(typeof(Buff_Type)))
        {
            var panel=Panel(type);Assert.That(panel.AD_Btn_obj.GetComponent<Button>().onClick.GetPersistentMethodName(0),Is.EqualTo("AD_Watch"));
            yield return null;yield return Click(panel.AD_Btn_obj.GetComponent<Button>());Assert.That(M.GetBuffTime(type),Is.GreaterThan(298));
        }
        Assert.That(M.IsSuperBuff(),Is.True);Assert.That(c.RewardedAds.CompletedWatches,Is.EqualTo(3));Assert.That((c.State.Dia,c.State.PetCoin),Is.EqualTo((dia,pet)));Assert.That(c.State.Money.Value.CompareTo(money),Is.Zero);
        Assert.That(M.Buff_Menu_Btn.SuperValue_obj.activeSelf,Is.True);yield return Capture("super-popup");
    }
    [Test] public void NativeDurationFormatsClampsAndAdPlacementsMatch()
    {
        Assert.That(Buff_manager.BUFF_DURATION,Is.EqualTo(300));Assert.That(Buff_manager.BUFF_MAX,Is.EqualTo(900));
        Assert.That(Buff_manager.FormatRemaining(300),Is.EqualTo("5:00"));Assert.That(Buff_manager.FormatRemaining(59.99f),Is.EqualTo("0:59"));Assert.That(Buff_manager.FormatRemaining(-1),Is.Empty);
        Assert.That(new[]{Buff_manager.ToAdType(Buff_Type.Money),Buff_manager.ToAdType(Buff_Type.Power),Buff_manager.ToAdType(Buff_Type.AtkSpeed)},Is.EqualTo(new[]{0,1,14}));
        M.LoadBuffTimes(-30,1200,0);Assert.That(M.GetBuffTime(Buff_Type.Money),Is.Zero);Assert.That(M.GetBuffTime(Buff_Type.Power),Is.EqualTo(900));
        for(int i=0;i<4;i++)M.AddBuff(Buff_Type.Money);Assert.That(M.GetBuffTime(Buff_Type.Money),Is.EqualTo(900));Assert.That(M.GetMult(Buff_Type.Money),Is.EqualTo(3));Assert.That(M.GetMult(Buff_Type.AtkSpeed),Is.EqualTo(1));
    }
    [UnityTest] public IEnumerator ThreeEffectsAreIndependentAndSuperFallsBackAfterExpiry()
    {
        Time.timeScale=0;c.ApplyBalance();var damage=c.Hero.Damage.Value;float cooldown=c.Hero.AtkCool_Max;
        M.LoadBuffTimes(100,0,0);Assert.That(c.Hero.Damage.Value.CompareTo(damage),Is.Zero);Assert.That(c.Hero.AtkCool_Max,Is.EqualTo(cooldown));
        var before=c.State.Money.Value;c.AwardModeTreeMoney(CurrencyAmount.FromValue(new DecimalAmount(10)),Vector3.zero);
        var boosted=c.State.Money.Value-before;M.LoadBuffTimes(0,0,0);before=c.State.Money.Value;c.AwardModeTreeMoney(CurrencyAmount.FromValue(new DecimalAmount(10)),Vector3.zero);
        Assert.That(boosted.CompareTo((c.State.Money.Value-before)*new DecimalAmount(3)),Is.Zero);
        M.LoadBuffTimes(0,100,0);Assert.That(c.Hero.Damage.Value.CompareTo(damage*new DecimalAmount(3)),Is.Zero);Assert.That(c.Hero.AtkCool_Max,Is.EqualTo(cooldown));
        M.LoadBuffTimes(0,0,100);Assert.That(c.Hero.Damage.Value.CompareTo(damage),Is.Zero);Assert.That(c.Hero.AtkCool_Max,Is.EqualTo(Mathf.Max(.05f,cooldown/3)).Within(.00001f));
        M.LoadBuffTimes(.12f,100,100);Assert.That(c.Hero.Damage.Value.CompareTo(damage*new DecimalAmount(4)),Is.Zero);Assert.That(c.Hero.AtkCool_Max,Is.EqualTo(Mathf.Max(.05f,cooldown/4)).Within(.00001f));
        Time.timeScale=1;yield return new WaitForSeconds(.3f);Assert.That(M.GetMult(Buff_Type.Money),Is.EqualTo(1));Assert.That(M.GetMult(Buff_Type.Power),Is.EqualTo(3));Assert.That(c.Hero.Damage.Value.CompareTo(damage*new DecimalAmount(3)),Is.Zero);
    }
    [UnityTest] public IEnumerator ScaledClockPausesButPopupAndStoppedForestStillCountDown()
    {
        M.LoadBuffTimes(2,0,0);M.Open();Time.timeScale=0;float time=M.GetBuffTime(Buff_Type.Money);yield return new WaitForSecondsRealtime(.2f);Assert.That(M.GetBuffTime(Buff_Type.Money),Is.EqualTo(time));
        Time.timeScale=1;yield return new WaitForSeconds(.3f);Assert.That(M.GetBuffTime(Buff_Type.Money),Is.LessThan(time-.2f));Assert.That(ForestRuntimeAcceptance.IsGaming,Is.False);
        M.LoadBuffTimes(.1f,0,0);yield return new WaitForSeconds(.2f);Assert.That(M.GetBuffTime(Buff_Type.Money),Is.Zero);Assert.That(M.GetMult(Buff_Type.Money),Is.EqualTo(1));
        Assert.That(M.Buff_Menu_Btn.Cool_txt.text,Is.Empty);Assert.That(Panel(Buff_Type.Money).Fill.fillAmount,Is.Zero);
    }
    [UnityTest] public IEnumerator PermanentLocalPackFreezesRawTimersAndHidesAds()
    {
        M.LoadBuffTimes(80,70,60);Assert.That(c.LocalStore.Model.Apply("buff_pack"),Is.True);c.NotifyOfflineStateChanged();float time=M.GetBuffTime(Buff_Type.Money);M.Open();yield return new WaitForSeconds(.3f);
        Assert.That(M.GetBuffTime(Buff_Type.Money),Is.EqualTo(time));foreach(Buff_Type t in Enum.GetValues(typeof(Buff_Type))){Assert.That(M.GetMult(t),Is.EqualTo(4));Assert.That(M.GetBuffRemainingTime(t),Is.EqualTo(-1));Assert.That(Panel(t).AD_Btn_obj.activeSelf,Is.False);Assert.That(Panel(t).Fill.fillAmount,Is.EqualTo(1));Assert.That(Panel(t).BuffTime_txt.text,Is.Empty);}
        Assert.That(M.Buff_Menu_Btn.Cool_txt.text,Is.Empty);Panel(Buff_Type.Power).AD_Watch();yield return null;Assert.That(c.RewardedAds.CompletedWatches,Is.Zero);Assert.That(c.State.ProcessedTxnIds,Is.Empty);Assert.That(c.State.PurchaseHistory,Is.Empty);yield return Capture("permanent-popup");
    }
    [UnityTest] public IEnumerator DisabledCancelledDuplicateAndClosedPageAdsCannotGrant()
    {
        M.Open();var panel=Panel(Buff_Type.Money);c.RewardedAds.Enabled=false;panel.AD_Watch();yield return null;Assert.That(M.GetBuffTime(Buff_Type.Money),Is.Zero);
        c.RewardedAds.Enabled=true;panel.AD_Watch();c.RewardedAds.Cancel();yield return null;Assert.That(M.GetBuffTime(Buff_Type.Money),Is.Zero);
        panel.AD_Watch();M.Close();M.Open();yield return null;yield return null;Assert.That(M.GetBuffTime(Buff_Type.Money),Is.Zero);
        panel.AD_Watch();panel.AD_Watch();yield return null;yield return null;Assert.That(M.GetBuffTime(Buff_Type.Money),Is.InRange(299f,300f));Assert.That(c.RewardedAds.CompletedWatches,Is.EqualTo(1));
        M.Close();panel.AD_Watch();yield return null;Assert.That(c.RewardedAds.CompletedWatches,Is.EqualTo(1));
    }
    [UnityTest] public IEnumerator ReloadRetainsSeparateTimersWithoutWallClockDeductionOrRewardReplay()
    {
        Time.timeScale=0;M.LoadBuffTimes(91,72,43);c.SaveNow();int dia=c.State.Dia;
        yield return TestSceneLoader.LoadAsync("TargetPreview");yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();c=GameClient.Instance;ForestRuntimeAcceptance.IsGaming=false;
        Assert.That(new[]{M.GetBuffTime(Buff_Type.Money),M.GetBuffTime(Buff_Type.Power),M.GetBuffTime(Buff_Type.AtkSpeed)},Is.EqualTo(new[]{91f,72f,43f}));Assert.That(c.State.Dia,Is.EqualTo(dia));Assert.That(c.RewardedAds.CompletedWatches,Is.Zero);Assert.That(c.State.ProcessedTxnIds,Is.Empty);
    }
    [UnityTest] public IEnumerator BossAndMonsterPreviewsUseSeparatePowerAndSpeedBuffs()
    {
        Time.timeScale=0;var boss=c.BossMode.Power_Boss_return();var monster=c.MonsterMode.Power_Monster_return();M.LoadBuffTimes(100,0,0);
        Assert.That(c.BossMode.Power_Boss_return().CompareTo(boss),Is.Zero);Assert.That(c.MonsterMode.Power_Monster_return().CompareTo(monster),Is.Zero);
        M.LoadBuffTimes(0,100,0);var power=c.BossMode.Power_Boss_return();Assert.That(power.CompareTo(boss*new DecimalAmount(2)),Is.GreaterThan(0));Assert.That(c.MonsterMode.Power_Monster_return().CompareTo(monster*new DecimalAmount(2)),Is.GreaterThan(0));
        M.LoadBuffTimes(0,100,100);Assert.That(c.BossMode.Power_Boss_return().CompareTo(power*new DecimalAmount(2)),Is.GreaterThan(0));var combined=c.BossMode.Power_Boss_return();c.State.Upgrade_Lv[0]=c.State.Upgrade_Lv[1]=1000;c.ApplyBalance();Assert.That(c.BossMode.Power_Boss_return().CompareTo(combined),Is.Zero);yield return null;
    }
    [UnityTest] public IEnumerator OriginalMineAdvertGrantsOnlySpeedAndUsesTicketGate()
    {
        c.MineMode.StartPanel_Open();var ui=c.MineMode.mineStart_ui;ui.SpeedBuff_Reload();yield return new WaitForSeconds(.5f);
        Assert.That(ui.AD_SpeedBuff_obj.activeSelf&&ui.AD_SpeedBuff_obj_Auto.activeSelf,Is.True);
        Assert.That(ui.AD_SpeedBuff_obj.GetComponent<Button>().onClick.GetPersistentMethodName(0),Is.EqualTo("AD_SpeedBuff_Watch"));
        yield return Click(ui.AD_SpeedBuff_obj.GetComponent<Button>());ui.SpeedBuff_Reload();Assert.That(M.GetBuffTime(Buff_Type.AtkSpeed),Is.GreaterThan(298));Assert.That(M.GetBuffTime(Buff_Type.Money)+M.GetBuffTime(Buff_Type.Power),Is.Zero);Assert.That(ui.AD_SpeedBuff_obj.activeSelf||ui.AD_SpeedBuff_obj_Auto.activeSelf,Is.False);
        M.LoadBuffTimes(0,0,0);c.MineMode.TicketUse_Count=c.MineMode.Ticket_MaxCount_return();ui.SpeedBuff_Reload();ui.AD_SpeedBuff_Watch();yield return null;Assert.That(M.GetBuffTime(Buff_Type.AtkSpeed),Is.Zero);Assert.That(ui.AD_SpeedBuff_obj.activeSelf||ui.AD_SpeedBuff_obj_Auto.activeSelf,Is.False);
    }
    [UnityTest] public IEnumerator OriginalUpgradePanelsShowIndependentBuffMultipliers()
    {
        Time.timeScale=0;M.LoadBuffTimes(0,100,0);yield return null;
        foreach(var panel in c.UpgradePanels){panel.Reload();Assert.That(panel.Buff_On_obj.activeSelf,Is.EqualTo(panel.type==0));Assert.That(panel.Buff_Icon_obj.activeSelf,Is.EqualTo(panel.type==0));Assert.That(panel.Fill.color,Is.EqualTo(panel.Fill_Colors[panel.type==0?1:0]));}
        M.LoadBuffTimes(100,100,100);yield return null;foreach(var panel in c.UpgradePanels){panel.Reload();Assert.That(panel.Buff_On_obj.activeSelf,Is.True);Assert.That(panel.BuffValue_txt.text,Is.EqualTo("x4"));Assert.That(panel.Panel_img.color,Is.EqualTo(panel.Panel_Colors[1]));}
        M.LoadBuffTimes(0,0,0);yield return null;foreach(var panel in c.UpgradePanels){panel.Reload();Assert.That(panel.Buff_On_obj.activeSelf,Is.False);Assert.That(panel.Panel_img.color,Is.EqualTo(panel.Panel_Colors[0]));}
    }
}
