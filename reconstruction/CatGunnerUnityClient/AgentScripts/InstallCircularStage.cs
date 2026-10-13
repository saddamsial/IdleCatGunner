using System;
using System.Linq;
using CatGunner.Recovery;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;

public static class InstallCircularStage
{
    public static string Install()
    {
        if(Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets")throw new InvalidOperationException("Wrong project.");
        if(EditorApplication.isPlaying)throw new InvalidOperationException("Stop Play Mode first.");
        var scene=EditorSceneManager.GetActiveScene();
        if(scene.path!="Assets/Recovery/Scenes/RecoveredClient.unity")
            scene=EditorSceneManager.OpenScene("Assets/Recovery/Scenes/RecoveredClient.unity");
        var client=UnityEngine.Object.FindAnyObjectByType<RecoveryForestClient>(FindObjectsInactive.Include);
        var f=client.Forest;
        var circle=f.GetComponent<CircularForestMap>();
        if(circle==null)circle=Undo.AddComponent<CircularForestMap>(f.gameObject);
        Undo.RecordObject(f,"Use circular ordinary stage");f.CircularMap=circle;
        circle.Radius=100;circle.EdgePadding=24;circle.MovementPadding=2;
        var floor=f.Map_obj.transform.Find("Circular forest ground");
        if(floor==null)
        {
            var source=client.MineMode.Map_obj.GetComponentsInChildren<SpriteRenderer>(true).Single(r=>r.name=="Ground (1)");
            var copy=UnityEngine.Object.Instantiate(source.gameObject,f.Map_obj.transform);
            copy.name="Circular forest ground";Undo.RegisterCreatedObjectUndo(copy,"Copy circular mine floor");
            copy.transform.localPosition=Vector3.zero;
            copy.transform.localScale=source.transform.localScale*(2f/3f);
            copy.SetActive(true);
        }
        var mineFloor=client.MineMode.Map_obj.GetComponentsInChildren<SpriteRenderer>(true).Single(r=>r.name=="Ground (1)");
        floor=f.Map_obj.transform.Find("Circular forest ground");
        Undo.RecordObject(floor,"Shrink circular floor");floor.localScale=mineFloor.transform.localScale*(2f/3f);
        var terrain=f.GetComponent<CircularSnowTerrain>();if(terrain==null)terrain=Undo.AddComponent<CircularSnowTerrain>(f.gameObject);
        terrain.SnowMaterial=Material("CircularSnow","Recovery/CircularSnow");
        var snow=AssetDatabase.LoadAssetAtPath<Texture2D>("Assets/Recovery/PenguinExpedition/snow-ground.png");
        if(snow==null)throw new InvalidOperationException("Requested snow-ground.png is missing.");
        terrain.SnowMaterial.SetTexture("_SnowTex",snow);terrain.SnowMaterial.SetColor("_Tint",Color.white);
        terrain.SnowMaterial.SetFloat("_Desaturate",0);terrain.SnowMaterial.SetFloat("_WhiteMix",.35f);terrain.SnowMaterial.SetFloat("_TileSize",24);
        terrain.LowerMaterial=Material("GreyLowerSnow","Recovery/CircularSnow");
        terrain.LowerMaterial.SetTexture("_SnowTex",snow);terrain.LowerMaterial.SetColor("_Tint",new Color(.65f,.67f,.68f,1));
        terrain.LowerMaterial.SetFloat("_Desaturate",1);terrain.LowerMaterial.SetFloat("_WhiteMix",0);terrain.LowerMaterial.SetFloat("_Radius",600);
        terrain.LowerMaterial.SetFloat("_TileSize",24);terrain.LowerMaterial.SetVector("_Center",f.Map_obj.transform.position);
        terrain.SnowMaterial.SetFloat("_Radius",100);terrain.SnowMaterial.SetVector("_Center",f.Map_obj.transform.position);
        terrain.WallMaterial=Material("VerticalIceCliff-v3","Recovery/VerticalIceCliff");
        terrain.WallMaterial.mainTexture=AssetDatabase.LoadAssetAtPath<Texture2D>("Assets/Recovery/PenguinExpedition/vertical-ice-cliff-v3.png");
        terrain.DecorationMaterial=Material("SnowPlatformDecor-v3","Recovery/SnowPlatformDecor");
        floor.GetComponent<SpriteRenderer>().sharedMaterial=terrain.SnowMaterial;
        var prints=f.GetComponent<SnowFootprintTrail>();if(prints==null)prints=Undo.AddComponent<SnowFootprintTrail>(f.gameObject);
        prints.FootprintMaterial=Material("SnowFootprint","Recovery/SnowFootprint");
        var view=UnityEngine.Object.FindObjectsByType<Camera>(FindObjectsInactive.Include).Single(cam=>cam.CompareTag("MainCamera"));
        var follow=view.GetComponentInParent<Follow>();
        var bounded=follow.GetComponent<CircularArenaCamera>();if(bounded==null)bounded=Undo.AddComponent<CircularArenaCamera>(follow.gameObject);
        bounded.Circle=circle;bounded.ViewCamera=view;bounded.Damping=.16f;bounded.SlowingDistance=12;
        bounded.SafeViewport=new Rect(.12f,.20f,.76f,.60f);
        EditorUtility.SetDirty(bounded);
        EditorUtility.SetDirty(terrain);EditorUtility.SetDirty(prints);
        foreach(var name in new[]{"MapSkin","Map_Grid"})
        {
            var old=f.Map_obj.transform.Find(name);
            if(old==null)throw new InvalidOperationException("Missing ordinary terrain branch: "+name);
            Undo.RecordObject(old.gameObject,"Hide strip terrain");old.gameObject.SetActive(false);
        }
        EditorUtility.SetDirty(f);EditorUtility.SetDirty(circle);
        AssetDatabase.SaveAssets();
        EditorSceneManager.MarkSceneDirty(scene);
        if(!EditorSceneManager.SaveScene(scene))throw new InvalidOperationException("Unable to save circular stage.");
        return "Saved ordinary circular stage: radius "+circle.Radius+", original mine unchanged.";
    }
    static Material Material(string name,string shaderName)
    {
        string path="Assets/Recovery/"+name+".mat";
        var shader=Shader.Find(shaderName);if(shader==null||!shader.isSupported)throw new InvalidOperationException("Missing shader: "+shaderName);
        var material=AssetDatabase.LoadAssetAtPath<Material>(path);
        if(material==null){material=new Material(shader);AssetDatabase.CreateAsset(material,path);}
        else material.shader=shader;
        EditorUtility.SetDirty(material);return material;
    }
}
