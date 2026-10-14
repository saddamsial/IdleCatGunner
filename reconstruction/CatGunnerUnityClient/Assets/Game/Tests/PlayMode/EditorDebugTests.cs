#if UNITY_EDITOR
using System;
using System.Collections;
using System.IO;
using System.Linq;
using CatGunner.Runtime;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;

public sealed class EditorDebugTests
{
    string folder;
    GameClient client;
    bool previousEnabled, previousBackground;

    void Isolate(Scene scene, LoadSceneMode mode)
    {
        if (scene.name != "GameClient") return;
        var c = scene.GetRootGameObjects().SelectMany(g => g.GetComponentsInChildren<GameClient>(true)).Single();
        c.SaveFolderOverride = folder;
        c.Persist = true;
    }

    [UnitySetUp] public IEnumerator Setup()
    {
        previousEnabled = GameDebugTools.Enabled;
        previousBackground = Application.runInBackground;
        GameDebugTools.Enabled = false;
        Application.runInBackground = true;
        folder = Path.Combine(Application.temporaryCachePath, "EditorDebug-" + Guid.NewGuid().ToString("N"));
        SceneManager.sceneLoaded += Isolate;
        yield return TestSceneLoader.LoadAsync("GameClient");
        yield return ClientStartupWait.Ready();
        client = GameClient.Instance;
        client.DailyLogin.Close();
        client.Tutorial.SetCleared();
        ForestRuntimeAcceptance.IsGaming = false;
    }

    [UnityTearDown] public IEnumerator Cleanup()
    {
        yield return TestSceneLoader.LoadAsync("TargetPreview");
        SceneManager.sceneLoaded -= Isolate;
        GameDebugTools.Enabled = previousEnabled;
        Application.runInBackground = previousBackground;
        if (Directory.Exists(folder)) Directory.Delete(folder, true);
    }

    [Test] public void DisabledSwitchRejectsEveryActionWithoutChangingSave()
    {
        string before = SaveArchive.Encode(client.State);
        Assert.That(GameDebugTools.SetStage(client, 40, 5, true, out _), Is.False);
        Assert.That(GameDebugTools.GrantWeapon(client, 13, 4, out _), Is.False);
        Assert.That(GameDebugTools.GrantPet(client, 10, out _), Is.False);
        Assert.That(GameDebugTools.GrantFish(client, 13, out _), Is.False);
        Assert.That(SaveArchive.Encode(client.State), Is.EqualTo(before));
    }

    [Test] public void InvalidInputsAndMissingClientLeaveStateUntouched()
    {
        GameDebugTools.Enabled = true;
        string before = SaveArchive.Encode(client.State);
        foreach (int stage in new[] { 0, -1, 5001, int.MaxValue })
            Assert.That(GameDebugTools.SetStage(client, stage, 1, true, out _), Is.False);
        foreach (int wave in new[] { 0, 6 })
            Assert.That(GameDebugTools.SetStage(client, 1, wave, true, out _), Is.False);
        foreach (int grade in new[] { 0, 14 })
        {
            Assert.That(GameDebugTools.GrantWeapon(client, grade, 0, out _), Is.False);
            Assert.That(GameDebugTools.GrantFish(client, grade, out _), Is.False);
        }
        Assert.That(GameDebugTools.GrantWeapon(client, 1, -1, out _), Is.False);
        Assert.That(GameDebugTools.GrantWeapon(client, 1, 5, out _), Is.False);
        Assert.That(GameDebugTools.GrantPet(client, 0, out _), Is.False);
        Assert.That(GameDebugTools.GrantPet(client, 11, out _), Is.False);
        Assert.That(GameDebugTools.GrantFish(null, 1, out _), Is.False);
        Assert.That(SaveArchive.Encode(client.State), Is.EqualTo(before));
    }

    [Test] public void FullInventoriesRejectGrantsWithoutOverwritingItemsOrCurrency()
    {
        GameDebugTools.Enabled = true;
        for (int i = 0; i < 16; i++) { client.State.Owned_Gun_list[i] = i % 65; client.State.Owned_Pet_list[i] = i % 10; }
        client.State.FishInventory.AddRange(Enumerable.Repeat(0, 20));
        string before = SaveArchive.Encode(client.State);
        Assert.That(GameDebugTools.GrantWeapon(client, 13, 4, out _), Is.False);
        Assert.That(GameDebugTools.GrantPet(client, 10, out _), Is.False);
        Assert.That(GameDebugTools.GrantFish(client, 13, out _), Is.False);
        Assert.That(SaveArchive.Encode(client.State), Is.EqualTo(before));
    }

