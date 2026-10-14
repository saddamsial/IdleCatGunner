using System;using System.IO;using System.Linq;using System.Collections.Generic;using UnityEngine;using UnityEngine.UI;using UnityEditor;using UnityEditor.SceneManagement;using TMPro;using CatGunner.Runtime;
public static class ModeUiV2Palette {
 static Color Navy=new Color32(24,53,76,255),Ink=new Color32(24,62,90,255),Light=new Color32(227,241,248,255),Detail=new Color32(197,221,234,255),Gold=new Color32(255,185,67,255),Row=new Color32(53,86,108,255);
 static string P(Transform t){string p=t.name;while(t.parent!=null){t=t.parent;p=t.name+"/"+p;}return p;}
 static int Mode(string p){if(p.Contains("/Monster_UI/"))return 0;if(p.Contains("/Mine_UI/"))return 1;if(p.Contains("/SpeedRun_UI/"))return 2;if(p.Contains("/Boss_UI/"))return 3;if(p.Contains("/Raid_UI/"))return 4;if(p.Contains("Adventure"))return 5;return -1;}
 static bool Shape(Image i)=>i.sprite!=null&&(i.sprite.name.Contains("flat-ui-panel")||i.sprite.name.Contains("flat-ui-fill"));
 static bool Dark(Color c)=>.2126f*c.r+.7152f*c.g+.0722f*c.b<.55f;
 static void Dirty(UnityEngine.Object o){EditorUtility.SetDirty(o);if(PrefabUtility.IsPartOfPrefabInstance(o))PrefabUtility.RecordPrefabInstancePropertyModifications(o);}
 public static object Main(bool preview=false){
 if(Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets"||Application.isPlaying)throw new Exception("Correct EditMode required");
 var c=UnityEngine.Object.FindAnyObjectByType<GameClient>(FindObjectsInactive.Include);var scene=c.gameObject.scene;if(scene.path!="Assets/Game/Scenes/GameClient.unity")throw new Exception("Wrong scene");var canvas=c.Slider.GetComponentInParent<Canvas>();var images=canvas.GetComponentsInChildren<Image>(true);int panels=0,labels=0;
 foreach(var i in images){string p=P(i.transform);int m=Mode(p);if(m<0||preview&&m!=0&&m!=1)continue;
 if(i.name=="Background"&&i.sprite==null&&i.color.a>.1f&&i.rectTransform.rect.height>1200){Undo.RecordObject(i,"Deep blue mode backdrop");i.color=new Color(13/255f,30/255f,45/255f,.88f);Dirty(i);continue;}
 if(!Shape(i)||i.GetComponent<Mask>()!=null||i.type==Image.Type.Filled||p.Contains("/Locked_obj")||i.name.StartsWith("Block_obj")||i.name.Contains("Purchased")||p.Contains("Relic_Item")||p.Contains("Pet_Slot")||p.Contains("Pet_Item"))continue;
 Undo.RecordObject(i,"Unified deep blue modes");
 bool offer=p.Contains("Banner_PlusPack/");var owner=i.GetComponent<Button>()??i.GetComponentInParent<Button>(true);bool button=owner!=null&&(owner.name.Contains("_Btn")||owner.name.Contains("Button")||owner.name.Contains("AD_Bonus"));
 if(offer)i.color=i.name=="Active_Panel"?Detail:Light;
 else if(button)i.color=Gold;
 else if(p.Contains("/Rank_Panel"))i.color=i.name=="Rank_Panel"?Navy:Row;
 else if(i.name=="Damage"||i.name=="Speed"||i.name=="Ticket"||i.name=="Time"||i.name=="HP_Slider")i.color=Row;
 else if(i.name=="Explain"||i.name=="Explain (1)"||i.name=="Reward"||i.name=="Power_My"||i.name=="Gun_Slot")i.color=Detail;
 else if(i.name=="Panel"&&(p.Contains("_Start_UI/Panel")||m==5))i.color=Navy;
 else i.color=Light;
 Dirty(i);panels++;
 }
 foreach(var b in canvas.GetComponentsInChildren<Button>(true)){int m=Mode(P(b.transform));if(m<0||preview&&m!=0&&m!=1)continue;var im=b.targetGraphic as Image;if(im==null||!Shape(im))continue;Undo.RecordObject(b,"Warm action states");var colors=b.colors;colors.normalColor=Color.white;colors.highlightedColor=new Color(1,.95f,.82f);colors.pressedColor=new Color(.86f,.78f,.65f);colors.disabledColor=new Color(.58f,.64f,.68f);b.colors=colors;Dirty(b);}
 // Preserve the existing atlas and font metrics; only adjust the private materials from v1.
 var styles=new Dictionary<Tuple<Material,bool>,Material>();int index=0;string root=preview?"Assets/Game/PenguinModeUIV2/PreviewMaterials":"Assets/Game/PenguinModeUIV2/FinalMaterials";Directory.CreateDirectory(root);AssetDatabase.Refresh();
 foreach(var t in canvas.GetComponentsInChildren<TMP_Text>(true)){string p=P(t.transform);int m=Mode(p);if(m<0||preview&&m!=0&&m!=1)continue;
 bool dark=false;for(var a=t.transform.parent;a!=null&&a!=canvas.transform;a=a.parent){var i=a.GetComponent<Image>();if(i!=null&&i.color.a>.95f&&Shape(i)){var center=i.rectTransform.InverseTransformPoint(t.rectTransform.TransformPoint(t.rectTransform.rect.center));if(!i.rectTransform.rect.Contains((Vector2)center))continue;dark=Dark(i.color);break;}}
 if(p.Contains("Adventure_Map_item"))dark=t.transform.parent.name!="Enter_Btn";
 if(t.transform.parent.name=="Reward"&&t.name.StartsWith("I2_txt"))dark=true;
 if(p.Contains("/Locked_obj/")||t==c.SpeedRun.Start_UI.Stage_txt||t==c.BossMode.Start_UI.Lv_txt||t==c.MonsterMode.monster_start_ui.Wave_txt)dark=true;
 if(m==1&&t.transform.parent==c.MineMode.mineStart_ui.transform.Find("Panel"))dark=true;
 Undo.RecordObject(t,"Mode text contrast");t.color=dark?Color.white:Ink;
 var old=t.fontSharedMaterial;if(old!=null){var key=Tuple.Create(old,dark);if(!styles.TryGetValue(key,out var mat)){string path=root+"/ModeText-"+(index++).ToString("D3")+".mat";mat=AssetDatabase.LoadAssetAtPath<Material>(path);if(mat==null){mat=new Material(old);AssetDatabase.CreateAsset(mat,path);}mat.SetFloat("_FaceDilate",0);mat.SetFloat("_OutlineWidth",dark?.14f:0);mat.SetColor("_OutlineColor",Navy);mat.DisableKeyword("UNDERLAY_ON");mat.DisableKeyword("UNDERLAY_INNER");styles.Add(key,mat);Dirty(mat);}t.fontSharedMaterial=mat;}
 var style=t.GetComponent<WeaponTextStyle>();if(style!=null&&style.Authored){var so=new SerializedObject(style);so.FindProperty("authoredMaterial").objectReferenceValue=t.fontSharedMaterial;so.ApplyModifiedPropertiesWithoutUndo();Dirty(style);}Dirty(t);labels++;
 }
 if(!preview){
 foreach(var draw in canvas.GetComponentsInChildren<Draw_Relic_Btn>(true)){draw.Color_Panel_Able=Gold;draw.Colo_Paner_Disable=Row;draw.Color_Price_Able=Ink;Dirty(draw);}
 var a=c.Adventure.adventure_panel_ui;a.MapInfo_Panel_Colors=new[]{Navy,Navy,Navy};Dirty(a);a.Adventure_Enter_popup.Color_EnterAble=Gold;a.Adventure_Enter_popup.Color_EnterDisable=Row;a.Adventure_Enter_popup.Color_EnterAble_txt=Ink;a.Adventure_Enter_popup.CorePanel_Colors=new[]{Light,Light,Light};Dirty(a.Adventure_Enter_popup);
 foreach(var rootGo in new[]{c.SpeedRun.GameWin_UI,c.SpeedRun.GameFail_UI,c.MineMode.GameEnd_UI,c.BossMode.GameWin_UI,c.MonsterMode.GameEnd_UI})foreach(var b in rootGo.GetComponentsInChildren<Button>(true))if(b.targetGraphic is Image im&&Shape(im)){im.color=b.name.Contains("Exit")?Row:Gold;Dirty(im);foreach(var t in b.GetComponentsInChildren<TMP_Text>(true)){t.color=b.name.Contains("Exit")?Color.white:Ink;Dirty(t);}}
 }
 Canvas.ForceUpdateCanvases();AssetDatabase.SaveAssets();EditorSceneManager.MarkSceneDirty(scene);if(!EditorSceneManager.SaveScene(scene))throw new Exception("Save failed");return new{preview,panels,labels,saved=true};
 }
}
