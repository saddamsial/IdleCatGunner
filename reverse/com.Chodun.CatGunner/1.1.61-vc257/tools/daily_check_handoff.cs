if(UnityEditor.EditorApplication.isPlaying||UnityEditor.EditorApplication.isCompiling)throw new InvalidOperationException("Stable EditMode required");
UnityEditor.EditorApplication.delayCall+=()=>{
UnityEngine.Time.timeScale=1;UnityEditor.EditorApplication.isPaused=false;
var scene=UnityEditor.SceneManagement.EditorSceneManager.OpenScene("Assets/Recovery/Scenes/RecoveredClient.unity");
var client=UnityEngine.Object.FindAnyObjectByType<CatGunner.Recovery.RecoveryForestClient>(UnityEngine.FindObjectsInactive.Include);
var settings=UnityEngine.Object.FindAnyObjectByType<Setting>(UnityEngine.FindObjectsInactive.Include);var daily=client.DailyLogin;
var all=scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<UnityEngine.Transform>(true)).ToArray();
var missing=all.Sum(t=>UnityEditor.GameObjectUtility.GetMonoBehavioursWithMissingScriptCount(t.gameObject));
var modules=all.Select(t=>t.GetComponent<UnityEngine.EventSystems.StandaloneInputModule>()).Where(t=>t!=null).ToArray();
var ready=!scene.isDirty&&missing==0&&client.Persist&&client.SaveFolderOverride==null&&settings.PersistPreferences&&settings.Camera_obj.activeSelf&&!settings.EcoPanel_obj.activeSelf&&daily!=null&&daily.Reward_list.Length==7&&daily.DiaReward_list.SequenceEqual(new[]{70,200,400,600,800,1000,1500})&&!daily.DailyCheck_Panel_obj.activeSelf&&daily.AutoShow&&client.Tutorial.DisableOnTutorial.Count(g=>g!=null)==7&&modules.Length==1&&modules[0].inputOverride==null;
var report=new{unity=UnityEngine.Application.unityVersion,scene=scene.path,playing=UnityEditor.EditorApplication.isPlaying,paused=UnityEditor.EditorApplication.isPaused,compiling=UnityEditor.EditorApplication.isCompiling,dirty=scene.isDirty,persist=client.Persist,saveOverride=client.SaveFolderOverride,objects=all.Length,missingScripts=missing,connectedTutorialReferences=client.Tutorial.DisableOnTutorial.Count(g=>g!=null),dailyPanelActive=daily.DailyCheck_Panel_obj.activeSelf,dailyRewards=daily.DiaReward_list,autoShow=daily.AutoShow,eventSystems=all.Count(t=>t.GetComponent<UnityEngine.EventSystems.EventSystem>()!=null),inputOverrides=modules.Count(m=>m.inputOverride!=null),readyForUserPlay=ready,trustedDateProviderAvailable=false,scopeComplete=false};
System.IO.File.WriteAllText("/Volumes/ZHITAI_1T/IdleCatGunner/reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/daily-check-editor-handoff.json",Newtonsoft.Json.JsonConvert.SerializeObject(report,Newtonsoft.Json.Formatting.Indented));
};return "handoff queued";