    [Test] public void EverySupportedGradeUsesNormalInventoryNotificationsAndCostsNothing()
    {
        GameDebugTools.Enabled = true;
        var wallet = (client.State.Dia, client.State.PetCoin, client.State._useDia, client.State.Gacha_Draw_Count, client.State.FreeGachaCount);
        int petChanges = 0, fishChanges = 0;
        client.Pets.Changed += () => petChanges++;
        client.Fish.Model.Changed += () => fishChanges++;
        for (int grade = 1; grade <= 13; grade++)
        {
            for (int kind = 0; kind < 5; kind++)
            {
                Array.Fill(client.State.Owned_Gun_list, -1);
                Assert.That(GameDebugTools.GrantWeapon(client, grade, kind, out _), Is.True);
                Assert.That(client.State.Owned_Gun_list[0], Is.EqualTo((grade - 1) * 5 + kind));
                Assert.That(client.State.Gun_Collect[(grade - 1) * 5 + kind], Is.True);
            }
            Assert.That(GameDebugTools.GrantFish(client, grade, out _), Is.True);
        }
        for (int grade = 1; grade <= 10; grade++)
        {
            Assert.That(GameDebugTools.GrantPet(client, grade, out _), Is.True);
            Assert.That(client.State.Owned_Pet_list[grade - 1], Is.EqualTo(grade - 1));
            Assert.That(client.State.Pet_Collect[grade - 1], Is.True);
            Assert.That(client.State.Owned_Pet_LockGroup[grade - 1], Is.EqualTo(-1));
        }
        Assert.That((petChanges, fishChanges), Is.EqualTo((10, 13)));
        Assert.That(client.State.FishInventory, Is.EqualTo(Enumerable.Range(0, 13)));
        Assert.That((client.State.Dia, client.State.PetCoin, client.State._useDia, client.State.Gacha_Draw_Count, client.State.FreeGachaCount), Is.EqualTo(wallet));
        client.Fish.ReloadFishUI();
        Assert.That(client.Fish.fishTank.fishPool.Count(f => f.isActive), Is.EqualTo(13));
        Assert.That(client.Fish.fishTank.Count_txt.text, Is.EqualTo("13/20"));
    }

    [UnityTest] public IEnumerator GrantedFishUseVisibleTankAndExistingAutoMergeChain()
    {
        GameDebugTools.Enabled = true;
        client.Fish.ReloadFishUI();
        client.Fish.Set_AutoMerge(true);
        yield return null; yield return null;
        Assert.That(GameDebugTools.GrantFish(client, 1, out _), Is.True);
        Assert.That(GameDebugTools.GrantFish(client, 1, out _), Is.True);
        Assert.That(client.Fish.fishTank.fishPool.Count(f => f.isActive), Is.EqualTo(2));
        Assert.That(client.Fish.fishTank.IsAutoMergeRunning, Is.True);
        float deadline = Time.realtimeSinceStartup + 5;
        while (client.State.FishInventory.Count > 1 && Time.realtimeSinceStartup < deadline) yield return null;
        Assert.That(client.State.FishInventory, Is.EqualTo(new[] { 1 }));
        client.Fish.Set_AutoMerge(false);
    }

    [Test] public void OtherGameModesRejectActionsWithoutChangingState()
    {
        GameDebugTools.Enabled = true;
        client.SuspendForestForMode(1);
        string before = SaveArchive.Encode(client.State);
        Assert.That(GameDebugTools.SetStage(client, 40, 5, true, out _), Is.False);
        Assert.That(GameDebugTools.GrantWeapon(client, 13, 4, out _), Is.False);
        Assert.That(GameDebugTools.GrantPet(client, 10, out _), Is.False);
        Assert.That(GameDebugTools.GrantFish(client, 13, out _), Is.False);
        Assert.That(SaveArchive.Encode(client.State), Is.EqualTo(before));
    }

