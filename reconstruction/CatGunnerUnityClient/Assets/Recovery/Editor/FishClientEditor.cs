using System;
using System.IO;
using System.Linq;
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using CatGunner.Recovery;
public static class FishClientEditor
{
 public static void ScheduleIntegrate()=>EditorApplication.delayCall+=Integrate;
 public static void Integrate()
 {
  if(EditorApplication.isPlaying)throw new InvalidOperationException("EditMode required");
  var scene=EditorSceneManager.OpenScene(ForestClientEditor.ScenePath);var client=UnityEngine.Object.FindAnyObjectByType<RecoveryForestClient>();
  if(client.Fish!=null)throw new InvalidOperationException("Fish already integrated");
  var slice=EditorSceneManager.OpenScene("Assets/Recovery/Scenes/RecoveredFishComplete.unity",OpenSceneMode.Additive);
  var src=slice.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<Transform>(true)).Select(t=>t.gameObject).ToArray();var ids=src.ToDictionary(g=>(long)GlobalObjectId.GetGlobalObjectIdSlow(g).targetObjectId);
  var map=new Dictionary<UnityEngine.Object,UnityEngine.Object>();var canonical=client.Slider.GetComponentInParent<Canvas>().gameObject;
  Merge(canonical,ids[866],map,scene);int added=0;
  foreach(var source in src)
  {
   var target=(GameObject)map[source];
   foreach(var component in source.GetComponents<Component>())
   {
    if(component==null)continue;var type=component.GetType();var current=target.GetComponent(type);
    bool recover=component is Fish_manager||component is Fish_Tank||component is Fish_Item||component is Fish_Info_UI||component is New_Fish_UI||component is Fish_Draw_Btn||component is Fish_DeleteZone||component is Fish_DeletePopup||component is OnOff||component is BounceStart;
    if(current==null&&recover){current=target.AddComponent(type);added++;}
    if(current!=null){map[component]=current;if(recover&&current!=component)EditorUtility.CopySerialized(component,current);}
   }
  }
  foreach(var component in map.Values.OfType<Component>().Distinct())
  {
   var so=new SerializedObject(component);var it=so.GetIterator();bool changed=false;while(it.Next(true))if(it.propertyType==SerializedPropertyType.ObjectReference&&it.objectReferenceValue!=null&&map.TryGetValue(it.objectReferenceValue,out var target)&&target!=it.objectReferenceValue){it.objectReferenceValue=target;changed=true;}
   if(changed){so.ApplyModifiedPropertiesWithoutUndo();EditorUtility.SetDirty(component);}
  }
  var manager=((GameObject)map[ids[9575]]).GetComponent<Fish_manager>();client.Fish=manager;manager.gameObject.SetActive(true);manager.fish_ui_obj.SetActive(false);manager.fish_info_ui.gameObject.SetActive(false);manager.new_fish_ui.gameObject.SetActive(false);
  foreach(var source in src.SelectMany(g=>g.GetComponents<Button>()))
  {
   var target=((GameObject)map[source.gameObject]).GetComponent<Button>();
   var from=new SerializedObject(source);var to=new SerializedObject(target);to.CopyFromSerializedProperty(from.FindProperty("m_OnClick"));to.ApplyModifiedPropertiesWithoutUndo();
   var events=new SerializedObject(target);var it=events.GetIterator();while(it.Next(true))if(it.propertyType==SerializedPropertyType.ObjectReference&&it.objectReferenceValue!=null&&map.TryGetValue(it.objectReferenceValue,out var replacement))it.objectReferenceValue=replacement;events.ApplyModifiedPropertiesWithoutUndo();
  }
  var fishButton=scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<Button>(true)).Single(b=>b.name=="Fish_Btn");Bind(fishButton,manager.ReloadFishUI);
  Bind(manager.AD_Gacha_Btn_obj,manager.FreeGacha);Bind(manager.fish_ui_obj.GetComponentsInChildren<Fish_Draw_Btn>(true).Single().GetComponent<Button>(),manager.PremiumGacha);
  Bind(manager.Auto_Btn_obj.GetComponent<Button>(),manager.AutoMerge_Change);
  Bind(manager.fish_info_ui.LeftBtn_obj.GetComponent<Button>(),manager.fish_info_ui.Show_LowerFish);Bind(manager.fish_info_ui.RightBtn_obj.GetComponent<Button>(),manager.fish_info_ui.Show_HigherFish);
  var zone=manager.fish_ui_obj.GetComponentInChildren<Fish_DeleteZone>(true);zone.gameObject.SetActive(true);var popup=zone.deletePopup;popup.gameObject.SetActive(false);
  RecoveryEditor.RepairSettingsSlice();
  EditorSceneManager.CloseScene(slice,true);SceneManager.SetActiveScene(scene);
  int missing=scene.GetRootGameObjects().Sum(g=>g.GetComponentsInChildren<Transform>(true).Sum(t=>GameObjectUtility.GetMonoBehavioursWithMissingScriptCount(t.gameObject)));
  if(missing!=0||manager.fishTank.fishPool.Length!=20||manager.Fish_sprites.Length!=13||manager.Fish_Real_sprites.Any(x=>x==null)||manager.fishTank.fishPool.Any(x=>x==null||x.skinImage==null||x.FusionAlert_img==null))throw new InvalidOperationException("Original fish references incomplete");
  EditorSceneManager.MarkSceneDirty(scene);if(!EditorSceneManager.SaveScene(scene))throw new IOException("Fish scene save failed");AssetDatabase.SaveAssets();
  string reports=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
  File.WriteAllText(Path.Combine(reports,"fish-client-scene-restoration.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{scene=scene.path,sourceObjects=src.Length,addedComponents=added,fishPool=manager.fishTank.fishPool.Length,missingScripts=missing,method="Unity Editor canonical ancestor merge, CopySerialized and SerializedObject reference remap; frozen source untouched"},Newtonsoft.Json.Formatting.Indented));
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
