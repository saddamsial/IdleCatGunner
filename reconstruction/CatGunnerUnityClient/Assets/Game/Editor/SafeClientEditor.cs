using System;
using System.IO;
using System.Linq;
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using CatGunner.Runtime;
public static class SafeClientEditor
{
 public static void ScheduleIntegrate()=>EditorApplication.delayCall+=Integrate;
 public static void Integrate()
 {
  if(EditorApplication.isPlaying)throw new InvalidOperationException("EditMode required");
  var scene=EditorSceneManager.OpenScene(ForestClientEditor.ScenePath);var client=UnityEngine.Object.FindAnyObjectByType<GameClient>();
  if(client.Safe!=null)throw new InvalidOperationException("Safe already integrated");
  var slice=EditorSceneManager.OpenScene("Assets/Game/Scenes/Safe.unity",OpenSceneMode.Additive);
  var src=slice.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<Transform>(true)).Select(t=>t.gameObject).ToArray();var ids=src.ToDictionary(g=>(long)GlobalObjectId.GetGlobalObjectIdSlow(g).targetObjectId);
  var map=new Dictionary<UnityEngine.Object,UnityEngine.Object>();var canonical=client.Slider.GetComponentInParent<Canvas>().gameObject;
  Merge(canonical,ids[866],map,scene);int added=0;
  foreach(var source in src)
  {
   var target=(GameObject)map[source];
   foreach(var component in source.GetComponents<Component>())
   {
    if(component==null)continue;var type=component.GetType();var current=target.GetComponent(type);
    bool recover=component is Safe_manager||component is Safe_HUD||component is Safe_UI||component is Safe_Slot||component is Gun_Item_Demo||component is BounceStart;
    if(current==null&&recover){current=target.AddComponent(type);added++;}
    if(current!=null){map[component]=current;if(recover&&current!=component)EditorUtility.CopySerialized(component,current);}
   }
  }
  foreach(var component in map.Values.OfType<Component>().Distinct())
  {
   var so=new SerializedObject(component);var it=so.GetIterator();bool changed=false;while(it.Next(true))if(it.propertyType==SerializedPropertyType.ObjectReference&&it.objectReferenceValue!=null&&map.TryGetValue(it.objectReferenceValue,out var target)&&target!=it.objectReferenceValue){it.objectReferenceValue=target;changed=true;}
   if(changed){so.ApplyModifiedPropertiesWithoutUndo();EditorUtility.SetDirty(component);}
  }
  var manager=((GameObject)map[ids[2026]]).GetComponent<Safe_manager>();client.Safe=manager;manager.gameObject.SetActive(true);manager.safe_ui.gameObject.SetActive(false);
  Bind(manager.safe_hud.GetComponent<Button>(),manager.safe_hud.onClick);
  foreach(var slot in manager.safe_ui.Slot_list)
  {
   Bind(slot.GetComponent<Button>(),slot.onClick);
   foreach(var button in slot.Gun_obj.GetComponentsInChildren<Button>(true))Bind(button,slot.onClick_Gun);
   foreach(var button in slot.PurchaseAble_obj.GetComponentsInChildren<Button>(true))Bind(button,slot.onClick_Purchase);
  }
  Bind(manager.safe_ui.GetComponentsInChildren<Button>(true).Single(b=>b.name=="Close_Btn"),manager.safe_ui.Close);
  var info=client.Guns.gun_info_ui;
  Bind(info.TakeOut_Btn_obj.GetComponent<Button>(),info.onClick_TakeOut);Bind(info.Pause_Btn_obj.GetComponent<Button>(),info.onClick_Pause);Bind(info.Unpause_Btn_obj.GetComponent<Button>(),info.onClick_Unpause);Bind(info.Pause_Btn_Locked_obj.GetComponent<Button>(),info.onClick_PauseLock);
  info.gameObject.SetActive(false);
  GameProjectEditor.RepairSettingsSlice();
  EditorSceneManager.CloseScene(slice,true);SceneManager.SetActiveScene(scene);
  int missing=scene.GetRootGameObjects().Sum(g=>g.GetComponentsInChildren<Transform>(true).Sum(t=>GameObjectUtility.GetMonoBehavioursWithMissingScriptCount(t.gameObject)));
  if(missing!=0||manager.safe_ui.Slot_list.Length!=16||manager.safe_ui.Slot_list.Any(s=>s==null||s.gun_item==null||s.Price_txt==null)||manager.safe_hud.Locked_obj==null||manager.safe_hud.Glow_obj==null)throw new InvalidOperationException("Original safe references incomplete");
  EditorSceneManager.MarkSceneDirty(scene);if(!EditorSceneManager.SaveScene(scene))throw new IOException("Safe scene save failed");AssetDatabase.SaveAssets();
  string reports=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
  File.WriteAllText(Path.Combine(reports,"safe-client-scene-restoration.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{scene=scene.path,sourceObjects=src.Length,addedComponents=added,slots=manager.safe_ui.Slot_list.Length,missingScripts=missing,method="Unity Editor canonical ancestor merge, CopySerialized and SerializedObject reference remap; frozen source untouched"},Newtonsoft.Json.Formatting.Indented));
 }
 private static void Bind(Button b,UnityEngine.Events.UnityAction action){if(b==null)throw new InvalidOperationException("Original safe button missing");while(b.onClick.GetPersistentEventCount()>0)UnityEditor.Events.UnityEventTools.RemovePersistentListener(b.onClick,0);UnityEditor.Events.UnityEventTools.AddPersistentListener(b.onClick,action);b.interactable=true;}
 private static void Merge(GameObject target,GameObject source,Dictionary<UnityEngine.Object,UnityEngine.Object> map,Scene scene)
 {
  map[source]=target;
  foreach(var child in source.transform.Cast<Transform>().ToArray())
  {
   var matches=target.transform.Cast<Transform>().Where(t=>t.name==child.name).ToArray();var peers=source.transform.Cast<Transform>().Where(t=>t.name==child.name).ToArray();int ordinal=Array.IndexOf(peers,child);
   if(matches.Length>ordinal){Merge(matches[ordinal].gameObject,child.gameObject,map,scene);}
   else if(matches.Length==0){var rect=child as RectTransform;var pos=rect!=null?rect.anchoredPosition3D:child.localPosition;var size=rect!=null?rect.sizeDelta:Vector2.zero;child.SetParent(null,false);SceneManager.MoveGameObjectToScene(child.gameObject,scene);child.SetParent(target.transform,false);if(rect!=null){rect.anchoredPosition3D=pos;rect.sizeDelta=size;}foreach(var t in child.GetComponentsInChildren<Transform>(true))map[t.gameObject]=t.gameObject;}
   else throw new InvalidOperationException("Original sibling hierarchy mismatch "+child.name);
  }
 }
}
