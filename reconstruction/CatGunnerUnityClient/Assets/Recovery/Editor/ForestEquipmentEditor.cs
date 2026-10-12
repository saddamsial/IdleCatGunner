using System;
using System.IO;
using System.Linq;
using CatGunner.Recovery;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;

public static class ForestEquipmentEditor
{
    public static void SaveDefaultProfileBridge()
    {
        if(EditorApplication.isPlaying) throw new InvalidOperationException("Save equipment bridge only in EditMode");
        var scene=EditorSceneManager.OpenScene("Assets/Recovery/Scenes/RecoveredForest.unity");
        var cat=UnityEngine.Object.FindObjectsByType<Cat>(FindObjectsInactive.Include).Single(c=>!c.is_AI);
        var bridge=cat.GetComponent<ForestCombatAcceptance>();
        bridge.LoadPackageEquipment=true;bridge.EnableSingleAttacks=false;
        EditorUtility.SetDirty(bridge);EditorSceneManager.MarkSceneDirty(scene);
        if(!EditorSceneManager.SaveScene(scene)) throw new InvalidOperationException("Equipment bridge scene save failed");
        AssetDatabase.SaveAssets();
        var evidence=new {scene=scene.path,serialized_gun=cat.GunNum,serialized_damage=cat.Damage.s_digits,
            serialized_move_speed=cat.moveSpeed,load_package_equipment=bridge.LoadPackageEquipment,
            runtime_initial_equipped=OriginalEquipmentCatalogue.Load().Selected_items,
            runtime_attacks="SINGLE enabled only after successful initial-profile reload; edit-mode raw values retained",
            source="Matching package configuration, independent initial-profile lifecycle; no player save read",
            scene_objects=scene.GetRootGameObjects().Sum(go=>go.GetComponentsInChildren<Transform>(true).Length)};
        string reports=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
        File.WriteAllText(Path.Combine(reports,"forest-equipment-bridge-restoration.json"),Newtonsoft.Json.JsonConvert.SerializeObject(evidence,Newtonsoft.Json.Formatting.Indented));
    }
}
