if(UnityEditor.EditorApplication.isPlaying||UnityEditor.EditorApplication.isCompiling)throw new InvalidOperationException("Stable EditMode required");
UnityEditor.EditorApplication.delayCall+=()=>{
try{
var scene=UnityEditor.SceneManagement.EditorSceneManager.OpenScene("Assets/Recovery/Scenes/RecoveredClient.unity");
var d=Newtonsoft.Json.Linq.JObject.Parse(System.IO.File.ReadAllText("/Volumes/ZHITAI_1T/IdleCatGunner/reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/mission-navigation-source-parameters.json"));
Func<Newtonsoft.Json.Linq.JArray,UnityEngine.GameObject> resolve=path=>{UnityEngine.Transform current=null;foreach(Newtonsoft.Json.Linq.JObject node in path){var candidates=current==null?scene.GetRootGameObjects().Select(g=>g.transform):current.Cast<UnityEngine.Transform>();current=candidates.Where(t=>t.name==(string)node["name"]).Skip((int)node["ordinal"]).FirstOrDefault();if(current==null)throw new InvalidOperationException("Missing source path");}return current.gameObject;};
var m=resolve((Newtonsoft.Json.Linq.JArray)d["path"]).GetComponent<Mission_manager>();var alert=resolve((Newtonsoft.Json.Linq.JArray)d["alert"]["path"]);
if(scene.isDirty||m==null||m.Mission_Alert_obj!=null)throw new InvalidOperationException("Clean unbound original manager required");
m.Mission_Alert_obj=alert;UnityEditor.EditorUtility.SetDirty(m);UnityEditor.SceneManagement.EditorSceneManager.MarkSceneDirty(scene);if(!UnityEditor.SceneManagement.EditorSceneManager.SaveScene(scene))throw new System.IO.IOException("Save failed");
System.IO.File.WriteAllText("/Volumes/ZHITAI_1T/IdleCatGunner/reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/mission-navigation-scene-restoration.json",Newtonsoft.Json.JsonConvert.SerializeObject(new{manager=(int)d["component"],originalAlertGo=(int)d["alert"]["originalGo"],restoredReferences=1,addedObjects=0,addedComponents=0,dirty=scene.isDirty},Newtonsoft.Json.Formatting.Indented));
}catch(Exception e){System.IO.File.WriteAllText("/Volumes/ZHITAI_1T/IdleCatGunner/reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/mission-navigation-integration-error.txt",e.ToString());throw;}
};return "original alert reference queued";
