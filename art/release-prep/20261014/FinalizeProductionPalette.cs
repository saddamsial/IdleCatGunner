using System;
using System.Linq;
using UnityEngine;
using UnityEditor;
using UnityEditor.SceneManagement;
using CatGunner.Runtime;

public static class FinalizeProductionPalette
{
    static int Apply(GameObject root)
    {
        int changed=0;
        foreach(var renderer in root.GetComponentsInChildren<SpriteRenderer>(true))
        {
            // Fitted replacements were tinted white by the runtime catalogue.
            // SpriteFill stores health in color.r; retain that gameplay channel.
            if(renderer.sprite==null||!renderer.sprite.name.StartsWith("Fit_",StringComparison.Ordinal)||renderer.GetComponent<SpriteFill>()!=null)continue;
            var color=new Color(1,1,1,renderer.color.a);if(renderer.color==color)continue;
            renderer.color=color;changed++;
        }
        return changed;
    }
    public static string Run()
    {
        if(Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets"||EditorApplication.isPlaying||EditorApplication.isCompiling)throw new Exception("Wrong project or busy Editor");
        var scene=UnityEngine.SceneManagement.SceneManager.GetActiveScene();if(scene.path!=ProductionBuildPolicy.EntryScene||scene.isDirty)throw new Exception("Expected saved production scene");
        int changed=0;
        foreach(var path in new[]{"Assets/Game/Prefabs/Gameplay/PlayerTeam.prefab","Assets/Game/Resources/Gameplay/ProjectilePoolContent.prefab","Assets/Game/Resources/UI/Draw_Info_UI.prefab","Assets/Game/Resources/UI/GunCollection_UI.prefab"})
        {
            var root=PrefabUtility.LoadPrefabContents(path);
            try{int count=Apply(root);changed+=count;if(count>0)PrefabUtility.SaveAsPrefabAsset(root,path);}
            finally{PrefabUtility.UnloadPrefabContents(root);}
        }
        foreach(var root in scene.GetRootGameObjects())changed+=Apply(root);
        var client=UnityEngine.Object.FindAnyObjectByType<GameClient>();var palette=new[]{new Color(.46f,.83f,1),new Color(.68f,.48f,1),new Color(.86f,.94f,1),new Color(1,.70f,.34f)};
        client.MonsterMode.Monster_Colors=client.MonsterMode.Monster_Colors.Select((c,i)=>palette[i%4]).ToArray();
        foreach(var map in client.Forest.Map_Grid_list)map.Reload(client.Forest.Stage_Now%10);
        EditorSceneManager.MarkSceneDirty(scene);EditorSceneManager.SaveScene(scene);
        return "Persisted approved renderer tints: "+changed+"; monster palette and glacier tops authored; health channels retained";
    }
}
