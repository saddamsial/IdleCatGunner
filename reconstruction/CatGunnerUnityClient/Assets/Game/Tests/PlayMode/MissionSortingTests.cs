using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using CatGunner.Runtime;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;
using UnityEngine.UI;

public sealed class MissionSortingTests
{
    string folder; GameClient client; bool background;
    void Configure(Scene s,LoadSceneMode mode){if(s.name=="GameClient")s.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single().SaveFolderOverride=folder;}
    [UnitySetUp] public IEnumerator Setup(){background=Application.runInBackground;Application.runInBackground=true;Time.timeScale=1;folder=Path.Combine(Application.temporaryCachePath,"MissionSorting-"+Guid.NewGuid().ToString("N"));SceneManager.sceneLoaded+=Configure;yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();client=GameClient.Instance;ForestRuntimeAcceptance.IsGaming=false;client.MissionUI.NewSeason_Start();client.MissionUI.Panel_Open();yield return null;yield return null;}
    [UnityTearDown] public IEnumerator Cleanup(){Time.timeScale=1;if(EventSystem.current!=null){var module=EventSystem.current.GetComponent<StandaloneInputModule>();if(module!=null)module.inputOverride=null;}yield return TestSceneLoader.LoadAsync("TargetPreview");SceneManager.sceneLoaded-=Configure;if(Directory.Exists(folder))Directory.Delete(folder,true);Application.runInBackground=background;}
    int[] Order()=>client.MissionUI.Mission_Item_UI_List.OrderBy(r=>r.transform.GetSiblingIndex()).Select(r=>r.Mission_Index).ToArray();
    int ModelCall(string name,int index){var method=typeof(Missions).GetMethod(name);Assert.That(method,Is.Not.Null,name);return (int)method.Invoke(client.Missions,new object[]{index});}
    void Counters(int tree,int stage,int rebirth,int mine){client.State.Mission_TreeCount_Value=tree;client.State.Mission_StageClear_Value=stage;client.State.Mission_Rebirth_Value=rebirth;client.State.Mission_PlayMine_Value=mine;client.MissionUI.UI_Reload();}
    static readonly int[] Mixed={0,6,12,18,1,2,3,4,5,20,21,7,8,9,10,11,22,13,14,15,16,17,19};
    void Capture(string suffix){ScreenCapture.CaptureScreenshot(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/visual/mission-sorting-"+suffix+"-gpu.png")));}
    static Button ClaimButton(Mission_Item_UI row)=>row.GetComponentsInChildren<Button>(true).Single(b=>Enumerable.Range(0,b.onClick.GetPersistentEventCount()).Any(i=>b.onClick.GetPersistentTarget(i)==row&&b.onClick.GetPersistentMethodName(i)=="Reward_Get"));
    static IEnumerator Click(Button b)
    {
        Canvas.ForceUpdateCanvases();var module=EventSystem.current.GetComponent<StandaloneInputModule>();var mouse=module.gameObject.AddComponent<ForestFeedbackMouseFixture>();module.inputOverride=mouse;
        var rt=(RectTransform)b.transform;mouse.Position=RectTransformUtility.WorldToScreenPoint(null,rt.TransformPoint(rt.rect.center));var hits=new List<RaycastResult>();EventSystem.current.RaycastAll(new PointerEventData(EventSystem.current){position=mouse.Position},hits);
        Assert.That(hits.Count,Is.GreaterThan(0));Assert.That(hits[0].gameObject.GetComponentInParent<Button>(),Is.SameAs(b),"Sorted row must own top raycast");
        yield return null;mouse.Down=true;mouse.Held=true;yield return null;mouse.Down=false;mouse.Held=false;mouse.Up=true;yield return null;mouse.Up=false;yield return null;module.inputOverride=null;UnityEngine.Object.Destroy(mouse);
    }
    [UnityTest] public IEnumerator MixedCountersSortReadyRowsByTypeThenOriginalIndexWithoutRebinding()
    {
        var m=client.MissionUI;var identities=m.Mission_Item_UI_List.Select(r=>r.GetInstanceID()).ToArray();Counters(100,5,1,1);yield return null;yield return null;
        Assert.That(Order(),Is.EqualTo(Mixed));for(int n=0;n<4;n++){m.UI_Reload();yield return null;Assert.That(Order(),Is.EqualTo(Mixed));}
        Assert.That(m.Mission_Item_UI_List.Select(r=>r.GetInstanceID()),Is.EqualTo(identities));Assert.That(m.Mission_Item_UI_List.Select(r=>r.Mission_Index),Is.EqualTo(Enumerable.Range(0,23)));Capture("ready-order");yield return null;
    }
    [UnityTest] public IEnumerator LuxuryAndVipPrioritiesKeepOriginalEligibilityButCannotGrantPaidRewards()
    {
        Counters(int.MaxValue,int.MaxValue,int.MaxValue,int.MaxValue);var s=client.State;var m=client.MissionUI;s.Mission_ExpGet[0]=true;m.UI_Reload();yield return null;
        Assert.That(Order(),Is.EqualTo(Enumerable.Range(1,19).Concat(new[]{0,20,21,22})));Assert.That(ModelCall("MissionStatus",0),Is.EqualTo(3));Assert.That(ModelCall("MissionSortPriority",0),Is.EqualTo(1));Assert.That(ModelCall("MissionSortPriority",20),Is.EqualTo(1));
        s.Mission_is_Luxury=true;m.UI_Reload();yield return null;Assert.That(Order()[0],Is.Zero);Assert.That(ModelCall("MissionSortPriority",0),Is.Zero);
        s.Mission_ExpGet[1]=s.Mission_ExpGet_Luxury[1]=true;s.Mission_is_Vip=true;m.UI_Reload();yield return null;
        Assert.That(Order(),Is.EqualTo(new[]{0,2,3,4,5,20,21,6,7,8,9,10,11,22,12,13,14,15,16,17,18,19,1}));Assert.That(ModelCall("MissionSortPriority",1),Is.EqualTo(2));
        int xp=s.Mission_Reward_Exp,level=s.Mission_Reward_Lv,dia=s.Dia;m.Mission_Item_UI_List[20].Reward_Get();m.Mission_Item_UI_List[0].Reward_Get_Luxury();Assert.That(s.Mission_Reward_Exp,Is.EqualTo(xp));Assert.That(s.Mission_Reward_Lv,Is.EqualTo(level));Assert.That(s.Dia,Is.EqualTo(dia));Assert.That(s.Mission_ExpGet[20],Is.False);Assert.That(s.Mission_ExpGet_Luxury[0],Is.False);
    }
    [UnityTest] public IEnumerator SortedOriginalButtonsClaimTheirOwnTaskExactlyOnceAndPersist()
    {
        Counters(0,0,1,1);yield return null;yield return null;Assert.That(Order().Take(2),Is.EqualTo(new[]{12,18}));int xp=client.State.Mission_Reward_Exp,dia=client.State.Dia;
        yield return Click(ClaimButton(client.MissionUI.Mission_Item_UI_List[12]));Assert.That(client.State.Mission_ExpGet[12],Is.True);Assert.That(client.State.Mission_ExpGet[0],Is.False);yield return null;yield return null;Assert.That(Order().Take(2),Is.EqualTo(new[]{18,12}));
        yield return Click(ClaimButton(client.MissionUI.Mission_Item_UI_List[18]));int earned=client.Missions.Catalogue.Missions[12].ExpValue+client.Missions.Catalogue.Missions[18].ExpValue;Assert.That(client.State.Mission_Reward_Exp,Is.EqualTo(xp+earned));Assert.That(client.State.Dia,Is.EqualTo(dia));client.MissionUI.Mission_Item_UI_List[12].Reward_Get();Assert.That(client.State.Mission_Reward_Exp,Is.EqualTo(xp+earned));
        var saved=new SaveArchive(folder).Load();Assert.That(saved.Mission_ExpGet[12]&&saved.Mission_ExpGet[18],Is.True);Assert.That(saved.Mission_ExpGet[0],Is.False);Capture("claimed-order");yield return null;
    }
    [UnityTest] public IEnumerator ReopeningAndColdReloadKeepCatalogIdentityAndRestoreDerivedOrder()
    {
        Counters(100,5,1,1);client.SaveNow();for(int i=0;i<3;i++){client.MissionUI.Panel_Close();yield return null;client.MissionUI.Panel_Open();yield return null;yield return null;Assert.That(Order(),Is.EqualTo(Mixed));}
        yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();client=GameClient.Instance;ForestRuntimeAcceptance.IsGaming=false;client.MissionUI.Panel_Open();yield return null;yield return null;Assert.That(Order(),Is.EqualTo(Mixed));Assert.That(client.MissionUI.Mission_Item_UI_List.Select(r=>r.Mission_Index),Is.EqualTo(Enumerable.Range(0,23)));
    }
    [UnityTest] public IEnumerator NativeStatusChecksCounterBeforeClaimFlagsAndDoesNotUseSeasonDate()
    {
        Counters(0,0,0,0);client.State.Mission_ExpGet[0]=client.State.Mission_ExpGet_Luxury[0]=true;Assert.That(ModelCall("MissionStatus",0),Is.Zero);Counters(100,0,0,0);Assert.That(ModelCall("MissionStatus",0),Is.EqualTo(2));
        client.State.Mission_ExpGet_Luxury[0]=false;Assert.That(ModelCall("MissionStatus",0),Is.EqualTo(3));client.State.Mission_ExpGet[0]=false;client.State.Mission_is_SeasonStart=false;Assert.That(ModelCall("MissionStatus",0),Is.EqualTo(1));Assert.That(client.Missions.ClaimMission(0),Is.False);yield return null;
    }
    [UnityTest] public IEnumerator ExistingBlueAlertPulseMatchesSerializedScaleAndScaledPauseReenable()
    {
        var m=client.MissionUI;var pulse=m.Mission_Alert_obj.GetComponent<WeeklyUiTween>();Assert.That(pulse,Is.Not.Null);Assert.That(pulse.AnimationType,Is.EqualTo(5));Assert.That(pulse.Duration,Is.EqualTo(1));Assert.That(pulse.EndScale,Is.EqualTo(1.1f));Assert.That(pulse.SourceScale,Is.EqualTo(Vector3.one*.89393f));Assert.That(pulse.EaseType,Is.EqualTo(6));Assert.That(pulse.LoopType,Is.EqualTo(1));
        m.Mission_Alert_obj.SetActive(false);Time.timeScale=0;Counters(100,0,0,0);m.Alert_Check();yield return null;Assert.That(pulse.transform.localScale,Is.EqualTo(pulse.SourceScale));m.Panel_Close();Capture("alert-small");yield return null;Time.timeScale=1;
        float min=pulse.transform.localScale.x,max=min;float begin=Time.time,deadline=Time.realtimeSinceStartup+5;
        while(Time.time-begin<1.05f&&Time.realtimeSinceStartup<deadline){yield return null;min=Mathf.Min(min,pulse.transform.localScale.x);max=Mathf.Max(max,pulse.transform.localScale.x);}
        Assert.That(max,Is.GreaterThan(1.09f));Assert.That(min,Is.LessThan(.91f));Time.timeScale=0;yield return null;Vector3 held=pulse.transform.localScale;Capture("alert-large");yield return null;yield return new WaitForSecondsRealtime(.15f);Assert.That(pulse.transform.localScale,Is.EqualTo(held));
        m.Mission_Alert_obj.SetActive(false);Assert.That(pulse.transform.localScale,Is.EqualTo(pulse.SourceScale));m.Alert_Check();yield return null;Assert.That(pulse.transform.localScale,Is.EqualTo(pulse.SourceScale));Time.timeScale=1;
    }
}
