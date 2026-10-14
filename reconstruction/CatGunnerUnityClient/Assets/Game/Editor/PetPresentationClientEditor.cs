using System;
using System.IO;
using System.Linq;
using Newtonsoft.Json.Linq;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;
using UnityEngine.SceneManagement;
using Spine.Unity;
using CatGunner.Runtime;
public static class PetPresentationClientEditor
{
 private static GameObject Resolve(Scene scene,JArray path)
 {
  Transform current=null;
  foreach(JObject node in path){string name=(string)node["name"];int ordinal=(int)node["ordinal"];var list=current==null?scene.GetRootGameObjects().Select(g=>g.transform):current.Cast<Transform>();current=list.Where(t=>t.name==name).Skip(ordinal).FirstOrDefault();if(current==null)return null;}
  return current?.gameObject;
 }
 private static void Set(SerializedProperty property,JToken value,Scene scene,JObject references)
 {
  if(property==null)return;
  if(property.propertyType==SerializedPropertyType.ObjectReference)
  {
   var obj=value as JObject;UnityEngine.Object target=null;
   if(obj!=null&&(long?)obj["fileID"]!=0)
   {
    if(obj["guid"]!=null){string path=AssetDatabase.GUIDToAssetPath((string)obj["guid"]);long id=(long)obj["fileID"];target=AssetDatabase.LoadAllAssetsAtPath(path).FirstOrDefault(a=>AssetDatabase.TryGetGUIDAndLocalFileIdentifier(a,out string _,out long local)&&local==id);}
    else {var go=Resolve(scene,(JArray)references[(string)obj["fileID"]]);if(go!=null){target=go;if(property.type!="PPtr<$GameObject>"){Type expected=property.type.Contains("Pet_Dummy")?typeof(Pet_Dummy):property.type.Contains("Rigidbody")?typeof(Rigidbody):null;if(expected!=null)target=go.GetComponent(expected);}}}
    if(target==null)throw new InvalidOperationException("Unresolved original pet reference "+property.propertyPath+" "+obj);
   }
   property.objectReferenceValue=target;return;
  }
  if(property.isArray&&property.propertyType!=SerializedPropertyType.String&&value is JArray array){property.arraySize=array.Count;for(int i=0;i<array.Count;i++)Set(property.GetArrayElementAtIndex(i),array[i],scene,references);return;}
  switch(property.propertyType)
  {
   case SerializedPropertyType.Boolean:property.boolValue=(int?)value!=0;break;
   case SerializedPropertyType.Integer:case SerializedPropertyType.Enum:property.intValue=(int)value;break;
   case SerializedPropertyType.Float:property.floatValue=(float)value;break;
   case SerializedPropertyType.String:property.stringValue=value.Type==JTokenType.Null?string.Empty:(string)value;break;
   case SerializedPropertyType.Vector3:property.vector3Value=new Vector3((float)value["x"],(float)value["y"],(float)value["z"]);break;
   case SerializedPropertyType.Generic:if(value is JObject fields)foreach(var f in fields.Properties())Set(property.FindPropertyRelative(f.Name),f.Value,scene,references);break;
  }
 }
 public static void Integrate()
 {
  if(EditorApplication.isPlaying)throw new InvalidOperationException("EditMode required");
  var scene=EditorSceneManager.OpenScene(ForestClientEditor.ScenePath);
  if(!scene.GetRootGameObjects().Any(g=>g.name=="Adventure_RenderTexture_Map"))
  {
   var slice=EditorSceneManager.OpenScene("Assets/Game/Scenes/PetPresentation.unity",OpenSceneMode.Additive);
   foreach(var root in slice.GetRootGameObjects())SceneManager.MoveGameObjectToScene(root,scene);
   EditorSceneManager.CloseScene(slice,true);SceneManager.SetActiveScene(scene);
  }
  var data=JObject.Parse(File.ReadAllText("Assets/Game/Editor/PetSpine.json"));var references=(JObject)data["references"];int added=0,restored=0;
  foreach(JObject row in data["rows"])
  {
   var go=Resolve(scene,(JArray)row["path"]);if(go==null)throw new InvalidOperationException("Missing original pet hierarchy "+row["originalGo"]);
   Type type=(string)row["type"]=="SkeletonAnimation"?typeof(SkeletonAnimation):typeof(Pet).Assembly.GetType((string)row["type"]);
   var c=go.GetComponent(type);if(c==null){c=go.AddComponent(type);added++;}var so=new SerializedObject(c);
   // Adventure panel already owns recovered gameplay references; restore only preview fields.
   foreach(var field in ((JObject)row["fields"]).Properties())
   {
    if(type==typeof(Adventure_Panel)&&field.Name!="RenderTexture_Map_obj"&&field.Name!="Pet_Dummy_list")continue;
    Set(so.FindProperty(field.Name),field.Value,scene,references);
   }
   so.ApplyModifiedPropertiesWithoutUndo();((Behaviour)c).enabled=(bool)row["enabled"];EditorUtility.SetDirty(c);restored++;
  }
  var client=UnityEngine.Object.FindAnyObjectByType<GameClient>();var panel=client.Adventure.adventure_panel_ui;
  var preview=client.Adventure.LocalTabs.Menu_objs[0].GetComponent<AdventurePreview>();if(preview==null)preview=client.Adventure.LocalTabs.Menu_objs[0].AddComponent<AdventurePreview>();preview.Panel=panel;
  panel.RenderTexture_Map_obj.SetActive(false);
  // Source camera is URP overlay with clearDepth. Current client uses BiRP:
  // transparent colour clearing prevents stale frames when previews are hidden.
  var camera=panel.RenderTexture_Map_obj.GetComponentInChildren<Camera>(true);camera.clearFlags=CameraClearFlags.SolidColor;
  foreach(var p in client.PetFollowers.Pets)
   foreach(var t in p.GetComponentsInChildren<Transform>(true).Where(t=>t.name.Contains("Recovery static pet sprite")).ToArray())UnityEngine.Object.DestroyImmediate(t.gameObject);
  var skeletons=scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<SkeletonAnimation>(true)).ToArray();
  if(skeletons.Length!=286||panel.Pet_Dummy_list.Length!=19||panel.Pet_Dummy_list.Any(x=>x==null)||skeletons.Any(x=>x.skeletonDataAsset==null))throw new InvalidOperationException("Pet presentation refs incomplete");
  foreach(var asset in skeletons.Select(x=>x.skeletonDataAsset).Distinct())if(asset.GetSkeletonData(false)==null)throw new InvalidOperationException("Invalid original skeleton "+asset.name);
  int missing=scene.GetRootGameObjects().Sum(g=>g.GetComponentsInChildren<Transform>(true).Sum(t=>GameObjectUtility.GetMonoBehavioursWithMissingScriptCount(t.gameObject)));
  if(missing!=0)throw new InvalidOperationException("Missing pet scripts: "+missing);
  EditorSceneManager.MarkSceneDirty(scene);if(!EditorSceneManager.SaveScene(scene))throw new IOException("Pet scene save failed");AssetDatabase.SaveAssets();
  var report=new{scene=scene.path,restoredComponents=restored,addedComponents=added,skeletonComponents=skeletons.Length,skeletonAssets=skeletons.Select(x=>x.skeletonDataAsset).Distinct().Count(),worldPets=3,previewPets=19,skinsPerPet=13,missingScripts=missing,renderTexture=camera.targetTexture.name,previewLifecycle="Explicit local adapter closes external preview camera with Map tab",renderingCompatibility="Official Spine4.1 shader/runtime on Unity6 BiRP; original URP overlay camera converted to transparent solid clear",runtimeValidation="pending"};
  File.WriteAllText(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/pet-presentation-scene-restoration.json")),Newtonsoft.Json.JsonConvert.SerializeObject(report,Newtonsoft.Json.Formatting.Indented));
 }
}
