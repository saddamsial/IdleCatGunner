using System.Linq;
using UnityEngine;
using CatGunner.Runtime;
using UnityEditor;
using UnityEditor.SceneManagement;
public static class InspectArenaCamera
{
    public static string VerifySaved()
    {
        var scene=EditorSceneManager.GetActiveScene();
        var c=Object.FindAnyObjectByType<GameClient>(FindObjectsInactive.Include);
        var circle=c.Forest.GetComponent<CircularForestMap>();var terrain=c.Forest.GetComponent<CircularSnowTerrain>();
        var cam=Object.FindObjectsByType<Camera>(FindObjectsInactive.Include).First(x=>x.CompareTag("MainCamera"));
        var bounded=cam.GetComponentInParent<CircularArenaCamera>();
        var state=new{playing=Application.isPlaying,scene=scene.path,scene.isDirty,c.Persist,c.SaveFolderOverride,
            testHost=SessionState.GetString("CatGunner.Recovery.TestHostFolder",""),circle.Radius,circle.MovementPadding,circle.EdgePadding,
            terrain.WallHeight,top=AssetDatabase.GetAssetPath(terrain.SnowMaterial.GetTexture("_SnowTex")),lower=AssetDatabase.GetAssetPath(terrain.LowerMaterial.GetTexture("_SnowTex")),
            bound=bounded!=null&&bounded.Circle==circle&&bounded.ViewCamera==cam};
        if(state.playing||state.isDirty||!state.Persist||state.testHost!=""||!state.bound)throw new System.InvalidOperationException("Saved scene/preview cleanup verification failed.");
        string json=Newtonsoft.Json.JsonConvert.SerializeObject(state,Newtonsoft.Json.Formatting.Indented);
        System.IO.File.WriteAllText(System.IO.Path.GetFullPath(Application.dataPath+"/../../../art/maps/raised-snow-stage/saved-scene.json"),json);
        return json;
    }
    public static string Read()
    {
        var c=Object.FindAnyObjectByType<GameClient>(FindObjectsInactive.Include);
        var cam=Object.FindObjectsByType<Camera>(FindObjectsInactive.Include).First(x=>x.CompareTag("MainCamera"));
        var follow=cam.GetComponentInParent<Follow>();
        return Newtonsoft.Json.JsonConvert.SerializeObject(new{
            camera=cam.name,position=cam.transform.position.ToString(),local=cam.transform.localPosition.ToString(),rotation=cam.transform.eulerAngles.ToString(),
            cam.orthographic,cam.orthographicSize,cam.aspect,width=cam.pixelWidth,height=cam.pixelHeight,
            follow=follow!=null?follow.name:null,followPos=follow!=null?follow.transform.position.ToString():null,
            target=follow!=null?follow.Target_trans.name:null,targetPos=follow!=null?follow.Target_trans.position.ToString():null,
            heroView=cam.WorldToViewportPoint(c.Hero.transform.position).ToString(),hero=c.Hero.transform.position.ToString(),
            heroCollider=c.Hero.GetComponents<Collider>().Select(x=>new{x.GetType().Name,bounds=x.bounds.ToString()}).ToArray()
        });
    }
}
