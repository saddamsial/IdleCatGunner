using System;
using System.IO;
using System.Linq;
using System.Collections.Generic;
using Newtonsoft.Json.Linq;
using UnityEditor;
using UnityEditor.Events;
using UnityEditor.SceneManagement;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using CatGunner.Recovery;
public static class PlaytestIssuesClientEditor
{
 static GameObject Resolve(Scene scene,JArray path){Transform t=null;foreach(JObject n in path){var list=t==null?scene.GetRootGameObjects().Select(g=>g.transform):t.Cast<Transform>();t=list.Where(c=>c.name==(string)n["name"]).Skip((int)n["ordinal"]).FirstOrDefault();if(t==null)return null;}return t.gameObject;}
 static bool Bad(Material m)=>m==null||m.shader==null||!m.shader.isSupported||m.shader.name=="Hidden/InternalErrorShader";
 public static void Apply()
 {
  if(EditorApplication.isPlaying||EditorApplication.isCompiling)throw new InvalidOperationException("Stable EditMode required");
  var scene=SceneManager.GetActiveScene();if(scene.path!=ForestClientEditor.ScenePath)throw new InvalidOperationException("Normal client scene required");
  string reportPath=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
  var logs=new List<string>();var data=JObject.Parse(File.ReadAllText("Assets/Recovery/Editor/OriginalLocalShop.json"));var paths=data["rows"].ToDictionary(r=>(int)r["originalGo"],r=>(JArray)r["path"]);var missingRoots=data["roots"].Select(r=>(int)r).Where(r=>Resolve(scene,paths[r])==null).ToArray();
  if(missingRoots.Length>0){var slice=EditorSceneManager.OpenScene("Assets/Recovery/Scenes/RecoveredLocalShopSource.unity",OpenSceneMode.Additive);try{foreach(int id in missingRoots){var source=Resolve(slice,paths[id]);var parent=Resolve(scene,new JArray(paths[id].Take(paths[id].Count-1)));if(parent==null||source==null)throw new InvalidOperationException("Shop branch parent missing "+id);source.transform.SetParent(null,false);SceneManager.MoveGameObjectToScene(source,scene);source.transform.SetParent(parent.transform,false);}}finally{EditorSceneManager.CloseScene(slice,true);SceneManager.SetActiveScene(scene);}}
  var c=scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<RecoveryForestClient>(true)).Single();
  var store=c.GetComponent<RecoveryLocalStore>();if(store==null)store=c.gameObject.AddComponent<RecoveryLocalStore>();store.ShopUI=Resolve(scene,paths[10012]);store.ShopUI.SetActive(false);c.OfflinePurchaseSimulation=c.OfflineEarlyWeaponAdPreview=true;
  var sprites=AssetDatabase.GetBuiltinExtraResource<Material>("Sprites-Default.mat");if(sprites==null)throw new InvalidOperationException("Sprite compatibility material missing");
  int spriteRepairs=0,particleRepairs=0,missingSlots=0;
  foreach(var cat in c.Team.Cat_list.Concat(new[]{c.Team.Helper_Cat}).Where(v=>v!=null).Distinct())
  {
   foreach(var renderer in cat.GetComponentsInChildren<Renderer>(true))
   {
    if(!renderer.sharedMaterials.Any(Bad))continue;
    if(renderer is SpriteRenderer){renderer.sharedMaterial=sprites;spriteRepairs++;continue;}
    if(renderer is ParticleSystemRenderer pr){var materials=pr.sharedMaterials;for(int i=0;i<materials.Length;i++)if(materials[i]==null){var fallback=materials.FirstOrDefault(v=>v!=null);if(fallback==null)fallback=sprites;materials[i]=fallback;missingSlots++;logs.Add("Local missing particle slot fallback: "+cat.name+"/"+pr.name+" -> "+fallback.name);}pr.sharedMaterials=materials;ForestBulletEditor.RepairRenderers(new[]{pr},logs);particleRepairs++;}
   }
  }
  var bound=new List<object>();var absent=new List<string>();
  foreach(JObject route in JArray.Parse(File.ReadAllText("Assets/Recovery/Editor/LocalPurchaseBindings.json")))
  {
   var go=Resolve(scene,(JArray)route["path"]);if(go==null){absent.Add((string)route["label"]);continue;}var b=go.GetComponent<Button>();if(b==null)throw new InvalidOperationException("Original button missing "+go.name);
   var adapter=go.GetComponent<RecoveryLocalPurchaseButton>();if(adapter==null)adapter=go.AddComponent<RecoveryLocalPurchaseButton>();adapter.ProductId=(string)route["productId"];adapter.Button=b;
   string method=(string)route["method"];
   bool already=Enumerable.Range(0,b.onClick.GetPersistentEventCount()).Any(i=>b.onClick.GetPersistentTarget(i)==adapter&&b.onClick.GetPersistentMethodName(i)==nameof(adapter.Purchase));
   if(!already){int index=Enumerable.Range(0,b.onClick.GetPersistentEventCount()).Where(i=>b.onClick.GetPersistentMethodName(i)==method).DefaultIfEmpty(-1).First();
    if(index>=0)UnityEventTools.RemovePersistentListener(b.onClick,index);else logs.Add("Restored missing original purchase callback: "+(string)route["label"]);
    UnityEventTools.AddPersistentListener(b.onClick,adapter.Purchase);}
   b.interactable=true;EditorUtility.SetDirty(b);EditorUtility.SetDirty(adapter);bound.Add(new{path=(string)route["label"],product=adapter.ProductId});
  }
  var all=scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<Transform>(true)).ToArray();
  foreach(var currency in store.ShopUI.GetComponentsInChildren<Currency>(true))EditorUtility.SetDirty(currency);
  // Existing commercial price labels retained; a visible simulation notice lives
  // on the restored shop heading rather than changing native price numbers.
  var heading=store.ShopUI.GetComponentsInChildren<TMPro.TextMeshProUGUI>(true).FirstOrDefault(t=>t.text=="Shop"||t.text=="SHOP");if(heading!=null)heading.text="SHOP · SIMULATION";
  if(c.Tutorial!=null){var td=JObject.Parse(File.ReadAllText("Assets/Recovery/Editor/OriginalTutorial.json"));var row=td["rows"].Single(r=>(int)r["originalGo"]==758);var refs=(JObject)td["references"];for(int i=0;i<c.Tutorial.DisableOnTutorial.Length;i++)if(c.Tutorial.DisableOnTutorial[i]==null){var p=refs[(string)row["fields"]["DisableOnTutorial"][i]["fileID"]] as JArray;if(p!=null)c.Tutorial.DisableOnTutorial[i]=Resolve(scene,p);}EditorUtility.SetDirty(c.Tutorial);}
  RecoveryEditor.RebuildSceneDynamicFonts();AssetDatabase.SaveAssets();EditorUtility.SetDirty(c);EditorUtility.SetDirty(store);EditorSceneManager.MarkSceneDirty(scene);if(!EditorSceneManager.SaveScene(scene))throw new IOException("Scene save failed");
  var report=new{scene=scene.path,objects=all.Length,missingScripts=all.Sum(t=>GameObjectUtility.GetMonoBehavioursWithMissingScriptCount(t.gameObject)),spriteRepairs,particleRepairs,missingSlots,materialAdapterLog=logs,bound,absentOriginalBranches=absent,localOnly=true,realPayments=false};File.WriteAllText(Path.Combine(reportPath,"playtest-issues-scene-restoration.json"),Newtonsoft.Json.JsonConvert.SerializeObject(report,Newtonsoft.Json.Formatting.Indented));
 }
}
