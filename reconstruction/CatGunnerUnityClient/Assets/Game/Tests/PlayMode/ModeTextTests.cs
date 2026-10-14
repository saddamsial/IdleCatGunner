using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using CatGunner.Runtime;
using NUnit.Framework;
using TMPro;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;
using UnityEngine.UI;

public sealed class ModeTextTests
{
    string folder;GameClient c;bool background;
    Transform CanvasRoot=>c.Slider.GetComponentInParent<Canvas>().transform;
    ModeText Data=>ModeText.Load();
    string Report(string name)=>Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/"+name));
    void Configure(Scene scene,LoadSceneMode mode)
    {if(scene.name=="GameClient")scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single().SaveFolderOverride=folder;}
    [UnitySetUp] public IEnumerator Setup()
    {
        background=Application.runInBackground;Application.runInBackground=true;
        folder=Path.Combine(Application.temporaryCachePath,"ModeText-"+Guid.NewGuid().ToString("N"));SceneManager.sceneLoaded+=Configure;
        yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();c=GameClient.Instance;
        c.DailyLogin.Close();c.Tutorial.SetCleared();ForestRuntimeAcceptance.IsGaming=false;
    }
    [UnityTearDown] public IEnumerator Cleanup()
    {Time.timeScale=1;yield return TestSceneLoader.LoadAsync("TargetPreview");SceneManager.sceneLoaded-=Configure;Application.runInBackground=background;if(Directory.Exists(folder))Directory.Delete(folder,true);}
    void AssertLabels()
    {
        Assert.That(Data.Rows.Length,Is.EqualTo(71));Assert.That(Data.Rows.Select(r=>Data.Resolve(CanvasRoot,r)).Distinct().Count(),Is.EqualTo(71));
        foreach(var row in Data.Rows)Assert.That(Data.Resolve(CanvasRoot,row).text,Is.EqualTo(Data.Display(row,Application.systemLanguage)),row.Path);
    }
    void Visible(Transform root)
    {
        foreach(var row in Data.Rows)
        {
            var text=Data.Resolve(CanvasRoot,row);if(!text.transform.IsChildOf(root)||!text.gameObject.activeInHierarchy)continue;
            text.ForceMeshUpdate();Assert.That(text.isTextOverflowing,Is.False,row.Path);
            foreach(char ch in text.text)if(ch>=0x4e00&&ch<=0x9fff)Assert.That(text.font.HasCharacter(ch,true,true),Is.True,"glyph "+ch);
        }
    }
    IEnumerator Capture(string name,Transform root)
    {
        // Original result animation first presents the title, then expands
        // rewards/buttons. Capture actual readable content after that phase.
        yield return new WaitForSecondsRealtime(2f);Canvas.ForceUpdateCanvases();Visible(root);
        var shown=Data.Rows.Select(r=>Data.Resolve(CanvasRoot,r)).Where(t=>t.transform.IsChildOf(root)&&t.gameObject.activeInHierarchy).ToArray();
        Assert.That(shown.Length,Is.GreaterThan(0),"source core terms must be visible at capture");
        foreach(var text in shown)
        {
            var corners=new Vector3[4];text.rectTransform.GetWorldCorners(corners);
            Assert.That(Vector3.Distance(corners[0],corners[3]),Is.GreaterThan(20),text.name+" visible width");
            Assert.That(Vector3.Distance(corners[0],corners[1]),Is.GreaterThan(10),text.name+" visible height");
        }
        yield return new WaitForEndOfFrame();ScreenCapture.CaptureScreenshot(Report("visual/mode-text-"+name+"-gpu.png"));yield return new WaitForSecondsRealtime(.2f);
    }
    IEnumerator Click(Button button)
    {
        yield return new WaitForSecondsRealtime(.5f);Assert.That(button.gameObject.activeInHierarchy&&button.enabled&&button.interactable,Is.True,button.name);Canvas.ForceUpdateCanvases();
        var module=EventSystem.current.GetComponent<StandaloneInputModule>();var mouse=module.gameObject.AddComponent<ForestFeedbackMouseFixture>();module.inputOverride=mouse;
        int clicks=0;void Observe()=>clicks++;button.onClick.AddListener(Observe);
        try
        {
            var rect=(RectTransform)button.transform;mouse.Position=RectTransformUtility.WorldToScreenPoint(null,rect.TransformPoint(rect.rect.center));
            // Allow the input module to activate and observe neutral movement
            // before the one-frame down/up sequence after scene registration.
            yield return null;yield return null;
            var hits=new List<RaycastResult>();EventSystem.current.RaycastAll(new PointerEventData(EventSystem.current){position=mouse.Position},hits);
            Assert.That(ExecuteEvents.GetEventHandler<IPointerClickHandler>(hits.FirstOrDefault().gameObject)?.GetComponent<Button>(),Is.SameAs(button),string.Join("|",hits.Take(4).Select(x=>x.gameObject.name)));
            var pointerMethod=typeof(PointerInputModule).GetMethod("GetLastPointerEventData",BindingFlags.Instance|BindingFlags.NonPublic);
            Assert.That(pointerMethod,Is.Not.Null);
            PointerEventData Pointer()=>pointerMethod.Invoke(module,new object[]{-1}) as PointerEventData;
            mouse.Down=mouse.Held=true;float deadline=Time.realtimeSinceStartup+1;
            do{yield return null;}while(Pointer()?.pointerPress!=button.gameObject&&Time.realtimeSinceStartup<deadline);
            Assert.That(Pointer()?.pointerPress,Is.SameAs(button.gameObject),"input module must observe source pointer press before release");
            mouse.Down=mouse.Held=false;mouse.Up=true;deadline=Time.realtimeSinceStartup+1;
            do{yield return null;}while(clicks==0&&Time.realtimeSinceStartup<deadline);
            mouse.Up=false;yield return null;
            Assert.That(clicks,Is.EqualTo(1),button.name+" actual onClick reception");
        }
        finally{button.onClick.RemoveListener(Observe);module.inputOverride=null;UnityEngine.Object.Destroy(mouse);}
    }
    Button Menu(string name)=>CanvasRoot.Find("SafeArea/Main_UI/Btn_list/Right_Menu/"+name+"_Btn").GetComponent<Button>();
    void UnlockMenus(){c.Forest.Stage_Value_Max=400;Contents_Unlock_manager.instance.Reload();}
    [UnityTest] public IEnumerator StartupUsesOriginalCoreModeTerms()
    {AssertLabels();Assert.That(Data.LocaleCodes.Length,Is.EqualTo(14));yield return null;}
    [UnityTest] public IEnumerator FourMenuClicksShowOriginalEntranceTermsWithoutSpending()
    {
        UnlockMenus();int dia=c.State.Dia,coins=c.State.PetCoin,tickets=c.State.TicketUse_Count;var money=c.State.Money.ToString();
        foreach(string name in new[]{"SpeedRun","Mine","Boss","Monster"})
        {
            yield return Click(Menu(name));var root=CanvasRoot.Find("Contents_UI/"+name+"_UI");Assert.That(root.gameObject.activeInHierarchy,Is.True,name);yield return new WaitForSecondsRealtime(.5f);
            AssertLabels();Visible(root);yield return Capture(name.ToLowerInvariant()+"-entrance",root);
            root.gameObject.SetActive(false); // Isolated fixture cleanup; close navigation is not asserted here.
        }
        Assert.That(c.State.Dia,Is.EqualTo(dia));Assert.That(c.State.PetCoin,Is.EqualTo(coins));Assert.That(c.State.Money.ToString(),Is.EqualTo(money));Assert.That(c.State.TicketUse_Count,Is.EqualTo(tickets));Assert.That(c.Mode,Is.Zero);
    }
    [UnityTest] public IEnumerator AllResultVariantsKeepSourceTextAndOriginalRectangles()
    {
        int dia=c.State.Dia,coins=c.State.PetCoin;var guns=c.State.Owned_Gun_list.ToArray();
        var rects=Data.Rows.Select(r=>Data.Resolve(CanvasRoot,r).rectTransform).Select(t=>(t,t.sizeDelta,t.anchoredPosition,t.anchorMin,t.anchorMax)).ToArray();
        var sample=Data.Resolve(CanvasRoot,Data.Rows.First(r=>r.Key=="Mine/다이아 광산"));
        Data.Apply(CanvasRoot,SystemLanguage.English);var font=sample.font;var material=sample.fontSharedMaterial;
        Data.Apply(CanvasRoot,SystemLanguage.ChineseSimplified);var chineseMaterial=sample.fontSharedMaterial;
        Data.Apply(CanvasRoot,SystemLanguage.ChineseTraditional);Assert.That(sample.fontSharedMaterial,Is.SameAs(chineseMaterial));
        Data.Apply(CanvasRoot,SystemLanguage.Unknown);Assert.That(sample.font,Is.SameAs(font));Assert.That(sample.fontSharedMaterial,Is.SameAs(material));
        Data.Apply(CanvasRoot,Application.systemLanguage);yield return null;Assert.That(chineseMaterial==null,Is.True);
        foreach(var x in rects){Assert.That(x.t.sizeDelta,Is.EqualTo(x.sizeDelta));Assert.That(x.t.anchoredPosition,Is.EqualTo(x.anchoredPosition));Assert.That(x.t.anchorMin,Is.EqualTo(x.anchorMin));Assert.That(x.t.anchorMax,Is.EqualTo(x.anchorMax));}
        foreach(var mode in new[]{"SpeedRun","Mine","Boss","Monster"})
        {
            var root=CanvasRoot.Find("Contents_UI/"+mode+"_UI");root.gameObject.SetActive(true);
            foreach(var child in root.Cast<Transform>())child.gameObject.SetActive(false);
            var results=root.Cast<Transform>().Where(t=>t.name.StartsWith("Game")&&(t.name.Contains("Win")||t.name.Contains("Fail")||t.name.Contains("End")||t.name.Contains("Sweep"))).ToArray();
            Assert.That(results.Length,Is.GreaterThanOrEqualTo(2),mode);
            foreach(var result in results){result.gameObject.SetActive(true);yield return new WaitForSecondsRealtime(.5f);AssertLabels();Visible(result);if(result.name.Contains("Sweep"))yield return Capture(mode.ToLowerInvariant()+"-sweep",result);result.gameObject.SetActive(false);}
            root.gameObject.SetActive(false);
        }
        Assert.That(c.State.Dia,Is.EqualTo(dia));Assert.That(c.State.PetCoin,Is.EqualTo(coins));Assert.That(c.State.Owned_Gun_list,Is.EqualTo(guns));
        Assert.That(Data.Rows.All(r=>r.Values.Length==14&&r.Values.All(v=>!string.IsNullOrEmpty(v))),Is.True);
    }
    [UnityTest] public IEnumerator OriginalChallengeEnterNaturalVictoryClaimAndColdReloadKeepTextsAndRewards()
    {
        UnlockMenus();c.State.Owned_Gun_list[0]=20;Assert.That(c.Inventory.Equip(0,0),Is.True);int dia=c.State.Dia,forest=c.Forest.Stage_Now;
        yield return Click(Menu("SpeedRun"));var mode=c.SpeedRun;
        var enter=mode.Start_UI.NonAuto_obj.GetComponentsInChildren<Button>(true).Single(b=>Enumerable.Range(0,b.onClick.GetPersistentEventCount()).Any(i=>b.onClick.GetPersistentMethodName(i)=="Game_Enter"));
        Assert.That(enter.GetComponentsInChildren<TMP_Text>().Any(t=>t.text=="挑战"),Is.True);yield return Click(enter);
        float deadline=Time.realtimeSinceStartup+70;while((mode.Entering||mode.Playing)&&Time.realtimeSinceStartup<deadline)yield return null;
        Assert.That(mode.GameWin_UI.activeInHierarchy,Is.True,"Original Gun20, actual automatic projectiles and timer, no injected damage or win");Assert.That(c.State.Dia,Is.EqualTo(dia+30));
        Assert.That(c.Hero.joystick.Direction,Is.EqualTo(Vector2.zero));AssertLabels();Visible(mode.GameWin_UI.transform);yield return Capture("speedrun-win",mode.GameWin_UI.transform);
        Assert.That(mode.Bonus_Btn_obj.GetComponentsInChildren<TMP_Text>().Any(t=>t.text=="领取"),Is.True);yield return Click(mode.Bonus_Btn_obj.GetComponent<Button>());
        yield return new WaitForSecondsRealtime(1.8f);Assert.That(c.Mode,Is.Zero);Assert.That(c.State.Dia,Is.EqualTo(dia+120));Assert.That(c.RewardedAds.CompletedWatches,Is.EqualTo(1));Assert.That(c.Forest.Stage_Now,Is.EqualTo(forest));
        c.SaveNow();yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();c=GameClient.Instance;c.DailyLogin.Close();c.Tutorial.SetCleared();ForestRuntimeAcceptance.IsGaming=false;
        AssertLabels();Assert.That(c.State.Dia,Is.EqualTo(dia+120));Assert.That(c.State.SpeedRun_Stage_Now,Is.EqualTo(1));Assert.That(c.SpeedRun.GameWin_UI.activeSelf,Is.False);
    }
}
