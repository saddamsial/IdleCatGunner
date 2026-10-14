using System;
using System.IO;
using System.Linq;
using CatGunner.Runtime;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
public static class RelicClientEditor
{
 public static void ScheduleIntegrate()=>EditorApplication.delayCall+=Integrate;
 public static void Integrate()
 {
  if(EditorApplication.isPlaying)throw new InvalidOperationException("EditMode required");
  var scene=EditorSceneManager.OpenScene(ForestClientEditor.ScenePath);var client=UnityEngine.Object.FindAnyObjectByType<GameClient>();
  if(client.Relics!=null)throw new InvalidOperationException("Relics already integrated; preserve scene");
  var canvas=client.Slider.GetComponentInParent<Canvas>();var slice=EditorSceneManager.OpenScene("Assets/Game/Scenes/Relic.unity",OpenSceneMode.Additive);
  var objects=slice.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<Transform>(true)).Select(t=>t.gameObject).ToArray();
  var map=objects.ToDictionary(g=>(long)GlobalObjectId.GetGlobalObjectIdSlow(g).targetObjectId);var relic=map[803].GetComponent<Relic_manager>();
  foreach(var root in slice.GetRootGameObjects())SceneManager.MoveGameObjectToScene(root,scene);
  EditorSceneManager.CloseScene(slice,true);SceneManager.SetActiveScene(scene);Merge(canvas.transform,map[866].transform);UnityEngine.Object.DestroyImmediate(map[866]);client.Relics=relic;map[47].SetActive(true);
  relic.LocalRelicMenu=map[740];relic.LocalRelicMenu.SetActive(false);relic.relic_info_ui.gameObject.SetActive(false);relic.relic_draw_panel.gameObject.SetActive(false);
  string reports=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
  var contract=Newtonsoft.Json.Linq.JObject.Parse(File.ReadAllText(Path.Combine(reports,"original-relic-client-contract.json")));
  relic.LocalCoreSprites=contract["core_sprites"].Select(x=>AssetDatabase.LoadAssetAtPath<Sprite>(AssetDatabase.GUIDToAssetPath((string)x["guid"]))).ToArray();
  if(relic.Relic_list.Length!=15||relic.Relic_Item_List.Length!=15||relic.LocalCoreSprites.Any(x=>x==null)||relic.relic_draw_panel.PageSize!=12)throw new InvalidOperationException("Original relic refs incomplete");
  Bind(map[1419].GetComponent<Button>(),relic.Open);Bind(map[1839].GetComponent<Button>(),relic.Close);
  Bind(relic.relic_info_ui.GetComponentsInChildren<Button>(true).Single(b=>b.name=="Close_Btn"),relic.relic_info_ui.Close);
  Bind(relic.relic_draw_panel.Close_Btn.GetComponentInChildren<Button>(true),relic.relic_draw_panel.Close);
  FinalizeIntegratedScene();
 }
 public static void ScheduleFinalize()=>EditorApplication.delayCall+=FinalizeIntegratedScene;
 public static void FinalizeIntegratedScene()
 {
  if(EditorApplication.isPlaying)throw new InvalidOperationException("EditMode required");var scene=EditorSceneManager.GetActiveScene();var client=UnityEngine.Object.FindAnyObjectByType<GameClient>();var relic=client.Relics;
  if(relic==null||relic.Relic_Item_List.Length!=15||relic.LocalCoreSprites.Any(x=>x==null))throw new InvalidOperationException("Relic integration incomplete");
  string reports=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
  Bind(relic.relic_draw_panel.Close_Btn.GetComponentInChildren<Button>(true),relic.relic_draw_panel.Close);
  GameProjectEditor.RepairSettingsSlice();
  int missing=scene.GetRootGameObjects().Sum(g=>g.GetComponentsInChildren<Transform>(true).Sum(t=>GameObjectUtility.GetMonoBehavioursWithMissingScriptCount(t.gameObject)));
  if(missing!=0)throw new InvalidOperationException("Missing relic scene script");
  EditorSceneManager.MarkSceneDirty(scene);if(!EditorSceneManager.SaveScene(scene))throw new IOException("Relic scene save failed");AssetDatabase.SaveAssets();
  File.WriteAllText(Path.Combine(reports,"relic-client-scene-restoration.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new {scene=scene.path,sourceObjects=747,gameObjects=scene.GetRootGameObjects().Sum(g=>g.GetComponentsInChildren<Transform>(true).Length),canvasCount=UnityEngine.Object.FindObjectsByType<Canvas>(FindObjectsInactive.Include).Length,missingScripts=missing,relicCount=15,pageSize=12,coreWallets=4,runtimeValidation="pending"},Newtonsoft.Json.Formatting.Indented));
 }
 public static void ScheduleRepair()=>EditorApplication.delayCall+=RepairOriginalReferences;
 public static void RepairOriginalReferences()
 {
  if(EditorApplication.isPlaying)throw new InvalidOperationException("EditMode required");var scene=EditorSceneManager.OpenScene(ForestClientEditor.ScenePath);
  var dest=scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<Transform>(true)).Select(t=>t.gameObject).ToDictionary(g=>(long)GlobalObjectId.GetGlobalObjectIdSlow(g).targetObjectId);
  var slice=EditorSceneManager.OpenScene("Assets/Game/Scenes/RelicRepair.unity",OpenSceneMode.Additive);
  var sources=slice.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<Transform>(true)).Select(t=>t.gameObject).ToArray();
  var canonical=UnityEngine.Object.FindAnyObjectByType<GameClient>().Slider.GetComponentInParent<Canvas>().gameObject;
  var copied=new System.Collections.Generic.List<Component>();var mapped=new System.Collections.Generic.Dictionary<UnityEngine.Object,UnityEngine.Object>();int added=0;
  foreach(var src in sources)
  {
   long id=(long)GlobalObjectId.GetGlobalObjectIdSlow(src).targetObjectId;var target=ResolveOriginalBranch(src,canonical);dest[id]=target;
   mapped[src]=target;
   foreach(var component in src.GetComponents<Component>())
   {
    if(component==null)continue;var type=component.GetType();var current=target.GetComponent(type);
    bool recover=component is SlicedFilledImage||component is BounceStart||component is Relic_manager||component is Relic_Info_UI||component is Relic_Item||component is Relic_Item_Demo||component is Relic_DownPanel||component is Relic_DrawMode_Btn||component is Draw_Relic_Btn||component is Relic_Draw_Panel;
    if(current==null&&recover){current=target.AddComponent(type);added++;}
    if(current!=null){mapped[component]=current;if(recover){EditorUtility.CopySerialized(component,current);copied.Add(current);}}
   }
  }
  foreach(var component in copied)
  {
   var obj=new SerializedObject(component);var it=obj.GetIterator();while(it.Next(true))if(it.propertyType==SerializedPropertyType.ObjectReference&&it.objectReferenceValue!=null&&mapped.TryGetValue(it.objectReferenceValue,out var target))it.objectReferenceValue=target;
   obj.ApplyModifiedPropertiesWithoutUndo();EditorUtility.SetDirty(component);
  }
  var client=UnityEngine.Object.FindObjectsByType<GameClient>(FindObjectsInactive.Include).Single();var relic=client.Relics;relic.LocalRelicMenu=dest[740];relic.LocalRelicMenu.SetActive(false);dest[47].SetActive(true);
  string reports=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));var contract=Newtonsoft.Json.Linq.JObject.Parse(File.ReadAllText(Path.Combine(reports,"original-relic-client-contract.json")));
  relic.LocalCoreSprites=contract["core_sprites"].Select(x=>AssetDatabase.LoadAssetAtPath<Sprite>(AssetDatabase.GUIDToAssetPath((string)x["guid"]))).ToArray();
  Bind(dest[1419].GetComponent<Button>(),relic.Open);Bind(dest[1839].GetComponent<Button>(),relic.Close);Bind(relic.relic_info_ui.GetComponentsInChildren<Button>(true).Single(b=>b.name=="Close_Btn"),relic.relic_info_ui.Close);
  if(relic.relic_info_ui.Fill==null||relic.Relic_Item_List.Any(x=>x.Fill==null))throw new InvalidOperationException("Relic fill references not restored");
  EditorSceneManager.CloseScene(slice,true);SceneManager.SetActiveScene(scene);FinalizeIntegratedScene();
  File.WriteAllText(Path.Combine(reports,"relic-original-component-repair.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new {addedComponents=added,copiedComponents=copied.Count,fillReferences=16,sourceScene="RelicRepair.unity",method="Unity AddComponent, CopySerialized, SerializedObject source references remapped; existing working scene YAML not edited"},Newtonsoft.Json.Formatting.Indented));
 }
 private static GameObject ResolveOriginalBranch(GameObject source,GameObject canvas)
 {
  if(source.transform.parent==null){if(source.GetComponent<Canvas>()!=null)return canvas;throw new InvalidOperationException("Unexpected original relic root "+source.name);}
  var parent=ResolveOriginalBranch(source.transform.parent.gameObject,canvas);
  var peers=source.transform.parent.Cast<Transform>().Where(t=>t.name==source.name).ToArray();int ordinal=Array.IndexOf(peers,source.transform);
  var matches=parent.transform.Cast<Transform>().Where(t=>t.name==source.name).ToArray();
  if(matches.Length!=peers.Length||ordinal<0)throw new InvalidOperationException("Original relic hierarchy mismatch "+source.name+" expected "+peers.Length+" actual "+matches.Length);
  return matches[ordinal].gameObject;
 }
 private static void Bind(Button b,UnityEngine.Events.UnityAction action){while(b.onClick.GetPersistentEventCount()>0)UnityEditor.Events.UnityEventTools.RemovePersistentListener(b.onClick,0);UnityEditor.Events.UnityEventTools.AddPersistentListener(b.onClick,action);b.interactable=true;}
    private static void Merge(Transform target,Transform source)
    {
        foreach(var child in source.Cast<Transform>().ToArray())
        {
            var matches=target.Cast<Transform>().Where(t=>t.name==child.name).ToArray();if(matches.Length>1)throw new InvalidOperationException("Ambiguous original ancestor "+child.name);
            if(matches.Length==1){if(!new[]{"SafeArea","Main_UI","Btn_list","Left_Menu","Right_Menu","UI_manager","Contents_UI","Gun_manager"}.Contains(child.name))throw new InvalidOperationException("Unexpected overlapping branch "+child.name);Merge(matches[0],child);UnityEngine.Object.DestroyImmediate(child.gameObject);}
            else{var rect=child as RectTransform;if(rect==null){child.SetParent(target,false);continue;}var min=rect.anchorMin;var max=rect.anchorMax;var pivot=rect.pivot;var size=rect.sizeDelta;var pos=rect.anchoredPosition3D;var scale=rect.localScale;var rotation=rect.localRotation;rect.SetParent(target,false);rect.anchorMin=min;rect.anchorMax=max;rect.pivot=pivot;rect.sizeDelta=size;rect.anchoredPosition3D=pos;rect.localScale=scale;rect.localRotation=rotation;}
        }
    }
}
