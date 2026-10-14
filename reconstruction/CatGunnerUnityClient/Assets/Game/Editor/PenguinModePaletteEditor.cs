using UnityEditor;using UnityEngine;using CatGunner.Runtime;
[CustomEditor(typeof(PenguinModePalette))]
public sealed class PenguinModePaletteEditor : Editor {
 public override void OnInspectorGUI(){DrawDefaultInspector();if(GUILayout.Button("Apply to current scene")){var p=(PenguinModePalette)target;foreach(var b in Object.FindObjectsByType<PenguinModePaletteBindings>(FindObjectsInactive.Include,FindObjectsSortMode.None))if(b.Palette==p)b.Apply();}}
}
[CustomEditor(typeof(PenguinModePaletteBindings))]
public sealed class PenguinModePaletteBindingsEditor : Editor {
 public override void OnInspectorGUI(){DrawDefaultInspector();if(GUILayout.Button("Apply palette to scene"))((PenguinModePaletteBindings)target).Apply();}
}
