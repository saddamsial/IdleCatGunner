using System;
using System.IO;
using System.Linq;
using CatGunner.Runtime;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;

public static class ForestExplosionEditor
{
    public static void PersistCapabilityFlags()
    {
        if(EditorApplication.isPlaying) throw new InvalidOperationException("Persist only in EditMode");
        var scene=EditorSceneManager.OpenScene("Assets/Game/Scenes/Forest.unity");
        var cat=UnityEngine.Object.FindObjectsByType<Cat>(FindObjectsInactive.Include).Single(c=>!c.is_AI);
        var bridge=cat.GetComponent<ForestCombatAcceptance>();bridge.LoadPackageEquipment=true;
        bridge.EnableSingleAttacks=false;bridge.EnableShotgunAttacks=false;bridge.EnablePenetratingAttacks=false;bridge.EnableExplosiveAttacks=false;
        EditorUtility.SetDirty(bridge);EditorSceneManager.MarkSceneDirty(scene);
        if(!EditorSceneManager.SaveScene(scene)) throw new InvalidOperationException("Explosion bridge save failed");AssetDatabase.SaveAssets();
        string reports=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
        File.WriteAllText(Path.Combine(reports,"forest-explosion-bridge-restoration.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new {
            scene=scene.path,load_package_equipment=bridge.LoadPackageEquipment,raw_gun=cat.GunNum,raw_damage=cat.Damage.s_digits,
            single=bridge.EnableSingleAttacks,shotgun=bridge.EnableShotgunAttacks,penetrating=bridge.EnablePenetratingAttacks,explosive=bridge.EnableExplosiveAttacks,
            initial_slots=EquipmentCatalogue.Load().Selected_items,
            boundary="Start enables matching forest branch; initial gun remains0; fixture weapons/positions not saved; ownership/main lifecycle pending",
            scene_objects=scene.GetRootGameObjects().Sum(go=>go.GetComponentsInChildren<Transform>(true).Length)
        },Newtonsoft.Json.Formatting.Indented));
    }
}
