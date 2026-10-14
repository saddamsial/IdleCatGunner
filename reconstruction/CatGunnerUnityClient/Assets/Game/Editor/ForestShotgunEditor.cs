using System;
using System.IO;
using System.Linq;
using CatGunner.Runtime;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;

public static class ForestShotgunEditor
{
    public static void PersistCapabilityFlags()
    {
        if(EditorApplication.isPlaying) throw new InvalidOperationException("Persist flags only in EditMode");
        var scene=EditorSceneManager.OpenScene("Assets/Game/Scenes/Forest.unity");
        var cat=UnityEngine.Object.FindObjectsByType<Cat>(FindObjectsInactive.Include).Single(c=>!c.is_AI);
        var bridge=cat.GetComponent<ForestCombatAcceptance>();
        bridge.LoadPackageEquipment=true;bridge.EnableSingleAttacks=false;bridge.EnableShotgunAttacks=false;
        EditorUtility.SetDirty(bridge);EditorSceneManager.MarkSceneDirty(scene);
        if(!EditorSceneManager.SaveScene(scene)) throw new InvalidOperationException("Shotgun bridge flags save failed");
        AssetDatabase.SaveAssets();
        var evidence=new {scene=scene.path,load_package_equipment=bridge.LoadPackageEquipment,
            single_attacks_editmode=bridge.EnableSingleAttacks,shotgun_attacks_editmode=bridge.EnableShotgunAttacks,
            raw_gun=cat.GunNum,raw_damage=cat.Damage.s_digits,initial_slots=EquipmentCatalogue.Load().Selected_items,
            runtime="Start enables corresponding SINGLE/SHOTGUN branch after package-profile load; initial gun remains0",
            boundary="Original manager/ownership/save/UI lifecycle remains pending; no fixture weapon saved",
            scene_objects=scene.GetRootGameObjects().Sum(go=>go.GetComponentsInChildren<Transform>(true).Length)};
        string reports=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
        File.WriteAllText(Path.Combine(reports,"forest-shotgun-bridge-restoration.json"),Newtonsoft.Json.JsonConvert.SerializeObject(evidence,Newtonsoft.Json.Formatting.Indented));
    }
}
