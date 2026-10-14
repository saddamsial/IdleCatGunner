using System;
using System.IO;
using System.Linq;
using System.Reflection;
using UnityEngine;
using UnityEditor;
using UnityEngine.UI;
using CatGunner.Runtime;

public static class InspectPenguinFull
{
    public static string Run()
    {
        if (Application.dataPath != "/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets" || Application.isPlaying) throw new Exception("Correct EditMode required");
        var c = UnityEngine.Object.FindAnyObjectByType<GameClient>(FindObjectsInactive.Include);
        var all = c.gameObject.scene.GetRootGameObjects().SelectMany(g => g.GetComponentsInChildren<MonoBehaviour>(true)).Where(b => b != null).ToArray();
        string P(Transform t) { string p=t.name; while(t.parent!=null) {t=t.parent;p=t.name+"/"+p;}return p; }
        object S(Sprite s) => s == null ? null : new { s.name, asset = AssetDatabase.GetAssetPath(s), width=s.rect.width, height=s.rect.height, bounds=s.bounds.size.ToString(), texture=s.texture.name };
        var fields = all.SelectMany(b => b.GetType().GetFields(BindingFlags.Public | BindingFlags.Instance).Where(f=>f.FieldType==typeof(Sprite[])||f.FieldType==typeof(Sprite)).Select(f=>new {type=b.GetType().Name,path=P(b.transform),field=f.Name,sprites=f.FieldType==typeof(Sprite[])?((Sprite[])f.GetValue(b)??Array.Empty<Sprite>()).Select(S).ToArray():new[]{S((Sprite)f.GetValue(b))}})).ToArray();
        var pools = UnityEngine.Object.FindAnyObjectByType<Polling_manager>(FindObjectsInactive.Include).Polling_List.Select(p=>new {p.Object_str,count=p.Objects.Length,parts=p.Objects.FirstOrDefault()?.GetComponentsInChildren<Renderer>(true).Select(r=>new {path=P(r.transform),type=r.GetType().Name,materials=r.sharedMaterials.Select(m=>m==null?null:new {m.name,shader=m.shader.name,texture=m.mainTexture!=null?m.mainTexture.name:null}).ToArray()}).ToArray()}).ToArray();
        var renderers=c.gameObject.scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<SpriteRenderer>(true)).Where(r=>P(r.transform).Contains("Boss")||P(r.transform).Contains("Raid")||P(r.transform).Contains("Pet")||P(r.transform).Contains("Cat")).Select(r=>new {path=P(r.transform),sprite=S(r.sprite),r.enabled,order=r.sortingOrder}).ToArray();
        string dir=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../art/reskin/penguin-expedition/full-reskin")); Directory.CreateDirectory(dir);
        File.WriteAllText(Path.Combine(dir,"inventory.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new { fields,pools,renderers },Newtonsoft.Json.Formatting.Indented));
        return string.Join("\n",fields.Where(f=>new[]{"Skin_manager","Gun_manager","Fish_manager","Pet_manager","Boss_manager","Raid_manager","Monster_manager"}.Contains(f.type)).Select(f=>f.type+"."+f.field+" = "+f.sprites.Length))+"\nPools: "+pools.Length;
    }
}
