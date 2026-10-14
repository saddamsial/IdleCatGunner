using System;using System.IO;using System.Linq;using System.Collections.Generic;using System.Reflection;using UnityEditor;using UnityEditor.SceneManagement;using UnityEngine;using UnityEngine.UI;using TMPro;using CatGunner.Recovery;
public static class BakeRecoveredUi
{
 const string Output="Assets/Recovery/AuthoredUI";
 public static object Main()
 {
  var scene=UnityEngine.SceneManagement.SceneManager.GetActiveScene();
  if(Application.isPlaying||scene.path!="Assets/Recovery/Scenes/RecoveredClient.unity")throw new Exception("RecoveredClient EditMode required");
  var c=UnityEngine.Object.FindAnyObjectByType<RecoveryForestClient>(FindObjectsInactive.Include);var canvas=c.Slider.GetComponentInParent<Canvas>();
  if(c.GetComponent<PenguinUiTheme>().StaticUiBaked)throw new Exception("Already baked: manual edits must be preserved");
  Directory.CreateDirectory(Output+"/Materials");AssetDatabase.Refresh();
  var aliases=canvas.gameObject.GetComponent<RecoveryUiAuthoring>()??canvas.gameObject.AddComponent<RecoveryUiAuthoring>();aliases.CaptureAliases();
  int before=canvas.GetComponentsInChildren<Transform>(true).Length;
  c.Tutorial.BakeChallengeCue();RecoveryPlusPackItem.BindAll(c);
  var viewport=c.GetComponent<RecoveryMobileViewport>()??c.gameObject.AddComponent<RecoveryMobileViewport>();viewport.BakeStaticLayout((RectTransform)RecoveryUiAuthoring.Find(canvas.transform,"SafeArea"));
  var presentation=c.GetComponent<RecoveryClientPresentation>()??c.gameObject.AddComponent<RecoveryClientPresentation>();presentation.BakeStaticUi(c);
  var language=c.GetComponent<RecoveryLanguage>()??c.gameObject.AddComponent<RecoveryLanguage>();language.BakeStaticUi(canvas.transform,presentation);
  OriginalSeasonPreview.Bind(canvas.transform);
  foreach(var name in new[]{"SpeedRun_UI","Boss_UI","Raid_UI"})
  {
   var root=RecoveryUiAuthoring.Find(canvas.transform,"SafeArea/"+name+"/Currency");if(root==null)continue;
   var currency=root.GetComponent<Currency>()??root.gameObject.AddComponent<Currency>();currency.Money_txt=RecoveryUiAuthoring.Find(root,"Money/Price_txt").GetComponent<TextMeshProUGUI>();currency.Dia_txt=RecoveryUiAuthoring.Find(root,"Dia/Price_txt").GetComponent<TextMeshProUGUI>();
  }
  var full=c.GetComponent<PenguinFullReskin>();var map=new Dictionary<Sprite,Sprite>();
  for(int i=0;i<full.Sources.Length;i++)if(full.Sources[i]!=null&&full.Replacements[i]!=null&&!(full.PreserveOriginalRingStyle&&PenguinFullReskin.IsOriginalGlow(full.Sources[i])))map[full.Sources[i]]=full.Replacements[i];
  Sprite Replace(Sprite original)=>original!=null&&map.TryGetValue(original,out var next)?next:original;
  foreach(var behaviour in canvas.GetComponentsInChildren<MonoBehaviour>(true))
  {
   if(behaviour==null||behaviour is Graphic||behaviour is PenguinFullReskin||behaviour is PenguinUiTheme||behaviour is PenguinExpeditionTheme)continue;
   foreach(var field in behaviour.GetType().GetFields(BindingFlags.Public|BindingFlags.Instance))
   {
    if(behaviour is Skin_manager&&field.Name=="Skin_Bone_sprites")continue;
    if(field.FieldType==typeof(Sprite[])){var old=(Sprite[])field.GetValue(behaviour);if(old!=null)field.SetValue(behaviour,Array.ConvertAll(old,Replace));}
    else if(field.FieldType==typeof(Sprite))field.SetValue(behaviour,Replace((Sprite)field.GetValue(behaviour)));
   }
  }
  foreach(var image in canvas.GetComponentsInChildren<Image>(true))
  {
   var old=image.sprite;var next=Replace(old);if(old!=next){image.sprite=next;image.color=new Color(1,1,1,image.color.a);image.preserveAspect=!(next.name.Contains("landscapes-")||next.name.Contains("extras-gradient"));}
   if(old!=null&&image.transform.name=="Cat_img"&&AncestorNameContains(image.transform,"Weekly"))image.sprite=full.WeeklyShop;
  }
  foreach(var raw in canvas.GetComponentsInChildren<RawImage>(true))
  {int index=Array.IndexOf(full.OriginalTextures,raw.texture);if(index>=0&&!(raw.texture is RenderTexture))raw.texture=full.ThemedTextures[index];}
  foreach(var text in canvas.GetComponentsInChildren<TMP_Text>(true))
  {int index=Array.IndexOf(full.OriginalGlyphs,text.spriteAsset);if(index>=0)text.spriteAsset=full.ThemedGlyphs[index];}
  c.GetComponent<PenguinUiTheme>().BakeStaticUi();
  c.GetComponent<PenguinPlaytestPolish>().BakeStaticUi();
  foreach(var actor in canvas.GetComponentsInChildren<PenguinLoadingMascot>(true))actor.Authored=true;
  foreach(var pointer in canvas.GetComponentsInChildren<PenguinGuidePointer>(true))pointer.Authored=true;
  // The loading background is a persistent Canvas sibling behind the HUD. Startup only changes its visibility/input layer.
  var loading=c.LoadingUI;loading.transform.SetParent(canvas.transform,false);loading.transform.SetAsFirstSibling();
  var loadingRect=(RectTransform)loading.transform;loadingRect.anchorMin=Vector2.zero;loadingRect.anchorMax=Vector2.one;loadingRect.offsetMin=loadingRect.offsetMax=Vector2.zero;
  var overlay=loading.GetComponent<Canvas>();if(overlay==null)overlay=loading.AddComponent<Canvas>();overlay.overrideSorting=true;overlay.sortingOrder=0;
  if(loading.GetComponent<GraphicRaycaster>()==null)loading.AddComponent<GraphicRaycaster>();
  var group=loading.GetComponent<CanvasGroup>();if(group==null)group=loading.AddComponent<CanvasGroup>();group.blocksRaycasts=false;
  loading.SetActive(false);
  // Never persist a transient material reference from the presentation adapters.
  var persisted=new Dictionary<Material,Material>();int materialIndex=0;
  Material Persist(Material mat)
  {
   if(mat==null||AssetDatabase.Contains(mat))return mat;
   if(persisted.TryGetValue(mat,out var saved))return saved;
   saved=new Material(mat){name=mat.name.Replace("(runtime)","(authored)")};
   string path=Output+"/Materials/UiStyle-"+(materialIndex++).ToString("D3")+".mat";AssetDatabase.CreateAsset(saved,path);persisted.Add(mat,saved);return saved;
  }
  foreach(var behaviour in canvas.GetComponentsInChildren<MonoBehaviour>(true))
  {
   if(behaviour==null)continue;
   var so=new SerializedObject(behaviour);var iterator=so.GetIterator();bool enter=true;
   while(iterator.Next(enter))
   {
    enter=true;if(iterator.propertyType!=SerializedPropertyType.ObjectReference)continue;
    var mat=iterator.objectReferenceValue as Material;if(mat!=null&&!AssetDatabase.Contains(mat))iterator.objectReferenceValue=Persist(mat);
   }
   so.ApplyModifiedPropertiesWithoutUndo();EditorUtility.SetDirty(behaviour);
  }
  foreach(var text in canvas.GetComponentsInChildren<TMP_Text>(true))text.fontSharedMaterial=Persist(text.fontSharedMaterial);
  foreach(var style in canvas.GetComponentsInChildren<RecoveryWeaponTextStyle>(true))style.BakeStyle();
  full.StaticUiBaked=true;c.StaticUiBaked=true;aliases.StaticUiBaked=true;aliases.CaptureAliases();
  // Replaced prefab instance fields and added scripts remain explicitly saved overrides.
  foreach(var go in canvas.GetComponentsInChildren<Transform>(true))
  {EditorUtility.SetDirty(go);EditorUtility.SetDirty(go.gameObject);foreach(var component in go.GetComponents<Component>())if(component!=null){EditorUtility.SetDirty(component);if(PrefabUtility.IsPartOfPrefabInstance(component))PrefabUtility.RecordPrefabInstancePropertyModifications(component);}}
  EditorUtility.SetDirty(c);EditorUtility.SetDirty(full);EditorUtility.SetDirty(presentation);EditorUtility.SetDirty(language);EditorUtility.SetDirty(c.GetComponent<PenguinUiTheme>());EditorUtility.SetDirty(c.GetComponent<PenguinPlaytestPolish>());
  Canvas.ForceUpdateCanvases();EditorSceneManager.MarkSceneDirty(scene);AssetDatabase.SaveAssets();
  if(!EditorSceneManager.SaveScene(scene))throw new Exception("Save failed");
  return new{saved=true,before,after=canvas.GetComponentsInChildren<Transform>(true).Length,aliases=aliases.BindingCount,materials=materialIndex};
 }
 static bool AncestorNameContains(Transform t,string part){while(t!=null){if(t.name.Contains(part))return true;t=t.parent;}return false;}
}
