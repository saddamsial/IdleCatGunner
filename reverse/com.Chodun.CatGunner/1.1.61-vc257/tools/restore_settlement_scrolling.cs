if(UnityEditor.EditorApplication.isPlaying)throw new InvalidOperationException("EditMode required");
var scene=UnityEngine.SceneManagement.SceneManager.GetActiveScene();
if(scene.path!="Assets/Recovery/Scenes/RecoveredClient.unity")throw new InvalidOperationException("Open RecoveredClient");
var c=UnityEngine.Object.FindAnyObjectByType<CatGunner.Recovery.RecoveryForestClient>();
var rows=new System.Collections.Generic.List<object>();
foreach(var banner in new[]{c.Forest.GameWin_UI,c.Forest.GameFail_UI,c.Forest.GameSkip_UI})
{
 var raw=banner.GetComponentsInChildren<UnityEngine.UI.RawImage>(true).Single();
 var id=UnityEditor.GlobalObjectId.GetGlobalObjectIdSlow(raw.gameObject).targetObjectId;
 if(id!=1184&&id!=1309&&id!=1986)throw new InvalidOperationException("Unexpected original scroll object");
 var scrolling=raw.GetComponent<Scrolling>()??raw.gameObject.AddComponent<Scrolling>();
 scrolling.Speed=new UnityEngine.Vector2(-.1f,0);scrolling.enabled=true;
 rows.Add(new{banner=banner.name,gameObject=id,speedX=scrolling.Speed.x,speedY=scrolling.Speed.y,texture=UnityEditor.AssetDatabase.GetAssetPath(raw.texture),script=UnityEditor.AssetDatabase.GetAssetPath(UnityEditor.MonoScript.FromMonoBehaviour(scrolling)),uvX=raw.uvRect.x,uvY=raw.uvRect.y,width=raw.uvRect.width,height=raw.uvRect.height});
}
UnityEditor.SceneManagement.EditorSceneManager.MarkSceneDirty(scene);
if(!UnityEditor.SceneManagement.EditorSceneManager.SaveScene(scene))throw new System.IO.IOException("Scene save failed");
var report=new{scene=scene.path,restored=rows,scope="Only original forest win/fail/skip banners; original Animator/TMP/geometry/materials retained"};
System.IO.File.WriteAllText(System.IO.Path.GetFullPath(System.IO.Path.Combine(UnityEngine.Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/settlement-scrolling-scene-restoration.json")),Newtonsoft.Json.JsonConvert.SerializeObject(report,Newtonsoft.Json.Formatting.Indented));
return report;
