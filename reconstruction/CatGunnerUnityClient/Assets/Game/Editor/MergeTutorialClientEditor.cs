using System;
using System.IO;
using System.Linq;
using Newtonsoft.Json.Linq;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public static class MergeTutorialClientEditor
{
    private static GameObject Resolve(Scene scene,JArray path)
    {
        Transform current=null;
        foreach(JObject node in path)
        {
            var candidates=current==null?scene.GetRootGameObjects().Select(g=>g.transform):current.Cast<Transform>();
            current=candidates.Where(t=>t.name==(string)node["name"]).Skip((int)node["ordinal"]).FirstOrDefault();if(current==null)return null;
        }
        return current?.gameObject;
    }
    public static void Integrate()
    {
        if(EditorApplication.isPlaying)throw new InvalidOperationException("EditMode required");
        var scene=SceneManager.GetActiveScene();if(scene.path!=ForestClientEditor.ScenePath||scene.isDirty)throw new InvalidOperationException("Open clean normal client scene");
        var data=JObject.Parse(File.ReadAllText("Assets/Game/Editor/Tutorial.json"));
        var arrowRow=data["rows"].Single(r=>(int)r["originalGo"]==730);var cueRow=data["rows"].Single(r=>(int)r["originalGo"]==1661);
        var arrowGo=Resolve(scene,(JArray)arrowRow["path"]);var cueGo=Resolve(scene,(JArray)cueRow["path"]);if(arrowGo==null||cueGo==null)throw new InvalidOperationException("Original merge hierarchy missing");
        var arrow=arrowGo.GetComponent<TutorialArrow_UI>()??arrowGo.AddComponent<TutorialArrow_UI>();var values=arrowRow["fields"];
        arrow.target0=arrow.target1=null;arrow.moveDuration=(float)values["moveDuration"];arrow.pauseAtTarget=(float)values["pauseAtTarget"];arrow.offset=new Vector2((float)values["offset"]["x"],(float)values["offset"]["y"]);arrow.scaleSmall=(float)values["scaleSmall"];arrow.scaleDuration=(float)values["scaleDuration"];
        arrow.enabled=(bool)arrowRow["enabled"];arrow.gameObject.SetActive(false);
        var cue=cueGo.GetComponent<Gun_Merge_Tutorial>()??cueGo.AddComponent<Gun_Merge_Tutorial>();cue.enabled=(bool)cueRow["enabled"];cue.tutorial_arrow=arrow;
        var owner=UnityEngine.Object.FindAnyObjectByType<Gun_manager>();owner.merge_tutorial_ui=cue;
        var graphics=arrow.GetComponentsInChildren<Graphic>(true);if(graphics.Length!=1||graphics[0].raycastTarget)throw new InvalidOperationException("Original non-raycast hand image must be retained");
        EditorUtility.SetDirty(arrow);EditorUtility.SetDirty(cue);EditorUtility.SetDirty(owner);EditorSceneManager.MarkSceneDirty(scene);if(!EditorSceneManager.SaveScene(scene))throw new IOException("Merge tutorial scene save failed");
        var transforms=scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<Transform>(true)).ToArray();
        var report=new{scene=scene.path,objects=transforms.Length,missingScripts=transforms.Sum(t=>GameObjectUtility.GetMonoBehavioursWithMissingScriptCount(t.gameObject)),restoredComponents=2,originalArrowGo=730,originalCueGo=1661,moveDuration=arrow.moveDuration,pauseAtTarget=arrow.pauseAtTarget,scaleSmall=arrow.scaleSmall,scaleDuration=arrow.scaleDuration,handSprite=((Image)graphics[0]).sprite.name,handRaycastTarget=graphics[0].raycastTarget,scope="Original gun merge cue only; five-step onboarding analyzed but not integrated; attribution logging excluded"};
        File.WriteAllText(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/merge-tutorial-scene-restoration.json")),Newtonsoft.Json.JsonConvert.SerializeObject(report,Newtonsoft.Json.Formatting.Indented));
    }
}
