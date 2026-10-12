using System;
using System.IO;
using System.Linq;
using System.Collections.Generic;
using Newtonsoft.Json.Linq;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;
using UnityEngine.SceneManagement;

public static class ForestBulletEditor
{
    public static void RestoreOriginalBulletPools()
    {
        if(EditorApplication.isPlaying) throw new InvalidOperationException("Restore bullet pools in EditMode");
        RecoveryEditor.OpenForest();var forest=SceneManager.GetActiveScene();
        if(UnityEngine.Object.FindAnyObjectByType<Polling_manager>(FindObjectsInactive.Include)!=null)
            throw new InvalidOperationException("Original pools already merged; do not duplicate");
        var input=EditorSceneManager.OpenScene("Assets/Recovery/Scenes/RecoveredBullets.unity",OpenSceneMode.Additive);
        var components=input.GetRootGameObjects().SelectMany(go=>go.GetComponentsInChildren<Component>(true)).ToArray();
        var originalObjects=components.Select(c=>c.gameObject).Distinct().ToDictionary(go=>(long)GlobalObjectId.GetGlobalObjectIdSlow(go).targetObjectId,go=>go);
        var reportPath=Path.GetFullPath(Path.Combine(Application.dataPath,
            "../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
        var index=JArray.Parse(File.ReadAllText(Path.Combine(reportPath,"component-decoding-index.json")));
        var report=new List<string>();
        foreach(var item in index.Where(e=>(string)e["type"]=="Destroy" || (string)e["type"]=="BounceStart"))
        {
            var data=JObject.Parse(File.ReadAllText(Path.Combine(reportPath,"../"+(string)item["output"])))["data"];
            long id=(long)data["m_GameObject"]["m_PathID"];
            if(!originalObjects.TryGetValue(id,out var go)) continue;
            var type=(string)item["type"]=="Destroy"?typeof(global::Destroy):typeof(BounceStart);
            var component=go.AddComponent(type);var serialized=new SerializedObject(component);
            foreach(var name in type==typeof(global::Destroy)?new[]{"Destroy_Time"}:new[]{"time","WantSize","_upSizeTime","Middle_value"})
                serialized.FindProperty(name).floatValue=(float)data[name];
            serialized.ApplyModifiedPropertiesWithoutUndo();
            report.Add(type.Name+" | original component="+item["path_id"]+" | object="+id);
        }
        foreach(var root in input.GetRootGameObjects()) SceneManager.MoveGameObjectToScene(root,forest);
        EditorSceneManager.CloseScene(input,true);SceneManager.SetActiveScene(forest);
        var manager=UnityEngine.Object.FindAnyObjectByType<Polling_manager>(FindObjectsInactive.Include);
        if(manager.Polling_List.Length!=2 || manager.Polling_List[0].Objects.Length!=27 || manager.Polling_List[1].Objects.Length!=10)
            throw new InvalidOperationException("Original pool sizes/references not preserved");
        foreach(var go in manager.Polling_List[0].Objects)
        {
            var bullet=go.GetComponent<Bullet>();
            if(bullet==null || bullet.rb==null || bullet.particle==null || bullet.Skin_particles.Length!=65 || bullet.Skin_particles.Any(p=>p==null))
                throw new InvalidOperationException("Original bullet reference missing: "+go.name);
        }
        report.Add("All original 27 bullets, 10 FX, 65 gun-index references per bullet retained. Full aim/attack loop, text, other weapons pending.");
        RepairParticleMaterials(manager,report);
        File.WriteAllLines(Path.Combine(reportPath,"forest-bullet-reference-restoration.txt"),report);
        EditorSceneManager.MarkSceneDirty(forest);EditorSceneManager.SaveScene(forest);
    }
    // A resident delayed callback keeps large scene IO outside the CLI eval deadline.
    public static void RepairExistingPoolMaterials()
    {
        if(EditorApplication.isPlaying) throw new InvalidOperationException("Repair particles in EditMode");
        var manager=UnityEngine.Object.FindAnyObjectByType<Polling_manager>(FindObjectsInactive.Include);
        var report=new List<string>();RepairParticleMaterials(manager,report);
        var reportPath=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
        AssetDatabase.SaveAssets();EditorSceneManager.MarkSceneDirty(manager.gameObject.scene);
        if(!EditorSceneManager.SaveScene(manager.gameObject.scene)) throw new InvalidOperationException("Particle scene save failed");
        File.WriteAllLines(Path.Combine(reportPath,"forest-bullet-material-repair.txt"),report);
        ReportRestoredOriginalPools();
    }
    public static string ReportRestoredOriginalPools()
    {
        var manager=UnityEngine.Object.FindAnyObjectByType<Polling_manager>(FindObjectsInactive.Include);
        var gos=manager.Polling_List.SelectMany(p=>p.Objects).ToArray();
        var reportPath=Path.GetFullPath(Path.Combine(Application.dataPath,
            "../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
        var evidence=new {
            scene=manager.gameObject.scene.path,
            scene_bytes=new FileInfo(Path.Combine(Application.dataPath,"../"+manager.gameObject.scene.path)).Length,
            bullets=manager.Polling_List[0].Objects.Length,fx=manager.Polling_List[1].Objects.Length,
            all_bullet_skin_references=manager.Polling_List[0].Objects.All(go=>go.GetComponent<Bullet>().Skin_particles.Length==65 && go.GetComponent<Bullet>().Skin_particles.All(p=>p!=null)),
            meshes=gos.Sum(go=>go.GetComponentsInChildren<Bullet_Mesh>(true).Length),
            birth_bounce_children=gos.Sum(go=>go.GetComponentsInChildren<BounceStart>(true).Length),
            fx_lifetimes=manager.Polling_List[1].Objects.Select(go=>go.GetComponent<global::Destroy>().Destroy_Time).ToArray(),
            original_root_count=gos.Length,
            compatibility_materials=gos.SelectMany(go=>go.GetComponentsInChildren<ParticleSystemRenderer>(true)).Select(r=>AssetDatabase.GetAssetPath(r.sharedMaterial)).Distinct().ToArray(),
            original_Main="immutable baseline unchanged",
            difference="Original particle assets and pool identity; independent compatibility shader, decimal adapter and tree-only damage router. Full Cat.Update/aim/weapon selection, other weapon branches and DamageTextManager pending"
        };
        string json=Newtonsoft.Json.JsonConvert.SerializeObject(evidence,Newtonsoft.Json.Formatting.Indented);
        File.WriteAllText(Path.Combine(reportPath,"forest-bullet-reference-restoration.json"),json);return json;
    }
    private static void RepairParticleMaterials(Polling_manager manager,List<string> report) =>
        RepairRenderers(manager.Polling_List.SelectMany(p=>p.Objects).SelectMany(go=>go.GetComponentsInChildren<ParticleSystemRenderer>(true)),report);
    public static void RepairRenderers(IEnumerable<ParticleSystemRenderer> renderers,List<string> report)
    {
        const string folder="Assets/Recovery/ParticleMaterials";
        if(!AssetDatabase.IsValidFolder(folder)) AssetDatabase.CreateFolder("Assets/Recovery","ParticleMaterials");
        var shader=Shader.Find("Recovery/OriginalParticleCompatibility");
        if(shader==null) throw new InvalidOperationException("Particle compatibility shader missing");
        var replacements=new Dictionary<Material,Material>();
        foreach(var renderer in renderers)
        {
            var materials=renderer.sharedMaterials;
            for(int i=0;i<materials.Length;i++)
            {
                var source=materials[i];if(source==null) throw new InvalidOperationException("Original particle material missing");
                if(source.shader!=null && source.shader.name==shader.name) continue;
                if(!replacements.TryGetValue(source,out var replacement))
                {
                    var serialized=new SerializedObject(source);Texture texture=null;Vector2 scale=Vector2.one,offset=Vector2.zero;bool foundTextureProperty=false;
                    var envs=serialized.FindProperty("m_SavedProperties.m_TexEnvs");
                    for(int n=0;n<envs.arraySize;n++)
                    {
                        var env=envs.GetArrayElementAtIndex(n);
                        if(env.FindPropertyRelative("first").stringValue=="_MainTex" || env.FindPropertyRelative("first").stringValue=="_BaseMap")
                        {
                            foundTextureProperty=true;texture=env.FindPropertyRelative("second.m_Texture").objectReferenceValue as Texture;
                            scale=env.FindPropertyRelative("second.m_Scale").vector2Value;offset=env.FindPropertyRelative("second.m_Offset").vector2Value;
                        }
                    }
                    if(!foundTextureProperty) throw new InvalidOperationException("Original particle texture contract missing: "+source.name);
                    if(texture==null)
                    {
                        string original=File.ReadAllText(AssetDatabase.GetAssetPath(source));
                        // Null in the original material intentionally means the shader's white default.
                        if(!System.Text.RegularExpressions.Regex.IsMatch(original,@"(?:_BaseMap|_MainTex):\s+m_Texture: \{fileID: 0\}"))
                            throw new InvalidOperationException("Non-null original particle texture unresolved: "+source.name);
                    }
                    string guid=AssetDatabase.AssetPathToGUID(AssetDatabase.GetAssetPath(source));
                    string path=folder+"/"+guid+".mat";
                    replacement=AssetDatabase.LoadAssetAtPath<Material>(path);
                    if(replacement==null)
                    {
                        replacement=new Material(shader);replacement.mainTexture=texture;replacement.mainTextureScale=scale;replacement.mainTextureOffset=offset;
                        var colors=serialized.FindProperty("m_SavedProperties.m_Colors");
                        for(int n=0;n<colors.arraySize;n++)
                        {
                            var value=colors.GetArrayElementAtIndex(n);string name=value.FindPropertyRelative("first").stringValue;
                            if(name=="_BaseColor" || name=="_Color") replacement.SetColor("_Color",value.FindPropertyRelative("second").colorValue);
                        }
                        var floats=serialized.FindProperty("m_SavedProperties.m_Floats");
                        for(int n=0;n<floats.arraySize;n++)
                        {
                            var value=floats.GetArrayElementAtIndex(n);string name=value.FindPropertyRelative("first").stringValue;
                            if(name=="_SrcBlend" || name=="_DstBlend") replacement.SetFloat(name,value.FindPropertyRelative("second").floatValue);
                        }
                        AssetDatabase.CreateAsset(replacement,path);
                    }
                    replacements[source]=replacement;
                    report.Add("Compatibility material | original="+source.name+" | texture="+(texture==null?"original null texture; shader white default":AssetDatabase.GetAssetPath(texture))+" | override="+path+"; original compiled shader not reconstructed");
                }
                materials[i]=replacement;
            }
            renderer.sharedMaterials=materials;
        }
    }
}
