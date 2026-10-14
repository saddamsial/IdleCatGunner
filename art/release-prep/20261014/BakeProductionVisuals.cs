using System;
using System.IO;
using System.Linq;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine.U2D.Animation;
using CatGunner.Runtime;
using TMPro;

public static class BakeProductionVisuals
{
    const string Project = "/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets";
    const string Report = "/Volumes/ZHITAI_1T/IdleCatGunner/art/release-prep/20261014/visual-bake.json";
    static Dictionary<UnityEngine.Object,UnityEngine.Object> replacements;
    static PenguinFullReskin full;
    static PenguinExpeditionTheme terrain;
    static Camera camera;
    static int references, avatars, actors;

    static void Remap(GameObject root)
    {
        foreach(var component in root.GetComponentsInChildren<Component>(true))
        {
            if(component==null || component is PenguinFullReskin || component is PenguinExpeditionTheme)continue;
            var serialized = new SerializedObject(component);
            var property = serialized.GetIterator();
            while(property.Next(true))
            {
                if(property.propertyType!=SerializedPropertyType.ObjectReference)continue;
                var value=property.objectReferenceValue;
                if(value!=null && replacements.TryGetValue(value,out var next))
                {property.objectReferenceValue=next;references++;}
            }
            serialized.ApplyModifiedPropertiesWithoutUndo();
        }
        foreach(var cat in root.GetComponentsInChildren<Cat>(true))Avatar(cat);
    }
    static void Avatar(Cat cat)
    {
        if(cat.GetComponent<PenguinAvatarBinding>()!=null)return;
        var renderers=cat.GetComponentsInChildren<SpriteRenderer>(true);
        var hidden=renderers.Where(r=>r==cat.skin_spriteRenderer || r==cat.hand_spriteRenderer || r.name=="hand_outlilne" || r.sprite!=null&&r.sprite.name=="face").Cast<Renderer>().ToArray();
        var node=new GameObject("PenguinAvatar");node.transform.SetParent(cat.skin_spriteRenderer.transform,false);
        var visual=node.AddComponent<SpriteRenderer>();visual.sprite=terrain.Penguin;
        visual.sharedMaterial=cat.skin_spriteRenderer.sharedMaterial;
        visual.sortingLayerID=cat.skin_spriteRenderer.sortingLayerID;visual.sortingOrder=cat.skin_spriteRenderer.sortingOrder;
        PenguinBoneMotion.CreateSkeleton(visual);
        node.AddComponent<PenguinBoneMotion>();
        var binding=cat.gameObject.AddComponent<PenguinAvatarBinding>();
        binding.Owner=cat;binding.Visual=visual;binding.Shadow=renderers.FirstOrDefault(r=>r.name=="Shadow");binding.HiddenRenderers=hidden;
        binding.HideNativeRenderers();binding.PreviewPose(camera);
        foreach(var renderer in hidden)
        {
            var sprite=renderer as SpriteRenderer;if(sprite==null)continue;
            sprite.sprite=sprite==cat.skin_spriteRenderer?full.Skins[0]:null;
        }
        avatars++;
    }
    static void Actor(Transform owner,Sprite[] sprites,float ratio,bool preview=false)
    {
        if(owner.GetComponent<PenguinActorBinding>()!=null)return;
        var native=owner.GetComponentsInChildren<Renderer>(true).Where(r=>!(r is ParticleSystemRenderer)).ToArray();
        var shadow=native.OfType<SpriteRenderer>().FirstOrDefault(r=>r.name.ToLowerInvariant().Contains("shadow"));
        var hidden=native.Where(r=>!r.name.ToLowerInvariant().Contains("shadow")).ToArray();
        foreach(var renderer in hidden)
        {
            renderer.enabled=false;
            var skin=renderer.GetComponent<SpriteSkin>();if(skin!=null)skin.enabled=false;
            if(renderer is SpriteRenderer sprite)sprite.sprite=null;
        }
        var node=new GameObject(preview?"PetPreview":"PolarActor");node.transform.SetParent(owner,false);
        var visual=node.AddComponent<SpriteRenderer>();visual.sprite=sprites[0];
        visual.sharedMaterial=UnityEngine.Object.FindAnyObjectByType<GameClient>().Hero.skin_spriteRenderer.sharedMaterial;
        visual.sortingOrder=preview?8:3;
        if(camera!=null)
        {
            node.transform.rotation=camera.transform.rotation;
            float height=14f*ratio;node.transform.localScale=Vector3.one;
            var scale=node.transform.lossyScale;
            node.transform.localScale=new Vector3(height/visual.sprite.bounds.size.y/Mathf.Abs(scale.x),height/visual.sprite.bounds.size.y/Mathf.Abs(scale.y),height/visual.sprite.bounds.size.y/Mathf.Abs(scale.z));
            node.transform.position=(shadow!=null?shadow.bounds.center:owner.position)+camera.transform.up*(height*.5f+.1f);
        }
        var binding=owner.gameObject.AddComponent<PenguinActorBinding>();binding.HiddenRenderers=hidden;binding.Shadow=shadow;
        if(preview)binding.Preview=node.AddComponent<PenguinPetPreview>();else binding.Actor=node.AddComponent<PenguinCatalogActor>();
        actors++;
    }
    public static string Run()
    {
        if(Application.dataPath!=Project || EditorApplication.isPlaying || EditorApplication.isCompiling)throw new Exception("Wrong project or busy Editor");
        var scene=UnityEngine.SceneManagement.SceneManager.GetActiveScene();
        if(scene.path!="Assets/Game/Scenes/GameClient.unity" || scene.isDirty)throw new Exception("Expected saved production scene");
        var client=UnityEngine.Object.FindAnyObjectByType<GameClient>();full=client.GetComponent<PenguinFullReskin>();terrain=client.GetComponent<PenguinExpeditionTheme>();camera=Camera.main;
        if(full.WorldVisualsBaked)throw new Exception("Production visuals already baked");
        var roots=scene.GetRootGameObjects();
        var colliderBefore=roots.SelectMany(r=>r.GetComponentsInChildren<Collider>(true)).Select(c=>c.GetInstanceID()).OrderBy(i=>i).ToArray();
        var dependencyBefore=AssetDatabase.GetDependencies(scene.path,true);
        replacements=new Dictionary<UnityEngine.Object,UnityEngine.Object>();
        for(int i=0;i<full.Sources.Length;i++)if(full.Sources[i]!=null&&full.Replacements[i]!=null&&!PenguinFullReskin.IsClassicGlow(full.Sources[i]))replacements[full.Sources[i]]=full.Replacements[i];
        for(int i=0;i<full.SourceTextures.Length;i++)replacements[full.SourceTextures[i]]=full.ThemedTextures[i];
        // Preserve TMP glyph indices, names and metrics, bake only the approved atlas.
        for(int i=0;i<full.SourceGlyphs.Length;i++)
        {
            var glyph=full.SourceGlyphs[i];glyph.spriteSheet=full.ThemedGlyphs[i].spriteSheet;
            glyph.material.mainTexture=glyph.spriteSheet;
            EditorUtility.SetDirty(glyph);EditorUtility.SetDirty(glyph.material);
            AssetDatabase.SaveAssetIfDirty(glyph);AssetDatabase.SaveAssetIfDirty(glyph.material);
        }
        var prefabPaths=new[]{"Assets/Game/Prefabs/Gameplay/PlayerTeam.prefab","Assets/Game/Resources/Gameplay/ProjectilePoolContent.prefab","Assets/Game/Resources/UI/Draw_Info_UI.prefab","Assets/Game/Resources/UI/GunCollection_UI.prefab"};
        foreach(var path in prefabPaths)
        {
            var contents=PrefabUtility.LoadPrefabContents(path);
            try{Remap(contents);PrefabUtility.SaveAsPrefabAsset(contents,path,out var saved);if(!saved)throw new Exception("Cannot save prefab: "+path);}
            finally{PrefabUtility.UnloadPrefabContents(contents);}
        }
        foreach(var root in roots)Remap(root);
        client.Skins.Skin_Bone_sprites=full.Skins.ToArray();
        var oldTrees=client.Forest.Tree_sprites.ToArray();
        foreach(var tree in client.Forest.Map_obj.GetComponentsInChildren<Tree>(true))
        {int degree=Array.IndexOf(oldTrees,tree.spriteRenderer.sprite);tree.spriteRenderer.sprite=terrain.Ice[(degree<0?0:degree)%terrain.Ice.Length];}
        client.Forest.Tree_sprites=oldTrees.Select((s,i)=>terrain.Ice[i%terrain.Ice.Length]).ToArray();
        client.Forest.Ground_sprite_list=client.Forest.Ground_sprite_list.Select(s=>terrain.SnowGround).ToArray();client.Forest.Ground_SpriteRenderer.sprite=terrain.SnowGround;
        foreach(var map in client.Forest.Map_Grid_list)
        {
            map.Border_Up_sprite_list=map.Border_Up_sprite_list.Select(s=>terrain.GlacierUp).ToArray();map.Border_Down_sprite_list=map.Border_Down_sprite_list.Select(s=>terrain.GlacierDown).ToArray();
            map.Upper_sprite_Color_list=map.Upper_sprite_Color_list.Select(c=>new Color(.84f,.94f,.98f)).ToArray();
            foreach(var r in map.Border_Up){r.sprite=terrain.GlacierUp;r.color=Color.white;}foreach(var r in map.Border_Down){r.sprite=terrain.GlacierDown;r.color=Color.white;}
            var under=map.GetComponentsInChildren<SpriteRenderer>(true).FirstOrDefault(s=>s.name=="Under_sprite");if(under!=null)under.color=new Color(.22f,.43f,.58f);
        }
        foreach(var root in roots)
        {
            foreach(var boss in root.GetComponentsInChildren<Boss>(true))Actor(boss.transform,full.Bosses,1.9f);
            foreach(var boss in root.GetComponentsInChildren<Raid_Boss>(true))Actor(boss.transform,full.RaidBosses,2f);
            foreach(var pet in root.GetComponentsInChildren<Pet>(true))Actor(pet.transform,full.Pets,.60f);
            foreach(var dummy in root.GetComponentsInChildren<Pet_Dummy>(true))Actor(dummy.transform,full.Pets,.60f,true);
        }
        full.WorldVisualsBaked=true;terrain.WorldVisualsBaked=true;
        var settings=new SerializedObject(terrain);settings.FindProperty("authoredAvatar").objectReferenceValue=client.Hero.GetComponent<PenguinAvatarBinding>().Visual;settings.ApplyModifiedPropertiesWithoutUndo();
        full.Sources=Array.Empty<Sprite>();full.Replacements=Array.Empty<Sprite>();full.SourceTextures=full.ThemedTextures.ToArray();
        var colliderAfter=roots.SelectMany(r=>r.GetComponentsInChildren<Collider>(true)).Select(c=>c.GetInstanceID()).OrderBy(i=>i).ToArray();
        if(!colliderBefore.SequenceEqual(colliderAfter))throw new Exception("Collider contract changed");
        if(camera!=null)camera.backgroundColor=PenguinUiTheme.Ice;
        EditorSceneManager.MarkSceneDirty(scene);EditorSceneManager.SaveScene(scene);
        var result=Newtonsoft.Json.JsonConvert.SerializeObject(new{references,avatars,actors,colliders=colliderAfter.Length,collidersUnchanged=true,prefabs=prefabPaths,beforeDependencies=dependencyBefore.Length,afterDependencies=AssetDatabase.GetDependencies(scene.path,true).Length,skins=client.Skins.Skin_sprites.Length,weapons=client.Guns.Gun_sprites.Length,fish=client.Fish.Fish_sprites.Length,pets=client.PetUI.Pet_sprites.Length},Newtonsoft.Json.Formatting.Indented);
        File.WriteAllText(Report,result);return result;
    }
}
