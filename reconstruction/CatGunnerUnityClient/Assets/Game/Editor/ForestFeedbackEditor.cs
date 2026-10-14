using System;
using System.IO;
using System.Linq;
using System.Collections.Generic;
using CatGunner.Runtime;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEditor;
using UnityEditor.SceneManagement;

public static class ForestFeedbackEditor
{
    public static void Restore()
    {
        if(EditorApplication.isPlaying)throw new InvalidOperationException("EditMode required");
        var scene=SceneManager.GetActiveScene();
        if(scene.path!=ForestClientEditor.ScenePath)throw new InvalidOperationException("Open playable client first");
        var particle=UnityEngine.Object.FindObjectsByType<Particle_Polling>(FindObjectsInactive.Include).SingleOrDefault(p=>p.Particle_index==0);
        var setting=UnityEngine.Object.FindAnyObjectByType<DamageTextAnimationSetting>(FindObjectsInactive.Include);
        if(particle==null&&setting==null)
        {
            var slice=EditorSceneManager.OpenScene("Assets/Game/Scenes/ForestFeedback.unity",OpenSceneMode.Additive);
            particle=slice.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<Particle_Polling>(true)).Single();
            setting=slice.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<DamageTextAnimationSetting>(true)).Single();
            foreach(var root in slice.GetRootGameObjects())SceneManager.MoveGameObjectToScene(root,scene);
            EditorSceneManager.CloseScene(slice,true);SceneManager.SetActiveScene(scene);
        }
        if(particle==null||setting==null)throw new InvalidOperationException("Incomplete original feedback hierarchy");
        var prefabs=new[]{"Money_Cri","Damage","Dia","Damage (Cri)"};
        for(int i=0;i<setting.settings.Length;i++)setting.settings[i].setting=AssetDatabase.LoadAssetAtPath<GameObject>("Assets/GameObject/"+prefabs[i]+".prefab");
        particle.gameObject.SetActive(true);setting.gameObject.SetActive(true);
        ForestClientEditor.EnsureInputModule();
        var materials=new List<string>();ForestBulletEditor.RepairRenderers(particle.GetComponentsInChildren<ParticleSystemRenderer>(true),materials);
        var presenter=setting.GetComponent<DamageTextPresenter>();if(presenter==null)presenter=setting.gameObject.AddComponent<DamageTextPresenter>();
        const string folder="Assets/Game/DamageMaterials";
        if(!AssetDatabase.IsValidFolder(folder))AssetDatabase.CreateFolder("Assets/Recovery","DamageMaterials");
        var shader=Shader.Find("Game/DamageBitmapCompatibility");
        if(shader==null)throw new InvalidOperationException("Bitmap compatibility shader missing");
        var bitmapMaterials=setting.settings.Select(s=>
        {
            string path=folder+"/"+s.key+".mat";var material=AssetDatabase.LoadAssetAtPath<Material>(path);
            if(material==null){material=new Material(shader);AssetDatabase.CreateAsset(material,path);}
            material.mainTexture=s.setting.GetComponent<DamageTextAnimation>().font.material.mainTexture;
            EditorUtility.SetDirty(material);return material;
        }).ToArray();
        presenter.SetMaterials(bitmapMaterials);
        var evidence=new {scene=scene.path,moneySourceObject=2663,moneyComponent=148042,particleIndex=particle.Particle_index,
            systems=particle._particleSystem.Select(p=>new{p.name,simulationSpace=p.main.simulationSpace.ToString(),lifetime=p.main.startLifetime.constant,texture=AssetDatabase.GetAssetPath(p.GetComponent<ParticleSystemRenderer>().sharedMaterial.mainTexture)}).ToArray(),
            textSourceObject=8804,minSortingOrder=setting.minSortingOrder,settings=setting.settings.Select(s=>{var a=s.setting.GetComponent<DamageTextAnimation>();return new{s.key,prefab=AssetDatabase.GetAssetPath(s.setting),font=AssetDatabase.GetAssetPath(a.font),texture=AssetDatabase.GetAssetPath(a.font.material.mainTexture),shader=a.font.material.shader.name,a.duration,a.spriteGap,curves=a.curves.Length};}).ToArray(),
            materials,bitmapMaterials=bitmapMaterials.Select(AssetDatabase.GetAssetPath).ToArray(),meshPooling="Local presentation adapter; original prefab/glyph UVs/curves retained",shaderBoundary="HLSL/Metal port of original compiled Hidden/DamageText GLES3 expressions and pass states; not original author source",input="StandaloneInputModule for activeInputHandler=0"};
        EditorSceneManager.MarkSceneDirty(scene);if(!EditorSceneManager.SaveScene(scene))throw new IOException("Scene save failed");
        AssetDatabase.SaveAssets();
        File.WriteAllText(Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/forest-feedback-scene-restoration.json")),Newtonsoft.Json.JsonConvert.SerializeObject(evidence,Newtonsoft.Json.Formatting.Indented));
    }
}
