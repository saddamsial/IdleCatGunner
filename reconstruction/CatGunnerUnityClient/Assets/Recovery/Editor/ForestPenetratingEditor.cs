using System;
using System.IO;
using System.Linq;
using CatGunner.Recovery;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;

public static class ForestPenetratingEditor
{
    public static void PersistCapabilityFlags()
    {
        if(EditorApplication.isPlaying) throw new InvalidOperationException("Persist only in EditMode");
        var scene=EditorSceneManager.OpenScene("Assets/Recovery/Scenes/RecoveredForest.unity");
        var cat=UnityEngine.Object.FindObjectsByType<Cat>(FindObjectsInactive.Include).Single(c=>!c.is_AI);
        var bridge=cat.GetComponent<ForestCombatAcceptance>();
        bridge.LoadPackageEquipment=true;bridge.EnableSingleAttacks=false;bridge.EnableShotgunAttacks=false;bridge.EnablePenetratingAttacks=false;
        EditorUtility.SetDirty(bridge);EditorSceneManager.MarkSceneDirty(scene);
        if(!EditorSceneManager.SaveScene(scene)) throw new InvalidOperationException("Bridge save failed");
        AssetDatabase.SaveAssets();
        string reports=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
        File.WriteAllText(Path.Combine(reports,"forest-penetrating-bridge-restoration.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new {
            scene=scene.path,load_package_equipment=bridge.LoadPackageEquipment,raw_gun=cat.GunNum,
            single=bridge.EnableSingleAttacks,shotgun=bridge.EnableShotgunAttacks,penetrating=bridge.EnablePenetratingAttacks,
            initial_slots=OriginalEquipmentCatalogue.Load().Selected_items,
            boundary="Start enables corresponding linear/shotgun branch; initial gun remains0; no weapon fixture or ownership grant saved",
            scene_objects=scene.GetRootGameObjects().Sum(go=>go.GetComponentsInChildren<Transform>(true).Length)
        },Newtonsoft.Json.Formatting.Indented));
    }
}
