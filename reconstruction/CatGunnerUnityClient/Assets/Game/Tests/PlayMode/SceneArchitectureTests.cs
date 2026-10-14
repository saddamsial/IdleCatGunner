using System;
using System.Collections;
using System.IO;
using System.Linq;
using System.Threading;
using CatGunner.Runtime;
using CatGunner.Runtime;
using Cysharp.Threading.Tasks;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;

[Category("SceneArchitecture")]
public sealed class SceneArchitectureTests
{
    string folder;
    GameClient client;
    ClientPresentation presentation;
    Transform canvas,weaponRoot;
    void Configure(Scene scene,LoadSceneMode mode)
    {
        if(scene.name!="GameClient")return;
        client=scene.GetRootGameObjects().SelectMany(r=>r.GetComponentsInChildren<GameClient>(true)).Single();
        client.SaveFolderOverride=folder;
    }
    [UnitySetUp] public IEnumerator Setup()
    {
        folder=Path.Combine(Application.temporaryCachePath,"SceneArchitecture-"+Guid.NewGuid().ToString("N"));
        Time.timeScale=1;SceneManager.sceneLoaded+=Configure;
        yield return SceneManager.LoadSceneAsync("GameClient");
        yield return ClientStartupWait.Ready();
        presentation=client.GetComponent<ClientPresentation>();
        canvas=client.Slider.GetComponentInParent<Canvas>().transform;
        weaponRoot=UiAuthoring.Find(canvas,"SafeArea/Gun_UI  (SafeArea)");
        client.DailyLogin.Close();client.Offline.offlinePanelUI.gameObject.SetActive(false);
        foreach(var cat in client.Team.Cat_list)cat.GetComponent<ForestCombatAcceptance>().enabled=false;
    }
    [UnityTearDown] public IEnumerator Cleanup()
    {
        SceneManager.sceneLoaded-=Configure;Time.timeScale=1;
        yield return SceneManager.LoadSceneAsync("TargetPreview");
        if(Directory.Exists(folder))Directory.Delete(folder,true);
    }
    void AssertAuthoredRect(GameObject root,string path)
    {
        var expected=Resources.Load<GameObject>(path).GetComponent<RectTransform>();
        var actual=root.GetComponent<RectTransform>();
        Assert.That(Vector3.Distance(actual.localPosition,expected.localPosition),Is.LessThan(.01f),"Async UI preserves local position under scaled Canvas");
        Assert.That(Vector3.Distance(actual.localScale,expected.localScale),Is.LessThan(.0001f));
        Assert.That(actual.anchorMin,Is.EqualTo(expected.anchorMin));Assert.That(actual.anchorMax,Is.EqualTo(expected.anchorMax));
    }
    IEnumerator Capture(string name)
    {
        Canvas.ForceUpdateCanvases();yield return new WaitForEndOfFrame();
        var path=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../art/architecture/20261014"));
        var texture=ScreenCapture.CaptureScreenshotAsTexture();
        try{File.WriteAllBytes(Path.Combine(path,name+".png"),texture.EncodeToPNG());}
        finally{UnityEngine.Object.Destroy(texture);}
    }
    IEnumerator WaitFor(Func<bool> done)
    {
        float deadline=Time.realtimeSinceStartup+15;
        while(!done()&&Time.realtimeSinceStartup<deadline)yield return null;
        Assert.That(done(),Is.True,"Async load did not complete");yield return null;
    }
    [UnityTest] public IEnumerator ColdBootDefersWeaponPanelsAndLoadsPoolBeforeCombat()
    {
        Assert.That(SceneManager.GetActiveScene().GetRootGameObjects().Select(r=>r.name),Is.EquivalentTo(new[]{"World","Systems","UI"}));
        Assert.That(presentation.LazyWeaponPanels,Is.True);
        Assert.That(presentation.DrawInformation,Is.Null);Assert.That(presentation.Collection,Is.Null);
        var pool=Polling_manager.instance;Assert.That(pool.IsReady,Is.True);
        Assert.That(pool.GetComponentsInChildren<ProjectilePoolContent>(true).Length,Is.EqualTo(1));
        Assert.That(pool.Polling_List.Select(p=>p.Objects.Length),Is.EqualTo(new[]{27,10}));
        foreach(var item in pool.Polling_List[0].Objects)
        {var bullet=item.GetComponent<Bullet>();Assert.That(bullet.rb,Is.Not.Null);Assert.That(bullet.Skin_particles.All(p=>p!=null),Is.True);}
        Assert.That(client.ReadyForPlay,Is.True);Assert.That(canvas.GetComponent<CanvasGroup>().interactable,Is.True);
        yield return null;
    }
    [UnityTest] public IEnumerator RepeatedInformationClicksCreateOneLocalizedReusablePanel()
    {
        weaponRoot.gameObject.SetActive(true);
        for(int i=0;i<8;i++)presentation.OpenInformation();
        yield return WaitFor(()=>!presentation.IsInformationLoading);
        var panel=presentation.DrawInformation;Assert.That(panel,Is.Not.Null);Assert.That(panel.activeInHierarchy,Is.True);
        Assert.That(weaponRoot.GetComponentsInChildren<UiAuthoring>(true).Count(a=>a.gameObject==panel),Is.EqualTo(1));
        Assert.That(panel.GetComponent<PenguinModePaletteBindings>(),Is.Not.Null);
        AssertAuthoredRect(panel,"UI/Draw_Info_UI");
        yield return Capture("weapon-information-runtime");
        client.GetComponent<Language>().PersistSelection=false;
        client.GetComponent<Language>().Select("en");yield return null;
        panel.SetActive(false);presentation.OpenInformation();yield return null;
        Assert.That(presentation.DrawInformation,Is.SameAs(panel));Assert.That(panel.activeSelf,Is.True);
    }
    [UnityTest] public IEnumerator RepeatedCollectionClicksReuseOnePopulatedCatalogue()
    {
        weaponRoot.gameObject.SetActive(true);
        for(int i=0;i<8;i++)presentation.OpenCollection();
        yield return WaitFor(()=>!presentation.IsCollectionLoading);
        var collection=presentation.Collection;Assert.That(collection,Is.Not.Null);
        AssertAuthoredRect(collection.gameObject,"UI/GunCollection_UI");
        yield return Capture("weapon-collection-runtime");
        Assert.That(collection.Gun_Item_list.Length,Is.GreaterThan(0));Assert.That(collection.Gun_Item_list.All(i=>i!=null),Is.True);
        collection.gameObject.SetActive(false);presentation.OpenCollection();yield return null;
        Assert.That(presentation.Collection,Is.SameAs(collection));Assert.That(collection.gameObject.activeSelf,Is.True);
        Assert.That(weaponRoot.GetComponentsInChildren<Gun_Collection_UI>(true).Length,Is.EqualTo(1));
    }
    [UnityTest] public IEnumerator ClosingInventoryDuringLoadDoesNotOpenStaleModal()
    {
        weaponRoot.gameObject.SetActive(true);presentation.OpenCollection();weaponRoot.gameObject.SetActive(false);
        yield return WaitFor(()=>!presentation.IsCollectionLoading);
        Assert.That(presentation.Collection.gameObject.activeSelf,Is.False);
        weaponRoot.gameObject.SetActive(true);presentation.OpenCollection();yield return null;
        Assert.That(presentation.Collection.gameObject.activeInHierarchy,Is.True);
    }
    [UnityTest] public IEnumerator FullPoolKeepsLiveProjectilesAndReusesDeadTrails()
    {
        var manager=Polling_manager.instance;var pool=manager.Polling_List[0];
        foreach(var go in pool.Objects){go.GetComponent<Bullet>().is_Die=false;go.SetActive(true);}
        int cursor=pool.Object_Count;Assert.That(manager.Object_Polling_Smart(0),Is.Null);
        Assert.That(manager.Polling_List[0].Object_Count,Is.EqualTo(cursor));
        var dead=pool.Objects[3].GetComponent<Bullet>();dead.DieAndWait();
        Assert.That(manager.Object_Polling_Smart(0),Is.SameAs(dead.gameObject));
        Assert.That(dead.gameObject.activeSelf,Is.False);Assert.That(dead.IsInvoking("Deactivate"),Is.False);
        yield return null;
    }
    [UnityTest] public IEnumerator BoundMenuButtonsLoadPanels()
    {
        weaponRoot.gameObject.SetActive(true);
        var page=UiAuthoring.Find(weaponRoot,"GunList_UI");
        var buttons=page.GetComponentsInChildren<UnityEngine.UI.Button>(true);
        buttons.Single(b=>b.name=="Info_Btn").onClick.Invoke();
        yield return WaitFor(()=>!presentation.IsInformationLoading);
        Assert.That(presentation.DrawInformation,Is.Not.Null);Assert.That(presentation.DrawInformation.activeSelf,Is.True);
        presentation.DrawInformation.SetActive(false);
        buttons.Single(b=>b.name=="Collection_Btn").onClick.Invoke();
        yield return WaitFor(()=>!presentation.IsCollectionLoading);
        Assert.That(presentation.Collection,Is.Not.Null);Assert.That(presentation.Collection.gameObject.activeSelf,Is.True);
    }
    [UnityTest] public IEnumerator CancelledDeferredLoadDoesNotCreateOrphan()
    {
        var host=new GameObject("CancelledLoadOwner");using(var cancellation=new CancellationTokenSource())
        {
            var slot=new DeferredPrefabSlot("Gameplay/ProjectilePoolContent",host.transform,cancellation.Token);
            var task=slot.LoadAsync();cancellation.Cancel();
            Exception failure=null;
            yield return task.ToCoroutine(_=>Assert.Fail("Cancelled operation returned an instance"),error=>failure=error);
            Assert.That(failure,Is.InstanceOf<OperationCanceledException>());
            yield return null;Assert.That(host.transform.childCount,Is.Zero);
        }
        UnityEngine.Object.Destroy(host);
    }
}
