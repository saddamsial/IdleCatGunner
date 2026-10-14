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

public sealed class MonsterSweepTests
{
    string folder; GameClient c; bool background;
    Monster_manager M => c.MonsterMode;
    void Independent(Scene scene, LoadSceneMode mode)
    {
        if (scene.name == "GameClient") scene.GetRootGameObjects().SelectMany(g => g.GetComponentsInChildren<GameClient>(true)).Single().SaveFolderOverride = folder;
    }
    [UnitySetUp] public IEnumerator Setup()
    {
        background = Application.runInBackground; Application.runInBackground = true;
        folder = Path.Combine(Application.temporaryCachePath, "MonsterSweep-" + Guid.NewGuid().ToString("N"));
        SceneManager.sceneLoaded += Independent;
        yield return SceneManager.LoadSceneAsync("GameClient"); yield return ClientStartupWait.Ready();
        c = GameClient.Instance; ForestRuntimeAcceptance.IsGaming = false;
        c.DailyLogin.Close(); c.Tutorial.SetCleared();
    }
    [UnityTearDown] public IEnumerator Cleanup()
    {
        yield return SceneManager.LoadSceneAsync("TargetPreview"); SceneManager.sceneLoaded -= Independent;
        Time.timeScale = 1; Application.runInBackground = background;
        if (Directory.Exists(folder)) Directory.Delete(folder, true);
    }
    [UnityTest] public IEnumerator OriginalSweepAdvancesMonsterProgressAndPaysPetCoin()
    {
        Assert.That(c.LocalStore.Model.Apply("catgunner_pluspack_2"),Is.True);
        c.State.Owned_Gun_list[0]=44;Assert.That(c.Inventory.Equip(0,0),Is.True);M.StartPanel_Open();int coins=c.State.PetCoin;
        M.Game_Sweep();yield return null;
        Assert.That(c.State.Wave_Now*5+c.State.Lv_Now,Is.GreaterThan(0));Assert.That(c.State.PetCoin,Is.GreaterThan(coins));
        Assert.That(M.GameSweep_UI.activeInHierarchy,Is.True);Assert.That(c.Mode,Is.Zero);
    }
    void Ready()
    {
        if(!c.PlusActive(2))Assert.That(c.LocalStore.Model.Apply("catgunner_pluspack_2"),Is.True);
        c.State.Owned_Gun_list[0]=44;Assert.That(c.Inventory.Equip(0,0),Is.True);M.StartPanel_Open();Assert.That(M.is_SweepAble(),Is.True);
    }
    static string Report(string name)=>Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports",name));
    IEnumerator Capture(string name){yield return new WaitForSeconds(1.7f);ScreenCapture.CaptureScreenshot(Report("visual/monster-sweep-"+name+"-gpu.png"));yield return new WaitForSeconds(.2f);}
    Button SweepButton=>M.monster_start_ui.Auto_obj.GetComponentsInChildren<Button>(true).Single(b=>Enumerable.Range(0,b.onClick.GetPersistentEventCount()).Any(i=>b.onClick.GetPersistentMethodName(i)=="Game_Sweep"));
    IEnumerator Click(Button b)
    {
        Assert.That(b.gameObject.activeInHierarchy&&b.interactable,Is.True,b.name);Canvas.ForceUpdateCanvases();
        var module=EventSystem.current.GetComponent<StandaloneInputModule>();var mouse=module.gameObject.AddComponent<ForestFeedbackMouseFixture>();module.inputOverride=mouse;
        try
        {
            var rect=(RectTransform)b.transform;mouse.Position=RectTransformUtility.WorldToScreenPoint(null,rect.TransformPoint(rect.rect.center));
            var hits=new List<RaycastResult>();EventSystem.current.RaycastAll(new PointerEventData(EventSystem.current){position=mouse.Position},hits);
            Assert.That(hits.FirstOrDefault().gameObject?.GetComponentInParent<Button>(),Is.SameAs(b),string.Join("|",hits.Take(5).Select(h=>h.gameObject.name)));
            mouse.Down=true;mouse.Held=true;yield return null;mouse.Down=false;mouse.Held=false;mouse.Up=true;yield return null;mouse.Up=false;yield return null;
        }
        finally{module.inputOverride=null;UnityEngine.Object.Destroy(mouse);}
    }

