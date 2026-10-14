using System;
using System.IO;
using System.Linq;
using Newtonsoft.Json.Linq;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;
using UnityEngine.SceneManagement;

public static class MissionPresentationClientEditor
{
    static GameObject Resolve(Scene scene,JArray path)
    {
        Transform current=null;
        foreach(JObject node in path){var candidates=current==null?scene.GetRootGameObjects().Select(g=>g.transform):current.Cast<Transform>();current=candidates.Where(t=>t.name==(string)node["name"]).Skip((int)node["ordinal"]).FirstOrDefault();if(current==null)return null;}
        return current?.gameObject;
    }
    public static void Integrate()
    {
        var scene=SceneManager.GetActiveScene();if(EditorApplication.isPlaying||EditorApplication.isCompiling||scene.path!=ForestClientEditor.ScenePath||scene.isDirty)throw new InvalidOperationException("Clean normal client EditMode required");
        var d=JObject.Parse(File.ReadAllText("Assets/Game/Editor/MissionPresentation.json"));var exp=d["expSlider"];var currency=d["currency"];
        var ego=Resolve(scene,(JArray)exp["path"]);var cgo=Resolve(scene,(JArray)currency["path"]);var slider=ego?.GetComponent<Mission_Exp_Slider>();
        var money=Resolve(scene,(JArray)currency["money"]["path"])?.GetComponent<TMPro.TextMeshProUGUI>();var dia=Resolve(scene,(JArray)currency["dia"]["path"])?.GetComponent<TMPro.TextMeshProUGUI>();var f=exp["bounce"]["fields"];
        if(slider==null||cgo==null||money==null||dia==null||ego.GetComponent<Bounce>()!=null||cgo.GetComponent<Currency>()!=null||(float)f["WantSize"]!=.9f||(float)f["_upSizeTime"]!=.2f||ego.transform.localScale!=Vector3.one)throw new InvalidOperationException("Missing original prerequisite or already integrated");
        var bounce=ego.AddComponent<Bounce>();bounce.time=(float)f["time"];bounce.WantSize=(float)f["WantSize"];bounce._upSizeTime=(float)f["_upSizeTime"];bounce.Bouncing=false;slider._bounce=bounce;
        var wallet=cgo.AddComponent<Currency>();wallet.Money_txt=money;wallet.Dia_txt=dia;
        EditorUtility.SetDirty(slider);EditorUtility.SetDirty(bounce);EditorUtility.SetDirty(wallet);EditorSceneManager.MarkSceneDirty(scene);if(!EditorSceneManager.SaveScene(scene))throw new IOException("Save failed");
        File.WriteAllText(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/mission-presentation-scene-restoration.json")),Newtonsoft.Json.JsonConvert.SerializeObject(new{originalExpSlider=(int)exp["component"],originalBounce=(int)exp["bounce"]["component"],originalCurrency=(int)currency["component"],restoredComponents=2,newGameObjects=0,wantSize=bounce.WantSize,duration=bounce._upSizeTime,scopeComplete=false},Newtonsoft.Json.Formatting.Indented));
    }
}
