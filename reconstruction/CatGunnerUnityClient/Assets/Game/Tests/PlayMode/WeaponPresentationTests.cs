using System;
using System.IO;
using System.Linq;
using System.Collections;
using System.Collections.Generic;
using System.Reflection;
using CatGunner.Runtime;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public sealed class WeaponPresentationTests
{
    [Serializable] sealed class TextRow{public string Type,Key;public bool Description;public string[] Values;}
    [Serializable] sealed class TextFixture{public string[] LocaleCodes;public TextRow[] Rows;}
    string folder;GameClient c;bool background;
    void Independent(Scene scene,LoadSceneMode mode){if(scene.name=="GameClient")scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single().SaveFolderOverride=folder;}
    [UnitySetUp] public IEnumerator Setup(){background=Application.runInBackground;Application.runInBackground=true;folder=Path.Combine(Application.temporaryCachePath,"WeaponPresentation-"+Guid.NewGuid().ToString("N"));SceneManager.sceneLoaded+=Independent;yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();c=GameClient.Instance;ForestRuntimeAcceptance.IsGaming=false;c.DailyLogin.Close();c.Tutorial.SetCleared();c.SaveNow();}
    [UnityTearDown] public IEnumerator Cleanup(){Time.timeScale=1;yield return TestSceneLoader.LoadAsync("TargetPreview");SceneManager.sceneLoaded-=Independent;Application.runInBackground=background;if(Directory.Exists(folder))Directory.Delete(folder,true);}
    string LogicalState(){var copy=SaveArchive.Decode(SaveArchive.Encode(c.State));copy.LastSaveTime=string.Empty;return SaveArchive.Encode(copy);}
    static int Locale=>Application.systemLanguage==SystemLanguage.ChineseTraditional?4:Application.systemLanguage==SystemLanguage.Chinese||Application.systemLanguage==SystemLanguage.ChineseSimplified?3:0;
    string Expected(GunType type,bool description)=>JsonUtility.FromJson<TextFixture>(Resources.Load<TextAsset>("WeaponText").text).Rows.Single(r=>r.Type==type.ToString()&&r.Description==description).Values[Locale];
    [UnityTest] public IEnumerator All65WeaponDetailsUseOriginalDescriptionsAndGradeSprites()
    {
        var g=c.Guns;string before=LogicalState();var ui=g.gun_info_ui;
        for(int n=0;n<65;n++)
        {
            ui.Show(n,0,-1);var info=g.Gun_list[n];Assert.That(ui.Explain_txt.text,Is.EqualTo(Expected(info.type,true)),"gun"+n+" must show original explanation, not enum");AssertChineseGlyphs(ui.Explain_txt,true);Assert.That(ui.Name_txt.text,Is.EqualTo(info.Name));Assert.That(ui.Gun_img.sprite,Is.SameAs(g.Gun_sprites[n]));Assert.That(ui.Shadow_img.sprite,Is.SameAs(g.Gun_sprites[n]));Assert.That(ui.Degree_objs.Count(o=>o.activeSelf),Is.EqualTo(1));Assert.That(ui.Degree_objs[n/5].activeSelf,Is.True);Assert.That(ui.Speed_txt.text,Is.EqualTo(info.AtkSpeed.ToString()+"s"));Assert.That(ui.Pause_Btn_obj.activeSelf,Is.False);Assert.That(ui.TakeOut_Btn_obj.activeSelf,Is.False);
        }
        Assert.That(LogicalState(),Is.EqualTo(before));ui.Close();yield return null;
    }

    [Test] public void All14OriginalLanguageRowsAndSevenNativeTypeMappingsArePreserved()
    {
        var data=JsonUtility.FromJson<TextFixture>(Resources.Load<TextAsset>("WeaponText").text);
        Assert.That(data.LocaleCodes,Is.EqualTo(new[]{"en","ko","ja","zh-CN","zh-TW","pt-BR","de","fr-FR","es-ES","th","id","ms","vi","ru"}));
        foreach(var row in data.Rows)for(int i=0;i<14;i++)Assert.That(WeaponText.ForLocaleCode((GunType)Enum.Parse(typeof(GunType),row.Type),row.Description,data.LocaleCodes[i]),Is.EqualTo(row.Values[i]),row.Key+"/"+data.LocaleCodes[i]);
        Assert.That(WeaponText.ForLanguage(GunType.SINGLE,true,SystemLanguage.English),Is.EqualTo("Single - Fires 1 bullet."));
        Assert.That(WeaponText.ForLanguage(GunType.SHOTGUN,false,SystemLanguage.English),Is.EqualTo("Shot"));
        Assert.That(WeaponText.ForLanguage(GunType.BLAST_SNIPER,false,SystemLanguage.English),Is.EqualTo("B.P."));
        Assert.That(WeaponText.ForLanguage(GunType.BLAST_SNIPER,true,SystemLanguage.ChineseSimplified),Is.EqualTo("爆炸穿透 - 命中时爆炸，击败敌人时穿透。"));
        Assert.That(WeaponText.ForLanguage(GunType.BLAST_SNIPER,true,SystemLanguage.ChineseTraditional),Is.EqualTo("爆炸穿透 - 命中時爆炸，擊敗敵人時穿透。"));
        Assert.That(WeaponText.ForLocaleCode((GunType)99,false,"en"),Is.Empty);Assert.That(WeaponText.ForLocaleCode((GunType)99,true,"en"),Is.Null);
        Assert.That(WeaponText.ForLocaleCode(GunType.SINGLE,false,"missing"),Is.EqualTo("Single"));
    }
    void AssertChineseGlyphs(TMPro.TMP_Text text,bool checkBounds=false)
    {
        if(Locale!=3&&Locale!=4)return;
        Assert.That(text.font.sourceFontFile.name,Is.EqualTo("NotoSansSC-Bold"));Assert.That(text.font.atlasPopulationMode,Is.EqualTo(TMPro.AtlasPopulationMode.Dynamic));Assert.That(text.fontSharedMaterial.GetTexture("_MainTex"),Is.SameAs(text.font.atlasTexture));
        text.ForceMeshUpdate(true,true);Assert.That(text.textInfo.characterCount,Is.EqualTo(text.text.Length));
        foreach(var ch in text.textInfo.characterInfo.Take(text.textInfo.characterCount))
        {
            Assert.That(ch.character,Is.EqualTo(text.text[ch.index]));if(char.IsWhiteSpace(ch.character))continue;
            Assert.That(ch.isVisible,Is.True,"missing rendered "+ch.character);
            if(checkBounds){Assert.That(ch.bottomLeft.x,Is.GreaterThanOrEqualTo(text.rectTransform.rect.xMin-2));Assert.That(ch.topRight.x,Is.LessThanOrEqualTo(text.rectTransform.rect.xMax+text.fontSize*.25f));Assert.That(ch.bottomLeft.y,Is.GreaterThanOrEqualTo(text.rectTransform.rect.yMin-2));}Assert.That(ch.textElement.glyph.glyphRect.width,Is.GreaterThan(0),"empty glyph "+ch.character);
        }
    }
    IEnumerator Click(Component target,Vector2? position=null)
    {
        Assert.That(target.gameObject.activeInHierarchy,Is.True,target.name);Canvas.ForceUpdateCanvases();var module=EventSystem.current.GetComponent<StandaloneInputModule>();var mouse=module.gameObject.AddComponent<ForestFeedbackMouseFixture>();module.inputOverride=mouse;
        try
        {
            var rect=(RectTransform)target.transform;mouse.Position=position??RectTransformUtility.WorldToScreenPoint(null,rect.TransformPoint(rect.rect.center));var hits=new List<RaycastResult>();EventSystem.current.RaycastAll(new PointerEventData(EventSystem.current){position=mouse.Position},hits);
            Assert.That(hits.FirstOrDefault().gameObject?.GetComponentInParent(target.GetType()),Is.SameAs(target),string.Join("|",hits.Take(5).Select(h=>h.gameObject.name)));
            mouse.Down=true;mouse.Held=true;yield return null;mouse.Down=false;mouse.Held=false;mouse.Up=true;yield return null;mouse.Up=false;yield return null;
        }
        finally{module.inputOverride=null;UnityEngine.Object.Destroy(mouse);}
    }
    IEnumerator Open(){yield return Click(UnityEngine.Object.FindObjectsByType<Button>(FindObjectsInactive.Include,FindObjectsSortMode.None).Single(b=>b.name=="Gun_Btn"));yield return new WaitForSecondsRealtime(.6f);}
    Dictionary<SfxType,int> Frames=>(Dictionary<SfxType,int>)typeof(Sound_manager).GetField("lastPlayedFrame",BindingFlags.Instance|BindingFlags.NonPublic).GetValue(Sound_manager.instance);
    IEnumerator Capture(string name){yield return new WaitForSecondsRealtime(.1f);ScreenCapture.CaptureScreenshot(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/visual/weapon-detail-"+name+"-gpu.png")));yield return new WaitForSecondsRealtime(.2f);}
    [UnityTest] public IEnumerator ActualInventoryClickUsesOriginalDescriptionButtonSoundAndMuteDragGuards()
    {
        var g=c.Guns;c.State.Owned_Gun_list[2]=14;g.ReloadGunUI();yield return Open();var item=g.gunItemList.ActiveItems.Single(i=>i.ListIndex==2);var ui=g.gun_info_ui;Setting.instance.PersistPreferences=false;Setting.instance.is_SFX_Mute=false;
        yield return new WaitForSecondsRealtime(.08f);Frames.Clear();string before=LogicalState();yield return Click(item);
        Assert.That(ui.gameObject.activeInHierarchy,Is.True);Assert.That(ui.Explain_txt.text,Is.EqualTo(Expected(GunType.EXPLOSIVE,true)));Assert.That(Frames.ContainsKey(SfxType.Button),Is.True,"native Button1 sound must be routed by actual inventory click");Assert.That(LogicalState(),Is.EqualTo(before));yield return Capture("explosive-info");
        yield return Click(ui.GetComponentsInChildren<Button>(true).Single(b=>b.name=="Close_Btn"));Assert.That(ui.gameObject.activeSelf,Is.False);
        Setting.instance.is_SFX_Mute=true;Frames.Clear();yield return Click(item);Assert.That(ui.gameObject.activeSelf,Is.True);Assert.That(Frames.ContainsKey(SfxType.Button),Is.False);ui.Close();
        Setting.instance.is_SFX_Mute=false;Frames.Clear();var data=new PointerEventData(EventSystem.current);ExecuteEvents.Execute(item.gameObject,data,ExecuteEvents.beginDragHandler);ExecuteEvents.Execute(item.gameObject,data,ExecuteEvents.pointerClickHandler);Assert.That(ui.gameObject.activeSelf,Is.False);Assert.That(Frames.ContainsKey(SfxType.Button),Is.False);item.ResetDrag();
        item.BeginAutoMerge();ExecuteEvents.Execute(item.gameObject,data,ExecuteEvents.pointerClickHandler);Assert.That(ui.gameObject.activeSelf,Is.False);Assert.That(Frames.ContainsKey(SfxType.Button),Is.False);item.EndAutoMerge();
    }
    [UnityTest] public IEnumerator All65AcquiredTypesAndOriginalAnimationAutohideRestartAndPausedLifetime()
    {
        var g=c.Guns;var ui=g.newGun_ui;string before=LogicalState();
        for(int n=0;n<65;n++){ui.Reload(n);Assert.That(ui.Type_txt.text,Is.EqualTo(Expected(g.Gun_list[n].type,false)),"gun"+n);Assert.That(ui.Gun_img.sprite,Is.SameAs(g.Gun_sprites[n]));Assert.That(ui.Shadow_img.sprite,Is.SameAs(g.Gun_sprites[n]));Assert.That(ui.Degree_objs.Length,Is.EqualTo(7),"preserve original acquired popup D..SSS markers");for(int j=0;j<ui.Degree_objs.Length;j++)Assert.That(ui.Degree_objs[j].activeSelf,Is.EqualTo(j==n/5));}
        var animator=ui.GetComponent<Animator>();Assert.That(animator.runtimeAnimatorController.name,Is.EqualTo("NewGun"));Assert.That(animator.runtimeAnimatorController.animationClips.Single().name,Is.EqualTo("Open"));Assert.That(animator.runtimeAnimatorController.animationClips.Single().length,Is.EqualTo(2f));
        yield return new WaitForSecondsRealtime(.7f);Assert.That(animator.GetCurrentAnimatorStateInfo(0).normalizedTime,Is.GreaterThan(.2f));yield return Capture("newgun-open");
        var backgroundButton=ui.GetComponentsInChildren<Button>(true).Single(b=>b.name=="Background");Assert.That(backgroundButton.gameObject.activeSelf,Is.False,"original toast is non-modal");Assert.That(ui.GetComponent<Destroy>().Destroy_Time,Is.EqualTo(2f));
        yield return new WaitForSeconds(1.2f);Assert.That(ui.gameObject.activeSelf,Is.False,"original scaled2sec lifetime hides the toast");
        ui.Reload(14);yield return null;Assert.That(ui.gameObject.activeSelf,Is.True);Assert.That(animator.GetCurrentAnimatorStateInfo(0).normalizedTime,Is.LessThan(.15f),"original off/on must restart Open");Assert.That(ui.Type_txt.text,Is.EqualTo(Expected(GunType.EXPLOSIVE,false)));AssertChineseGlyphs(ui.Type_txt);
        Time.timeScale=0;yield return new WaitForSecondsRealtime(2.2f);Assert.That(ui.gameObject.activeSelf,Is.True);Time.timeScale=1;yield return new WaitForSeconds(2.2f);Assert.That(ui.gameObject.activeSelf,Is.False);Assert.That(LogicalState(),Is.EqualTo(before));
    }
}
