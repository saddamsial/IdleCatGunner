if(UnityEditor.EditorApplication.isPlaying||UnityEditor.EditorApplication.isCompiling)throw new InvalidOperationException("Stable EditMode required");
UnityEditor.EditorApplication.delayCall+=()=>{
try{
UnityEditor.SceneManagement.EditorSceneManager.OpenScene("Assets/Recovery/Scenes/RecoveredClient.unity");MissionPresentationClientEditor.Integrate();
}catch(Exception e){System.IO.File.WriteAllText("/Volumes/ZHITAI_1T/IdleCatGunner/reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/mission-presentation-integration-error.txt",e.ToString());UnityEngine.Debug.LogException(e);}
};return "integration queued";
