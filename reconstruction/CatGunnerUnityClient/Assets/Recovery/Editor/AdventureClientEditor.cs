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
public static class AdventureClientEditor
{
 public static void RestorePanelOrder(Adventure_manager manager)
 {
  // Frozen Main GO977 children: 1086,2252,394,522,80,236.
  // Existing relic ancestors precede newly merged children unless ordered explicitly.
  var panel=manager.adventure_panel_ui.transform;
  var names=new[]{"Background","Down_Panel","Currency_Core","Pet_Panel","Panel","PrismCore_Panel"};
  for(int i=0;i<names.Length;i++)
  {
   var child=panel.Find(names[i]);
   if(child==null)throw new InvalidOperationException("Original Adventure panel child missing: "+names[i]);
   child.SetSiblingIndex(i);
  }
 }
 public static void RepairIntegratedPanelOrder()
 {
  if(EditorApplication.isPlaying)throw new InvalidOperationException("EditMode required");
  var scene=SceneManager.GetActiveScene();var manager=UnityEngine.Object.FindAnyObjectByType<Adventure_manager>();
  RestorePanelOrder(manager);EditorSceneManager.MarkSceneDirty(scene);
  if(!EditorSceneManager.SaveScene(scene))throw new IOException("Adventure order save failed");
  var report=new {scene=scene.path,sourceGameObject=977,originalChildren=new[]{1086,2252,394,522,80,236},currentChildren=manager.adventure_panel_ui.transform.Cast<Transform>().Select(t=>t.name).ToArray(),repair="Original sibling order restored through Editor APIs; existing relic ancestors had preceded appended preview layer"};
  File.WriteAllText(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/adventure-panel-order-repair.json")),Newtonsoft.Json.JsonConvert.SerializeObject(report,Newtonsoft.Json.Formatting.Indented));
 }
 public static void ScheduleIntegrate()=>EditorApplication.delayCall+=Integrate;
 public static void Integrate()
 {
  if(EditorApplication.isPlaying)throw new InvalidOperationException("EditMode required");
  var scene=EditorSceneManager.OpenScene(ForestClientEditor.ScenePath);var client=UnityEngine.Object.FindAnyObjectByType<RecoveryForestClient>();
  if(client.Adventure!=null)throw new InvalidOperationException("Already integrated; preserve scene");
  var slice=EditorSceneManager.OpenScene("Assets/Recovery/Scenes/RecoveredAdventure.unity",OpenSceneMode.Additive);
  var src=slice.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<Transform>(true)).Select(t=>t.gameObject).ToArray();var ids=src.ToDictionary(g=>(long)GlobalObjectId.GetGlobalObjectIdSlow(g).targetObjectId);
  var map=new Dictionary<UnityEngine.Object,UnityEngine.Object>();var canonical=client.Slider.GetComponentInParent<Canvas>().gameObject;
  Merge(canonical,ids[866],map,scene);
  var copied=new List<Component>();int added=0;
  foreach(var source in src)
  {
   var target=(GameObject)map[source];
   foreach(var component in source.GetComponents<Component>())
   {
    if(component==null)continue;var type=component.GetType();var current=target.GetComponent(type);
    bool recover=component is Adventure_manager||component is Adventure_Panel||component is Adventure_Map_item||component is Adventure_Map_info_item||component is Adventure_Ticket_UI||component is Adventure_Enter_popup||component is Adventure_PetSelect_popup||component is Adventure_PetSelect_Slot||component is Adventure_Pet_Slot||component is Adventure_Exit_Panel||component is Adventure_Reward_popup||component is Pet_Item_Demo||component is Menu||component is Menu_Btn||component is SlicedFilledImage||component is BounceStart;
    if(current==null&&recover){current=target.AddComponent(type);added++;}
    if(current!=null){map[component]=current;if(recover&&current!=component){EditorUtility.CopySerialized(component,current);copied.Add(current);}}
   }
  }
  foreach(var component in map.Values.OfType<Component>().Distinct())
  {
   var so=new SerializedObject(component);var it=so.GetIterator();bool changed=false;while(it.Next(true))if(it.propertyType==SerializedPropertyType.ObjectReference&&it.objectReferenceValue!=null&&map.TryGetValue(it.objectReferenceValue,out var target)&&target!=it.objectReferenceValue){it.objectReferenceValue=target;changed=true;}
   if(changed){so.ApplyModifiedPropertiesWithoutUndo();EditorUtility.SetDirty(component);}
  }
  GameObject Get(long id)=>(GameObject)map[ids[id]];
  var manager=Get(406).GetComponent<Adventure_manager>();client.Adventure=manager;manager.LocalAdventureMenu=Get(740);manager.LocalTabs=Get(977).GetComponentsInChildren<Menu>(true).Single(m=>m.Menu_objs.Any(g=>g!=null&&g.name=="Menu_Relic"));
  // Native serialized parent977 was absent before dispatch; restore it and select Map by default.
  Get(977).SetActive(true);RestorePanelOrder(manager);manager.LocalTabs.Menu_Reload(0);manager.LocalAdventureMenu.SetActive(false);
  manager.adventure_panel_ui.RenderTexture_Map_Reload();manager.adventure_panel_ui.Adventure_Maplist_popup.SetActive(false);manager.adventure_panel_ui.Adventure_Enter_popup.gameObject.SetActive(false);manager.adventure_panel_ui.Adventure_Enter_popup.petSelect_popup.gameObject.SetActive(false);manager.adventure_panel_ui.Adventure_Reward_popup.gameObject.SetActive(false);manager.adventure_exit_panel.gameObject.SetActive(false);
  Bind(Get(1419).GetComponent<Button>(),manager.Open);Bind(Get(1839).GetComponent<Button>(),manager.Close);
  Bind(Get(2105).GetComponent<Button>(),manager.adventure_panel_ui.Adventure_Reward_popup.OnClick_Exit);
  foreach(int id in new[]{236,1473,6478,12209,12206,12207,12208,11660,11659,4490,8457,8456,8458,8459})if(ids.ContainsKey(id)){var b=Get(id).GetComponent<Button>();if(b!=null){Clear(b);b.interactable=false;}}
  // Isolate excluded core purchase panels instead of leaving broken payment targets.
  foreach(int id in new[]{1380,1042})if(ids.ContainsKey(id))Get(id).SetActive(false);
  foreach(var tab in manager.LocalTabs.Btn_list)Bind(tab.GetComponent<Button>(),tab.onClick);
  foreach(var row in manager.adventure_panel_ui.Adventure_Enter_popup.Pet_Slot_list){Bind(row.GetComponent<Button>(),row.OnClick);}
  var petpopup=manager.adventure_panel_ui.Adventure_Enter_popup.petSelect_popup;foreach(var row in petpopup.Pet_Slot_list)Bind(row.GetComponent<Button>(),row.OnClick);
  Bind(Get(22).GetComponent<Button>(),manager.adventure_panel_ui.Adventure_Enter_popup.OnClick_AdventureStart);
  // Shared repaired TMP assets remain authoritative; avoid touching their embedded fallback atlases.
  RecoveryEditor.RepairSettingsSlice();
  EditorSceneManager.CloseScene(slice,true);SceneManager.SetActiveScene(scene);
  int missing=scene.GetRootGameObjects().Sum(g=>g.GetComponentsInChildren<Transform>(true).Sum(t=>GameObjectUtility.GetMonoBehavioursWithMissingScriptCount(t.gameObject)));
  if(missing!=0||manager.Core_sprites.Length!=4||manager.Core_sprites.Any(s=>s==null)||manager.adventure_panel_ui.Adventure_Map_Info_list.Length!=5||petpopup.Pet_Slot_list.Length!=19||manager.LocalTabs.Menu_objs.Length!=2)throw new InvalidOperationException("Original Adventure references incomplete");
  if(manager.adventure_panel_ui.Exp_Fill==null||manager.adventure_panel_ui.Adventure_Reward_popup.ExpSlider_Fill==null||manager.adventure_panel_ui.Adventure_Enter_popup.Pet_Slot_list.Any(s=>s.pet_item==null))throw new InvalidOperationException("Original Adventure UI fill/pet refs missing");
  EditorSceneManager.MarkSceneDirty(scene);if(!EditorSceneManager.SaveScene(scene))throw new IOException("Adventure scene save failed");AssetDatabase.SaveAssets();
  string reports=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
  File.WriteAllText(Path.Combine(reports,"adventure-client-scene-restoration.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{scene=scene.path,sourceObjects=src.Length,addedComponents=added,copiedComponents=copied.Count,gameObjects=scene.GetRootGameObjects().Sum(g=>g.GetComponentsInChildren<Transform>(true).Length),canvases=UnityEngine.Object.FindObjectsByType<Canvas>(FindObjectsInactive.Include).Length,missingScripts=missing,mapGroups=3,mapsPerGroup=5,petChoices=19,slotCount=3,coreSprites=4,tabs=2,runtimeValidation="pending",preview="Original Pet_Dummy/Spine/RenderTexture not restored; preview hidden"},Newtonsoft.Json.Formatting.Indented));
 }
 private static void Clear(Button b){while(b.onClick.GetPersistentEventCount()>0)UnityEditor.Events.UnityEventTools.RemovePersistentListener(b.onClick,0);}
 private static void Bind(Button b,UnityEngine.Events.UnityAction action){if(b==null)throw new InvalidOperationException("Missing original button");Clear(b);UnityEditor.Events.UnityEventTools.AddPersistentListener(b.onClick,action);b.interactable=true;}
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