    [UnityTest] public IEnumerator StageAndHighestGradeItemsSurviveColdReload()
    {
        GameDebugTools.Enabled = true;
        Assert.That(GameDebugTools.SetStage(client, 40, 5, true, out _), Is.True);
        ForestRuntimeAcceptance.IsGaming = false;
        Assert.That(client.Slider.Stage_txt.text, Is.EqualTo("Stage 40-5"));
        Assert.That(client.Forest.TreeCount_Max, Is.EqualTo(501));
        Assert.That(Contents_Unlock_manager.Is_Unlocked(Content_Type.Raid), Is.True);
        Assert.That(GameDebugTools.GrantWeapon(client, 13, 4, out _), Is.True);
        Assert.That(GameDebugTools.GrantPet(client, 10, out _), Is.True);
        Assert.That(GameDebugTools.GrantFish(client, 13, out _), Is.True);
        client.SaveNow();
        yield return TestSceneLoader.LoadAsync("GameClient");
        yield return ClientStartupWait.Ready();
        client = GameClient.Instance;
        ForestRuntimeAcceptance.IsGaming = false;
        Assert.That((client.State.Stage_Now, client.State.Level_Now, client.State.Stage_Value_Max), Is.EqualTo((39, 4, 394)));
        Assert.That(client.State.Owned_Gun_list, Does.Contain(64));
        Assert.That(client.State.Owned_Pet_list, Does.Contain(9));
        Assert.That(client.State.FishInventory, Does.Contain(12));
    }

    [Test] public void StageUpperBoundAndBackwardJumpPreserveHighestProgress()
    {
        GameDebugTools.Enabled = true;
        Assert.That(GameDebugTools.SetStage(client, 5000, 5, true, out _), Is.True);
        Assert.That(client.Forest.Stage_Value_Max, Is.EqualTo(49994));
        Assert.That(GameDebugTools.SetStage(client, 1, 1, false, out _), Is.True);
        ForestRuntimeAcceptance.IsGaming = false;
        Assert.That((client.Forest.Stage_Now, client.Forest.Level_Now, client.Forest.Stage_Value_Max), Is.EqualTo((0, 0, 49994)));
    }

    [Test] public void RankButtonsUseOriginalNamesAndRandomWeaponsStayInSelectedRank()
    {
        GameDebugTools.Enabled = true;
        Assert.That(GameDebugTools.GradeName(1), Is.EqualTo("D"));
        Assert.That(GameDebugTools.GradeName(4), Is.EqualTo("A"));
        Assert.That(GameDebugTools.GradeName(7), Is.EqualTo("SSS"));
        Assert.That(GameDebugTools.GradeName(13), Is.EqualTo("ZZZ"));
        var randomState = UnityEngine.Random.state;
        try
        {
            UnityEngine.Random.InitState(24014);
            var kinds = new System.Collections.Generic.HashSet<int>();
            for (int grade = 1; grade <= 13; grade++)
            {
                for (int n = 0; n < 10; n++)
                {
                    Array.Fill(client.State.Owned_Gun_list, -1);
                    Assert.That(GameDebugTools.GrantRandomWeapon(client, grade, out _), Is.True);
                    int gun = client.State.Owned_Gun_list[0];
                    Assert.That(gun / 5, Is.EqualTo(grade - 1));
                    kinds.Add(gun % 5);
                }
            }
            Assert.That(kinds.Count, Is.EqualTo(5));
        }
        finally { UnityEngine.Random.state = randomState; }
    }

    [UnityTest] public IEnumerator AllWalletResourcesRefreshAndSurviveReload()
    {
        GameDebugTools.Enabled = true;
        foreach (EditorDebugResource resource in Enum.GetValues(typeof(EditorDebugResource)))
            Assert.That(GameDebugTools.GrantResource(client, resource, "1000", out _), Is.True, resource.ToString());
        Assert.That(client.Currency.Dia_txt.text, Is.EqualTo("1000"));
        Assert.That(client.State._getDia, Is.EqualTo(3000));
        Assert.That(client.State.Adventure_Currency_Core, Is.EqualTo(new[] { 1000, 1000, 1000, 1000 }));
        Assert.That(GameDebugTools.GrantResource(client, EditorDebugResource.Money, "1e30", out _), Is.True);
        Assert.That(GameDebugTools.GrantResource(client, EditorDebugResource.Ruby, "1e20", out _), Is.True);
        client.SaveNow();
        yield return TestSceneLoader.LoadAsync("GameClient");
        yield return ClientStartupWait.Ready();
        client = GameClient.Instance;
        ForestRuntimeAcceptance.IsGaming = false;
        Assert.That((client.State.Dia, client.State.PetCoin, client.State.StarGem), Is.EqualTo((1000, 1000, 1000)));
        Assert.That(client.State.Money.Value.CompareTo(new DecimalAmount(1, 30)), Is.GreaterThan(0));
        Assert.That(client.State.Ruby.Value.CompareTo(new DecimalAmount(1, 20)), Is.GreaterThan(0));
        Assert.That(client.State.Adventure_Currency_Core, Is.EqualTo(new[] { 1000, 1000, 1000, 1000 }));
    }

