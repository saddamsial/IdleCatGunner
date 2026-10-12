if(UnityEditor.EditorApplication.isPlaying||UnityEditor.EditorApplication.isCompiling)throw new System.Exception("Editor busy");
UnityEditor.PlayerSettings.Android.keystorePass="";UnityEditor.PlayerSettings.Android.keyaliasPass="";
var report=System.IO.Path.GetFullPath(System.IO.Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
var e=Newtonsoft.Json.Linq.JObject.Parse(System.IO.File.ReadAllText(System.IO.Path.Combine(report,"mobile74-build-environment-before.json")));
System.Environment.SetEnvironmentVariable("GRADLE_USER_HOME",(string)e["gradle"]);System.Environment.SetEnvironmentVariable("TMPDIR",(string)e["tmp"]);
System.IO.File.Delete("/private/tmp/catgunner-recovery-build-secret.txt");
return new {secretsCleared=true,environmentRestored=true,activeBuildTarget=UnityEditor.EditorUserBuildSettings.activeBuildTarget.ToString()};
