using System;using System.Linq;using UnityEditor;using UnityEditor.SceneManagement;using UnityEngine;using UnityEngine.UI;using TMPro;using CatGunner.Recovery;
public static class CompleteAuthoredUi
{
 public static object Main()
 {
  if(Application.isPlaying)throw new Exception("EditMode required");
  var c=UnityEngine.Object.FindAnyObjectByType<RecoveryForestClient>(FindObjectsInactive.Include);var canvas=c.Slider.GetComponentInParent<Canvas>();
  c.Tutorial.BakeChallengeCue();RecoveryPlusPackItem.BindAll(c);
  int count=0;
  foreach(var item in canvas.GetComponentsInChildren<RecoveryPlusPackItem>(true))
  {
   item.Authored=true;
   if(!item.IsBanner&&item.GetComponent<PenguinOfferCard>()==null){item.gameObject.AddComponent<PenguinOfferCard>().Configure(c.GetComponent<PenguinUiTheme>().Panel);count++;}
  }
  int n=15;
  foreach(var style in canvas.GetComponentsInChildren<RecoveryWeaponTextStyle>(true).Where(s=>!s.Authored))
  {
   var text=style.GetComponent<TMP_Text>();var material=text.fontSharedMaterial;
   if(material!=null&&!AssetDatabase.Contains(material)){var saved=new Material(material);AssetDatabase.CreateAsset(saved,"Assets/Recovery/AuthoredUI/Materials/UiStyle-"+(n++).ToString("D3")+".mat");text.fontSharedMaterial=saved;}
   style.BakeStyle();
  }
  var aliases=canvas.GetComponent<RecoveryUiAuthoring>();aliases.CaptureAliases();
  foreach(var component in canvas.GetComponentsInChildren<Component>(true))if(component!=null){EditorUtility.SetDirty(component);if(PrefabUtility.IsPartOfPrefabInstance(component))PrefabUtility.RecordPrefabInstancePropertyModifications(component);}
  AssetDatabase.SaveAssets();EditorSceneManager.MarkSceneDirty(c.gameObject.scene);EditorSceneManager.SaveScene(c.gameObject.scene);
  return new{cardsAdded=count,pointers=canvas.GetComponentsInChildren<PenguinGuidePointer>(true).Length,plusItems=canvas.GetComponentsInChildren<RecoveryPlusPackItem>(true).Length};
 }
}
