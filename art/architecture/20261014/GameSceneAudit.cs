using System;using System.Linq;using System.Collections.Generic;using UnityEngine;using UnityEditor;using CatGunner.Runtime;
public static class GameSceneAudit
{
 public static string Run()
 {
  if(Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets")throw new Exception("Wrong project");
  var scene=UnityEngine.SceneManagement.SceneManager.GetActiveScene();var roots=scene.GetRootGameObjects();
  int Missing(GameObject root)=>root.GetComponentsInChildren<Transform>(true).Sum(t=>GameObjectUtility.GetMonoBehavioursWithMissingScriptCount(t.gameObject));
  var paths=new[]{"Assets/Game/Resources/Gameplay/ProjectilePoolContent.prefab","Assets/Game/Resources/UI/Draw_Info_UI.prefab","Assets/Game/Resources/UI/GunCollection_UI.prefab","Assets/Game/Prefabs/Gameplay/PlayerTeam.prefab"};
  var prefabs=paths.Select(path=>new{path,guid=AssetDatabase.AssetPathToGUID(path),missing=Missing(AssetDatabase.LoadAssetAtPath<GameObject>(path))}).ToArray();
  var c=UnityEngine.Object.FindAnyObjectByType<GameClient>();var presentation=c.GetComponent<ClientPresentation>();var pool=UnityEngine.Object.FindAnyObjectByType<Polling_manager>();
  var invalidEvents=new List<string>();var disabledLegacyEvents=new List<string>();foreach(var b in roots.SelectMany(r=>r.GetComponentsInChildren<UnityEngine.UI.Button>(true)))for(int i=0;i<b.onClick.GetPersistentEventCount();i++)if(b.onClick.GetPersistentTarget(i)==null&&!string.IsNullOrEmpty(b.onClick.GetPersistentMethodName(i))){if(b.onClick.GetPersistentListenerState(i)==UnityEngine.Events.UnityEventCallState.Off)disabledLegacyEvents.Add(b.name+"/"+b.onClick.GetPersistentMethodName(i));else invalidEvents.Add(b.name+"/"+b.onClick.GetPersistentMethodName(i));}
  var data=new{scene=scene.path,playing=EditorApplication.isPlaying,compiling=EditorApplication.isCompiling,dirty=scene.isDirty,missingScripts=roots.Sum(Missing),prefabs,invalidPersistentButtons=invalidEvents,disabledLegacyCallbacks=disabledLegacyEvents,roots=roots.Select(r=>new{r.name,nodes=r.GetComponentsInChildren<Transform>(true).Length}),events=roots.SelectMany(r=>r.GetComponentsInChildren<UnityEngine.EventSystems.EventSystem>(true)).Count(),c.Persist,c.SaveFolderOverride,lazyPanels=presentation.LazyWeaponPanels,informationLoaded=presentation.DrawInformation!=null,collectionLoaded=presentation.Collection!=null,poolObjects=pool.Polling_List.Select(x=>x.Objects.Length),teamPrefab=PrefabUtility.GetPrefabAssetPathOfNearestInstanceRoot(c.Team),host=SessionState.GetString("CatGunner.Recovery.TestHostFolder","")};
  var result=Newtonsoft.Json.JsonConvert.SerializeObject(data,Newtonsoft.Json.Formatting.Indented);System.IO.File.WriteAllText("/Volumes/ZHITAI_1T/IdleCatGunner/art/architecture/20261014/final-editor-audit.json",result);return result;
 }
}
