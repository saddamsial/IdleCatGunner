using System;using System.Collections;using System.IO;using System.Linq;using System.Collections.Generic;using CatGunner.Runtime;using NUnit.Framework;using UnityEngine;using UnityEngine.UI;using UnityEngine.SceneManagement;using UnityEngine.TestTools;using TMPro;using UnityEngine.EventSystems;using System.Reflection;
public sealed class MobilePresentationTests
{
 string folder;GameClient c;Transform canvas;bool background;
 static string Report(string n)=>Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports",n));
 ModeText Data=>JsonUtility.FromJson<ModeText>(File.ReadAllText(Report("remaining-ui-text-data.json")));
 void Independent(Scene s,LoadSceneMode m){if(s.name=="GameClient")s.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single().SaveFolderOverride=folder;}
 [UnitySetUp]public IEnumerator Setup(){background=Application.runInBackground;Application.runInBackground=true;Time.timeScale=1;folder=Path.Combine(Application.temporaryCachePath,"MobilePresentation-"+Guid.NewGuid().ToString("N"));SceneManager.sceneLoaded+=Independent;yield return SceneManager.LoadSceneAsync("GameClient");yield return ClientStartupWait.Ready();c=GameClient.Instance;canvas=c.Slider.GetComponentInParent<Canvas>().transform;ForestRuntimeAcceptance.IsGaming=false;}
 [UnityTearDown]public IEnumerator Cleanup(){yield return SceneManager.LoadSceneAsync("TargetPreview");SceneManager.sceneLoaded-=Independent;Time.timeScale=1;Application.runInBackground=background;if(Directory.Exists(folder))Directory.Delete(folder,true);}
 [UnityTest]public IEnumerator PresentRemainingPrimaryLabelsUseSourceChineseAndPreserveDynamicWallet()
 {
  var data=Data;var present=data.Rows.Where(r=>RemainingUIExt.Resolve(canvas,r)!=null).ToArray();Assert.That(present.Length,Is.EqualTo(259));
  foreach(var r in present)Assert.That(RemainingUIExt.Resolve(canvas,r).text,Is.EqualTo(data.Display(r,Application.systemLanguage)),r.Path);
  Assert.That(c.State.Dia,Is.Zero);Assert.That(c.State.PurchaseHistory,Is.Empty);yield return null;
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
 [UnityTest]public IEnumerator RepeatedLocaleBindingKeepsRectanglesAndDoesNotChangeSavedState()
 {
  var data=Data;var labels=data.Rows.Select(r=>RemainingUIExt.Resolve(canvas,r)).Where(t=>t!=null).ToArray();var sizes=labels.Select(t=>t.rectTransform.sizeDelta).ToArray();string before=SaveArchive.Encode(c.State);
  foreach(var language in new[]{SystemLanguage.English,SystemLanguage.ChineseSimplified,SystemLanguage.ChineseTraditional,Application.systemLanguage}){Assert.That(RemainingUIExt.Apply(canvas,language),Is.EqualTo(259));for(int i=0;i<labels.Length;i++)Assert.That(labels[i].rectTransform.sizeDelta,Is.EqualTo(sizes[i]));}
  Assert.That(SaveArchive.Encode(c.State),Is.EqualTo(before));yield return null;
 }
 IEnumerator Capture(string name,GameObject root)
 {
  yield return new WaitForSecondsRealtime(2);Canvas.ForceUpdateCanvases();Assert.That(root.activeInHierarchy,Is.True);var data=Data;var active=data.Rows.Select(r=>RemainingUIExt.Resolve(canvas,r)).Where(t=>t!=null&&t.gameObject.activeInHierarchy&&t.transform.IsChildOf(root.transform)).ToArray();Assert.That(active.Length,Is.GreaterThan(0));foreach(var t in active){t.ForceMeshUpdate();Assert.That(t.textInfo.characterInfo.Where(a=>a.isVisible&&a.elementType==TMP_TextElementType.Character).All(a=>a.character!='\u25a1'),Is.True,t.text);}
  yield return new WaitForEndOfFrame();ScreenCapture.CaptureScreenshot(Report("visual/mobile-ui-"+name+"-gpu.png"));yield return new WaitForSecondsRealtime(.2f);
 }
 [UnityTest]public IEnumerator ShopRebirthAndRaidMenuClicksShowOriginalTextsWithoutPurchasing()
 {
  c.DailyLogin.Close();c.Tutorial.SetCleared();c.Forest.Stage_Value_Max=400;Contents_Unlock_manager.instance.Reload();int dia=c.State.Dia,pet=c.State.PetCoin;string money=c.State.Money.Value.ToString();
  foreach(var entry in new[]{("Left_Menu","Shop_Btn","SafeArea/Shop_UI","shop"),("Left_Menu","Rebirth_Btn","Rebirth_manager/RubyUpgrade_UI","rebirth"),("Right_Menu","Raid_Btn","Contents_UI/Raid_UI/Raid_Start_UI","raid")}){var b=canvas.Find("SafeArea/Main_UI/Btn_list/"+entry.Item1+"/"+entry.Item2).GetComponent<Button>();yield return Click(b);var root=canvas.Find(entry.Item3).gameObject;yield return Capture(entry.Item4,root);root.SetActive(false);}
  var weekly=UnityEngine.Object.FindAnyObjectByType<WeeklyShop>(FindObjectsInactive.Include);weekly.Panel_Open();yield return Capture("weekly",weekly.WeeklyShop_UI);weekly.Panel_Close();
  Assert.That((c.State.Dia,c.State.PetCoin,c.State.Money.Value.ToString()),Is.EqualTo((dia,pet,money)));Assert.That(c.State.PurchaseHistory,Is.Empty);
 }
 [UnityTest]public IEnumerator DuplicateImageParentsStillBindHelperUnlockSourceTerm()
 {
  string PathFor(Transform t){var n=new List<string>();while(t!=canvas){n.Insert(0,t.name);t=t.parent;}return string.Join("/",n);}
  var row=Data.Rows.Single(r=>r.SourceComponent==130389);var text=canvas.GetComponentsInChildren<TMP_Text>(true).Single(t=>PathFor(t.transform)==row.Path);Assert.That(text.text,Is.EqualTo(Data.Display(row,Application.systemLanguage)));yield return null;
 }
 [UnityTest]public IEnumerator CashDustSlimeSourceSystemsEmitPauseAndClearWithSupportedMaterials()
 {
  var pools=UnityEngine.Object.FindObjectsByType<Particle_Polling>(FindObjectsInactive.Include,FindObjectsSortMode.None);Assert.That(pools.Length,Is.EqualTo(3));
  foreach(var pool in pools){var system=pool._particleSystem.Single();system.Stop(true,ParticleSystemStopBehavior.StopEmittingAndClear);var renderer=system.GetComponent<ParticleSystemRenderer>();Assert.That(renderer.sharedMaterial.shader.isSupported,Is.True);Assert.That(renderer.sharedMaterial.shader.name,Does.Not.Contain("InternalErrorShader"));Assert.That(renderer.sharedMaterial.mainTexture.width,Is.GreaterThan(1));pool.Spawn(c.Hero.transform.position,15);Assert.That(system.particleCount,Is.EqualTo(15));yield return new WaitForSeconds(.1f);Assert.That(system.particleCount,Is.GreaterThan(0));yield return new WaitForEndOfFrame();ScreenCapture.CaptureScreenshot(Report("visual/mobile-particle-"+pool.Particle_index+"-gpu.png"));yield return new WaitForSeconds(.2f);Time.timeScale=0;yield return null;float elapsed=system.time;yield return new WaitForSecondsRealtime(.15f);Assert.That(system.time,Is.EqualTo(elapsed).Within(.001f));Time.timeScale=1;system.Clear(true);Assert.That(system.particleCount,Is.Zero);}
 }
}
