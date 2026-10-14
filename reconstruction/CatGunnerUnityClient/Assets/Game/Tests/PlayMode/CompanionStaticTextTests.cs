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

public sealed class CompanionStaticTextTests
{
    [Serializable] sealed class FillSnapshot{public float m_PixelsPerUnitMultiplier;}
    string folder; GameClient client; Transform canvas; bool background;
    string Report(string name)=>Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/"+name));
    void Configure(Scene scene,LoadSceneMode mode)
    {
        if(scene.name=="GameClient")scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single().SaveFolderOverride=folder;
    }
    [UnitySetUp] public IEnumerator Setup()
    {
        background=Application.runInBackground;Application.runInBackground=true;
        folder=Path.Combine(Application.temporaryCachePath,"CompanionText-"+Guid.NewGuid().ToString("N"));
        SceneManager.sceneLoaded+=Configure;yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();
        client=GameClient.Instance;client.DailyLogin.Close();client.Tutorial.SetCleared();ForestRuntimeAcceptance.IsGaming=false;
        canvas=client.Slider.GetComponentInParent<Canvas>().transform;
    }
    [UnityTearDown] public IEnumerator Cleanup()
    {
        Time.timeScale=1;yield return TestSceneLoader.LoadAsync("TargetPreview");SceneManager.sceneLoaded-=Configure;
        Application.runInBackground=background;if(Directory.Exists(folder))Directory.Delete(folder,true);
    }
    TMP_Text Label(string path)=>canvas.Find(path).GetComponent<TMP_Text>();
    Button ButtonAt(string path)=>canvas.Find(path).GetComponent<Button>();
    GameObject Information(GameObject page)=>(GameObject)page.GetComponentsInChildren<Button>(true).Single(b=>b.name=="Info_Btn").onClick.GetPersistentTarget(0);
    IEnumerator Click(Button target)
    {
        Assert.That(target.gameObject.activeInHierarchy,Is.True,target.name);Canvas.ForceUpdateCanvases();
        var module=EventSystem.current.GetComponent<StandaloneInputModule>();var mouse=module.gameObject.AddComponent<ForestFeedbackMouseFixture>();module.inputOverride=mouse;
        try
        {
            var rect=(RectTransform)target.transform;
            var point=target.name=="Background"?new Vector2(rect.rect.xMin+10,rect.rect.yMax-10):rect.rect.center;
            mouse.Position=RectTransformUtility.WorldToScreenPoint(null,rect.TransformPoint(point));
            var hits=new List<RaycastResult>();EventSystem.current.RaycastAll(new PointerEventData(EventSystem.current){position=mouse.Position},hits);
            Assert.That(hits.FirstOrDefault().gameObject?.GetComponentInParent<Button>(),Is.SameAs(target),string.Join("|",hits.Take(5).Select(h=>h.gameObject.name)));
            mouse.Down=true;mouse.Held=true;yield return null;mouse.Down=false;mouse.Held=false;mouse.Up=true;yield return null;mouse.Up=false;yield return null;
        }
        finally{module.inputOverride=null;UnityEngine.Object.Destroy(mouse);}
    }
    IEnumerator Capture(string name)
    {
        yield return new WaitForEndOfFrame();ScreenCapture.CaptureScreenshot(Report("visual/companion-text-"+name+"-gpu.png"));yield return new WaitForSecondsRealtime(.2f);
    }
    void Apply(SystemLanguage language)=>CompanionStaticText.Load().Apply(canvas,language);
    void AssertChineseVisible(Transform root)
    {
        foreach(var row in CompanionStaticText.Load().Rows)
        {
            var text=Label(row.Path);if(!text.gameObject.activeInHierarchy||!text.transform.IsChildOf(root))continue;
            text.ForceMeshUpdate();foreach(char ch in text.text.Where(ch=>!char.IsWhiteSpace(ch)))Assert.That(text.font.HasCharacter(ch,true,true),Is.True,"glyph "+ch);
            Assert.That(text.isTextOverflowing,Is.False,row.Path+": "+text.text);
        }
    }
    [UnityTest] public IEnumerator LabelsFollowOriginalTermsAtNormalStartup()
    {
        var data=CompanionStaticText.Load();int locale=Array.IndexOf(data.LocaleCodes,WeaponText.LocaleCode(Application.systemLanguage));
        foreach(var row in data.Rows)Assert.That(Label(row.Path).text,Is.EqualTo(row.Values[locale]),row.Key+" normal startup binding");
        Assert.That(client.PetUI.Pet_UI_obj.transform.Find("Panel/Collection_Btn").gameObject.activeSelf,Is.False,"original hidden legacy gun button stays hidden");
        Assert.That(JsonUtility.FromJson<FillSnapshot>(JsonUtility.ToJson(client.Slider.Value_Fill)).m_PixelsPerUnitMultiplier,Is.EqualTo(10));
        Assert.That(client.Slider.Value_Fill.rectTransform.rect.height,Is.EqualTo(37));yield return null;
    }
    [UnityTest] public IEnumerator FishInformationAndDetailReopenKeepProbabilitiesAndInventory()
    {
        Apply(SystemLanguage.ChineseSimplified);var fish=client.Fish;var oldInventory=fish.Inventory.ToArray();var diamonds=client.State.Dia;
        fish.ReloadFishUI();yield return new WaitForSecondsRealtime(.4f);
        Assert.That(Label("SafeArea/Fish_UI  (SafeArea)/Fish_UI/Fish_Panel/Info_Btn/I2_txt(Outline)").text,Is.EqualTo("信息"));
        AssertChineseVisible(fish.fish_ui_obj.transform);yield return Capture("fish");
        var button=fish.fish_ui_obj.GetComponentsInChildren<Button>(true).Single(b=>b.name=="Info_Btn");var popup=Information(fish.fish_ui_obj);
        var probabilities=popup.GetComponentsInChildren<TMP_Text>(true).Where(t=>t.text.Contains("%")||t.text=="-").ToDictionary(t=>t.transform,t=>t.text);
        yield return Click(button);Assert.That(popup.activeInHierarchy,Is.True);yield return Capture("fish-information");
        yield return Click(popup.GetComponentsInChildren<Button>(true).Single(b=>b.name=="Close_Btn"));Assert.That(popup.activeSelf,Is.False);
        yield return Click(button);yield return Click(popup.GetComponentsInChildren<Button>(true).Single(b=>b.name=="Background"));Assert.That(popup.activeSelf,Is.False);
        fish.fish_info_ui.Reload(0);yield return new WaitForSecondsRealtime(.4f);AssertChineseVisible(fish.fish_info_ui.transform);yield return Capture("fish-detail");
        Assert.That(fish.fish_info_ui.Damage_txt.text,Is.EqualTo("+"+fish.GetFishStat(0).Damage+"%"));fish.fish_info_ui.Close();
        foreach(var pair in probabilities)Assert.That(pair.Key.GetComponent<TMP_Text>().text,Is.EqualTo(pair.Value),"original probability table remains owned/static");
        Assert.That(fish.Inventory,Is.EqualTo(oldInventory));Assert.That(client.State.Dia,Is.EqualTo(diamonds));
    }
    [UnityTest] public IEnumerator PetInformationDetailAndAcquisitionKeepBalancesAndReopen()
    {
        Apply(SystemLanguage.ChineseSimplified);var pet=client.PetUI;var inventory=client.State.Owned_Pet_list.ToArray();var diamonds=client.State.Dia;var coins=client.State.PetCoin;
        pet.Panel_Open();yield return new WaitForSecondsRealtime(.4f);AssertChineseVisible(pet.Pet_UI_obj.transform);yield return Capture("pet");
        var popup=Information(pet.Pet_UI_obj);var info=pet.Pet_UI_obj.GetComponentsInChildren<Button>(true).Single(b=>b.name=="Info_Btn");
        yield return Click(info);Assert.That(popup.activeInHierarchy,Is.True);AssertChineseVisible(popup.transform);yield return Capture("pet-information");
        yield return Click(popup.GetComponentsInChildren<Button>(true).Single(b=>b.name=="Close_Btn"));Assert.That(popup.activeSelf,Is.False);
        yield return Click(info);yield return Click(popup.GetComponentsInChildren<Button>(true).Single(b=>b.name=="Background"));Assert.That(popup.activeSelf,Is.False);
        pet.Pet_Info_UI_Reload(0);yield return new WaitForSecondsRealtime(.4f);AssertChineseVisible(pet.pet_info_ui.transform);yield return Capture("pet-detail");
        yield return Click(pet.pet_info_ui.RightBtn_obj.GetComponent<Button>());Assert.That(pet.pet_info_ui.Pet_img.sprite,Is.SameAs(pet.Pet_sprites[1]));pet.pet_info_ui.Close();
        pet.newPet_ui.Reload(0);yield return new WaitForSecondsRealtime(.4f);AssertChineseVisible(pet.newPet_ui.transform);yield return Capture("new-pet");
        pet.newPet_ui.gameObject.SetActive(false);
        Assert.That(client.State.Owned_Pet_list,Is.EqualTo(inventory));Assert.That(client.State.Dia,Is.EqualTo(diamonds));Assert.That(client.State.PetCoin,Is.EqualTo(coins));
    }
    [UnityTest] public IEnumerator RepeatedLocaleRefreshPreservesDynamicOwnersAndReleasesFontMaterial()
    {
        Apply(SystemLanguage.English);var text=Label("SafeArea/Pet_UI (SafeArea)/Pet_UI/Panel/Explain");var font=text.font;var sourceMaterial=text.fontSharedMaterial;
        var dynamicText=canvas.GetComponentsInChildren<TMP_Text>(true).Where(t=>!CompanionStaticText.Load().Rows.Any(r=>canvas.Find(r.Path)==t.transform)).ToDictionary(t=>t,t=>t.text);
        Apply(SystemLanguage.ChineseSimplified);var material=text.fontSharedMaterial;Assert.That(text.font.name,Is.EqualTo("StarChineseFallback"));
        Apply(SystemLanguage.ChineseTraditional);Assert.That(text.fontSharedMaterial,Is.SameAs(material));
        Apply(SystemLanguage.English);Apply(SystemLanguage.Unknown);Assert.That(text.font,Is.SameAs(font));Assert.That(text.fontSharedMaterial,Is.SameAs(sourceMaterial));
        foreach(var pair in dynamicText)Assert.That(pair.Key.text,Is.EqualTo(pair.Value),"dynamic/other UI owner "+pair.Key.name);
        yield return null;Assert.That(material==null,Is.True,"runtime Chinese material released");
    }
    [UnityTest] public IEnumerator FishDeleteCancelAndNewFishKeepOriginalInventoryAndText()
    {
        Apply(SystemLanguage.ChineseSimplified);var fish=client.Fish;fish.Inventory.Add(0);fish.ReloadFishUI();yield return new WaitForSecondsRealtime(.4f);
        var before=fish.Inventory.ToArray();var target=fish.fishTank.fishPool.First(f=>f.isActive);var popup=Fish_DeleteZone.instance.deletePopup;
        popup.Show(target);yield return null;AssertChineseVisible(popup.transform);yield return Capture("fish-delete");
        yield return Click(popup.GetComponentsInChildren<Button>(true).Single(b=>b.name=="Cancel_Btn"));
        Assert.That(popup.gameObject.activeSelf,Is.False);Assert.That(target.isPendingDelete,Is.False);Assert.That(fish.Inventory,Is.EqualTo(before));
        fish.ShowNewFishPopup(0);yield return new WaitForSecondsRealtime(.4f);AssertChineseVisible(fish.new_fish_ui.transform);yield return Capture("new-fish");fish.new_fish_ui.Close();
        Assert.That(fish.Inventory,Is.EqualTo(before));
    }
}
