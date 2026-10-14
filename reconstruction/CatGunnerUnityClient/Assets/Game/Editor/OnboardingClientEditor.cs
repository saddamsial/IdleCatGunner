using System;
using System.IO;
using System.Linq;
using CatGunner.Runtime;
using Newtonsoft.Json.Linq;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public static class OnboardingClientEditor
{
    private static GameObject Resolve(Scene scene,JArray path)
    {
        Transform current=null;
        foreach(JObject node in path){var candidates=current==null?scene.GetRootGameObjects().Select(g=>g.transform):current.Cast<Transform>();current=candidates.Where(t=>t.name==(string)node["name"]).Skip((int)node["ordinal"]).FirstOrDefault();if(current==null)return null;}
        return current?.gameObject;
    }
    public static void Integrate()
    {
        if(EditorApplication.isPlaying)throw new InvalidOperationException("EditMode required");
        var scene=SceneManager.GetActiveScene();if(scene.path!=ForestClientEditor.ScenePath||scene.isDirty)throw new InvalidOperationException("Open clean normal client scene");
        var data=JObject.Parse(File.ReadAllText("Assets/Game/Editor/Tutorial.json"));var row=data["rows"].Single(r=>(int)r["originalGo"]==758);var root=Resolve(scene,(JArray)row["path"]);
        if(root==null)
        {
            var slice=EditorSceneManager.OpenScene("Assets/Game/Scenes/OnboardingSource.unity",OpenSceneMode.Additive);root=Resolve(slice,(JArray)row["path"]);if(root==null)throw new InvalidOperationException("Source root missing");
            var parent=Resolve(scene,new JArray(((JArray)row["path"]).Take(2)));root.transform.SetParent(null,false);SceneManager.MoveGameObjectToScene(root,scene);root.transform.SetParent(parent.transform,false);
            EditorSceneManager.CloseScene(slice,true);SceneManager.SetActiveScene(scene);
        }
        var tutorial=root.GetComponent<Tutorial_manager>()??root.AddComponent<Tutorial_manager>();var fields=row["fields"];var refs=(JObject)data["references"];
        Func<JToken,GameObject> go=v=>Resolve(scene,(JArray)refs[(string)v["fileID"]]);
        tutorial.DisableOnTutorial=((JArray)fields["DisableOnTutorial"]).Select(go).ToArray();
        tutorial.CatHand_Upgrade=go(fields["CatHand_Upgrade"]);tutorial.CatHand_GunOpen=go(fields["CatHand_GunOpen"]);tutorial.CatHand_GunBuy=go(fields["CatHand_GunBuy"]);tutorial.ArrowGunEquip=go(fields["ArrowGunEquip"]).GetComponent<TutorialArrow_UI>();
        tutorial.ChallengeButton=go(fields["ChallengeButton"]);tutorial.GunButton=go(fields["GunButton"]);tutorial.GunBuyButton=go(fields["GunBuyButton"]);
        if(new[]{tutorial.CatHand_Upgrade,tutorial.CatHand_GunOpen,tutorial.CatHand_GunBuy,tutorial.ChallengeButton,tutorial.GunButton,tutorial.GunBuyButton}.Any(g=>g==null)||tutorial.ArrowGunEquip==null)throw new InvalidOperationException("Ordinary tutorial reference missing");
        var pulseData=JObject.Parse(File.ReadAllText("Assets/Game/Editor/TutorialPulses.json"));
        foreach(var source in pulseData["rows"])
        {
            var target=Resolve(scene,(JArray)source["path"]);if(target==null)throw new InvalidOperationException("Source pulse target missing");
            var pulse=target.GetComponent<TutorialPulse>()??target.AddComponent<TutorialPulse>();pulse.Duration=(float)source["duration"];pulse.EndScale=(float)source["endScale"];pulse.SourceScale=new Vector3((float)source["sourceScale"]["x"],(float)source["sourceScale"]["y"],(float)source["sourceScale"]["z"]);EditorUtility.SetDirty(pulse);
        }
        var client=UnityEngine.Object.FindAnyObjectByType<GameClient>();client.Tutorial=tutorial;
        // Preserve the original source branch order amongst existing SafeArea children.
        var orders=JArray.Parse(File.ReadAllText(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/original-client-ui-sibling-order.json"))));
        var order=orders.Single(x=>(string)x["parent"]=="SafeArea");var rank=order["children"].ToDictionary(x=>(string)x["name"],x=>(int)x["sibling"]);
        foreach(var child in root.transform.parent.Cast<Transform>().OrderBy(t=>rank.TryGetValue(t.name,out int i)?i:int.MaxValue).ToArray())child.SetAsLastSibling();
        var graphics=root.GetComponentsInChildren<Graphic>(true);if(graphics.Any(g=>g.raycastTarget))throw new InvalidOperationException("Source tutorial graphics must not intercept touches");
        root.SetActive(true);tutorial.CatHand_Upgrade.SetActive(false);tutorial.CatHand_GunOpen.SetActive(false);tutorial.CatHand_GunBuy.SetActive(false);tutorial.ArrowGunEquip.gameObject.SetActive(false);
        EditorUtility.SetDirty(tutorial);EditorUtility.SetDirty(client);EditorSceneManager.MarkSceneDirty(scene);if(!EditorSceneManager.SaveScene(scene))throw new IOException("Tutorial scene save failed");AssetDatabase.SaveAssets();
        var all=scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<Transform>(true)).ToArray();
        var missing=((JArray)fields["DisableOnTutorial"]).Where((v,i)=>tutorial.DisableOnTutorial[i]==null).Select(v=>new{fileID=(int)v["fileID"],path=refs[(string)v["fileID"]]}).ToArray();
        File.WriteAllText(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/onboarding-scene-restoration.json")),Newtonsoft.Json.JsonConvert.SerializeObject(new{scene=scene.path,objects=all.Length,missingScripts=all.Sum(t=>GameObjectUtility.GetMonoBehavioursWithMissingScriptCount(t.gameObject)),originalRoot=758,tutorialObjects=root.GetComponentsInChildren<Transform>(true).Length,handGraphics=graphics.Length,nonRaycast=graphics.All(g=>!g.raycastTarget),disableReferences=11,connectedDisableReferences=tutorial.DisableOnTutorial.Count(g=>g!=null),pendingHudReferences=missing,sourceHandPulseComponents=new[]{123549,124744,124649},localPulseAdapters=3,scope="Five-step native tutorial with original source hands and equip arrow; seven absent HUD controls remain pending; three source DOTween pulses restored with explicit local presentation adapter; no commercial/online behavior simulated"},Newtonsoft.Json.Formatting.Indented));
    }
}
