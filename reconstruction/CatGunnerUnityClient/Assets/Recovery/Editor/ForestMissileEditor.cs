using System;
using System.IO;
using System.Linq;
using CatGunner.Recovery;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;

public static class ForestMissileEditor
{
    public static void PersistCapabilityFlags()
    {
        if(EditorApplication.isPlaying) throw new InvalidOperationException("Persist only in EditMode");
        var scene=EditorSceneManager.OpenScene("Assets/Recovery/Scenes/RecoveredForest.unity");
        var cat=UnityEngine.Object.FindObjectsByType<Cat>(FindObjectsInactive.Include).Single(c=>!c.is_AI);
        var bridge=cat.GetComponent<ForestCombatAcceptance>();bridge.LoadPackageEquipment=true;
        bridge.EnableSingleAttacks=false;bridge.EnableShotgunAttacks=false;bridge.EnablePenetratingAttacks=false;
        bridge.EnableExplosiveAttacks=false;bridge.EnableMissileAttacks=false;
        EditorUtility.SetDirty(bridge);EditorSceneManager.MarkSceneDirty(scene);
        if(!EditorSceneManager.SaveScene(scene)) throw new InvalidOperationException("Missile bridge save failed");AssetDatabase.SaveAssets();
        string reports=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
        File.WriteAllText(Path.Combine(reports,"forest-missile-bridge-restoration.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new {
            scene=scene.path,load_package_equipment=bridge.LoadPackageEquipment,raw_gun=cat.GunNum,raw_damage=cat.Damage.s_digits,
            single=bridge.EnableSingleAttacks,shotgun=bridge.EnableShotgunAttacks,penetrating=bridge.EnablePenetratingAttacks,
            explosive=bridge.EnableExplosiveAttacks,missile=bridge.EnableMissileAttacks,initial_slots=OriginalEquipmentCatalogue.Load().Selected_items,
            boundary="Start enables matching forest weapon; initial gun0 preserved; no fixture or player-save mutation",
            scene_objects=scene.GetRootGameObjects().Sum(go=>go.GetComponentsInChildren<Transform>(true).Length)
        },Newtonsoft.Json.Formatting.Indented));
    }
}
