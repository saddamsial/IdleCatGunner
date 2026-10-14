using System;
using System.Linq;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;
public static class InspectPenguin
{
    public static string Run()
    {
        if(Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets")throw new Exception("Wrong project");
        if(!EditorApplication.isPlaying && UnityEngine.SceneManagement.SceneManager.GetActiveScene().path!="Assets/Game/Scenes/GameClient.unity")EditorSceneManager.OpenScene("Assets/Game/Scenes/GameClient.unity");
        var f=UnityEngine.Object.FindAnyObjectByType<Tree_manager>(FindObjectsInactive.Include);
        var c=UnityEngine.Object.FindAnyObjectByType<Cat>(FindObjectsInactive.Include);
        return Newtonsoft.Json.JsonConvert.SerializeObject(new {scene=f.gameObject.scene.path, hero=c.GetComponentsInChildren<SpriteRenderer>(true).Select(s=>new {s.name,path=AssetDatabase.GetAssetPath(s.sprite),sprite=s.sprite?.name,bounds=s.sprite?.bounds.size.ToString(),pivot=s.sprite?.pivot.ToString(),rect=s.sprite?.rect.ToString(),scale=s.transform.localScale.ToString(),pos=s.transform.localPosition.ToString(),rot=s.transform.localEulerAngles.ToString()}).ToArray(), trees=f.Tree_sprites.Take(4).Select(s=>new{s.name,bounds=s.bounds.ToString(),pivot=s.pivot.ToString(),rect=s.rect.ToString()}).ToArray(), ground=f.Ground_sprite_list[0].name, maps=f.Map_Grid_list.Take(1).Select(m=>new {up=m.Border_Up_sprite_list[0].name,down=m.Border_Down_sprite_list[0].name,upper=m.Upper_sprite.sprite.name,renderers=m.GetComponentsInChildren<SpriteRenderer>(true).Select(s=>new{s.name,sprite=s.sprite?.name}).ToArray()}).ToArray()}, Newtonsoft.Json.Formatting.Indented);
    }
}
