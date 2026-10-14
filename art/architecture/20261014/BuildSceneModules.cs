using System;using System.Linq;using System.Collections.Generic;using UnityEngine;using UnityEditor;using UnityEditor.SceneManagement;using CatGunner.Runtime;
public static class BuildSceneModules
{
 const string Folder="Assets/Game/Resources/";
 static void EnsureFolder(string path){if(AssetDatabase.IsValidFolder(path))return;var i=path.LastIndexOf('/');EnsureFolder(path.Substring(0,i));AssetDatabase.CreateFolder(path.Substring(0,i),path.Substring(i+1));}
 static bool Within(Transform node,Transform root)=>node==root||node.IsChildOf(root);
 static void ExtractPanel(GameObject panel,string path,ClientPresentation presentation)
 {
  var outer=panel.GetComponentInParent<UiAuthoring>();
  var local=panel.AddComponent<UiAuthoring>();local.ImportSubtree(outer,panel.transform);outer.RemoveSubtree(panel.transform);
  var palette=UnityEngine.Object.FindAnyObjectByType<PenguinModePaletteBindings>();
  var bindings=palette.Graphics.Where(b=>b.Graphic!=null&&Within(b.Graphic.transform,panel.transform)).ToArray();
  if(bindings.Length>0){var own=panel.AddComponent<PenguinModePaletteBindings>();own.Palette=palette.Palette;own.Graphics=bindings;own.Buttons=palette.Buttons.Where(b=>b!=null&&Within(b.transform,panel.transform)).ToArray();palette.Graphics=palette.Graphics.Except(bindings).ToArray();palette.Buttons=palette.Buttons.Except(own.Buttons).ToArray();}
  PrefabUtility.SaveAsPrefabAsset(panel,path,out bool success);if(!success)throw new Exception("Prefab export failed: "+path);
  UnityEngine.Object.DestroyImmediate(panel);
 }
 public static string Run()
 {
  if(Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets"||EditorApplication.isPlaying||EditorApplication.isCompiling)throw new Exception("Wrong project or busy Editor");
  var scene=UnityEngine.SceneManagement.SceneManager.GetActiveScene();if(scene.isDirty)throw new Exception("Unsaved scene");
  if(scene.GetRootGameObjects().Any(r=>r.name=="World"))throw new Exception("Already organized");
  var before=scene.GetRootGameObjects().Sum(r=>r.GetComponentsInChildren<Transform>(true).Length);
  EnsureFolder(Folder+"UI");EnsureFolder(Folder+"Gameplay");EnsureFolder("Assets/Game/Prefabs/Gameplay");
  var pool=UnityEngine.Object.FindAnyObjectByType<Polling_manager>();
  var content=new GameObject("ProjectilePoolContent");content.transform.SetParent(pool.transform,false);
  foreach(var child in pool.transform.Cast<Transform>().Where(t=>t!=content.transform).ToArray())child.SetParent(content.transform,false);
  content.AddComponent<ProjectilePoolContent>().Pools=pool.Polling_List;
  PrefabUtility.SaveAsPrefabAsset(content,Folder+"Gameplay/ProjectilePoolContent.prefab",out bool poolSaved);if(!poolSaved)throw new Exception("Pool prefab export failed");
  pool.Polling_List=Array.Empty<Object_struct>();var poolObject=new SerializedObject(pool);poolObject.FindProperty("contentResource").stringValue="Gameplay/ProjectilePoolContent";poolObject.ApplyModifiedPropertiesWithoutUndo();UnityEngine.Object.DestroyImmediate(content);
  var presentation=UnityEngine.Object.FindAnyObjectByType<ClientPresentation>();
  ExtractPanel(presentation.DrawInformation,Folder+"UI/Draw_Info_UI.prefab",presentation);
  ExtractPanel(presentation.Collection.gameObject,Folder+"UI/GunCollection_UI.prefab",presentation);
  var owner=new SerializedObject(presentation);owner.FindProperty("lazyWeaponPanels").boolValue=true;owner.ApplyModifiedPropertiesWithoutUndo();
  // Group only scene roots. All nested animation and UI path contracts stay intact.
  var roots=scene.GetRootGameObjects();var world=new GameObject("World");var systems=new GameObject("Systems");var ui=new GameObject("UI");var modes=new GameObject("GameModes");modes.transform.SetParent(world.transform,false);
  foreach(var root in roots){
   if(root.name=="Canvas"){root.transform.SetParent(ui.transform,true);continue;}
   if(root.name=="Sound_manager"||root==pool.gameObject||root.name=="ETC"||root.name=="Text_Setting"||root.name=="Particle_Polling")root.transform.SetParent(systems.transform,true);
   else if(root.name.EndsWith("_manager")&&(root.name.StartsWith("SpeedRun")||root.name.StartsWith("Boss")||root.name.StartsWith("Mine")||root.name.StartsWith("Monster")||root.name.StartsWith("Raid")))root.transform.SetParent(modes.transform,true);
   else root.transform.SetParent(world.transform,true);
  }
  // Team prefab stays connected: scene overrides keep links to camera, UI and services.
  var team=UnityEngine.Object.FindAnyObjectByType<Cat_manager>();PrefabUtility.SaveAsPrefabAssetAndConnect(team.gameObject,"Assets/Game/Prefabs/Gameplay/PlayerTeam.prefab",InteractionMode.AutomatedAction);
  EditorSceneManager.MarkSceneDirty(scene);EditorSceneManager.SaveScene(scene);
  var after=scene.GetRootGameObjects().Sum(r=>r.GetComponentsInChildren<Transform>(true).Length);
  var result=Newtonsoft.Json.JsonConvert.SerializeObject(new {before,after,removed=before-after,roots=scene.GetRootGameObjects().Select(r=>r.name),prefabs=new[]{"Gameplay/ProjectilePoolContent","UI/Draw_Info_UI","UI/GunCollection_UI","PlayerTeam"}},Newtonsoft.Json.Formatting.Indented);
  System.IO.File.WriteAllText("/Volumes/ZHITAI_1T/IdleCatGunner/art/architecture/20261014/scene-modules.json",result);return result;
 }
}
