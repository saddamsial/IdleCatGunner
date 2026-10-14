using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using CatGunner.Runtime;
using NUnit.Framework;
using TMPro;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;
using UnityEngine.UI;

public sealed class WeaponStaticTextTests
{
    [Serializable] sealed class FillSnapshot{public float m_PixelsPerUnitMultiplier;}
    string folder;GameClient client;ClientPresentation presentation;Transform inventory;bool background;
    string Report(string name)=>Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/"+name));
    void Configure(Scene scene,LoadSceneMode mode){if(scene.name=="GameClient")scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single().SaveFolderOverride=folder;}
    [UnitySetUp] public IEnumerator Setup()
    {
        background=Application.runInBackground;Application.runInBackground=true;folder=Path.Combine(Application.temporaryCachePath,"WeaponStaticText-"+Guid.NewGuid().ToString("N"));
        SceneManager.sceneLoaded+=Configure;yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();client=GameClient.Instance;
        client.DailyLogin.Close();client.Tutorial.SetCleared();ForestRuntimeAcceptance.IsGaming=false;
        presentation=client.GetComponent<ClientPresentation>();inventory=client.Slider.GetComponentInParent<Canvas>().GetComponentsInChildren<Transform>(true).Single(t=>t.name=="Gun_UI  (SafeArea)");
    }
    [UnityTearDown] public IEnumerator Cleanup(){Time.timeScale=1;yield return SceneManager.LoadSceneAsync("TargetPreview");SceneManager.sceneLoaded-=Configure;Application.runInBackground=background;if(Directory.Exists(folder))Directory.Delete(folder,true);}
    TMP_Text Label(string path)=>inventory.Find(path).GetComponent<TMP_Text>();
    IEnumerator Capture(string name){yield return new WaitForEndOfFrame();ScreenCapture.CaptureScreenshot(Report("visual/weapon-static-text-"+name+"-gpu.png"));yield return new WaitForSecondsRealtime(.2f);}
    IEnumerator Click(Button target)
    {
        Assert.That(target.gameObject.activeInHierarchy,Is.True,target.name);Canvas.ForceUpdateCanvases();var module=EventSystem.current.GetComponent<StandaloneInputModule>();var mouse=module.gameObject.AddComponent<ForestFeedbackMouseFixture>();module.inputOverride=mouse;
        try
        {
            var rect=(RectTransform)target.transform;mouse.Position=RectTransformUtility.WorldToScreenPoint(null,rect.TransformPoint(rect.rect.center));var hits=new List<RaycastResult>();EventSystem.current.RaycastAll(new PointerEventData(EventSystem.current){position=mouse.Position},hits);
            Assert.That(hits.FirstOrDefault().gameObject?.GetComponentInParent<Button>(),Is.SameAs(target),string.Join("|",hits.Take(5).Select(h=>h.gameObject.name)));
            mouse.Down=true;mouse.Held=true;yield return null;mouse.Down=false;mouse.Held=false;mouse.Up=true;yield return null;mouse.Up=false;yield return null;
        }
        finally{module.inputOverride=null;UnityEngine.Object.Destroy(mouse);}
    }
    [UnityTest] public IEnumerator LocalizedInventoryInformationCollectionKeepTransactionsAndUserFill()
    {
        client.State.Dia=99;client.NotifyTutorialCurrencyChanged();var owned=(int[])client.State.Owned_Gun_list.Clone();var selected=(int[])client.State.Selected_items.Clone();var collected=(bool[])client.State.Gun_Collect.Clone();
        var data=WeaponStaticText.Load();int locale=Array.IndexOf(data.LocaleCodes,WeaponText.LocaleCode(Application.systemLanguage));
        foreach(var row in data.Rows){var root=row.Scope=="Inventory"?inventory:presentation.DrawInformation.transform;Assert.That(root.Find(row.Path).GetComponent<TMP_Text>().text,Is.EqualTo(row.Values[locale]),row.Key+" binds at normal startup");}
        presentation.RefreshWeaponStaticText(SystemLanguage.ChineseSimplified);
        var canvas=client.Slider.GetComponentInParent<Canvas>();yield return Click(canvas.GetComponentsInChildren<Button>(true).Single(b=>b.name=="Gun_Btn"));yield return new WaitForSecondsRealtime(.6f);
        const string menu="GunList_UI/Panel/Menu (Gun List)/";
        Assert.That(Label(menu+"I2_txt").text,Is.EqualTo("拖动枪械进行装备。"));Assert.That(Label(menu+"Explain").text,Is.EqualTo("拖动相同等级的枪进行合成。"));
        Assert.That(Label(menu+"Info_Btn/I2_txt(Outline)").text,Is.EqualTo("信息"));Assert.That(Label(menu+"Collection_Btn/I2_txt(Outline)").text,Is.EqualTo("图鉴"));
        yield return Capture("inventory");yield return Click(inventory.GetComponentsInChildren<Button>(true).Single(b=>b.name=="Info_Btn"));
        var title=presentation.DrawInformation.transform.Find("Panel/I2_txt(Outline) (1)").GetComponent<TMP_Text>();Assert.That(title.text,Is.EqualTo("武器抽卡"));yield return Capture("information");
        foreach(var text in new[]{Label(menu+"I2_txt"),Label(menu+"Explain"),title})
        {
            text.ForceMeshUpdate();foreach(char ch in text.text.Where(ch=>!char.IsWhiteSpace(ch)))Assert.That(text.font.HasCharacter(ch,true,true),Is.True,"glyph "+ch);
            Assert.That(text.isTextOverflowing,Is.False,text.text+" fits source rectangle");
        }
        yield return Click(presentation.DrawInformation.GetComponentsInChildren<Button>(true).Single(b=>b.name=="Close_Btn"));Assert.That(presentation.DrawInformation.activeSelf,Is.False);
        yield return Click(inventory.GetComponentsInChildren<Button>(true).Single(b=>b.name=="Collection_Btn"));var collection=presentation.Collection;Assert.That(collection.Gun_Item_list.Length,Is.EqualTo(65));
        yield return Click(collection.Gun_Item_list[0].GetComponent<Button>());Assert.That(client.Guns.gun_info_ui.gameObject.activeInHierarchy,Is.True);Assert.That(client.Guns.gun_info_ui.Gun_img.sprite,Is.SameAs(client.Guns.Gun_sprites[0]));client.Guns.gun_info_ui.Close();
        yield return Click(collection.GetComponentsInChildren<Button>(true).Single(b=>b.name=="Close_Btn"));Assert.That(collection.gameObject.activeSelf,Is.False);
        yield return Click(inventory.GetComponentsInChildren<Button>(true).Single(b=>b.name=="Info_Btn"));Assert.That(title.text,Is.EqualTo("武器抽卡"));yield return Click(presentation.DrawInformation.GetComponentsInChildren<Button>(true).Single(b=>b.name=="Close_Btn"));
        Assert.That(client.State.Dia,Is.EqualTo(99));Assert.That(client.State.Owned_Gun_list,Is.EqualTo(owned));Assert.That(client.State.Selected_items,Is.EqualTo(selected));Assert.That(client.State.Gun_Collect,Is.EqualTo(collected));
        Assert.That(Label(menu+"Currency/Dia/Price_txt").text,Is.EqualTo("99"));Assert.That(Label(menu+"Draw/Draw_Btn/Price_txt").color,Is.EqualTo(client.UpgradePanels[0].Color_Disable));
        Assert.That(JsonUtility.FromJson<FillSnapshot>(JsonUtility.ToJson(client.Slider.Value_Fill)).m_PixelsPerUnitMultiplier,Is.EqualTo(10));Assert.That(client.Slider.Value_Fill.rectTransform.rect.height,Is.EqualTo(37));
        File.WriteAllText(Report("weapon-static-text-interaction.txt"),"normal system-language startup; Chinese original labels; actual mouse inventory/info/close/reopen/collection/detail/close; source rectangles fit; glyphs present; 99 diamonds and gun state unchanged; user PPU10 and height37 preserved");
    }
    [UnityTest] public IEnumerator LanguageRefreshRestoresFontsAndLeavesDynamicLabelsOwned()
    {
        const string path="GunList_UI/Panel/Menu (Gun List)/I2_txt";var text=Label(path);presentation.RefreshWeaponStaticText(SystemLanguage.English);var originalFont=text.font;var originalMaterial=text.fontSharedMaterial;
        var price=Label("GunList_UI/Panel/Menu (Gun List)/Draw/Draw_Btn/Price_txt");string value=price.text;
        var preview=Label("GunList_UI/StepUp_Banner/Panel/Profile/GunItem_Demo/Type_txt");string previewValue=preview.text;
        presentation.RefreshWeaponStaticText(SystemLanguage.ChineseSimplified);Assert.That(text.font.name,Is.EqualTo("StarChineseFallback"));var material=text.fontSharedMaterial;
        presentation.RefreshWeaponStaticText(SystemLanguage.ChineseTraditional);Assert.That(text.text,Is.EqualTo("拖動槍械進行裝備。"));Assert.That(text.fontSharedMaterial,Is.SameAs(material),"reuse runtime material on refresh");
        presentation.RefreshWeaponStaticText(SystemLanguage.English);Assert.That(text.text,Is.EqualTo("Drag a gun to equip."));Assert.That(text.font,Is.SameAs(originalFont));Assert.That(text.fontSharedMaterial,Is.SameAs(originalMaterial));
        presentation.RefreshWeaponStaticText(SystemLanguage.Unknown);Assert.That(text.text,Is.EqualTo("Drag a gun to equip."));
        Assert.That(price.text,Is.EqualTo(value));Assert.That(preview.text,Is.EqualTo(previewValue),"dynamic preview owner excluded");
        yield return null;Assert.That(material==null,Is.True,"temporary Chinese material released");
    }
}
