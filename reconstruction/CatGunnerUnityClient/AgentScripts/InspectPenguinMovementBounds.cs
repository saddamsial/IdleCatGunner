using System.Linq;
using CatGunner.Runtime;
using UnityEngine;
using UnityEditor;

public static class InspectPenguinMovementBounds
{
    public static string Run()
    {
        var c=Object.FindAnyObjectByType<GameClient>(FindObjectsInactive.Include);
        var maps=new[]{c.MineMode.Map_obj,c.BossMode.Map_obj,c.MonsterMode.Map_obj,c.RaidMode.Map_obj};
        return Newtonsoft.Json.JsonConvert.SerializeObject(new {
            mode=c.Mode,teamEnabled=c.Team.isActiveAndEnabled,
            maps=maps.Select(m=>new {m.name,active=m.activeInHierarchy,position=m.transform.position.ToString(),grounds=m.GetComponentsInChildren<SpriteRenderer>(true).Where(r=>r.name.Contains("Ground")||r.name.Contains("Border")||r.name.Contains("Circle")||r.name.Contains("Barrier")).Take(16).Select(r=>new {r.name,active=r.gameObject.activeInHierarchy,position=r.transform.position.ToString(),scale=r.transform.lossyScale.ToString(),rotation=r.transform.eulerAngles.ToString(),bounds=r.bounds.ToString(),sprite=r.sprite?.name,spriteBounds=r.sprite?.bounds.ToString(),path=AssetDatabase.GetAssetPath(r.sprite),material=r.sharedMaterial?.name,shader=r.sharedMaterial?.shader.name}).ToArray(),colliders=m.GetComponentsInChildren<Collider>(true).Where(col=>!col.name.Contains("Enemy")).Take(20).Select(col=>new{col.name,type=col.GetType().Name,center=col.bounds.center.ToString(),size=col.bounds.size.ToString(),col.isTrigger}).ToArray()}).ToArray(),
            cats=c.Team.Cat_list.Select(cat=>new {cat.name,cat.is_AI,active=cat.gameObject.activeInHierarchy,position=cat.transform.position.ToString(),rb=cat.rb.position.ToString(),cat.rb.isKinematic,cat.rb.interpolation,velocity=cat.rb.linearVelocity.ToString(),radius=cat.GetComponents<Collider>().Select(col=>new {type=col.GetType().Name,size=col.bounds.size.ToString()}).ToArray()}).ToArray(),
            clampPresent=typeof(Cat_manager).GetMethod("ClampArena",System.Reflection.BindingFlags.NonPublic|System.Reflection.BindingFlags.Instance)!=null
        });
    }
}
