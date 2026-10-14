using System;
using System.IO;
using System.Linq;
using System.Collections;
using UnityEngine;
using UnityEditor;
using CatGunner.Runtime;

public static class ReleaseVisualAudit
{
    const string Dir="/Volumes/ZHITAI_1T/IdleCatGunner/art/release-prep/20261014";
    public static string Edit()
    {
        if(Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets"||EditorApplication.isPlaying)throw new Exception("Expected project in Edit mode");
        var scene=UnityEngine.SceneManagement.SceneManager.GetActiveScene();if(scene.path!=ProductionBuildPolicy.EntryScene)throw new Exception("Expected production scene");
        ProductionBuildPolicy.Validate();
        var roots=scene.GetRootGameObjects();
        int Missing(GameObject r)=>r.GetComponentsInChildren<Transform>(true).Sum(t=>GameObjectUtility.GetMonoBehavioursWithMissingScriptCount(t.gameObject));
        var prefabs=new[]{"Assets/Game/Prefabs/Gameplay/PlayerTeam.prefab","Assets/Game/Resources/Gameplay/ProjectilePoolContent.prefab","Assets/Game/Resources/UI/Draw_Info_UI.prefab","Assets/Game/Resources/UI/GunCollection_UI.prefab"};
        var client=UnityEngine.Object.FindAnyObjectByType<GameClient>();
        var data=new{scene=scene.path,scene.isDirty,playing=EditorApplication.isPlaying,compiling=EditorApplication.isCompiling,client.Persist,client.SaveFolderOverride,testHost=SessionState.GetString("CatGunner.Recovery.TestHostFolder",""),missing=roots.Sum(Missing),prefabs=prefabs.Select(p=>new{path=p,missing=Missing(AssetDatabase.LoadAssetAtPath<GameObject>(p)),guid=AssetDatabase.AssetPathToGUID(p)}),roots=roots.Select(r=>new{r.name,nodes=r.GetComponentsInChildren<Transform>(true).Length}),avatars=roots.SelectMany(r=>r.GetComponentsInChildren<PenguinAvatarBinding>(true)).Select(b=>new{b.name,sprite=b.Visual.sprite.name,visible=b.Visual.enabled,nativeHidden=b.HiddenRenderers.All(r=>!r.enabled),bones=b.Visual.GetComponent<UnityEngine.U2D.Animation.SpriteSkin>().boneTransforms.Length}),ice=client.Forest.Tree_sprites.Select(s=>s.name).Distinct(),ground=client.Forest.Ground_SpriteRenderer.sprite.name,scenes=EditorBuildSettings.scenes.Where(s=>s.enabled).Select(s=>s.path)};
        File.WriteAllText(Dir+"/final-editor-audit.json",Newtonsoft.Json.JsonConvert.SerializeObject(data,Newtonsoft.Json.Formatting.Indented));
        var cam=Camera.main;var target=RenderTexture.GetTemporary(750,1334,24);var previous=RenderTexture.active;var oldTarget=cam.targetTexture;
        var image=new Texture2D(750,1334,TextureFormat.RGB24,false);
        try{cam.targetTexture=target;cam.Render();RenderTexture.active=target;image.ReadPixels(new Rect(0,0,750,1334),0,0);image.Apply();File.WriteAllBytes(Dir+"/edit-world.png",image.EncodeToPNG());}
        finally{cam.targetTexture=oldTarget;RenderTexture.active=previous;RenderTexture.ReleaseTemporary(target);UnityEngine.Object.DestroyImmediate(image);}
        return "Production scene and four prefabs audited; authored world rendered to edit-world.png";
    }
    public static string Play()
    {
        var c=GameClient.Instance;if(!Application.isPlaying||c==null||c.SaveFolderOverride==null||!c.SaveFolderOverride.Contains("PenguinPreview-Release"))throw new Exception("Isolated release preview required");
        c.StartCoroutine(Capture(c));return "Capturing actual Game view in an isolated preview profile";
    }
    static IEnumerator Shot(string name)
    {
        yield return new WaitForSecondsRealtime(.5f);yield return new WaitForEndOfFrame();
        var image=ScreenCapture.CaptureScreenshotAsTexture();
        try{File.WriteAllBytes(Dir+"/"+name+".png",image.EncodeToPNG());}finally{UnityEngine.Object.Destroy(image);}
    }
    static IEnumerator Capture(GameClient c)
    {
        while(!c.ReadyForPlay)yield return null;
        c.DailyLogin.AutoShow=false;c.Tutorial.SetCleared();c.DailyLogin.Close();
        yield return new WaitForSeconds(2);yield return Shot("gameplay");
        c.State.Pet_Selected_items=new[]{0,2,4};c.State.Selected_LockGroup=new[]{-1,-1,-1};
        c.ApplyBalance();c.Adventure.Open();yield return Shot("adventure-pets");c.Adventure.Close();
        c.BossMode.Stage_Now=270;c.BossMode.Game_Enter();yield return new WaitForSeconds(2.5f);yield return Shot("boss");
        c.BossMode.Game_Exit();yield return new WaitForSeconds(2.5f);
        File.WriteAllText(Dir+"/preview-observation.json",Newtonsoft.Json.JsonConvert.SerializeObject(new{source="Actual Unity Game view GPU captures",Screen.width,Screen.height,ready=c.ReadyForPlay,save=c.SaveFolderOverride,avatars=UnityEngine.Object.FindObjectsByType<PenguinAvatarBinding>(FindObjectsInactive.Include,FindObjectsSortMode.None).Length,actors=UnityEngine.Object.FindObjectsByType<PenguinActorBinding>(FindObjectsInactive.Include,FindObjectsSortMode.None).Length,pool=Polling_manager.instance.IsReady,isolated=true},Newtonsoft.Json.Formatting.Indented));
    }
}
