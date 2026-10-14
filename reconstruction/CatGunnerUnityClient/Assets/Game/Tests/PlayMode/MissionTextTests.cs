using System;
using System.Collections;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using CatGunner.Runtime;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;
using UnityEngine.EventSystems;
using UnityEngine.UI;
using TMPro;

public sealed class MissionTextTests
{
    string folder;GameClient client;bool background;
    Transform CanvasRoot=>client.Slider.GetComponentInParent<Canvas>().transform;
    string Report(string name)=>Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/"+name));
    void Configure(Scene scene,LoadSceneMode mode)
    {if(scene.name=="GameClient")scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single().SaveFolderOverride=folder;}
    [UnitySetUp] public IEnumerator Setup()
    {
        background=Application.runInBackground;Application.runInBackground=true;
        folder=Path.Combine(Application.temporaryCachePath,"MissionText-"+Guid.NewGuid().ToString("N"));
        SceneManager.sceneLoaded+=Configure;yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();
        client=GameClient.Instance;client.DailyLogin.Close();client.Tutorial.SetCleared();ForestRuntimeAcceptance.IsGaming=false;
        client.MissionUI.NewSeason_Start();client.MissionUI.Panel_Open();yield return new WaitForSecondsRealtime(.4f);
    }
    [UnityTearDown] public IEnumerator Cleanup()
    {Time.timeScale=1;yield return SceneManager.LoadSceneAsync("TargetPreview");SceneManager.sceneLoaded-=Configure;Application.runInBackground=background;if(Directory.Exists(folder))Directory.Delete(folder,true);}
    [UnityTest] public IEnumerator NormalStartupShowsOriginalTaskNameAndTarget()
    {
        Assert.That(Application.systemLanguage,Is.EqualTo(SystemLanguage.ChineseSimplified),"This GPU baseline uses the current Chinese Editor locale");
        string[] names={"破坏树木","通关关卡","转生","游玩矿山"};
        string[] explanations={"破坏{0}棵树！","通关关卡{0}次！","转生{0}次！","游玩矿山{0}次！"};
        foreach(var row in client.MissionUI.Mission_Item_UI_List)
        {
            var info=client.Missions.Catalogue.Missions[row.Mission_Index];
            Assert.That(row.Name_txt.text,Is.EqualTo(names[info.type]),"original localized task name");
            Assert.That(row.Explain_txt.text,Is.EqualTo(string.Format(explanations[info.type],info.MissionValue)));
            Assert.That(row.Exp_txt.text,Is.EqualTo(info.ExpValue.ToString()),"XP is a separate original image");
        }
        yield return null;
    }
    IEnumerator Capture(string name)
    {yield return new WaitForEndOfFrame();ScreenCapture.CaptureScreenshot(Report("visual/mission-text-"+name+"-gpu.png"));yield return new WaitForSecondsRealtime(.2f);}
    void AssertChineseVisible(Transform root)
    {
        foreach(var text in root.GetComponentsInChildren<TMP_Text>(true).Where(t=>t.gameObject.activeInHierarchy&&t.text.Any(c=>c>127)))
        {
            text.ForceMeshUpdate();foreach(char ch in text.text.Where(ch=>!char.IsWhiteSpace(ch)))Assert.That(text.font.HasCharacter(ch,true,true),Is.True,"glyph "+ch);
            Assert.That(text.isTextOverflowing,Is.False,text.name+": "+text.text);
        }
    }
    [UnityTest] public IEnumerator StaticTermsAndAllTaskLocalesKeepNumbersAndOriginalRects()
    {
        var data=MissionText.Load();int locale=Array.IndexOf(data.LocaleCodes,WeaponText.LocaleCode(Application.systemLanguage));
        Assert.That(data.Rows.Select(row=>data.Resolve(CanvasRoot,row)).Distinct().Count(),Is.EqualTo(96),"duplicate sibling names must retain distinct label bindings");
        foreach(var row in data.Rows)Assert.That(data.Resolve(CanvasRoot,row).text,Is.EqualTo(row.Values[locale]),row.Key);
        var rowUI=client.MissionUI.Mission_Item_UI_List[0];var rect=rowUI.Explain_txt.rectTransform;var size=rect.sizeDelta;var anchor=rect.anchoredPosition;
        var numbers=client.MissionUI.Mission_Item_UI_List.Select(r=>r.Value_txt.text).ToArray();var money=client.State.Money.ToString();int dia=client.State.Dia;
        // Check the shipped fourteen-language data separately from Editor system selection.
        foreach(var term in data.Tasks)foreach(var value in term.Values)
        {if(term.Description)Assert.That(string.Format(value,123),Does.Contain("123").And.Not.Contain("{0}"));else Assert.That(value,Is.Not.Empty);}
        rowUI.ReloadText(SystemLanguage.English);var font=rowUI.Name_txt.font;var material=rowUI.Name_txt.fontSharedMaterial;
        rowUI.ReloadText(SystemLanguage.ChineseSimplified);var chineseMaterial=rowUI.Name_txt.fontSharedMaterial;
        rowUI.ReloadText(SystemLanguage.ChineseTraditional);Assert.That(rowUI.Name_txt.fontSharedMaterial,Is.SameAs(chineseMaterial));
        rowUI.ReloadText(SystemLanguage.English);rowUI.ReloadText(SystemLanguage.Unknown);
        Assert.That(rowUI.Name_txt.font,Is.SameAs(font));Assert.That(rowUI.Name_txt.fontSharedMaterial,Is.SameAs(material));
        rowUI.ReloadText(SystemLanguage.ChineseSimplified);Assert.That(rect.sizeDelta,Is.EqualTo(size));Assert.That(rect.anchoredPosition,Is.EqualTo(anchor));
        Assert.That(client.MissionUI.Mission_Item_UI_List.Select(r=>r.Value_txt.text),Is.EqualTo(numbers));Assert.That(client.State.Dia,Is.EqualTo(dia));Assert.That(client.State.Money.ToString(),Is.EqualTo(money));
        yield return null;Assert.That(chineseMaterial==null,Is.True);AssertChineseVisible(client.MissionUI.Mission_UI_Panel.transform);yield return Capture("daily");
    }
    IEnumerator Click(Button target)
    {
        Canvas.ForceUpdateCanvases();var module=EventSystem.current.GetComponent<StandaloneInputModule>();var mouse=module.gameObject.AddComponent<ForestFeedbackMouseFixture>();module.inputOverride=mouse;
        try
        {
            var rect=(RectTransform)target.transform;mouse.Position=RectTransformUtility.WorldToScreenPoint(null,rect.TransformPoint(rect.rect.center));
            var hits=new List<RaycastResult>();EventSystem.current.RaycastAll(new PointerEventData(EventSystem.current){position=mouse.Position},hits);
            Assert.That(hits.FirstOrDefault().gameObject?.GetComponentInParent<Button>(),Is.SameAs(target));
            mouse.Down=true;mouse.Held=true;yield return null;mouse.Down=false;mouse.Held=false;mouse.Up=true;yield return null;mouse.Up=false;yield return null;
        }
        finally{module.inputOverride=null;UnityEngine.Object.Destroy(mouse);}
    }
    [UnityTest] public IEnumerator LocalizedClaimUpdatesBothBarsExactlyOnceAndSurvivesReload()
    {
        var m=client.MissionUI;int index=Array.FindIndex(client.Missions.Catalogue.Missions,x=>!x.is_VIP_Mission&&x.type==0);
        var info=client.Missions.Catalogue.Missions[index];client.State.Mission_TreeCount_Value=info.MissionValue;m.UI_Reload();yield return null;
        var row=m.Mission_Item_UI_List[index];var button=row.GetAble_obj.GetComponentsInChildren<Button>(true).Single();
        Assert.That(button.GetComponentInChildren<TMP_Text>().text,Is.EqualTo("领取"));
        int dia=client.State.Dia;yield return Click(button);Assert.That(client.State.Mission_ExpGet[index],Is.True);
        Assert.That(client.State.Mission_Reward_Exp,Is.EqualTo(info.ExpValue));
        Assert.That(m.Mission_Reward_Slot_List[0].Fill.fillAmount,Is.EqualTo(info.ExpValue/100f));
        Assert.That(m.Exp_Slider.Fill.fillAmount,Is.EqualTo(info.ExpValue/100f));
        row.Reward_Get();Assert.That(client.State.Mission_Reward_Exp,Is.EqualTo(info.ExpValue));Assert.That(client.State.Dia,Is.EqualTo(dia));
        yield return new WaitForSecondsRealtime(.4f);AssertChineseVisible(m.Mission_UI_Panel.transform);yield return Capture("claimed");
        m.Panel_Close();m.Panel_Open();yield return null;Assert.That(row.Name_txt.text,Is.EqualTo("破坏树木"));
        yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();client=GameClient.Instance;
        client.DailyLogin.Close();client.Tutorial.SetCleared();ForestRuntimeAcceptance.IsGaming=false;client.MissionUI.Panel_Open();yield return null;
        Assert.That(client.State.Mission_ExpGet[index],Is.True);Assert.That(client.State.Mission_Reward_Exp,Is.EqualTo(info.ExpValue));
        Assert.That(client.MissionUI.Mission_Item_UI_List[index].Explain_txt.text,Is.EqualTo("破坏"+info.MissionValue+"棵树！"));Assert.That(client.State.Dia,Is.EqualTo(dia));
    }
    [UnityTest] public IEnumerator PassAndSeasonPanelsKeepOriginalTextAndPurchasesUntouched()
    {
        var m=client.MissionUI;int dia=client.State.Dia;bool vip=client.State.Mission_is_Vip,luxury=client.State.Mission_is_Luxury;
        foreach(var pair in new[]{(m.Vip_Purchase_Panel_obj,"passes"),(m.NewSeason_Panel_obj,"season")})
        {
            pair.Item1.SetActive(true);yield return new WaitForSecondsRealtime(.4f);AssertChineseVisible(pair.Item1.transform);yield return Capture(pair.Item2);pair.Item1.SetActive(false);
        }
        Assert.That(client.State.Dia,Is.EqualTo(dia));Assert.That(client.State.Mission_is_Vip,Is.EqualTo(vip));Assert.That(client.State.Mission_is_Luxury,Is.EqualTo(luxury));
        Assert.That(MissionText.Load().TaskName(-1,SystemLanguage.English),Is.Null);Assert.That(MissionText.Load().TaskExplanation(4,1,SystemLanguage.English),Is.Null);
    }
}