    [Test] public void ResourceInputsOverflowAndDisabledSwitchCannotChangeWallets()
    {
        GameDebugTools.Enabled = true;
        foreach (string amount in new[] { "0", "-1", "1e-1", "1.5", "abc", "1e10001", "" })
        {
            string before = SaveArchive.Encode(client.State);
            Assert.That(GameDebugTools.GrantResource(client, EditorDebugResource.Money, amount, out _), Is.False);
            Assert.That(SaveArchive.Encode(client.State), Is.EqualTo(before));
        }
        client.State.Dia = int.MaxValue;
        client.State.PetCoin = int.MaxValue;
        client.State.StarGem = int.MaxValue;
        Array.Fill(client.State.Adventure_Currency_Core, int.MaxValue);
        string full = SaveArchive.Encode(client.State);
        foreach (EditorDebugResource resource in Enum.GetValues(typeof(EditorDebugResource)))
        {
            if (resource == EditorDebugResource.Money || resource == EditorDebugResource.Ruby) continue;
            Assert.That(GameDebugTools.GrantResource(client, resource, "1", out _), Is.False);
            Assert.That(SaveArchive.Encode(client.State), Is.EqualTo(full));
        }
        Assert.That(GameDebugTools.GrantResource(client, (EditorDebugResource)999, "1", out _), Is.False);
        GameDebugTools.Enabled = false;
        Assert.That(GameDebugTools.GrantRandomWeapon(client, 7, out _), Is.False);
        Assert.That(GameDebugTools.GrantResource(client, EditorDebugResource.Money, "1", out _), Is.False);
        Assert.That(GameDebugTools.RefillTickets(client, EditorDebugTickets.Adventure, out _), Is.False);
        Assert.That(GameDebugTools.GrantRelicFragments(client, 100, out _), Is.False);
        Assert.That(SaveArchive.Encode(client.State), Is.EqualTo(full));
    }

    [UnityTest] public IEnumerator AllTicketsAndRelicFragmentsStayValidAndPersist()
    {
        GameDebugTools.Enabled = true;
        client.State.TicketUse_Count = 2;
        client.State.Raid_Free_Use_Count = 2;
        client.State.FreeGachaCount = 5;
        client.State.Adventure_Ticket_Now = 0;
        foreach (EditorDebugTickets tickets in Enum.GetValues(typeof(EditorDebugTickets)))
            Assert.That(GameDebugTools.RefillTickets(client, tickets, out _), Is.True);
        Assert.That((client.State.TicketUse_Count, client.State.Raid_Free_Use_Count, client.State.FreeGachaCount, client.State.Adventure_Ticket_Now), Is.EqualTo((0, 0, 0, 20)));
        Assert.That(GameDebugTools.GrantRelicFragments(client, 100, out _), Is.True);
        Assert.That(client.State.Relics.All(r => r.is_Unlock && r.Count == 100), Is.True);
        client.State.Relics[4].Count = int.MaxValue;
        string before = SaveArchive.Encode(client.State);
        Assert.That(GameDebugTools.GrantRelicFragments(client, 1, out _), Is.False);
        Assert.That(SaveArchive.Encode(client.State), Is.EqualTo(before));
        client.State.Relics[4].Count = 100;
        client.SaveNow();
        yield return TestSceneLoader.LoadAsync("GameClient");
        yield return ClientStartupWait.Ready();
        client = GameClient.Instance;
        ForestRuntimeAcceptance.IsGaming = false;
        Assert.That(client.State.Adventure_Ticket_Now, Is.EqualTo(20));
        Assert.That((client.State.TicketUse_Count, client.State.Raid_Free_Use_Count, client.State.FreeGachaCount), Is.EqualTo((0, 0, 0)));
        Assert.That(client.State.Relics.All(r => r.is_Unlock && r.Count == 100), Is.True);
        GameClient.ValidateSupportedState(client.State);
    }
}
#endif
