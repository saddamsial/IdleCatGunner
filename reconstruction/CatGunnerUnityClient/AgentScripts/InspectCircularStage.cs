using System.Linq;
using CatGunner.Recovery;
using UnityEngine;
using UnityEditor.SceneManagement;
public static class InspectCircularStage
{
    static object V(Vector3 v)=>new{x=v.x,y=v.y,z=v.z};
    static object Info(Transform t)=>new{t.name,position=V(t.position),local=V(t.localPosition),scale=V(t.localScale),rotation=V(t.eulerAngles)};
    public static object Read()
    {
        var c=Object.FindAnyObjectByType<RecoveryForestClient>(FindObjectsInactive.Include);
        return Newtonsoft.Json.JsonConvert.SerializeObject(new{scene=EditorSceneManager.GetActiveScene().path,dirty=EditorSceneManager.GetActiveScene().isDirty,
            forest=Info(c.Forest.Map_obj.transform),ground=Info(c.Forest.Ground_SpriteRenderer.transform),
            grids=c.Forest.Tree_Grid_list.Select(g=>Info(g.transform)).ToArray(),boss=Info(c.Forest.Boss_tree.transform),last=Info(c.Forest.LastBorder_trans),
            mine=Info(c.MineMode.Map_obj.transform),radius=c.MineMode.outerRadius,
            mineChildren=c.MineMode.Map_obj.transform.Cast<Transform>().Where(t=>t.name!="Ore_list").Select(t=>new{transform=Info(t),components=t.GetComponents<Component>().Select(x=>x.GetType().Name).ToArray(),renderers=t.GetComponentsInChildren<SpriteRenderer>(true).Select(r=>new{transform=Info(r.transform),sprite=r.sprite!=null?r.sprite.name:null,boundsSize=V(r.bounds.size),center=V(r.bounds.center),drawMode=r.drawMode.ToString(),spriteSize=new{x=r.size.x,y=r.size.y},material=r.sharedMaterial.name,r.sortingOrder,color=r.color.ToString()}).ToArray()}).ToArray(),
            forestChildren=c.Forest.Map_obj.transform.Cast<Transform>().Where(t=>t.name!="Ore_list").Select(t=>new{transform=Info(t),components=t.GetComponentsInChildren<Collider>(true).Select(x=>new{x.name,center=V(x.bounds.center),size=V(x.bounds.size)}).ToArray()}).ToArray()});
    }
}
