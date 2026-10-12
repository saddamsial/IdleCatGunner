using System;
using System.Collections;
using System.IO;
using System.Linq;
using CatGunner.Recovery;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;
using Object=UnityEngine.Object;

// Mouse edges enter the real StandaloneInputModule, rather than ExecuteEvents.
public sealed class ForestFeedbackMouseFixture : BaseInput
{
    public Vector2 Position;
    public bool Down,Up,Held;
    public override bool mousePresent=>true;
    public override bool touchSupported=>false;
    public override int touchCount=>0;
    public override Vector2 mousePosition=>Position;
    public override Vector2 mouseScrollDelta=>Vector2.zero;
    public override bool GetMouseButtonDown(int button)=>button==0&&Down;
    public override bool GetMouseButtonUp(int button)=>button==0&&Up;
    public override bool GetMouseButton(int button)=>button==0&&Held;
    public override bool GetButtonDown(string name)=>false;
    public override float GetAxisRaw(string name)=>0;
}
public sealed class OriginalForestFeedbackTests
{
    [Serializable] private sealed class Observation
    {
        public string module,content,fixture;
        public int[] levels;
        public int treesBefore,treesAfter,emitted;
        public bool mouseEdgesThroughModule,ExecuteEventsUsed,isolatedProfile,sawText,sawCash;
    }
    private string folder;
    private RecoveryForestClient client;
    private bool background;
    private string Report(string name)=>Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports",name));
    private void Configure(Scene scene,LoadSceneMode mode)
    {
        if(scene.name=="RecoveredClient")scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<RecoveryForestClient>(true)).Single().SaveFolderOverride=folder;
    }
    [UnitySetUp] public IEnumerator Setup()
    {
        background=Application.runInBackground;Application.runInBackground=true;Time.timeScale=1;
        folder=Path.Combine(Application.temporaryCachePath,"ForestFeedback-"+Guid.NewGuid().ToString("N"));
        SceneManager.sceneLoaded+=Configure;
        yield return SceneManager.LoadSceneAsync("RecoveredClient");yield return ClientStartupWait.Ready();
        client=RecoveryForestClient.Instance;
    }
    [UnityTearDown] public IEnumerator Teardown()
    {
        yield return SceneManager.LoadSceneAsync("RecoveredTarget");SceneManager.sceneLoaded-=Configure;
        if(Directory.Exists(folder))Directory.Delete(folder,true);
        Application.runInBackground=background;Time.timeScale=1;
    }
    private void FreezeCombat()=>ForestRuntimeAcceptance.IsGaming=false;
    private static IEnumerator MouseClick(ForestFeedbackMouseFixture mouse,RectTransform rect)
    {
        Canvas.ForceUpdateCanvases();mouse.Position=RectTransformUtility.WorldToScreenPoint(null,rect.TransformPoint(rect.rect.center));
        mouse.Down=false;mouse.Up=false;mouse.Held=false;yield return null;
        mouse.Down=true;mouse.Held=true;yield return null;
        mouse.Down=false;mouse.Up=true;mouse.Held=false;yield return null;
        mouse.Up=false;yield return null;
    }
    [UnityTest] public IEnumerator RealInputModuleDispatchesAllThreeUpgradeButtonsOnceAndSaves()
    {
        FreezeCombat();var systems=Object.FindObjectsByType<EventSystem>();Assert.That(systems.Length,Is.EqualTo(1));
        var module=systems[0].GetComponent<StandaloneInputModule>();Assert.That(module,Is.Not.Null);
        Assert.That(module.isActiveAndEnabled,Is.True);var mouse=module.gameObject.AddComponent<ForestFeedbackMouseFixture>();
        module.inputOverride=mouse;yield return null;
        Assert.That(systems[0].currentInputModule,Is.SameAs(module));
        client.State.Money=OriginalAmount.FromValue(new DecimalAmount(100000));
        foreach(var p in client.UpgradePanels)
        {
            int before=client.State.Upgrade_Lv[p.type];var money=client.State.Money.Value;
            yield return MouseClick(mouse,p.transform as RectTransform);
            Assert.That(client.State.Upgrade_Lv[p.type],Is.EqualTo(before+1),"Input module must process exactly one click: "+p.type);
            Assert.That((money-client.State.Money.Value).CompareTo(client.Balance.Price(before)),Is.Zero);
        }
        var saved=new OriginalSaveArchive(folder).Load();Assert.That(saved.Upgrade_Lv,Is.EqualTo(client.State.Upgrade_Lv));
        File.WriteAllText(Report("forest-input-module-test-observation.json"),JsonUtility.ToJson(new Observation{module=module.GetType().Name,levels=client.State.Upgrade_Lv,mouseEdgesThroughModule=true,ExecuteEventsUsed=false,isolatedProfile=true},true));
        module.inputOverride=null;Object.Destroy(mouse);
    }
    [UnityTest] public IEnumerator AutomaticProjectilesEmitOriginalDamageGlyphsAndCashParticles()
    {
        var presenter=Object.FindAnyObjectByType<RecoveryDamageTextPresenter>();Assert.That(presenter,Is.Not.Null);
        var money=Particle_Polling.instance;Assert.That(money,Is.Not.Null);Assert.That(money.Particle_index,Is.Zero);
        int before=client.Forest.TreeCount_Now;float deadline=Time.realtimeSinceStartup+15;bool sawText=false,sawCash=false;
        Directory.CreateDirectory(Report("visual"));
        while(Time.realtimeSinceStartup<deadline&&(!sawText||!sawCash))
        {
            if(!sawText&&presenter.ActiveCount>0)
            {
                var number=presenter.GetComponentsInChildren<MeshFilter>().FirstOrDefault(m=>m.sharedMesh!=null&&m.sharedMesh.vertexCount>0);
                Assert.That(number,Is.Not.Null);Assert.That(number.GetComponent<MeshRenderer>().sharedMaterial.mainTexture.width,Is.GreaterThan(1));
                sawText=true;ScreenCapture.CaptureScreenshot(Report("visual/forest-real-hit-damage-gpu.png"));
            }
            if(!sawCash&&money._particleSystem.Sum(p=>p.particleCount)>0)
            {
                sawCash=true;
                // Emit occurs before rendering; observe the moving paper after
                // simulation, rather than accepting a count with no visible FX.
                yield return new WaitForSeconds(.35f);
                ScreenCapture.CaptureScreenshot(Report("visual/forest-real-tree-cash-gpu.png"));
            }
            yield return null;
        }
        Assert.That(sawText,Is.True,"Actual projectile impacts must emit number meshes");Assert.That(sawCash,Is.True,"Actual tree death must emit original particles");
        Assert.That(client.Forest.TreeCount_Now,Is.LessThan(before));Assert.That(client.Hero.joystick.Direction,Is.EqualTo(Vector2.zero));
        File.WriteAllText(Report("forest-feedback-real-combat-observation.json"),JsonUtility.ToJson(new Observation{treesBefore=before,treesAfter=client.Forest.TreeCount_Now,emitted=presenter.EmittedCount,content=presenter.LastContent,sawText=sawText,sawCash=sawCash,isolatedProfile=true,fixture="Fresh isolated save; original default cat/gun/tree stats, automatic projectile impacts"},true));
    }
    [UnityTest] public IEnumerator TreeDeathEmitsFiveOrFifteenOnceAtOriginalAnchorWithoutExtraIncome()
    {
        FreezeCombat();foreach(var c in client.Team.Cat_list)c.enabled=false;
        foreach(var b in Object.FindObjectsByType<Bullet>())b.gameObject.SetActive(false);
        ForestRuntimeAcceptance.IsGaming=true;
        var particle=Particle_Polling.instance._particleSystem.Single();particle.Stop(true,ParticleSystemStopBehavior.StopEmittingAndClear);
        var trees=Object.FindObjectsByType<Tree>().Where(t=>!t.enemy.is_Die).Take(2).ToArray();
        for(int i=0;i<2;i++)
        {
            var tree=trees[i];tree.is_Boss=i==1;var wallet=client.State.Money.Value;
            var expected=tree.enemy.Money.Value.Percent(client.Balance.Money(client.State.Upgrade_Lv[2]));
            tree.enemy.Die();Assert.That(particle.particleCount,Is.EqualTo(i==0?5:15));tree.enemy.Die();
            Assert.That(particle.particleCount,Is.EqualTo(i==0?5:15));
            Assert.That((client.State.Money.Value-wallet).CompareTo(expected),Is.Zero,"Presentation must not award a second reward");
            var particles=new ParticleSystem.Particle[particle.particleCount];particle.GetParticles(particles);
            Assert.That(particles.All(p=>Vector3.Distance(p.position,tree.MoneySpawn_trans.position)<10),Is.True);
            particle.Clear(true);
        }
        yield return null;
    }
    [UnityTest] public IEnumerator OriginalGlyphAnimationExpiresReusesAndCannotBlockUi()
    {
        FreezeCombat();var presenter=Object.FindAnyObjectByType<RecoveryDamageTextPresenter>();
        presenter.enabled=false;presenter.enabled=true;
        var settings=presenter.GetComponent<DamageTextAnimationSetting>();
        var animation=settings.settings.Single(s=>s.key=="damage").setting.GetComponent<DamageTextAnimation>();
        Assert.That(animation.duration,Is.EqualTo(1));Assert.That(animation.spriteGap,Is.EqualTo(-18));Assert.That(animation.curves.Length,Is.EqualTo(50));
        presenter.Show("damage","100",client.Hero.transform.position);Assert.That(presenter.ActiveCount,Is.EqualTo(1));
        var number=presenter.GetComponentsInChildren<MeshFilter>().Single();Assert.That(number.sharedMesh.vertexCount,Is.EqualTo(12));
        Vector3 start=number.transform.position;yield return new WaitForSeconds(.25f);
        Assert.That(Vector3.Distance(start,number.transform.position),Is.GreaterThan(.1f));
        Assert.That(number.GetComponent<Collider>(),Is.Null);Assert.That(number.GetComponent<UnityEngine.UI.Graphic>(),Is.Null);
        yield return new WaitForSeconds(1);Assert.That(presenter.ActiveCount,Is.Zero);
        presenter.Show("critical","100",client.Hero.transform.position);Assert.That(presenter.GetComponentsInChildren<MeshFilter>(true).Length,Is.EqualTo(1));
        Assert.That(presenter.ActiveCount,Is.EqualTo(1));
        presenter.enabled=false;Assert.That(presenter.ActiveCount,Is.Zero);
    }
}
