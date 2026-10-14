using System;
using System.Collections;
using System.IO;
using System.Linq;
using CatGunner.Runtime;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;
using UnityEngine.U2D;
using UnityEngine.U2D.Animation;

[Category("PenguinSkinningRegression")]
public sealed class PenguinSpriteSkinTests
{
    private string folder;
    private GameClient client;
    private void Isolate(Scene scene, LoadSceneMode mode)
    {
        if (scene.name == "GameClient")
            scene.GetRootGameObjects().SelectMany(g => g.GetComponentsInChildren<GameClient>(true)).Single().SaveFolderOverride = folder;
    }
    [UnitySetUp] public IEnumerator Setup()
    {
        Time.timeScale = 1;
        folder = Path.Combine(Application.temporaryCachePath, "PenguinSpriteSkin-" + Guid.NewGuid().ToString("N"));
        SceneManager.sceneLoaded += Isolate;
        yield return SceneManager.LoadSceneAsync("GameClient");
        yield return ClientStartupWait.Ready();
        client = GameClient.Instance;
        client.DailyLogin.AutoShow = false;
        client.DailyLogin.Close();
        client.Tutorial.SetCleared();
        yield return null;
    }
    [UnityTearDown] public IEnumerator Cleanup()
    {
        Time.timeScale = 1;
        yield return SceneManager.LoadSceneAsync("TargetPreview");
        SceneManager.sceneLoaded -= Isolate;
        if (Directory.Exists(folder)) Directory.Delete(folder, true);
    }
    [UnityTest] public IEnumerator VisiblePenguinsUsePersistedBindPosesAndRealSpriteSkin()
    {
        client.Inventory.AddRewardGun(5);
        client.Inventory.Equip(Array.FindIndex(client.State.Owned_Gun_list,g=>g==5),1);
        client.Inventory.AddRewardGun(10);
        client.Inventory.Equip(Array.FindIndex(client.State.Owned_Gun_list,g=>g==10),2);
        client.ApplyBalance();
        yield return null;
        yield return null;
        var motions = client.Team.Cat_list.Select(c => c.GetComponentInChildren<PenguinBoneMotion>(true)).ToArray();
        foreach (var motion in motions)
        {
            var renderer = motion.GetComponent<SpriteRenderer>();
            var skin = motion.GetComponent<SpriteSkin>();
            Assert.That(skin, Is.Not.Null, "Penguin must deform through Unity SpriteSkin");
            Assert.That(renderer.enabled, Is.True);
            Assert.That(renderer.sprite.GetBindPoses().Length, Is.EqualTo(7));
            Assert.That(renderer.sprite.GetBones().Length, Is.EqualTo(7));
            Assert.That(skin.boneTransforms.All(b => b != null), Is.True);
            Assert.That(skin.SetBoneTransforms(skin.boneTransforms), Is.EqualTo(SpriteSkinState.Ready));
            Assert.That(skin.HasCurrentDeformedVertices(), Is.True);
            Assert.That(motion.GetComponentInChildren<MeshRenderer>(), Is.Null, "Legacy CPU mesh must not render a duplicate body");
        }
        yield return null;
    }
    [UnityTest] public IEnumerator CostumeChangesPreserveSkeletonAndSelectedTexture()
    {
        ForestRuntimeAcceptance.IsGaming = false;
        var motion = client.Hero.GetComponentInChildren<PenguinBoneMotion>(true);
        var skin = motion.GetComponent<SpriteSkin>();
        Assert.That(skin, Is.Not.Null);
        var bones = skin.boneTransforms.ToArray();
        var sprite = motion.GetComponent<SpriteRenderer>().sprite;
        var catalogue = client.GetComponent<PenguinFullReskin>();
        foreach (int id in new[] { 0, 13, 17, 21, 24 })
        {
            client.State.Skin_Unlock[id] = true;
            client.Skins.Select(id);
            client.Skins.Skin_List_UI.SetActive(false);
            client.Skins.skin_info_ui.gameObject.SetActive(false);
            yield return null;
            Assert.That(skin.boneTransforms, Is.EqualTo(bones));
            Assert.That(motion.GetComponent<SpriteRenderer>().sprite, Is.SameAs(sprite));
            Assert.That(motion.Renderer.sharedMaterial.mainTexture, Is.SameAs(catalogue.Skins[id].texture));
            Assert.That(skin.HasCurrentDeformedVertices(), Is.True);
        }
    }
}
