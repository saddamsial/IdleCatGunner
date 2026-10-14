using System;using System.IO;using System.Linq;using System.Reflection;using UnityEngine;using UnityEditor;using UnityEditor.SceneManagement;using UnityEngine.SceneManagement;using CatGunner.Runtime;
public static class RenderDegreeFxFixture {
 public static object Run(){
 if(Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets")throw new Exception("Wrong project");
 var original=SceneManager.GetActiveScene();bool dirty=original.isDirty;
 var full=UnityEngine.Object.FindAnyObjectByType<PenguinFullReskin>(FindObjectsInactive.Include);var hero=UnityEngine.Object.FindAnyObjectByType<GameClient>(FindObjectsInactive.Include).Hero;
 var source=hero.transform.Find("Degree_FX");var dir=Path.GetFullPath(Application.dataPath+"/../../../art/reskin/penguin-expedition/degree-fx-v1");Directory.CreateDirectory(dir+"/fixture");var scene=EditorSceneManager.NewPreviewScene();RenderTexture rt=null;var previous=RenderTexture.active;var records=new System.Collections.Generic.List<object>();
 try{
 var holder=new GameObject("Degree fixture");SceneManager.MoveGameObjectToScene(holder,scene);var theme=holder.AddComponent<PenguinFullReskin>();theme.Effects=full.Effects;
 var cameraObject=new GameObject("Fixture camera");SceneManager.MoveGameObjectToScene(cameraObject,scene);var camera=cameraObject.AddComponent<Camera>();camera.scene=scene;camera.orthographic=true;camera.orthographicSize=17;camera.aspect=1;camera.clearFlags=CameraClearFlags.SolidColor;camera.backgroundColor=new Color(.11f,.17f,.23f);camera.transform.position=new Vector3(0,25,-30);camera.transform.LookAt(Vector3.zero);camera.nearClipPlane=.1f;camera.farClipPlane=100;rt=new RenderTexture(640,640,24);camera.targetTexture=rt;
 var method=typeof(PenguinFullReskin).GetMethod("StyleDegreeParticle",BindingFlags.NonPublic|BindingFlags.Instance);
 foreach(int grade in new[]{4,7,10}){
 var clone=UnityEngine.Object.Instantiate(source.Find(grade.ToString()).gameObject,holder.transform,false);clone.transform.localPosition=Vector3.zero;clone.transform.localRotation=Quaternion.identity;clone.SetActive(true);var emitters=clone.GetComponentsInChildren<ParticleSystem>(true);
 foreach(var p in emitters){p.gameObject.SetActive(true);var renderer=p.GetComponent<ParticleSystemRenderer>();method.Invoke(theme,new object[]{p,renderer,"Fixture/Degree_FX/"+grade+"/"+p.name});records.Add(new{grade,p.name,texture=renderer.sharedMaterial.mainTexture.name,mode=renderer.renderMode.ToString(),tiles=new[]{p.textureSheetAnimation.numTilesX,p.textureSheetAnimation.numTilesY}});}
 for(int frame=0;frame<5;frame++){
 foreach(var p in emitters)p.Simulate(.4f+frame*.35f,false,true,true);camera.Render();RenderTexture.active=rt;var pixels=new Texture2D(640,640,TextureFormat.RGB24,false);pixels.ReadPixels(new Rect(0,0,640,640),0,0);pixels.Apply();File.WriteAllBytes(dir+"/fixture/grade-"+grade+"-"+frame+".png",pixels.EncodeToPNG());UnityEngine.Object.DestroyImmediate(pixels);}
 UnityEngine.Object.DestroyImmediate(clone);
 }
 }finally{RenderTexture.active=previous;if(rt!=null){rt.Release();UnityEngine.Object.DestroyImmediate(rt);}EditorSceneManager.ClosePreviewScene(scene);}
 if(original.isDirty!=dirty)throw new Exception("Scene dirty state changed");File.WriteAllText(dir+"/fixture/verification.json",Newtonsoft.Json.JsonConvert.SerializeObject(new{source="Unity GPU rendering of cloned native emitters in temporary PreviewScene; five ParticleSystem.Simulate phases, not live Game frames",frames=15,currentSceneDirtyUnchanged=true,records},Newtonsoft.Json.Formatting.Indented));return new{frames=15,emitters=records.Count,currentSceneDirtyUnchanged=true};
 }
}
