using System;
using System.IO;
using System.Linq;
using System.Collections.Generic;
using Newtonsoft.Json.Linq;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine;
using UnityEngine.SceneManagement;

public static class ForestCombatEditor
{
    // Resident delayCall target: scene save can exceed the CLI's main-thread deadline.
    public static void RestoreOriginalCombatReferences()
    {
        if(EditorApplication.isPlaying) throw new InvalidOperationException("Restore combat in EditMode");
        RecoveryEditor.OpenForest();var scene=SceneManager.GetActiveScene();
        var cat=UnityEngine.Object.FindObjectsByType<Cat>(FindObjectsInactive.Include).Single(c=>!c.is_AI);
        string reports=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
        if(cat.Target_obj==null)
        {
            var input=EditorSceneManager.OpenScene("Assets/Recovery/Scenes/RecoveredTarget.unity",OpenSceneMode.Additive);
            var target=input.GetRootGameObjects().Single(go=>go.name=="Target");
            foreach(var root in input.GetRootGameObjects()) SceneManager.MoveGameObjectToScene(root,scene);
            EditorSceneManager.CloseScene(input,true);cat.Target_obj=target;
        }
        SceneManager.SetActiveScene(scene);
        var objects=scene.GetRootGameObjects().SelectMany(go=>go.GetComponentsInChildren<Transform>(true)).ToDictionary(t=>(long)GlobalObjectId.GetGlobalObjectIdSlow(t.gameObject).targetObjectId,t=>t.gameObject);
        var data=JObject.Parse(File.ReadAllText(Path.Combine(reports,"../serialized-components/level0-147400.json")))["data"];
        cat._gunInfo=data["_gunInfo"].ToObject<Gun_Info>();
        cat.Damage=data["Damage"].ToObject<CatGunner.Recovery.OriginalAmount>();
        cat.CriDmg=data["CriDmg"].ToObject<CatGunner.Recovery.OriginalAmount>();
        foreach(var pair in new[]{("Gun_bounce",134375L), ("Rebound_bounce",149183L)})
        {
            var d=JObject.Parse(File.ReadAllText(Path.Combine(reports,"../serialized-components/level0-"+pair.Item2+".json")))["data"];
            var go=objects[(long)d["m_GameObject"]["m_PathID"]];
            Component component=pair.Item1=="Gun_bounce"?(Component)(go.GetComponent<Bounce_Custom>()??go.AddComponent<Bounce_Custom>()):
                (Component)(go.GetComponent<Bounce_Position>()??go.AddComponent<Bounce_Position>());
            var serialized=new SerializedObject(component);
            foreach(string name in pair.Item1=="Gun_bounce"?new[]{"time","WantSize","_upSizeTime","Bouncing"}:new[]{"time","WantPos","_upPosTime","Bouncing"})
            {
                var property=serialized.FindProperty(name);
                if(property.propertyType==SerializedPropertyType.Vector3) property.vector3Value=d[name].ToObject<Vector3>();
                else if(property.propertyType==SerializedPropertyType.Boolean) property.boolValue=(bool)d[name];
                else property.floatValue=(float)d[name];
            }
            serialized.ApplyModifiedPropertiesWithoutUndo();
            if(component is Bounce_Custom scale) cat.Gun_bounce=scale;else cat.Rebound_bounce=(Bounce_Position)component;
        }
        var components=scene.GetRootGameObjects().SelectMany(go=>go.GetComponentsInChildren<Component>(true)).ToDictionary(c=>(long)GlobalObjectId.GetGlobalObjectIdSlow(c).targetObjectId,c=>c);
        var originalGuns=(JArray)data["Gun_list"];cat.Gun_list=new Gun[originalGuns.Count];
        for(int i=0;i<originalGuns.Count;i++)
        {
            long id=(long)originalGuns[i]["m_PathID"];
            var gunData=JObject.Parse(File.ReadAllText(Path.Combine(reports,"../serialized-components/level0-"+id+".json")))["data"];
            var go=objects[(long)gunData["m_GameObject"]["m_PathID"]];
            var gun=go.GetComponent<Gun>()??go.AddComponent<Gun>();
            gun.Shoot_trans=(Transform)components[(long)gunData["Shoot_trans"]["m_PathID"]];
            gun.Shoot_particle=(ParticleSystem)components[(long)gunData["Shoot_particle"]["m_PathID"]];
            gun.Shoot_Random_trans=((JArray)gunData["Shoot_Random_trans"]).Select(v=>(Transform)components[(long)v["m_PathID"]]).ToArray();
            cat.Gun_list[i]=gun;EditorUtility.SetDirty(gun);
        }
        cat.ReloadGunPresentation(cat.GunNum);
        var bridge=cat.GetComponent<CatGunner.Recovery.ForestCombatAcceptance>()??cat.gameObject.AddComponent<CatGunner.Recovery.ForestCombatAcceptance>();
        bridge.EnableTargeting=true;bridge.EnableSingleAttacks=false;
        var compatibility=new List<string>();
        ForestBulletEditor.RepairRenderers(cat.Gun_list.SelectMany(g=>g.GetComponentsInChildren<ParticleSystemRenderer>(true)),compatibility);
        const string spritePath="Assets/Recovery/TargetSprite.mat";
        var spriteMaterial=AssetDatabase.LoadAssetAtPath<Material>(spritePath);
        if(spriteMaterial==null) {spriteMaterial=new Material(Shader.Find("Sprites/Default"));AssetDatabase.CreateAsset(spriteMaterial,spritePath);}
        foreach(var sprite in cat.Target_obj.GetComponentsInChildren<SpriteRenderer>(true)) sprite.sharedMaterial=spriteMaterial;
        AssetDatabase.SaveAssets();
        EditorUtility.SetDirty(cat);EditorUtility.SetDirty(bridge);
        EditorSceneManager.MarkSceneDirty(scene);
        if(!EditorSceneManager.SaveScene(scene)) throw new InvalidOperationException("Combat scene save failed");
        var evidence=new {scene=scene.path,target=cat.Target_obj.name,target_original_game_object=1748,
            guns=cat.Gun_list.Length,all_gun_muzzles=cat.Gun_list.All(g=>g.Shoot_trans!=null && g.Shoot_particle!=null),
            current_gun=cat.GunNum,current_muzzle=cat.Shoot_particle.name,
            particle_material_repairs=compatibility,target_sprite_shader=spriteMaterial.shader.name,
            target_animation="Original serialized DOTween animation not integrated; static marker only",
            gun_bounce=cat.Gun_bounce.gameObject.name,rebound_bounce=cat.Rebound_bounce.gameObject.name,
            gun_info_original_type=cat._gunInfo.type.ToString(),damage_original=cat.Damage.s_digits,
            targeted=true,automatic_attacks_enabled=bridge.EnableSingleAttacks,
            scene_objects=scene.GetRootGameObjects().Sum(go=>go.GetComponentsInChildren<Transform>(true).Length),
            boundary="Original initial laser/zero damage retained. Normal continuous attacks require explicit SINGLE/equipment/damage input; original equipment/balance loading, auto movement and full Cat.Update pending"};
        File.WriteAllText(Path.Combine(reports,"forest-combat-reference-restoration.json"),Newtonsoft.Json.JsonConvert.SerializeObject(evidence,Newtonsoft.Json.Formatting.Indented));
    }
}
