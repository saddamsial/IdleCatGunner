using System;
using System.Collections;
using System.IO;
using System.Linq;
using CatGunner.Runtime;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;

public sealed class BossBalanceTests
{
    string folder;
    GameClient c;
    bool background;
    void Independent(Scene scene, LoadSceneMode mode)
    {
        if (scene.name == "GameClient")
            scene.GetRootGameObjects().SelectMany(g => g.GetComponentsInChildren<GameClient>(true)).Single().SaveFolderOverride = folder;
    }
    [UnitySetUp] public IEnumerator Setup()
    {
        background = Application.runInBackground; Application.runInBackground = true;
        folder = Path.Combine(Application.temporaryCachePath, "BossBalance-" + Guid.NewGuid().ToString("N"));
        SceneManager.sceneLoaded += Independent;
        yield return TestSceneLoader.LoadAsync("GameClient"); yield return ClientStartupWait.Ready();
        c = GameClient.Instance; ForestRuntimeAcceptance.IsGaming = false;
    }
    [UnityTearDown] public IEnumerator Cleanup()
    {
        yield return TestSceneLoader.LoadAsync("TargetPreview"); SceneManager.sceneLoaded -= Independent;
        Time.timeScale = 1; Application.runInBackground = background;
        if (Directory.Exists(folder)) Directory.Delete(folder, true);
    }
    void Equip(int gun)
    {
        c.State.Owned_Gun_list[0] = gun;
        Assert.That(c.Inventory.Equip(0, 0), Is.True);
    }
    void UpgradeForest()
    {
        c.State.Upgrade_Lv[0] = 100; c.State.Upgrade_Lv[1] = 500; c.ApplyBalance();
    }
    [UnityTest] public IEnumerator BossEntryExcludesForestPowerAndSpeedUpgradesFromActualCatBalance()
    {
        Equip(5); var gun = c.Hero._gunInfo; UpgradeForest();
        Assert.That(c.Hero.Damage.Value.CompareTo(gun.Damage.Value), Is.GreaterThan(0));
        Assert.That(c.Hero.AtkCool_Max, Is.LessThan(gun.AtkSpeed));
        c.BossMode.Game_Enter(); Assert.That(c.Mode, Is.EqualTo(3));
        Assert.That(c.Hero.Damage.Value.CompareTo(gun.Damage.Value), Is.Zero, "Native mode3 excludes forest power upgrades");
        Assert.That(c.Hero.AtkCool_Max, Is.EqualTo(gun.AtkSpeed).Within(.00001f), "Native mode3 excludes forest speed upgrades");
        yield return null;
    }
    [UnityTest] public IEnumerator BossReloadIgnoresUpgradeChangesButUsesNewlyEquippedWeapon()
    {
        Equip(5); UpgradeForest(); c.BossMode.Game_Enter();
        var damage = c.Hero.Damage.Value; float cooldown = c.Hero.AtkCool_Max;
        c.State.Upgrade_Lv[0] = 900; c.State.Upgrade_Lv[1] = 900; c.ApplyBalance();
        Assert.That(c.Hero.Damage.Value.CompareTo(damage), Is.Zero);
        Assert.That(c.Hero.AtkCool_Max, Is.EqualTo(cooldown));
        Equip(10);
        Assert.That(c.Hero.Damage.Value.CompareTo(c.Hero._gunInfo.Damage.Value), Is.Zero);
        Assert.That(c.Hero.AtkCool_Max, Is.EqualTo(c.Hero._gunInfo.AtkSpeed).Within(.00001f));
        yield return null;
    }
    [UnityTest] public IEnumerator ExitRestoresForestBalanceWithoutLosingUpgradeLevelsOrLoadout()
    {
        Equip(5); UpgradeForest(); var damage = c.Hero.Damage.Value; float cooldown = c.Hero.AtkCool_Max;
        int diamonds = c.State.Dia; var selected = (int[])c.State.Selected_items.Clone();
        c.BossMode.Game_Enter(); c.BossMode.Game_Exit(); yield return new WaitForSeconds(1.8f);
        Assert.That(c.Mode, Is.Zero); Assert.That(c.State.Upgrade_Lv.Take(2), Is.EqualTo(new[] {100, 500}));
        Assert.That(c.State.Selected_items, Is.EqualTo(selected)); Assert.That(c.State.Dia, Is.EqualTo(diamonds));
        Assert.That(c.Hero.Damage.Value.CompareTo(damage), Is.Zero);
        Assert.That(c.Hero.AtkCool_Max, Is.EqualTo(cooldown));
        Assert.That(c.Forest.Map_obj.activeSelf, Is.True); Assert.That(c.BossMode.Map_obj.activeSelf, Is.False);
    }
    [UnityTest] public IEnumerator ColdReloadPreservesUpgradesAndReappliesBossModeBalance()
    {
        Equip(5); UpgradeForest(); c.SaveNow();
        yield return TestSceneLoader.LoadAsync("TargetPreview");
        yield return TestSceneLoader.LoadAsync("GameClient"); yield return ClientStartupWait.Ready();
        c = GameClient.Instance; ForestRuntimeAcceptance.IsGaming = false;
        Assert.That(c.State.Upgrade_Lv.Take(2), Is.EqualTo(new[] {100, 500}));
        Assert.That(c.Hero._gunInfo.Name, Is.EqualTo(EquipmentCatalogue.Load().Gun_list[5].Name));
        var gun = c.Hero._gunInfo;
        Assert.That(c.Hero.Damage.Value.CompareTo(gun.Damage.Value), Is.GreaterThan(0));
        c.BossMode.Game_Enter();
        Assert.That(c.Hero.Damage.Value.CompareTo(gun.Damage.Value), Is.Zero);
        Assert.That(c.Hero.AtkCool_Max, Is.EqualTo(gun.AtkSpeed).Within(.00001f));
    }
    [UnityTest] public IEnumerator CompactedTeammatesRetainTheirSlotStarsInBossMode()
    {
        c.State.Selected_items = new[] {5, -1, 10}; c.State.Star_Slot_Lv = new[] {1, 2, 0};
        UpgradeForest(); c.BossMode.Game_Enter();
        Assert.That(c.Team.Cat_list.Count(cat => cat.gameObject.activeSelf), Is.EqualTo(2));
        for (int slot = 0; slot < 2; slot++)
        {
            var cat = c.Team.Cat_list[slot]; Assert.That(cat.SlotNum, Is.EqualTo(slot));
            var expected = StarRules.DamageApply(cat._gunInfo.Damage.Value, c.State.Star_Slot_Lv[slot]);
            Assert.That(cat.Damage.Value.CompareTo(expected), Is.Zero);
            Assert.That(cat.AtkCool_Max, Is.EqualTo(cat._gunInfo.AtkSpeed).Within(.00001f));
        }
        Assert.That(c.Team.Helper_Active, Is.False); yield return null;
    }
    [UnityTest] public IEnumerator BossStillAppliesRebirthSkinFishRelicBuffAndStarModifiers()
    {
        var equipment = EquipmentCatalogue.Load(); equipment.Selected_items = new[] {20, -1, -1};
        equipment.BossMode = true; equipment.Rebirth_Damage_Percent = 200;
        equipment.Skin_Damage_Percent = 150; equipment.Fish_Damage_Add = 20;
        equipment.Relic_Damage_Percent = 125; equipment.BuffMultiplier = 4;
        equipment.Star_Slot_Lv = new[] {1, 0, 0}; equipment.Fish_Critical_Add = 25;
        equipment.Relic_Critical_Percent = 200; equipment.Skin_Speed_Percent = 300;
        equipment.Rebirth_Speed_Percent = 400;
        Assert.That(equipment.ApplyPackageForest(c.Hero, 0, 100, 500, 9), Is.True);
        // Shipped Gun20=500. 500*2*1.5*1.2*1.25=2250; buff4, first star1.5.
        Assert.That(c.Hero.Damage.Value.PlainInteger(), Is.EqualTo("13500"));
        Assert.That(c.Hero.CriDmg.Value.PlainInteger(), Is.EqualTo("40500"));
        Assert.That(c.Hero.AtkCool_Max, Is.EqualTo(.05f));
        // A slower original gun exercises additive speed and buff before the clamp.
        equipment.Selected_items[0] = 5; equipment.ApplyPackageForest(c.Hero, 0, 100, 500, 9);
        Assert.That(c.Hero.AtkCool_Max, Is.EqualTo(Mathf.Clamp(c.Hero._gunInfo.AtkSpeed / 20f, .05f, 2f)).Within(.00001f));
        yield return null;
    }
    static string Report(string name) => Path.GetFullPath(Path.Combine(Application.dataPath,
        "../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports", name));
    [UnityTest] public IEnumerator NaturalProjectilesUseBossBalanceAndSettleExactlyOnce()
    {
        Equip(20); UpgradeForest(); int diamonds = c.State.Dia;
        c.BossMode.Game_Enter(); var m = c.BossMode;
        float deadline = Time.realtimeSinceStartup + 30;
        while (m.Entering && Time.realtimeSinceStartup < deadline) yield return null;
        Assert.That(m._boss.enemy.Health_Max.Value.PlainInteger(), Is.EqualTo("50000"));
        Assert.That(c.Hero.Damage.Value.PlainInteger(), Is.EqualTo("500"));
        Assert.That(c.Hero.joystick.Direction, Is.EqualTo(Vector2.zero));
        ScreenCapture.CaptureScreenshot(Report("visual/boss-balance-combat-gpu.png"));
        while (m.Playing && Time.realtimeSinceStartup < deadline) yield return null;
        Assert.That(m.GameWin_UI.activeInHierarchy, Is.True, "Actual automatic projectiles; no injected damage or victory");
        Assert.That(c.State.Boss_Stage, Is.EqualTo(1)); Assert.That(c.State.Dia, Is.EqualTo(diamonds + 150));
        Assert.That(m._boss.enemy.is_Die, Is.True);
        yield return new WaitForSeconds(1.7f);
        ScreenCapture.CaptureScreenshot(Report("visual/boss-balance-victory-gpu.png")); yield return new WaitForSeconds(.2f);
        File.WriteAllText(Report("boss-balance-projectile-observation.json"), JsonUtility.ToJson(new Observation {
            damage = c.Hero.Damage.Value.ToString(), cooldown = c.Hero.AtkCool_Max,
            health = m._boss.enemy.Health_Now.Value.ToString(), remaining = m.GameTime_Now,
            stage = c.State.Boss_Stage, diamonds = c.State.Dia - diamonds,
            fixture = "Independent Gun20, forest power100/speed500, native50000HP/60s, actual automatic projectiles, zero joystick, no injected damage/victory until natural settlement"
        }, true));
        m.Game_Win(); m._boss.enemy.Die(); Assert.That(c.State.Dia, Is.EqualTo(diamonds + 150));
        m.Game_Exit(); yield return new WaitForSeconds(1.8f);
        Assert.That(c.Mode, Is.Zero); Assert.That(c.Hero.Damage.Value.CompareTo(new DecimalAmount(500)), Is.GreaterThan(0));
    }
    [Serializable] sealed class Observation { public string damage, health, fixture; public float cooldown, remaining; public int stage, diamonds; }
}
