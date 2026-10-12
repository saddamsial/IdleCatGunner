using System;
using System.IO;
using System.Linq;
using Newtonsoft.Json.Linq;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using TMPro;
using CatGunner.Recovery;
public static class SharedUIClientEditor
{
 private static GameObject Resolve(Scene scene,JArray path)
 {
  Transform current=null;
  foreach(JObject node in path){string name=(string)node["name"];int ordinal=(int)node["ordinal"];var list=current==null?scene.GetRootGameObjects().Select(g=>g.transform):current.Cast<Transform>();current=list.Where(t=>t.name==name).Skip(ordinal).FirstOrDefault();if(current==null)return null;}
  return current?.gameObject;
 }
 public static void Integrate()
 {
  if(EditorApplication.isPlaying)throw new InvalidOperationException("EditMode required");var scene=SceneManager.GetActiveScene();var rows=JArray.Parse(File.ReadAllText("Assets/Recovery/Editor/OriginalSharedUI.json"));int added=0,skipped=0;
  foreach(JObject row in rows)
  {
   var go=Resolve(scene,(JArray)row["path"]);if(go==null){skipped++;continue;}string name=(string)row["type"];Type type=typeof(BounceBtn).Assembly.GetType(name);var c=go.GetComponent(type);if(c==null){c=go.AddComponent(type);added++;}
   if(c is Behaviour behaviour)behaviour.enabled=(bool?)row["enabled"]??true;
   var so=new SerializedObject(c);foreach(var field in ((JObject)row["fields"]).Properties())
   {var property=so.FindProperty(field.Name);if(property==null)continue;var value=(JObject)field.Value;if(value["reference"]!=null){var target=Resolve(scene,(JArray)value["reference"]);var info=type.GetField(field.Name);property.objectReferenceValue=target==null?null:info.FieldType==typeof(GameObject)?target:target.GetComponent(info.FieldType);}else if(property.propertyType==SerializedPropertyType.Float)property.floatValue=(float)value["number"];else if(property.propertyType==SerializedPropertyType.Integer)property.intValue=(int)value["number"];else if(property.propertyType==SerializedPropertyType.Enum)property.intValue=(int)value["number"];else if(property.propertyType==SerializedPropertyType.Boolean)property.boolValue=(float)value["number"]!=0;}
   so.ApplyModifiedPropertiesWithoutUndo();EditorUtility.SetDirty(c);
  }
  var client=UnityEngine.Object.FindAnyObjectByType<RecoveryForestClient>();client.OfflineAutoMergePreview=true;
  var onOffRow=rows.OfType<JObject>().Single(r=>(int)r["originalComponent"]==135298);client.Guns.OnOff_UI=Resolve(scene,(JArray)onOffRow["path"]).GetComponent<OnOff>();
  Bind(client.Guns.Auto_Btn_obj.GetComponent<Button>(),client.Guns.AutoMerge_Change);client.Guns.Auto_Btn_obj.GetComponent<Button>().interactable=true;
  client.PetUI.OnOff_UI=client.PetUI.Auto_Btn_obj.GetComponent<OnOff>();client.PetUI.AutoMerge_Degree=6;
  client.PetUI.Auto_Explain_obj=client.PetUI.Pet_UI_obj.GetComponentsInChildren<Transform>(true).Single(t=>t.name=="Auto_Explain").gameObject;
  client.PetUI.NonAuto_Explain_obj=client.PetUI.Pet_UI_obj.GetComponentsInChildren<Transform>(true).Single(t=>t.name=="Explain").gameObject;
  Bind(client.PetUI.Auto_Btn_obj.GetComponent<Button>(),client.PetUI.AutoMerge_Change);client.PetUI.Auto_Btn_obj.GetComponent<Button>().interactable=true;
  foreach(var go in new[]{client.Guns.NonAuto_Explain_obj,client.Fish.NonAuto_Explain_obj,client.PetUI.NonAuto_Explain_obj}){var text=go?.GetComponentInChildren<TextMeshProUGUI>(true);if(text!=null&&!text.text.Contains("Local offline"))text.text+="\n[Local offline auto merge preview]";}
  EditorSceneManager.MarkSceneDirty(scene);EditorSceneManager.SaveScene(scene);AssetDatabase.SaveAssets();
  string root=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));File.WriteAllText(Path.Combine(root,"shared-ui-client-restoration.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{addedComponents=added,unmatchedOriginalPaths=skipped,originalComponents=rows.Count,offlinePreview=true,purchaseStateModified=false},Newtonsoft.Json.Formatting.Indented));
 }
 private static void Bind(Button b,UnityEngine.Events.UnityAction action){while(b.onClick.GetPersistentEventCount()>0)UnityEditor.Events.UnityEventTools.RemovePersistentListener(b.onClick,0);UnityEditor.Events.UnityEventTools.AddPersistentListener(b.onClick,action);}
}
