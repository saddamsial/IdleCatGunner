using System.Linq;
using UnityEngine;
using CatGunner.Runtime;
using UnityEditor;
public static class InspectSnowStage
{
    static string T(Transform t)=>t.name+" position="+t.position+" local="+t.localPosition+" scale="+t.localScale+" rotation="+t.eulerAngles;
    public static object Read()
    {
        var c=Object.FindAnyObjectByType<GameClient>(FindObjectsInactive.Include);
        var map=c.Forest.Map_Grid_list[0];
        return Newtonsoft.Json.JsonConvert.SerializeObject(new{
            walls=map.Border_Up.Concat(map.Border_Down).Select(r=>new{transform=T(r.transform),sprite=r.sprite.name,spritePath=AssetDatabase.GetAssetPath(r.sprite),texturePath=AssetDatabase.GetAssetPath(r.sprite.texture),spriteBounds=r.sprite.bounds.ToString(),rendererBounds=r.bounds.ToString(),material=r.sharedMaterial.name,order=r.sortingOrder}).ToArray(),
            snow=AssetDatabase.GetAssetPath(c.GetComponent<PenguinExpeditionTheme>().SnowGround),
            originalWallUp=map.Border_Up_sprite_list.Select(s=>AssetDatabase.GetAssetPath(s)).ToArray(),
            originalWallDown=map.Border_Down_sprite_list.Select(s=>AssetDatabase.GetAssetPath(s)).ToArray()
        });
    }
}
