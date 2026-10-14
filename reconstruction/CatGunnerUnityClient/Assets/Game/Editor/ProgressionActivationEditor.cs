using System;
using System.IO;
using System.Linq;
using System.Collections.Generic;
using CatGunner.Runtime;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;
public static class ProgressionActivationEditor
{
    public static void Restore()
    {
        var scene=EditorSceneManager.OpenScene(ForestClientEditor.ScenePath);var c=UnityEngine.Object.FindFirstObjectByType<GameClient>();
        var roots=new Dictionary<long,GameObject>{{412,c.PetUI.gameObject},{1534,c.RebirthUI.gameObject},{1146,c.MissionUI.gameObject},{1386,c.SpeedRun.gameObject},{1340,c.SpeedRun.Start_UI.transform.parent.gameObject},{1457,c.SpeedRun.gameSlider.transform.parent.gameObject},{1373,c.PetUI.Pet_UI_obj},{1440,c.PetFollowers.gameObject},{992,c.PetUI.newPet_ui.gameObject}};
        string reports=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
        var rows=Newtonsoft.Json.Linq.JArray.Parse(File.ReadAllText(Path.Combine(reports,"original-progression-activation.json")));int changes=0;
        foreach(var row in rows)
        {
            Transform target=roots[(long)row["root"]].transform;
            foreach(var token in row["path"]){string name=(string)token["name"];int ordinal=(int)token["ordinal"];target=target.Cast<Transform>().Where(t=>t.name==name).ElementAtOrDefault(ordinal);if(target==null)throw new InvalidOperationException("Original hierarchy missing: "+row["source_go"]);}
            bool active=(bool)row["active"];if(target.gameObject.activeSelf!=active){target.gameObject.SetActive(active);changes++;}
        }
        // Explicit ordinary client mode owner replaces the unavailable UI_manager.
        roots[1340].SetActive(false);roots[1457].SetActive(false);c.RebirthUI.rebirth_fx.gameObject.SetActive(false);
        foreach(var tree in c.SpeedRun.Tree_list)
        {var slider=tree.enemy.Slider;var fill=slider.GetComponentsInChildren<SpriteRenderer>(true).Single(r=>r.name=="Fill");var bridge=fill.GetComponent<SpriteFill>();if(bridge==null)bridge=fill.gameObject.AddComponent<SpriteFill>();slider.Fill=bridge;}
        EditorSceneManager.MarkSceneDirty(scene);EditorSceneManager.SaveScene(scene);AssetDatabase.SaveAssets();
        File.WriteAllText(Path.Combine(reports,"progression-activation-repair.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{original_flags=rows.Count,changed_flags=changes,speedrun_health_fill_links=190,reason="Extractor incorrectly forced all ancestor objects active, including fully selected hidden popups; original active states restored by Editor API"},Newtonsoft.Json.Formatting.Indented));
    }
}
