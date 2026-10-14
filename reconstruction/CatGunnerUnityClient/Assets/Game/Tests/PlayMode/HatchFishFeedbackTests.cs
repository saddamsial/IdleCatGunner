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
using UnityEngine.UI;
using UnityEngine.EventSystems;

public sealed class HatchFishFeedbackTests
{
    string folder; GameClient client; bool background;
    void Configure(Scene scene,LoadSceneMode mode)
    {
        if(scene.name=="GameClient")scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single().SaveFolderOverride=folder;
    }
    [UnitySetUp] public IEnumerator Setup()
    {
        background=Application.runInBackground;Application.runInBackground=true;
        folder=Path.Combine(Application.temporaryCachePath,"HatchFishFeedback-"+Guid.NewGuid().ToString("N"));
        if(TestContext.CurrentContext.Test.Name==nameof(LatestProgressNaturallyFiresAndEarnsCompactAmounts))
        {
            Directory.CreateDirectory(folder);var clone=SaveArchive.Decode(File.ReadAllText(Report("../checkpoints/hatch-fish-feedback-before/NoSaveFile.json")));
            clone.LastSaveTime=DateTime.UtcNow.ToString("O");File.WriteAllText(Path.Combine(folder,"NoSaveFile.json"),SaveArchive.Encode(clone));
        }
        SceneManager.sceneLoaded+=Configure;yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();
        client=GameClient.Instance;client.DailyLogin.Close();client.Tutorial.SetCleared();ForestRuntimeAcceptance.IsGaming=false;
    }
    [UnityTearDown] public IEnumerator Cleanup()
    {
        Time.timeScale=1;yield return SceneManager.LoadSceneAsync("TargetPreview");SceneManager.sceneLoaded-=Configure;
        Application.runInBackground=background;if(Directory.Exists(folder))Directory.Delete(folder,true);
    }
    string Report(string name)=>Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/"+name));
    IEnumerator Capture(string name){yield return new WaitForEndOfFrame();ScreenCapture.CaptureScreenshot(Report("visual/hatch-fish-feedback-"+name+"-gpu.png"));yield return new WaitForSecondsRealtime(.2f);}
    IEnumerator Click(Button button)
    {
        Assert.That(button.gameObject.activeInHierarchy&&button.interactable,Is.True,button.name);Canvas.ForceUpdateCanvases();
        var module=EventSystem.current.GetComponent<StandaloneInputModule>();var mouse=module.gameObject.AddComponent<ForestFeedbackMouseFixture>();module.inputOverride=mouse;
        try
        {
            var rect=(RectTransform)button.transform;mouse.Position=RectTransformUtility.WorldToScreenPoint(null,rect.TransformPoint(rect.rect.center));
            var hits=new List<RaycastResult>();EventSystem.current.RaycastAll(new PointerEventData(EventSystem.current){position=mouse.Position},hits);
            Assert.That(hits.FirstOrDefault().gameObject?.GetComponentInParent<Button>(),Is.SameAs(button),string.Join("|",hits.Take(5).Select(x=>x.gameObject.name)));
            mouse.Down=true;mouse.Held=true;yield return null;mouse.Down=false;mouse.Held=false;mouse.Up=true;yield return null;mouse.Up=false;yield return null;
        }
        finally{module.inputOverride=null;UnityEngine.Object.Destroy(mouse);}
    }
    [UnityTest] public IEnumerator HatchScrollsRightAndFillCoversOriginalWidthAtQuarterAndFull()
    {
        var fill=client.Slider.Value_Fill;var raw=fill.GetComponentInChildren<RawImage>();var scroll=raw.GetComponent<Scrolling>();
        Assert.That(scroll,Is.Not.Null,"Original Hatch object11797/Scrolling148332 was omitted");Assert.That(scroll.Speed,Is.EqualTo(new Vector2(-1,0)));
        client.Slider.Value_Reload(.25f);yield return null;float start=raw.uvRect.x;yield return new WaitForSeconds(.2f);Assert.That(raw.uvRect.x,Is.LessThan(start-.15f));
        Assert.That(raw.rectTransform.rect.width,Is.EqualTo(fill.rectTransform.rect.width).Within(.01f));Assert.That(raw.rectTransform.rect.height,Is.EqualTo(37).Within(.01f));
        Canvas.ForceUpdateCanvases();Assert.That(fill.canvasRenderer.GetMesh().bounds.size.x,Is.EqualTo(fill.rectTransform.rect.width*.25f).Within(1));yield return Capture("quarter");
        Time.timeScale=0;start=raw.uvRect.x;yield return new WaitForSecondsRealtime(.1f);Assert.That(raw.uvRect.x,Is.EqualTo(start));
        client.Slider.Value_Reload(1);yield return null;Canvas.ForceUpdateCanvases();Assert.That(fill.canvasRenderer.GetMesh().bounds.size.x,Is.EqualTo(fill.rectTransform.rect.width).Within(1));yield return Capture("full");
        File.WriteAllText(Report("hatch-fish-feedback-width.txt"),"fill="+fill.rectTransform.rect+", hatch="+raw.rectTransform.rect+", uv="+raw.uvRect+", speed="+scroll.Speed);
    }
    [UnityTest] public IEnumerator AutoFishMergeUpdatesInventoryStatsCombatAndColdSave()
    {
        ContentNavigationFixture.Unlock(client,Content_Type.Fish);yield return null;var fish=client.Fish;
        fish.Inventory.AddRange(new[]{0,0,1,1});client.FishChanged();
        var entry=UnityEngine.Object.FindObjectsByType<Button>(FindObjectsInactive.Include,FindObjectsSortMode.None).Single(b=>b.name=="Fish_Btn");
        yield return Click(entry);yield return new WaitForSecondsRealtime(.4f);yield return Capture("fish-before");
        int before=fish.GetTotalDamage();var combat=client.Hero.Damage.Value;yield return Click(fish.Auto_Btn_obj.GetComponent<Button>());
        yield return new WaitForSecondsRealtime(2);Assert.That(fish.Inventory.OrderBy(g=>g),Is.EqualTo(new[]{1,2}));
        Assert.That(fish.GetTotalDamage(),Is.EqualTo(48));Assert.That(fish.GetTotalDamage(),Is.GreaterThan(before));Assert.That(client.Hero.Damage.Value.CompareTo(combat),Is.GreaterThan(0));
        Assert.That(fish.All_Damage_txt.text,Is.EqualTo("+48%"));Assert.That(fish.All_CriPer_txt.text,Is.EqualTo("8%"));Assert.That(fish.All_CriVal_txt.text,Is.EqualTo("195%"));
        Assert.That(fish.fishTank.Count_txt.text,Is.EqualTo("2/20"));fish.new_fish_ui.Close();yield return Capture("fish-after");
        client.SaveNow();var saved=SaveArchive.Decode(File.ReadAllText(Path.Combine(folder,"NoSaveFile.json")));Assert.That(saved.FishInventory.OrderBy(g=>g),Is.EqualTo(new[]{1,2}));
        yield return SceneManager.LoadSceneAsync("TargetPreview");yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();client=GameClient.Instance;
        Assert.That(client.Fish.GetTotalDamage(),Is.EqualTo(48));Assert.That(client.State.FishInventory.OrderBy(g=>g),Is.EqualTo(new[]{1,2}));
        // No equal-grade pair: Auto must leave different grades unchanged.
        client.Fish.ReloadFishUI();client.Fish.Set_AutoMerge(true);yield return new WaitForSecondsRealtime(.8f);Assert.That(client.State.FishInventory.OrderBy(g=>g),Is.EqualTo(new[]{1,2}));
        client.Fish.Inventory.Clear();client.Fish.Inventory.AddRange(new[]{12,12});client.FishChanged();client.Fish.ReloadFishUI();Assert.That(client.Fish.All_CriPer_txt.text,Is.EqualTo("100%"));
        File.WriteAllText(Report("hatch-fish-feedback-merge.txt"),"[0,0,1,1] -> [1,2], damage32 ->48, chance6 ->8, critical181 ->195, combat increased, persisted/cold-reloaded; [1,2] has no pair; chance capped100");
    }
    [UnityTest] public IEnumerator ActualTreeHitAndRewardUseCompactGlyphsWithoutChangingAmounts()
    {
        var presenter=UnityEngine.Object.FindAnyObjectByType<DamageTextPresenter>();presenter.enabled=false;presenter.enabled=true;
        foreach(var cat in client.Team.Cat_list)cat.GetComponent<ForestCombatAcceptance>().enabled=false;
        var tree=UnityEngine.Object.FindObjectsByType<Tree>().Where(t=>!t.enemy.is_Die).Select(t=>new{tree=t,view=Camera.main.WorldToViewportPoint(t.transform.position)}).Where(t=>t.view.z>0&&t.view.x>.1f&&t.view.x<.9f&&t.view.y>.25f&&t.view.y<.75f).First().tree;
        var damage=new DecimalAmount(123456789012345L);string expected=NumberText.Format(damage);var collider=tree.GetComponentsInChildren<Collider>().First(x=>x.GetComponent<EnemyColl>()!=null);
        ForestDamageDispatch.Damage_Collider(collider,CurrencyAmount.FromValue(damage),tree.transform.position,damage.PlainInteger(),false);
        Assert.That(presenter.LastKey,Is.EqualTo("damage"));Assert.That(presenter.LastContent,Is.EqualTo(expected));Assert.That(expected.Length,Is.LessThan(10));
        var mesh=presenter.GetComponentsInChildren<MeshFilter>().Single(x=>x.gameObject.activeSelf).sharedMesh;Assert.That(mesh.vertexCount,Is.EqualTo(expected.Length*4),"all compact glyphs, including suffix, render");
        yield return Capture("damage");
        tree=UnityEngine.Object.FindObjectsByType<Tree>().First(t=>!t.enemy.is_Die);var amount=new DecimalAmount(123456789012345L);var before=client.State.Money.Value;var accumulated=client.State.Money_Accum.Value;
        client.AwardModeTreeMoney(CurrencyAmount.FromValue(amount),tree.transform.position);expected="+"+NumberText.Format(amount);
        Assert.That(presenter.LastContent,Is.EqualTo(expected));Assert.That((client.State.Money.Value-before).CompareTo(amount),Is.Zero);Assert.That((client.State.Money_Accum.Value-accumulated).CompareTo(amount),Is.Zero);
        mesh=presenter.GetComponentsInChildren<MeshFilter>().Last(x=>x.gameObject.activeSelf).sharedMesh;Assert.That(mesh.vertexCount,Is.EqualTo(expected.Length*4));yield return Capture("money");
    }
    [UnityTest] public IEnumerator LatestProgressNaturallyFiresAndEarnsCompactAmounts()
    {
        var hits=new List<string>();var rewards=new List<string>();Action<Vector3,string,bool> hit=(p,text,critical)=>hits.Add(text);Action<string,string,Vector3> reward=(key,text,p)=>{if(key=="money")rewards.Add(text);};
        ForestDamageDispatch.DamageTextPending+=hit;RewardFeedback.Requested+=reward;ForestRuntimeAcceptance.IsGaming=true;
        try
        {
            yield return new WaitForSecondsRealtime(8);Assert.That(hits.Count,Is.GreaterThan(0));Assert.That(rewards.Count,Is.GreaterThan(0));Assert.That(hits.All(x=>x.Length<12),Is.True);Assert.That(rewards.All(x=>x.Length<13),Is.True);
            ForestRuntimeAcceptance.IsGaming=false;yield return Capture("latest-progress");
            File.WriteAllText(Report("hatch-fish-feedback-natural.txt"),"hits="+hits.Count+", money="+rewards.Count+", hitSample="+hits[0]+", moneySample="+rewards[0]+", fish="+string.Join(",",client.State.FishInventory));
        }
        finally{ForestRuntimeAcceptance.IsGaming=false;ForestDamageDispatch.DamageTextPending-=hit;RewardFeedback.Requested-=reward;}
    }
}
