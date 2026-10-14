using System;using System.Linq;using System.Collections.Generic;using UnityEditor;using UnityEditor.SceneManagement;using UnityEngine;using TMPro;using CatGunner.Recovery;
public static class PersistUiReferences
{
 public static object Main()
 {
  if(Application.isPlaying)throw new Exception("EditMode required");
  var c=UnityEngine.Object.FindAnyObjectByType<RecoveryForestClient>(FindObjectsInactive.Include);var canvas=c.Slider.GetComponentInParent<Canvas>();var aliases=canvas.GetComponent<RecoveryUiAuthoring>();aliases.CaptureAliases();
  var mapped=new Dictionary<Material,Material>();int n=0;
  foreach(var style in canvas.GetComponentsInChildren<RecoveryWeaponTextStyle>(true))
  {
   var so=new SerializedObject(style);var property=so.FindProperty("westernMaterial");var western=property.objectReferenceValue as Material;var authored=so.FindProperty("authoredMaterial").objectReferenceValue as Material;
   if(western==null||authored==null||!western.HasProperty("_OutlineColor")||!authored.HasProperty("_OutlineColor")||western.GetColor("_OutlineColor")==authored.GetColor("_OutlineColor"))continue;
   if(!mapped.TryGetValue(western,out var themed))
   {
    themed=new Material(western){name=western.name+" authored UI"};themed.SetColor("_OutlineColor",authored.GetColor("_OutlineColor"));
    AssetDatabase.CreateAsset(themed,"Assets/Recovery/AuthoredUI/Materials/WesternUiStyle-"+(n++).ToString("D3")+".mat");mapped.Add(western,themed);
   }
   property.objectReferenceValue=themed;so.ApplyModifiedPropertiesWithoutUndo();EditorUtility.SetDirty(style);
   if(PrefabUtility.IsPartOfPrefabInstance(style))PrefabUtility.RecordPrefabInstancePropertyModifications(style);
  }
  EditorUtility.SetDirty(aliases);EditorSceneManager.MarkSceneDirty(c.gameObject.scene);AssetDatabase.SaveAssets();EditorSceneManager.SaveScene(c.gameObject.scene);
  return new{aliases=aliases.BindingCount,westernMaterials=n,saved=true};
 }
}
