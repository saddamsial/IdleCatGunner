using System;
using System.IO;
using System.Linq;
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;
using CatGunner.Recovery;

// Rendering adapter for the recovered Built-in project. Original URP materials
// remain untouched; only unsupported references in challenge maps are replaced.
public static class ChallengeMaterialRepairEditor
{
    public static void Repair()
    {
        var scene=EditorSceneManager.GetActiveScene();
        if(EditorApplication.isPlaying||scene.isDirty||scene.path!=ForestClientEditor.ScenePath)throw new InvalidOperationException("Clean recovered scene in EditMode required");
        var c=UnityEngine.Object.FindAnyObjectByType<RecoveryForestClient>(FindObjectsInactive.Include);
        var roots=new[]{c.SpeedRun.Map_obj,c.BossMode.Map_obj,c.MonsterMode.Map_obj,c.RaidMode.Map_obj};
        var renderers=roots.SelectMany(g=>g.GetComponentsInChildren<Renderer>(true)).Distinct().ToArray();
        var sprite=AssetDatabase.GetBuiltinExtraResource<Material>("Sprites-Default.mat");
        var fill=AssetDatabase.LoadAssetAtPath<Material>("Assets/Recovery/ForestHealthFill.mat");
        const string folder="Assets/Recovery/ChallengeMaterials";
        if(!AssetDatabase.IsValidFolder(folder))AssetDatabase.CreateFolder("Assets/Recovery","ChallengeMaterials");
        var changes=new List<object>();var originals=new Dictionary<string,string>();
        foreach(var r in renderers.Where(r=>r.sharedMaterials.Any(Bad)))foreach(var m in r.sharedMaterials.Where(m=>m!=null))
        {var path=AssetDatabase.GetAssetPath(m);if(File.Exists(path)&&!originals.ContainsKey(path))originals[path]=Hash(path);}
        var report=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/challenge-material-repair.json"));
        // Persist the preservation audit before mutating any scene reference.
        File.WriteAllText(report,Newtonsoft.Json.JsonConvert.SerializeObject(new{phase="before",originals},Newtonsoft.Json.Formatting.Indented));
        foreach(var r in renderers)
        {
            var materials=r.sharedMaterials;bool changed=false;
            for(int i=0;i<materials.Length;i++)
            {
                var original=materials[i];if(!Bad(original))continue;
                if(original==null)throw new InvalidOperationException("Missing original material: "+r.name);
                var source=AssetDatabase.GetAssetPath(original);Material replacement;
                if(r is ParticleSystemRenderer pr)
                {
                    var log=new List<string>();ForestBulletEditor.RepairRenderers(new[]{pr},log);
                    changes.Add(new{renderer=GlobalObjectId.GetGlobalObjectIdSlow(r).ToString(),source,replacement=AssetDatabase.GetAssetPath(r.sharedMaterial)});
                    materials=r.sharedMaterials;break;
                }
                if(r is SpriteRenderer sr)
                {
                    if(sr.sprite==null)throw new InvalidOperationException("Missing original sprite: "+r.name);
                    if(source=="Assets/Material/Floor 2.mat")replacement=Compatible(original,"Recovery/MineGroundCompatibility",folder);
                    else replacement=r.GetComponent<SpriteFill>()!=null?fill:sprite;
                }
                else replacement=Compatible(original,"Unlit/Texture",folder);
                if(replacement==null||replacement.shader==null||!replacement.shader.isSupported)throw new InvalidOperationException("Unsupported replacement");
                materials[i]=replacement;changed=true;
                changes.Add(new{renderer=GlobalObjectId.GetGlobalObjectIdSlow(r).ToString(),source,replacement=AssetDatabase.GetAssetPath(replacement)});
            }
            if(changed)r.sharedMaterials=materials;
        }
        var bad=renderers.Where(r=>r.sharedMaterials.Any(Bad)).ToArray();if(bad.Length!=0)throw new InvalidOperationException("Challenge material still unsupported");
        foreach(var pair in originals)if(Hash(pair.Key)!=pair.Value)throw new InvalidOperationException("Original asset modified: "+pair.Key);
        AssetDatabase.SaveAssets();EditorSceneManager.MarkSceneDirty(scene);if(!EditorSceneManager.SaveScene(scene))throw new IOException("Challenge scene save failed");
        File.WriteAllText(report,Newtonsoft.Json.JsonConvert.SerializeObject(new{phase="complete",scene=scene.path,originals,originalsUnchanged=true,renderers=renderers.Length,remainingUnsupported=bad.Length,changes},Newtonsoft.Json.Formatting.Indented));
    }
    static bool Bad(Material m)=>m==null||m.shader==null||!m.shader.isSupported||m.shader.name=="Hidden/InternalErrorShader";
    static string Hash(string p){using(var h=System.Security.Cryptography.SHA256.Create())return BitConverter.ToString(h.ComputeHash(File.ReadAllBytes(p))).Replace("-","").ToLowerInvariant();}
    static Material Compatible(Material original,string shaderName,string folder)
    {
        var shader=Shader.Find(shaderName);if(shader==null||!shader.isSupported)throw new InvalidOperationException(shaderName);
        var path=folder+"/"+AssetDatabase.AssetPathToGUID(AssetDatabase.GetAssetPath(original))+".mat";
        var m=AssetDatabase.LoadAssetAtPath<Material>(path);if(m!=null)return m;
        m=new Material(shader);var serialized=new SerializedObject(original);
        var textures=serialized.FindProperty("m_SavedProperties.m_TexEnvs");
        for(int i=0;i<textures.arraySize;i++){var p=textures.GetArrayElementAtIndex(i);var name=p.FindPropertyRelative("first").stringValue;if(name!="_MainTex"&&name!="_BaseMap")continue;m.mainTexture=p.FindPropertyRelative("second.m_Texture").objectReferenceValue as Texture;m.mainTextureScale=p.FindPropertyRelative("second.m_Scale").vector2Value;m.mainTextureOffset=p.FindPropertyRelative("second.m_Offset").vector2Value;}
        var colors=serialized.FindProperty("m_SavedProperties.m_Colors");for(int i=0;i<colors.arraySize;i++){var p=colors.GetArrayElementAtIndex(i);var key=p.FindPropertyRelative("first").stringValue;if((key=="_Color"||key=="_BaseColor")&&m.HasProperty("_Color"))m.SetColor("_Color",p.FindPropertyRelative("second").colorValue);}
        AssetDatabase.CreateAsset(m,path);return m;
    }
}
