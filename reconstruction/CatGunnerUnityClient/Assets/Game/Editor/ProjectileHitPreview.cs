using System.Collections;
using System.IO;
using System.Linq;
using UnityEngine;
using CatGunner.Runtime;

// Editor-only, transient visual fixture. Never serialized into the client scene.
// Explicit target/damage selection is not the original aim or balance loop.
public static class ProjectileHitPreview
{
    public static IEnumerator Capture()
    {
        yield return null;
        var camera=Camera.main;
        var candidates=Object.FindObjectsByType<Tree>(FindObjectsInactive.Exclude)
            .Where(t=>t!=Tree_manager.instance.Boss_tree)
            .Where(t=>{var p=camera.WorldToViewportPoint(t.transform.position);return p.z>0 && p.x>.15f && p.x<.85f && p.y>.25f && p.y<.9f;}).ToArray();
        if(candidates.Length==0) throw new System.InvalidOperationException("No original tree in viewport");
        var tree=candidates.OrderBy(t=>Vector3.Distance(t.transform.position,Cat.instance.transform.position)).First();
        foreach(var other in Object.FindObjectsByType<Tree>(FindObjectsInactive.Exclude)) if(other!=tree) other.gameObject.SetActive(false);
        var health=CurrencyAmount.FromValue(new DecimalAmount(250));
        tree.enemy.Spawn(health,CurrencyAmount.FromValue(new DecimalAmount(20)));
        var collider=tree.GetComponentsInChildren<Collider>().Single(c=>c.GetComponent<EnemyColl>()!=null);
        var point=collider.bounds.center;
        Cat.instance.GunNum=0;
        Cat.instance.TrySpawnBulletEx(point-Vector3.forward*12,Vector3.forward,GunType.SINGLE,0,5,
            CurrencyAmount.FromValue(new DecimalAmount(100)),"100",false);
        var bullet=Polling_manager.instance.Polling_List[0].Objects.First(go=>go.activeInHierarchy).GetComponent<Bullet>();
        for(int i=0;i<60 && !bullet.is_Die;i++) yield return new WaitForFixedUpdate();
        if(!bullet.is_Die || tree.enemy.Health_Now.Value.CompareTo(new DecimalAmount(150))!=0)
            throw new System.InvalidOperationException("Preview original physics hit did not close");
        yield return null;Time.timeScale=0;
        string report=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/projectile-visual-state.json"));
        File.WriteAllText(report,Newtonsoft.Json.JsonConvert.SerializeObject(new {health_after="150",health_before="250",damage="100",bullet_dead=bullet.is_Die,
            fx_active=Polling_manager.instance.Polling_List[1].Objects.Count(go=>go.activeInHierarchy),
            fx_particles=Polling_manager.instance.Polling_List[1].Objects.Where(go=>go.activeInHierarchy).Sum(go=>go.GetComponent<Bullet_FX>().particle.particleCount),
            fixture="Editor-only explicit target/damage selection; original aim/balance loop not integrated",paused_for_capture=true},Newtonsoft.Json.Formatting.Indented));
    }
}
