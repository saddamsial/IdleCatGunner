using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using CatGunner.Recovery;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;
using UnityEngine.UI;

public sealed class OriginalContentUnlockTests
{
    private static void Independent(Scene s,LoadSceneMode mode)
    {
        if(s.name!="RecoveredClient")return;
        var c=s.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<RecoveryForestClient>(true)).Single();c.Persist=false;
        foreach(var cat in c.Team.Cat_list){cat.GetComponent<ForestCombatAcceptance>().enabled=false;var movement=cat.GetComponent<ForestMovementAcceptance>();if(movement!=null)movement.enabled=false;}
    }
    private static void Click(Button b)
    {
        Canvas.ForceUpdateCanvases();var rect=(RectTransform)b.transform;var data=new PointerEventData(EventSystem.current){position=RectTransformUtility.WorldToScreenPoint(null,rect.TransformPoint(rect.rect.center))};
        var hits=new List<RaycastResult>();EventSystem.current.RaycastAll(data,hits);Assert.That(hits.Count,Is.GreaterThan(0));Assert.That(hits[0].gameObject.GetComponentInParent<Button>(),Is.SameAs(b),"Original content/lock UI must route the real top raycast");ExecuteEvents.ExecuteHierarchy(hits[0].gameObject,data,ExecuteEvents.pointerClickHandler);
    }
    private static GameObject[] Panels(RecoveryForestClient c)=>new[]{c.RebirthUI.rebirth_panel_ui.gameObject,c.MineMode.StartPanel,c.Fish.fish_ui_obj,c.BossMode.StartPanel,c.PetUI.Pet_UI_obj,c.MonsterMode.StartPanel,c.Adventure.LocalAdventureMenu,c.RaidMode.raidStart_ui.gameObject};
    [Test] public void OriginalTableKeepsSharedThresholdAndNativeTutorialAbsenceBranch()
    {
        Assert.That(Contents_Unlock_manager.Unlock_Stage_Balance,Is.EqualTo(new[]{3,4,6,10,12,12,35,40}));
        Assert.That(Contents_Unlock_manager.All_Types,Is.EqualTo(Enumerable.Range(0,8).Select(i=>(Content_Type)i).ToArray()));
        Assert.That(Contents_Unlock_manager.TutorialActive(null),Is.False);Assert.That(Contents_Unlock_manager.TutorialActive(5),Is.False);
        foreach(int step in new[]{-1,0,1,2,3,4,6})Assert.That(Contents_Unlock_manager.TutorialActive(step),Is.True);
    }
    [UnityTest] public IEnumerator OriginalEightThresholdsShowOnlyUnlockedOrNextIncludingSharedPetMonsterGate()
    {
        SceneManager.sceneLoaded+=Independent;
        try
        {
            yield return SceneManager.LoadSceneAsync("RecoveredClient");yield return ClientStartupWait.Ready();var c=RecoveryForestClient.Instance;var m=c.ContentUnlock;Assert.That(m,Is.Not.Null,"Original gate component must be reconnected");
            string before=OriginalSaveArchive.Encode(c.State);
            foreach(int display in new[]{1,2,3,4,5,6,9,10,11,12,34,35,39,40,41})
            {
                c.Forest.Stage_Value_Max=(display-1)*10;yield return null;Assert.That(Contents_Unlock_manager.MaxStage_Display,Is.EqualTo(display));
                int next=Contents_Unlock_manager.Unlock_Stage_Balance.Where(v=>v>display).DefaultIfEmpty(-1).Min();Assert.That(Contents_Unlock_manager.Next_Unlock_Stage_return(),Is.EqualTo(next));
                foreach(var item in m.Content_list)
                {
                    int stage=Contents_Unlock_manager.Unlock_Stage_return(item.Type);bool unlocked=display>=stage,pending=stage==next;
                    Assert.That(item.Btn_obj.activeSelf,Is.EqualTo(unlocked||pending),item.Type.ToString());Assert.That(item.Locked_obj.activeSelf,Is.EqualTo(pending));
                    var button=item.Btn_obj.GetComponent<Button>();Assert.That(button.onClick.GetPersistentEventCount(),Is.EqualTo(1));Assert.That(button.onClick.GetPersistentTarget(0),Is.SameAs(m));Assert.That(button.onClick.GetPersistentMethodName(0),Is.EqualTo("Content_Btn_"+item.Type));
                }
            }
            Assert.That(OriginalSaveArchive.Encode(c.State),Is.EqualTo(before),"Showing gates must not grant progress or currency");
        }
        finally{SceneManager.sceneLoaded-=Independent;}
        yield return SceneManager.LoadSceneAsync("RecoveredTarget");
    }
    [UnityTest] public IEnumerator ActualLockedRaycastShowsStageAlertThenThresholdOpensAndClosesAllEightPanels()
    {
        SceneManager.sceneLoaded+=Independent;
        try
        {
            yield return SceneManager.LoadSceneAsync("RecoveredClient");yield return ClientStartupWait.Ready();var c=RecoveryForestClient.Instance;var m=c.ContentUnlock;Assert.That(m,Is.Not.Null);var panels=Panels(c);
            foreach(var item in m.Content_list)
            {
                foreach(var panel in panels)panel.SetActive(false);
                int threshold=Contents_Unlock_manager.Unlock_Stage_return(item.Type);c.Forest.Stage_Value_Max=(threshold-2)*10;m.Reload();yield return null;
                string before=OriginalSaveArchive.Encode(c.State);Click(item.Btn_obj.GetComponent<Button>());yield return null;Assert.That(panels.All(p=>!p.activeInHierarchy),Is.True);
                var alert=UnityEngine.Object.FindAnyObjectByType<Alert>(FindObjectsInactive.Include);Assert.That(alert.gameObject.activeSelf,Is.True);Assert.That(alert.txt.text,Is.EqualTo("Unlock at Stage "+threshold));alert.gameObject.SetActive(false);
                Assert.That(OriginalSaveArchive.Encode(c.State),Is.EqualTo(before));c.Forest.Stage_Value_Max=(threshold-1)*10;m.Reload();yield return null;
                Click(item.Btn_obj.GetComponent<Button>());yield return new WaitForSeconds(.45f);Assert.That(panels[(int)item.Type].activeInHierarchy,Is.True,item.Type.ToString());
                if(item.Type==Content_Type.Fish)c.Fish.Close();else if(item.Type==Content_Type.Adventure)c.Adventure.Close();else panels[(int)item.Type].SetActive(false);
                Assert.That(panels[(int)item.Type].activeSelf,Is.False);
            }
            c.Forest.Stage_Value_Max=100;m.Reload();yield return null;
            ScreenCapture.CaptureScreenshot(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/visual/content-unlock-stage11-test-gpu.png")));yield return new WaitForSeconds(.1f);
        }
        finally{SceneManager.sceneLoaded-=Independent;}
        yield return SceneManager.LoadSceneAsync("RecoveredTarget");
    }
    [UnityTest] public IEnumerator NativeTutorialVisibilityHidesAllThenRestoresWithoutChangingTutorialSave()
    {
        SceneManager.sceneLoaded+=Independent;
        try
        {
            yield return SceneManager.LoadSceneAsync("RecoveredClient");yield return ClientStartupWait.Ready();var c=RecoveryForestClient.Instance;var m=c.ContentUnlock;Assert.That(m,Is.Not.Null);c.Forest.Stage_Value_Max=110;m.Reload();string before=OriginalSaveArchive.Encode(c.State);
            foreach(int step in new[]{0,1,2,3,4}){m.TutorialStep=()=>step;yield return null;Assert.That(m.Content_list.All(i=>!i.Btn_obj.activeSelf),Is.True);}
            m.TutorialStep=()=>5;yield return null;Assert.That(m.Content_list.Count(i=>i.Btn_obj.activeSelf),Is.EqualTo(7));
            m.TutorialStep=null;yield return null;Assert.That(m.Content_list.Count(i=>i.Btn_obj.activeSelf),Is.EqualTo(7));Assert.That(OriginalSaveArchive.Encode(c.State),Is.EqualTo(before));
        }
        finally{SceneManager.sceneLoaded-=Independent;}
        yield return SceneManager.LoadSceneAsync("RecoveredTarget");
    }
    [UnityTest] public IEnumerator IndependentColdReloadAndRebirthRetainHistoricalFrontierInsteadOfRelocking()
    {
        string folder=Path.Combine(Path.GetTempPath(),"catgunner-content-"+Guid.NewGuid().ToString("N"));
        UnityEngine.Events.UnityAction<Scene,LoadSceneMode> configure=(s,mode)=>{Independent(s,mode);if(s.name=="RecoveredClient"){var client=s.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<RecoveryForestClient>(true)).Single();client.Persist=true;client.SaveFolderOverride=folder;}};
        SceneManager.sceneLoaded+=configure;
        try
        {
            yield return SceneManager.LoadSceneAsync("RecoveredClient");yield return ClientStartupWait.Ready();var c=RecoveryForestClient.Instance;c.Forest.Stage_Now=39;c.Forest.Level_Now=0;c.Forest.Stage_Value_Max=390;c.ContentUnlock.Reload();Assert.That(c.RebirthNow(),Is.True);Assert.That(c.Forest.Stage_Now,Is.Zero);Assert.That(Contents_Unlock_manager.Is_Unlocked(Content_Type.Raid),Is.True);c.SaveNow();
            yield return SceneManager.LoadSceneAsync("RecoveredTarget");yield return SceneManager.LoadSceneAsync("RecoveredClient");yield return ClientStartupWait.Ready();c=RecoveryForestClient.Instance;Assert.That(c.Forest.Stage_Value_Max,Is.EqualTo(390));Assert.That(c.State.Rebirth_Count,Is.EqualTo(1));Assert.That(Contents_Unlock_manager.Next_Unlock_Stage_return(),Is.EqualTo(-1));Assert.That(c.ContentUnlock.Content_list.All(i=>i.Btn_obj.activeSelf&&!i.Locked_obj.activeSelf),Is.True);c.Persist=false;
        }
        finally{SceneManager.sceneLoaded-=configure;}
        yield return SceneManager.LoadSceneAsync("RecoveredTarget");
    }
}
