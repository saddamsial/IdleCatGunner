using System;using System.IO;using System.Linq;using Newtonsoft.Json;using UnityEditor;using UnityEngine;using UnityEngine.UI;using TMPro;using CatGunner.Recovery;
public static class AuditAuthoredUi
{
 public static object Main()
 {
  if(Application.isPlaying)throw new Exception("Final audit requires EditMode");
  var c=UnityEngine.Object.FindAnyObjectByType<RecoveryForestClient>(FindObjectsInactive.Include);var canvas=c.Slider.GetComponentInParent<Canvas>();var aliases=canvas.GetComponent<RecoveryUiAuthoring>();
  int missing=canvas.GetComponentsInChildren<Transform>(true).Sum(t=>GameObjectUtility.GetMonoBehavioursWithMissingScriptCount(t.gameObject));
  var transient=canvas.GetComponentsInChildren<TMP_Text>(true).Where(t=>t.fontSharedMaterial!=null&&!AssetDatabase.Contains(t.fontSharedMaterial)).Select(t=>t.name).ToArray();
  var so=new SerializedObject(aliases);var bindings=so.FindProperty("bindings");int missingAliases=0;
  for(int i=0;i<bindings.arraySize;i++)if(bindings.GetArrayElementAtIndex(i).FindPropertyRelative("Target").objectReferenceValue==null)missingAliases++;
  if(missing!=0||missingAliases!=0||transient.Length!=0||EditorUtility.scriptCompilationFailed)throw new Exception("Final audit failed: missing scripts "+missing+", missing aliases "+missingAliases+", transient text materials "+transient.Length);
  if(!c.StaticUiBaked||!c.Persist||!c.GetComponent<PenguinUiTheme>().StaticUiBaked||!c.GetComponent<PenguinFullReskin>().StaticUiBaked||!c.GetComponent<PenguinPlaytestPolish>().StaticUiBaked||!c.GetComponent<RecoveryClientPresentation>().StaticUiBaked||!c.GetComponent<RecoveryLanguage>().StaticUiBaked||!c.GetComponent<RecoveryMobileViewport>().StaticUiBaked)throw new Exception("Authoring flags or production persistence invalid");
  var report=new{scene=c.gameObject.scene.path,editMode=true,missingScripts=missing,missingAliases,transientTextMaterials=transient.Length,bindings=bindings.arraySize,nodes=canvas.GetComponentsInChildren<Transform>(true).Length,scrollContainers=canvas.GetComponentsInChildren<ScrollRect>(true).Count(s=>s.name=="OfferScrollView"),mergeSwitches=canvas.GetComponentsInChildren<PenguinMergeSwitch>(true).Length,statusMascots=canvas.GetComponentsInChildren<PenguinLoadingMascot>(true).Length,tutorialPointers=canvas.GetComponentsInChildren<PenguinGuidePointer>(true).Length,offerCards=canvas.GetComponentsInChildren<PenguinOfferCard>(true).Length,plusItems=canvas.GetComponentsInChildren<RecoveryPlusPackItem>(true).Length,materials=AssetDatabase.FindAssets("t:Material",new[]{"Assets/Recovery/AuthoredUI"}).Length};
  File.WriteAllText("/Volumes/ZHITAI_1T/IdleCatGunner/art/ui-authoring/20261014/scene-audit-final.json",JsonConvert.SerializeObject(report,Formatting.Indented));UnityEditor.Selection.activeGameObject=canvas.gameObject;return report;
 }
}