    [Test] public void NativeThresholdAndTargetFixturesStopAtFirstGateAndCapOneHundred()
    {
        
        for(int i=0;i<5;i++)Assert.That(MonsterSweepRules.RequiredPower(new DecimalAmount(500),i).CompareTo(new DecimalAmount(new System.Numerics.BigInteger(new[]{21428,5250,79411,13750,24375}[i]),new[]{-1,0,-1,0,0}[i])),Is.Zero);
        MonsterSweepRules.Target(new DecimalAmount(26000),0,0,(w,l)=>MonsterSweepRules.RequiredPower(new DecimalAmount(w==0?500:1500),l),out int wave,out int level,out int count);
        Assert.That((wave,level,count),Is.EqualTo((1,3,8)));
        MonsterSweepRules.Target(new DecimalAmount(10),2,4,(w,l)=>new DecimalAmount(10),out wave,out level,out count);Assert.That((wave,level,count),Is.EqualTo((22,4,100)));
        MonsterSweepRules.Target(new DecimalAmount(9),2,4,(w,l)=>new DecimalAmount(10),out wave,out level,out count);Assert.That((wave,level,count),Is.EqualTo((2,4,0)));
    }
    [Test] public void NativeWeaponMultipliersAndCentisecondQuantization()
    {
        var types=new[]{GunType.SINGLE,GunType.LASER,GunType.PIERCE,GunType.SHOTGUN,GunType.EXPLOSIVE,GunType.MISSILE,GunType.BLAST_SNIPER};
        int[] targets={1,7,5,3,5,5,10};for(int i=0;i<types.Length;i++)Assert.That(MonsterSweepRules.Power(new DecimalAmount(13),.259f,types[i],3).CompareTo(new DecimalAmount(52*targets[i])),Is.Zero);
        Assert.That(MonsterSweepRules.Power(new DecimalAmount(13),.001f,GunType.SINGLE,1).Coefficient.Sign,Is.Zero);
        Assert.That(MonsterSweepRules.Power(new DecimalAmount(13),1,GunType.SHOTGUN,0).CompareTo(new DecimalAmount(13)),Is.Zero);
    }
    [UnityTest] public IEnumerator WeakGateExpiryAndPreviewUseOriginalPanels()
    {
        M.StartPanel_Open();yield return null;Assert.That(M.monster_start_ui.NonAuto_obj.activeSelf,Is.True);
        Assert.That(c.LocalStore.Model.Apply("catgunner_pluspack_2"),Is.True);M.monster_start_ui.Reload();Assert.That(M.is_SweepAble(),Is.False);
        Assert.That(M.monster_start_ui.Auto_obj.activeSelf&&M.monster_start_ui.Sweep_NonActive_obj.activeSelf,Is.True);
        Assert.That(M.monster_start_ui.Stage_txt.text,Is.EqualTo("1-1"));Assert.That(M.monster_start_ui.Stage_txt.color,Is.EqualTo(Color.red));
        int coins=c.State.PetCoin;M.Game_Sweep();Assert.That(c.State.PetCoin,Is.EqualTo(coins));yield return Capture("weak-entrance");
        Ready();M.SweepTarget_return(out int wave,out int level,out int count);Assert.That(count,Is.GreaterThan(0));M.monster_start_ui.Reload();
        Assert.That(M.monster_start_ui.Stage_txt.text,Is.EqualTo((wave+1)+"-"+(level+1)));Assert.That(M.monster_start_ui.Sweep_Fill.fillAmount,Is.EqualTo(1));
        c.State.PlusPack_Purchase_Dates[2]=DateTime.UtcNow.AddDays(-8).ToString("O");yield return new WaitForSeconds(.4f);
        Assert.That(M.monster_start_ui.NonAuto_obj.activeSelf,Is.True);M.Game_Sweep();Assert.That(c.State.PetCoin,Is.EqualTo(coins));
    }
    [UnityTest] public IEnumerator PowerExcludesForestUpgradesAndStoredCombatDamageAndInactiveCats()
    {
        Ready();var power=M.Power_Monster_return();c.State.Upgrade_Lv[0]=10000;c.State.Upgrade_Lv[1]=10000;
        c.Hero.Damage=RaidRules.Precision(new DecimalAmount(999999999),5);c.Hero.CriDmg=c.Hero.Damage;c.Hero.CriPer=1;
        Assert.That(M.Power_Monster_return().CompareTo(power),Is.Zero);c.Hero.gameObject.SetActive(false);
        Assert.That(M.Power_Monster_return().Coefficient.Sign,Is.Zero);c.Hero.gameObject.SetActive(true);
        Assert.That(c.LocalStore.Model.Apply("catgunner_pluspack_0"),Is.True);Assert.That(M.Power_Monster_return().CompareTo(power),Is.Zero);yield return null;
    }
    [UnityTest] public IEnumerator OriginalMouseButtonsPayPerClearedLevelAndReloadWithoutRepeatingReward()
    {
        Ready();M.SweepTarget_return(out int wave,out int level,out int count);int coins=c.State.PetCoin,stage=c.Forest.Stage_Now,mission=c.State.Mission_PlayMine_Value;
        yield return new WaitForSeconds(.5f);yield return Click(SweepButton);
        Assert.That((M.Wave_Now,M.Lv_Now,c.State.Wave_Now,c.State.Lv_Now),Is.EqualTo((wave,level,wave,level)));
        Assert.That(c.State.PetCoin,Is.EqualTo(coins+30*count));Assert.That(M.PetCoin_Accum,Is.EqualTo(30*count));Assert.That(c.State.Mission_PlayMine_Value,Is.EqualTo(mission));
        Assert.That(M.SweepReward_txt.text,Is.EqualTo((30*count).ToString()));Assert.That(M.SweepBonus_txt.text,Is.EqualTo((60*count).ToString()));yield return Capture("base-result");
        Assert.That(M.SweepBonus_Btn_obj.GetComponent<Button>().onClick.GetPersistentMethodName(0),Is.EqualTo("SweepBonus_AD_Show"));
        yield return Click(M.SweepBonus_Btn_obj.GetComponent<Button>());yield return null;
        Assert.That(c.State.PetCoin,Is.EqualTo(coins+60*count));Assert.That(c.RewardedAds.CompletedWatches,Is.EqualTo(1));Assert.That(M.SweepPending,Is.False);
        Assert.That((c.Mode,c.Forest.Stage_Now),Is.EqualTo((0,stage)));c.SaveNow();
        yield return SceneManager.LoadSceneAsync("TargetPreview");yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();c=GameClient.Instance;ForestRuntimeAcceptance.IsGaming=false;
        Assert.That((M.Wave_Now,M.Lv_Now,c.State.PetCoin),Is.EqualTo((wave,level,coins+60*count)));Assert.That(M.SweepPending||M.GameSweep_UI.activeSelf,Is.False);
    }
    [UnityTest] public IEnumerator RewardPackForcedRemovalAndFullRemovalUseNativeDoubles()
    {
        Ready();Assert.That(c.LocalStore.Model.Apply("catgunner_pluspack_1"),Is.True);Assert.That(c.LocalStore.Model.Apply("remove_forced_ads"),Is.True);
        M.SweepTarget_return(out int wave,out int level,out int count);int coins=c.State.PetCoin;M.Game_Sweep();Assert.That(c.State.PetCoin,Is.EqualTo(coins+60*count));Assert.That(M.AutoReward,Is.False);M.Sweep_Close();
        // Return to the fixture's known start to exercise the same level count with automatic bonus.
        M.Wave_Now=c.State.Wave_Now=0;M.Lv_Now=c.State.Lv_Now=0;
        Assert.That(c.LocalStore.Model.Apply("remove_all_ads"),Is.True);c.RewardedAds.Enabled=false;M.Game_Sweep();Assert.That(c.State.PetCoin,Is.EqualTo(coins+180*count));
        Assert.That(M.SweepNoAds_Btn_obj.activeSelf&&M.SweepNoAds_Btn_obj.GetComponent<Button>().interactable,Is.True);Assert.That(M.SweepBonus_Btn_obj.activeSelf||M.SweepSkip_obj.activeSelf,Is.False);
        yield return Capture("automatic-result");yield return Click(M.SweepNoAds_Btn_obj.GetComponent<Button>());M.SweepBonus_Get();Assert.That(c.State.PetCoin,Is.EqualTo(coins+180*count));
        Assert.That(c.RewardedAds.CompletedWatches,Is.Zero);Assert.That(c.State.PurchaseHistory,Is.Empty);Assert.That(c.State.ProcessedTxnIds,Is.Empty);
    }
    [UnityTest] public IEnumerator DisabledCancelledDuplicateAndStaleAdsCannotPayWrongResult()
    {
        Ready();M.Game_Sweep();int coins=c.State.PetCoin;c.RewardedAds.Enabled=false;M.SweepBonus_AD_Show();yield return null;Assert.That(c.State.PetCoin,Is.EqualTo(coins));
        c.RewardedAds.Enabled=true;M.SweepBonus_AD_Show();M.SweepBonus_AD_Show();c.RewardedAds.Cancel();yield return null;Assert.That(c.State.PetCoin,Is.EqualTo(coins));
        M.SweepBonus_AD_Show();M.Sweep_Close();M.Wave_Now=c.State.Wave_Now=0;M.Lv_Now=c.State.Lv_Now=0;M.Game_Sweep();Assert.That(M.SweepPending,Is.False);yield return null;yield return null;Assert.That(c.State.PetCoin,Is.EqualTo(coins));
        M.Game_Sweep();int second=c.State.PetCoin,baseReward=int.Parse(M.SweepReward_txt.text);Assert.That(M.SweepPending,Is.True);
        M.SweepBonus_AD_Show();M.SweepBonus_AD_Show();yield return null;yield return null;
        Assert.That(c.State.PetCoin,Is.EqualTo(second+baseReward));Assert.That(c.RewardedAds.CompletedWatches,Is.EqualTo(1));M.SweepBonus_Get();Assert.That(c.State.PetCoin,Is.EqualTo(second+baseReward));
    }
    [UnityTest] public IEnumerator WrongModeHiddenPageDisabledPurchaseAndExtendedHealthCacheAreBounded()
    {
        Ready();int coins=c.State.PetCoin;c.OfflinePurchaseSimulation=false;M.Game_Sweep();Assert.That(c.State.PetCoin,Is.EqualTo(coins));c.OfflinePurchaseSimulation=true;
        c.SuspendForestForMode(1);M.Game_Sweep();Assert.That(c.State.PetCoin,Is.EqualTo(coins));c.Restart();ForestRuntimeAcceptance.IsGaming=false;
        M.monster_start_ui.gameObject.SetActive(false);M.Game_Sweep();Assert.That(c.State.PetCoin,Is.EqualTo(coins));
        var health=M.Health_Balance[M.Health_Balance.Length-1].Value;int wave=M.Health_Balance.Length;
        Assert.That(M.SweepRequiredPower_return(wave,0).CompareTo(MonsterSweepRules.RequiredPower(MonsterRules.Precision2(health*new DecimalAmount(3)).Value,0)),Is.Zero);yield return null;
    }
}
