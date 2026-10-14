using System;using UnityEngine;using UnityEngine.UI;
namespace CatGunner.Runtime {
 [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "PenguinModePaletteBindings")] public sealed class PenguinModePaletteBindings : MonoBehaviour {
  public enum Role {Background,Title,Text,Content,Reward,Button,OnButton,Disabled,Outline,GradeA}
  [Serializable]public struct Binding {public Graphic Graphic;public Role ColorRole;public float Alpha;}
  public PenguinModePalette Palette;
  public Binding[] Graphics=Array.Empty<Binding>();
  public Button[] Buttons=Array.Empty<Button>();
  public Material[] TextMaterials=Array.Empty<Material>();
#if UNITY_EDITOR
  [ContextMenu("Apply palette to scene")]
  public void Apply(){if(Palette==null)throw new InvalidOperationException("Choose a palette asset first");foreach(var b in Graphics){if(b.Graphic==null)continue;UnityEditor.Undo.RecordObject(b.Graphic,"Apply mode palette");var color=Palette.Get(b.ColorRole);color.a=b.Alpha;b.Graphic.color=color;UnityEditor.EditorUtility.SetDirty(b.Graphic);if(UnityEditor.PrefabUtility.IsPartOfPrefabInstance(b.Graphic))UnityEditor.PrefabUtility.RecordPrefabInstancePropertyModifications(b.Graphic);}foreach(var b in Buttons){if(b==null)continue;UnityEditor.Undo.RecordObject(b,"Apply button tints");var colors=b.colors;colors.highlightedColor=Palette.HoverTint;colors.pressedColor=Palette.PressedTint;colors.disabledColor=Palette.DisabledTint;b.colors=colors;UnityEditor.EditorUtility.SetDirty(b);}foreach(var m in TextMaterials){if(m==null)continue;UnityEditor.Undo.RecordObject(m,"Apply text outline");m.SetColor("_OutlineColor",Palette.Outline);UnityEditor.EditorUtility.SetDirty(m);}UnityEditor.SceneManagement.EditorSceneManager.MarkSceneDirty(gameObject.scene);}
#endif
 }
}
