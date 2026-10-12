using System;
using System.IO;
using System.Linq;
using Newtonsoft.Json.Linq;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;
using UnityEngine.SceneManagement;

public static class RewardPresentationClientEditor
{
    static GameObject Resolve(Scene scene,JArray path)
    {
        Transform current=null;
        foreach(JObject node in path){var candidates=current==null?scene.GetRootGameObjects().Select(g=>g.transform):current.Cast<Transform>();current=candidates.Where(t=>t.name==(string)node["name"]).Skip((int)node["ordinal"]).FirstOrDefault();if(current==null)return null;}
        return current?.gameObject;
    }
    static AnimationCurve Curve(JToken curve)
    {
        var keys=curve["m_Curve"].Select(k=>new Keyframe((float)k["time"],(float)k["value"],(float)k["inSlope"],(float)k["outSlope"],(float)k["inWeight"],(float)k["outWeight"]){weightedMode=(WeightedMode)(int)k["weightedMode"]}).ToArray();
        return new AnimationCurve(keys){preWrapMode=WrapMode.ClampForever,postWrapMode=WrapMode.ClampForever};
    }
    static float Constant(JToken f,string name)=> (float)f[name]["m_ConstantMax"];
    static void ConfigureMotion(RecoveryDiamondParticles fx,JToken fields)
    {
        if((int)fields["_velocityModule"]["enabled"]!=1||(int)fields["_velocitySpace"]!=0||(int)fields["_vortexModule"]["enabled"]!=1||(int)fields["_multithreadModule"]["enabled"]!=0||(int)fields["_noiseModule"]["enabled"]!=0||(int)fields["_gravityModule"]["enabled"]!=0)throw new InvalidOperationException("Unsupported preset motion branches");
        fx.VelocityYCurve=Curve(fields["_velocityOverLifetime"]["yCurve"]["m_CurveMax"]);fx.VelocityYMultiplier=(float)fields["_velocityOverLifetime"]["yCurve"]["m_CurveMultiplier"];
        fx.VortexCurve=Curve(fields["_vortexStrength"]["m_CurveMax"]);fx.VortexMultiplier=(float)fields["_vortexStrength"]["m_CurveMultiplier"];
        // Source rotation0 + lifetime rotation0 + constant-one by-speed curve.
        fx.SpriteRotation=1;
    }
    public static void UpdateMotionCurves()
    {
        var scene=SceneManager.GetActiveScene();if(EditorApplication.isPlaying||EditorApplication.isCompiling||scene.path!=ForestClientEditor.ScenePath||scene.isDirty)throw new InvalidOperationException("Clean normal client required");
        var d=JObject.Parse(File.ReadAllText("Assets/Recovery/Editor/OriginalRewardPresentation.json"));var fx=Resolve(scene,(JArray)d["particlePreset"]["path"]).GetComponent<RecoveryDiamondParticles>();ConfigureMotion(fx,d["particlePreset"]["fields"]);EditorUtility.SetDirty(fx);EditorSceneManager.MarkSceneDirty(scene);if(!EditorSceneManager.SaveScene(scene))throw new IOException("Save failed");
        File.WriteAllText(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/reward-presentation-motion-restoration.json")),Newtonsoft.Json.JsonConvert.SerializeObject(new{velocitySpace=0,velocityYKeys=fx.VelocityYCurve.length,velocityYMultiplier=fx.VelocityYMultiplier,vortexKeys=fx.VortexCurve.length,vortexMultiplier=fx.VortexMultiplier,spriteRotation=fx.SpriteRotation,sourcePreset=124527},Newtonsoft.Json.Formatting.Indented));
    }
    public static void Integrate()
    {
        var scene=SceneManager.GetActiveScene();if(EditorApplication.isPlaying||EditorApplication.isCompiling||scene.path!=ForestClientEditor.ScenePath||scene.isDirty)throw new InvalidOperationException("Clean normal client EditMode required");
        var d=JObject.Parse(File.ReadAllText("Assets/Recovery/Editor/OriginalRewardPresentation.json"));var paths=(JArray)d["attraction"]["path"];
        if(Resolve(scene,paths)!=null)throw new InvalidOperationException("Already integrated; no duplicate effects");
        var parent=Resolve(scene,new JArray(paths.Take(paths.Count-1)));if(parent==null)throw new InvalidOperationException("Original FX parent missing");
        // Validate all prerequisites before changing the working scene.
        foreach(var r in d["rotations"])
        {
            var go=Resolve(scene,(JArray)r["path"]);var f=r["fields"];
            if(go==null||go.GetComponent<RecoveryRewardRotation>()!=null||(int)f["animationType"]!=4||(int)f["loopType"]!=2||(int)f["easeType"]!=1||(int)f["loops"]!=-1||((float)f["duration"]!=1&&(float)f["duration"]!=2)||(int)f["optionalRotationMode"]!=0||(int)f["isIndependentUpdate"]!=0)throw new InvalidOperationException("Unsupported original rotation path");
            for(var t=go.transform.parent;t!=null;t=t.parent)if(Quaternion.Angle(t.localRotation,Quaternion.identity)>.001f)throw new InvalidOperationException("World rotation requires identity parents for this bounded adapter");
        }
        var slice=EditorSceneManager.OpenScene("Assets/Recovery/Scenes/RecoveredRewardPresentationSource.unity",OpenSceneMode.Additive);
        GameObject root;
        try{root=Resolve(slice,paths);root.transform.SetParent(null,false);SceneManager.MoveGameObjectToScene(root,scene);root.transform.SetParent(parent.transform,false);}
        finally{EditorSceneManager.CloseScene(slice,true);SceneManager.SetActiveScene(scene);}
        foreach(var r in d["rotations"]){var go=Resolve(scene,(JArray)r["path"]);var t=go.AddComponent<RecoveryRewardRotation>();t.OriginalComponent=(int)r["component"];t.Duration=(float)r["fields"]["duration"];t.EndRotation=(float)r["fields"]["endValueV3"]["z"];t.SourceEuler=go.transform.localEulerAngles;EditorUtility.SetDirty(t);}
        var preset=d["particlePreset"];var fx=Resolve(scene,(JArray)preset["path"]).AddComponent<RecoveryDiamondParticles>();var fields=preset["fields"];
        if((int)fields["_space"]!=0||(int)fields["_timeScale"]!=1||(int)fields["_shape"]!=1||(int)fields["_emitOnSurface"]!=1||(int)fields["_targetMode"]!=0||(int)fields["_trailModule"]["enabled"]!=0||(int)fields["_sheetModule"]["enabled"]!=0)throw new InvalidOperationException("Unsupported particle preset");
        fx.OriginalSprite=AssetDatabase.LoadAssetAtPath<Sprite>(AssetDatabase.GUIDToAssetPath((string)fields["m_Sprite"]["guid"]));if(fx.OriginalSprite==null)throw new InvalidOperationException("Original diamond sprite missing");
        fx.raycastTarget=false;fx.color=Color.white;fx.maskable=(int)fields["m_Maskable"]==1;
        fx.Radius=(float)fields["_radius"];fx.Size=Constant(fields["_startSize"],"mainCurve");fx.LifeMin=(float)fields["_lifetime"]["m_ConstantMin"];fx.LifeMax=(float)fields["_lifetime"]["m_ConstantMax"];fx.SpeedMin=(float)fields["_startSpeed"]["m_ConstantMin"];fx.SpeedMax=(float)fields["_startSpeed"]["m_ConstantMax"];
        fx.SpeedCurve=Curve(fields["_speedOverLifetime"]["m_CurveMax"]);fx.AttractionMin=Curve(fields["_toTarget"]["m_CurveMin"]);fx.AttractionMax=Curve(fields["_toTarget"]["m_CurveMax"]);
        ConfigureMotion(fx,fields);
        var attraction=root.GetComponent<Dia_Attraction>();attraction._diaFx=fx;fx.Owner=attraction;
        var restored=new System.Collections.Generic.List<int>();var pending=new System.Collections.Generic.List<int>();
        foreach(var r in d["targets"])
        {
            var go=Resolve(scene,(JArray)r["path"]);if(go==null){pending.Add((int)r["component"]);continue;}
            var br=r["bounce"];var bgo=Resolve(scene,(JArray)br["path"]);if(bgo==null)throw new InvalidOperationException("Source target bounce missing");
            var bounce=bgo.AddComponent<Bounce>();bounce.time=(float)br["fields"]["time"];bounce.WantSize=(float)br["fields"]["WantSize"];bounce._upSizeTime=(float)br["fields"]["_upSizeTime"];bounce.Bouncing=false;
            var target=go.AddComponent<Dia_Attraction_Target>();target._bounce=bounce;restored.Add((int)r["component"]);EditorUtility.SetDirty(target);EditorUtility.SetDirty(bounce);
        }
        // Match original sibling order within the existing UI_manager.
        var source=JObject.Parse(File.ReadAllText("Assets/Recovery/Editor/OriginalRewardFxSlice.json"));
        var order=(JArray)source["parentOrders"]["2205"];var rank=order.Select((n,i)=>new{name=(string)n,index=i}).GroupBy(x=>x.name).ToDictionary(g=>g.Key,g=>g.First().index);
        foreach(var child in parent.transform.Cast<Transform>().OrderBy(t=>rank.TryGetValue(t.name,out int i)?i:int.MaxValue).ToArray())child.SetAsLastSibling();
        EditorUtility.SetDirty(fx);EditorUtility.SetDirty(attraction);EditorSceneManager.MarkSceneDirty(scene);if(!EditorSceneManager.SaveScene(scene))throw new IOException("Save failed");
        File.WriteAllText(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/reward-presentation-scene-restoration.json")),Newtonsoft.Json.JsonConvert.SerializeObject(new{rotations=9,restoredTargets=restored,pendingTargets=pending,newOriginalObjects=root.GetComponentsInChildren<Transform>(true).Length,particlePreset=124527,renderer="bounded local adapter",scopeComplete=false},Newtonsoft.Json.Formatting.Indented));
    }
}
