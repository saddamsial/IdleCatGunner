using System;
using System.Linq;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;
using UnityEngine.SceneManagement;

public static class PlaytestUIPresentationEditor
{
    // Generate Player-safe prefab assets from the new original-derived source.
    // Does not save or alter the existing working scene.
    public static object BuildWeaponPages()
    {
        if(EditorApplication.isPlaying)throw new InvalidOperationException("EditMode required");
        var previous=SceneManager.GetActiveScene();
        var scene=EditorSceneManager.OpenScene("Assets/Game/Scenes/WeaponPagesSource.unity",OpenSceneMode.Additive);
        try
        {
            var all=scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<Transform>(true)).ToArray();
            var info=all.Single(t=>t.name=="Draw_Info_UI").gameObject;
            var collection=all.Single(t=>t.name=="GunCollection_UI").gameObject;
            if(collection.GetComponent<Gun_Collection_UI>().Gun_Item_list.Length!=65)throw new InvalidOperationException("Original collection needs all65 weapons");
            var paths=new[]{"Assets/Game/Resources/UI/Draw_Info_UI.prefab","Assets/Game/Resources/UI/GunCollection_UI.prefab"};
            var roots=new[]{info,collection};
            for(int i=0;i<roots.Length;i++)
            {
                if(System.IO.File.Exists(paths[i]))throw new InvalidOperationException("Preserve existing template "+paths[i]);
                // Original modal close buttons are included with their references.
                var asset=PrefabUtility.SaveAsPrefabAsset(roots[i],paths[i]);
                if(asset==null)throw new InvalidOperationException("Prefab export failed");
            }
            return new{paths,objects=all.Length,missingScripts=all.Sum(t=>GameObjectUtility.GetMonoBehavioursWithMissingScriptCount(t.gameObject))};
        }
        finally{EditorSceneManager.CloseScene(scene,true);SceneManager.SetActiveScene(previous);}
    }
}
