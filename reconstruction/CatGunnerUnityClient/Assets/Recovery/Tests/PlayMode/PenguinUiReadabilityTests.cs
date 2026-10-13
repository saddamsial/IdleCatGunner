using System;using System.IO;using System.Linq;using System.Collections;
using CatGunner.Recovery;using NUnit.Framework;using TMPro;using UnityEngine;using UnityEngine.UI;using UnityEngine.SceneManagement;using UnityEngine.TestTools;
public sealed class PenguinUiReadabilityTests
{
 string folder,language;bool hadLanguage,background;RecoveryForestClient client;Canvas canvas;
 void Isolate(Scene scene,LoadSceneMode mode){if(scene.name=="RecoveredClient")scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<RecoveryForestClient>(true)).Single().SaveFolderOverride=folder;}
 [UnitySetUp]public IEnumerator Setup()
 {
  background=Application.runInBackground;Application.runInBackground=true;Time.timeScale=1;
  hadLanguage=PlayerPrefs.HasKey(RecoveryLanguage.PreferenceKey);language=PlayerPrefs.GetString(RecoveryLanguage.PreferenceKey);
  PlayerPrefs.SetString(RecoveryLanguage.PreferenceKey,"zh-CN");RecoveryLanguage.ReloadPreference();
  folder=Path.Combine(Application.temporaryCachePath,"PenguinReadability-"+Guid.NewGuid().ToString("N"));SceneManager.sceneLoaded+=Isolate;
  yield return SceneManager.LoadSceneAsync("RecoveredClient");yield return ClientStartupWait.Ready();client=RecoveryForestClient.Instance;canvas=client.Slider.GetComponentInParent<Canvas>();
  client.DailyLogin.AutoShow=false;client.DailyLogin.Close();client.Tutorial.SetCleared();client.Offline.offlinePanelUI.gameObject.SetActive(false);ForestRuntimeAcceptance.IsGaming=false;
  client.MissionUI.NewSeason_Start();client.MissionUI.Panel_Open();yield return new WaitForSecondsRealtime(.6f);
 }
 [UnityTearDown]public IEnumerator Cleanup()
 {
  Time.timeScale=1;yield return SceneManager.LoadSceneAsync("RecoveredTarget");SceneManager.sceneLoaded-=Isolate;
  if(Directory.Exists(folder))Directory.Delete(folder,true);
  if(hadLanguage)PlayerPrefs.SetString(RecoveryLanguage.PreferenceKey,language);else PlayerPrefs.DeleteKey(RecoveryLanguage.PreferenceKey);RecoveryLanguage.ReloadPreference();Application.runInBackground=background;
 }
 [UnityTest]public IEnumerator TimerTicksKeepThemedRowsRenderedWithoutRebuildingThem()
 {
  var labels=client.MissionUI.Mission_Item_UI_List.Take(3).SelectMany(r=>new TMP_Text[]{r.Name_txt,r.Explain_txt}).ToArray();
  var words=labels.Select(t=>t.text).ToArray();var materials=labels.Select(t=>t.fontSharedMaterial).ToArray();
  Assert.That(words[0],Is.EqualTo("清除冰块"));string timer=client.MissionUI.Mission_UI_Panel.Mission_Cool_txt.text;int rebuilds=0;
  void Changed(UnityEngine.Object obj){if(labels.Contains(obj as TMP_Text))rebuilds++;}
  TMPro_EventManager.TEXT_CHANGED_EVENT.Add(Changed);
  try
  {
   float end=Time.realtimeSinceStartup+3.2f;int frames=0;
   while(Time.realtimeSinceStartup<end)
   {
    yield return new WaitForEndOfFrame();frames++;
    for(int i=0;i<labels.Length;i++){Assert.That(labels[i].text,Is.EqualTo(words[i]));Assert.That(labels[i].fontSharedMaterial,Is.SameAs(materials[i]));Assert.That(labels[i].textInfo.meshInfo.Sum(m=>m.vertexCount),Is.GreaterThan(0),"Empty rendered label: "+labels[i].name);}
   }
   Assert.That(frames,Is.GreaterThan(30));Assert.That(rebuilds,Is.Zero,"A timer tick must not rebuild unchanged mission rows");
   Assert.That(client.MissionUI.Mission_UI_Panel.Mission_Cool_txt.text,Is.Not.EqualTo(timer));
  }
  finally{TMPro_EventManager.TEXT_CHANGED_EVENT.Remove(Changed);}
 }
 [UnityTest]public IEnumerator ProgressHasContrastAndStillRendersZeroPartialAndFullValues()
 {
  foreach(var row in client.MissionUI.Mission_Item_UI_List)
  {
   foreach(var hatch in row.GetComponentsInChildren<RawImage>(true))Assert.That(hatch.color.a,Is.LessThan(.25f),"Inactive rows need the same subdued stripe layer");
   foreach(var button in row.GetAble_obj.GetComponentsInChildren<Button>(true))Assert.That(Contrast(button.GetComponent<Image>().color,row.GetComponent<Image>().color),Is.GreaterThan(1.4),"Claim actions must separate from the row surface");
  }
  var body=client.MissionUI.Mission_Item_UI_List[0].Explain_txt;
  var surface=client.MissionUI.Mission_Item_UI_List[0].GetComponent<Image>();
  Assert.That(body.color.b,Is.GreaterThan(body.color.r),"The original brown body text must become blue ink, not a warning");
  foreach(var rawColor in new[]{Color.black,Color.gray})
  {
   body.color=rawColor;yield return new WaitForEndOfFrame();
   Assert.That(Mathf.Max(body.color.r,body.color.g,body.color.b)-Mathf.Min(body.color.r,body.color.g,body.color.b),Is.GreaterThan(.1f),"Runtime body colors must retain a blue hue");
   Assert.That(Contrast(body.color,surface.color),Is.GreaterThan(4.5));
  }
  var exp=client.MissionUI.Exp_Slider.Fill;var track=exp.transform.parent.GetComponent<Image>();var money=client.State.Money.Value;int dia=client.State.Dia;
  Assert.That(Contrast(exp.color,track.color),Is.GreaterThan(3));
  var rewardTrack=client.MissionUI.Mission_UI_Panel.transform.Find("Reward/Scroll View/Viewport/Content/Slider").GetComponent<Image>();
  Assert.That(Contrast(client.MissionUI.Mission_Reward_Slot_List[0].Fill.color,rewardTrack.color),Is.GreaterThan(3));
  {
   foreach(int value in new[]{0,45,100})
   {
    client.State.Mission_Reward_Exp=value;client.MissionUI.UI_Reload();yield return new WaitForEndOfFrame();var mesh=exp.canvasRenderer.GetMesh();
    Assert.That(exp.fillAmount,Is.EqualTo(value/100f));
    if(value==0)Assert.That(mesh==null||mesh.vertexCount==0,Is.True);else{Assert.That(mesh.vertexCount,Is.GreaterThan(0));Assert.That(mesh.vertices.Max(v=>v.x),Is.LessThanOrEqualTo(exp.rectTransform.rect.xMin+exp.rectTransform.rect.width*value/100f+.1f));}
   }
  }
  Assert.That(client.State.Money.Value.CompareTo(money),Is.Zero);Assert.That(client.State.Dia,Is.EqualTo(dia));
  var header=client.Offline.offlinePanelUI.transform.Find("Panel/Top").GetComponent<Image>();var title=header.GetComponentInChildren<TMP_Text>(true);
  Assert.That(Contrast(title.color,header.color),Is.GreaterThan(4.5));
 }
 [UnityTest]public IEnumerator DailyResetAndLanguageRefreshKeepRowsAndClaimsCurrent()
 {
  client.State.Mission_TreeCount_Value=100;client.Missions.Increase(0);yield return new WaitForEndOfFrame();
  var row=client.MissionUI.Mission_Item_UI_List.First(r=>client.Missions.Catalogue.Missions[r.Mission_Index].type==0);
  Assert.That(row.Value_txt.text,Does.StartWith("101/"));Assert.That(row.Fill.fillAmount,Is.EqualTo(1));
  client.State.Mission_MissionStart_Date=client.Missions.Now.AddDays(-1).ToString("O");
  yield return new WaitForSecondsRealtime(1.3f);yield return new WaitForEndOfFrame();
  Assert.That(client.State.Mission_TreeCount_Value,Is.Zero);Assert.That(row.Value_txt.text,Does.StartWith("0/"));Assert.That(row.Fill.fillAmount,Is.Zero);
  var languageUI=client.GetComponent<RecoveryLanguage>();languageUI.PersistSelection=false;
  foreach(string code in new[]{"en","zh-TW","zh-CN"})
  {
   languageUI.Select(code);yield return null;yield return new WaitForEndOfFrame();
   Assert.That(row.Name_txt.textInfo.meshInfo.Sum(m=>m.vertexCount),Is.GreaterThan(0));Assert.That(row.Explain_txt.text,Does.Not.Contain("树"));
  }
  Assert.That(row.Name_txt.text,Is.EqualTo("清除冰块"));
  client.MissionUI.Panel_Close();client.MissionUI.Panel_Open();yield return new WaitForSecondsRealtime(.4f);yield return new WaitForEndOfFrame();
  Assert.That(row.Name_txt.textInfo.meshInfo.Sum(m=>m.vertexCount),Is.GreaterThan(0));
 }
 static double Luma(Color c){double F(double v)=>v<=.04045?v/12.92:Math.Pow((v+.055)/1.055,2.4);return .2126*F(c.r)+.7152*F(c.g)+.0722*F(c.b);}
 static double Contrast(Color a,Color b){double x=Luma(a),y=Luma(b);return (Math.Max(x,y)+.05)/(Math.Min(x,y)+.05);}
}
