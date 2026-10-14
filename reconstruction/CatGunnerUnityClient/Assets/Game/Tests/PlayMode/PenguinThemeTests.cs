using System;
using System.Collections;
using System.IO;
using System.Linq;
using CatGunner.Runtime;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;
using Object=UnityEngine.Object;

[Category("AndroidReleasePreparation")]
public sealed class PenguinThemeTests
{
    private string folder;
    private GameClient client;
    private Component theme;
    private void HoldControllers()
    {
        foreach(var cat in client.Team.Cat_list)
        {
            cat.enabled=false;
            var combat=cat.GetComponent<ForestCombatAcceptance>();if(combat!=null)combat.enabled=false;
            var movement=cat.GetComponent<ForestMovementAcceptance>();if(movement!=null)movement.enabled=false;
        }
    }
    private void Configure(Scene scene,LoadSceneMode mode)
    {
        if(scene.name=="GameClient")scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single().SaveFolderOverride=folder;
    }
    [UnitySetUp] public IEnumerator Setup()
    {
        folder=Path.Combine(Application.temporaryCachePath,"PenguinTheme-"+Guid.NewGuid().ToString("N"));
        SceneManager.sceneLoaded+=Configure;yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();
        client=GameClient.Instance;
        theme=client.GetComponents<Component>().SingleOrDefault(c=>c.GetType().Name=="PenguinExpeditionTheme");
        Assert.That(theme,Is.Not.Null,"Penguin theme must be installed in playable scene");
    }
    [UnityTearDown] public IEnumerator Teardown()
    {
        yield return TestSceneLoader.LoadAsync("TargetPreview");SceneManager.sceneLoaded-=Configure;Time.timeScale=1;
        if(Directory.Exists(folder))Directory.Delete(folder,true);
    }
    [UnityTest, Category("PenguinSkinningRegression")] public IEnumerator NaturalCombatUsesPenguinAndIceWithoutFractureEffects()
    {
        yield return null;
        Assert.That(client.Hero.skin_spriteRenderer.enabled,Is.False);
        var avatar=theme.GetType().GetProperty("Avatar").GetValue(theme) as SpriteRenderer;
        Assert.That(avatar,Is.Not.Null);Assert.That(avatar.gameObject.activeInHierarchy,Is.True);
        Assert.That(client.Hero.hand_spriteRenderer.enabled,Is.False,"Old circular palm must not cover the gun grip");
        Assert.That(avatar.GetComponentsInChildren<SpriteRenderer>().Any(r=>r.gameObject.name=="Penguin holding flipper"),Is.True);
        var trees=Object.FindObjectsByType<Tree>().Where(t=>!t.enemy.is_Die).ToArray();
        Assert.That(trees.Length,Is.GreaterThan(0));
        Assert.That(trees.All(t=>client.Forest.Tree_sprites.Contains(t.spriteRenderer.sprite)),Is.True,"Live targets must use the current themed Stage catalogue");
        int before=client.Forest.TreeCount_Now;var wallet=client.State.Money.Value;float deadline=Time.realtimeSinceStartup+25;
        while(client.Forest.TreeCount_Now==before&&Time.realtimeSinceStartup<deadline)yield return null;
        Assert.That(client.Forest.TreeCount_Now,Is.LessThan(before));Assert.That(client.State.Money.Value.CompareTo(wallet),Is.GreaterThan(0));
        Assert.That(Object.FindObjectsByType<Transform>(FindObjectsInactive.Include).Any(t=>t.name=="Ice shard"||t.name=="Ice fracture"),Is.False);
    }
    [UnityTest] public IEnumerator TargetDeathPaysOnceAndThemeCanBeDisabled()
    {
        ForestRuntimeAcceptance.IsGaming=false;foreach(var c in client.Team.Cat_list)c.enabled=false;
        foreach(var b in Object.FindObjectsByType<Bullet>())b.gameObject.SetActive(false);
        var tree=Object.FindObjectsByType<Tree>().First(t=>!t.enemy.is_Die);var wallet=client.State.Money.Value;
        var expected=tree.enemy.Money.Value.Percent(client.Balance.Money(client.State.Upgrade_Lv[2]));
        ForestRuntimeAcceptance.IsGaming=true;tree.enemy.Die();tree.enemy.Die();
        Assert.That((client.State.Money.Value-wallet).CompareTo(expected),Is.Zero);Assert.That(tree.gameObject.activeSelf,Is.False);
        ForestRuntimeAcceptance.IsGaming=false;((Behaviour)theme).enabled=false;yield return null;
        var baked=((PenguinExpeditionTheme)theme).WorldVisualsBaked;
        Assert.That(client.Hero.skin_spriteRenderer.enabled,Is.EqualTo(!baked));
        Assert.That(client.Forest.Ground_SpriteRenderer.sprite.name,baked?(NUnit.Framework.Constraints.IResolveConstraint)Is.EqualTo("SnowGround"):Is.Not.EqualTo("SnowGround"));
        ((Behaviour)theme).enabled=true;yield return null;
        Assert.That(client.Hero.skin_spriteRenderer.enabled,Is.False);Assert.That(client.Forest.Ground_SpriteRenderer.sprite.name,Is.EqualTo("SnowGround"));
    }
    [UnityTest, Category("PenguinSkinningRegression")] public IEnumerator PenguinIdleAndSideToSideWaddleMoveAndHonorPause()
    {
        var avatar=(SpriteRenderer)theme.GetType().GetProperty("Avatar").GetValue(theme);
        var motion=avatar.GetComponent<PenguinBoneMotion>();Assert.That(motion.Skin,Is.Not.Null,"Penguin must use real SpriteSkin deformation");
        Assert.That(avatar.enabled,Is.True);
        ForestRuntimeAcceptance.IsGaming=false;HoldControllers();
        client.Hero.anim.SetBool("Walk",false);yield return new WaitForSeconds(.4f);
        var idleStart=motion.VisualMesh.vertices;
        float idleDeformation=0;
        // A periodic breath can reach the same pose at two isolated samples.
        // Observe the interval, retaining the visible-deformation threshold.
        for(int i=0;i<23;i++)
        {
            yield return new WaitForSeconds(.05f);var pose=motion.VisualMesh.vertices;
            idleDeformation=Mathf.Max(idleDeformation,idleStart.Zip(pose,(a,b)=>Vector3.Distance(a,b)).Max());
        }
        Assert.That(idleDeformation,Is.GreaterThan(.002f),"Idle breathing must deform the visible penguin");
        client.Hero.anim.SetBool("Walk",true);yield return new WaitForSeconds(.5f);var walkStart=motion.VisualMesh.vertices;
        yield return new WaitForSeconds(.35f);var walkEnd=motion.VisualMesh.vertices;
        Assert.That(walkStart.Zip(walkEnd,(a,b)=>Vector3.Distance(a,b)).Max(),Is.GreaterThan(.01f),"Walking must move the visible feet and body");
        float min=float.MaxValue,max=float.MinValue;
        for(int i=0;i<30;i++)
        {
            var pose=motion.VisualMesh.vertices;float tilt=pose[28*25+12].x-pose[12].x;
            min=Mathf.Min(min,tilt);max=Mathf.Max(max,tilt);yield return new WaitForSeconds(.05f);
        }
        Assert.That(min,Is.LessThan(-.02f));Assert.That(max,Is.GreaterThan(.02f),"Walking must sway to both sides");
        Time.timeScale=0;yield return null;var paused=motion.VisualMesh.vertices;
        yield return new WaitForSecondsRealtime(.2f);
        Assert.That(paused.Zip(motion.VisualMesh.vertices,(a,b)=>Vector3.Distance(a,b)).Max(),Is.LessThan(.0001f));
        Time.timeScale=1;
    }
    [UnityTest, Category("PenguinSkinningRegression")] public IEnumerator SuccessfulShotRecoilTriggersOnceAndReturnsToRest()
    {
        ForestRuntimeAcceptance.IsGaming=false;HoldControllers();
        foreach(var b in Object.FindObjectsByType<Bullet>())b.gameObject.SetActive(false);
        yield return new WaitForSeconds(.35f);
        var avatar=(SpriteRenderer)theme.GetType().GetProperty("Avatar").GetValue(theme);
        var motion=avatar.GetComponent<PenguinBoneMotion>();int before=motion.Shots;
        var target=Object.FindObjectsByType<Tree>().First(t=>!t.enemy.is_Die).GetComponent<Collider>();
        Assert.That(client.Hero.Attack(target),Is.True);yield return new WaitForSeconds(.05f);
        Assert.That(motion.Shots,Is.EqualTo(before+1));Assert.That(motion.RecoilStrength,Is.GreaterThan(.1f));
        yield return new WaitForSeconds(.3f);
        Assert.That(motion.RecoilStrength,Is.Zero);Assert.That(motion.Shots,Is.EqualTo(before+1));
    }
}
