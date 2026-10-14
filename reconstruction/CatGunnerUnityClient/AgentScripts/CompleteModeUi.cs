using System;using System.IO;using System.Linq;using UnityEngine;using UnityEngine.UI;using UnityEditor;using UnityEditor.SceneManagement;using TMPro;using CatGunner.Runtime;
public static class CompleteModeUi {
 static string P(Transform t){string p=t.name;while(t.parent!=null){t=t.parent;p=t.name+"/"+p;}return p;}
 static void Dirty(UnityEngine.Object o){EditorUtility.SetDirty(o);if(PrefabUtility.IsPartOfPrefabInstance(o))PrefabUtility.RecordPrefabInstancePropertyModifications(o);}
 public static object Main(){if(Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets"||Application.isPlaying)throw new Exception("Correct EditMode required");var c=UnityEngine.Object.FindAnyObjectByType<GameClient>(FindObjectsInactive.Include);var canvas=c.Slider.GetComponentInParent<Canvas>();int mats=0,vips=0,overlays=0;
 foreach(var guid in AssetDatabase.FindAssets("t:Material",new[]{"Assets/Game/PenguinModeUI"})){var m=AssetDatabase.LoadAssetAtPath<Material>(AssetDatabase.GUIDToAssetPath(guid));if(!m.name.StartsWith("ModeText"))continue;Undo.RecordObject(m,"Remove excessive glyph expansion");m.SetFloat("_FaceDilate",0);m.SetFloat("_UnderlayDilate",0);m.DisableKeyword("UNDERLAY_ON");m.DisableKeyword("UNDERLAY_INNER");Dirty(m);mats++;}
 var vip=AssetDatabase.LoadAssetAtPath<Sprite>("Assets/Game/PenguinModeUI/vip-crown.png");
 foreach(var im in canvas.GetComponentsInChildren<Image>(true)){string p=P(im.transform);
 if(p.Contains("Mission_maanger/")&&im.sprite!=null&&im.sprite.name.Contains("gems-14")){Undo.RecordObject(im,"VIP emblem");im.sprite=vip;im.preserveAspect=true;im.type=Image.Type.Simple;im.color=Color.white;Dirty(im);vips++;}
 if(p.Contains("Adventure")&&im.name.StartsWith("Block_obj")){Undo.RecordObject(im,"Travel locked contrast");im.color=new Color(24/255f,62/255f,90/255f,.7f);Dirty(im);overlays++;}
 }
 // The ticket count heading sits over the light card, while the count itself is on a blue chip.
 var heading=UiAuthoring.Find(c.MineMode.mineStart_ui.transform,"Panel/Ticket/I2_txt")?.GetComponent<TMP_Text>();if(heading!=null){heading.color=PenguinUiTheme.TextInk;Dirty(heading);}
 var scene=c.gameObject.scene;AssetDatabase.SaveAssets();EditorSceneManager.MarkSceneDirty(scene);if(!EditorSceneManager.SaveScene(scene))throw new Exception("Save failed");return new{mats,vips,overlays,saved=true};}
}
