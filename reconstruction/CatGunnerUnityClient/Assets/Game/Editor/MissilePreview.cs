using System.Collections;
using System.IO;
using System.Linq;
using System.Reflection;
using CatGunner.Runtime;
using UnityEngine;

// Explicit temporary equipment/position fixture; original gun amounts and asset references.
public static class MissilePreview
{
    private static Tree[] trees;
    private static Bullet bullet;
    private static int count;
    private static readonly BindingFlags Private=BindingFlags.NonPublic|BindingFlags.Instance;
    private static T Field<T>(string name)=>(T)typeof(Bullet).GetField(name,Private).GetValue(bullet);
    private static float[] V(Vector3 p)=>new[]{p.x,p.y,p.z};
    private static void Write(string name)
    {
        var cat=Cat.instance;
        string reports=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
        File.WriteAllText(Path.Combine(reports,name),Newtonsoft.Json.JsonConvert.SerializeObject(new {
            gun=cat.GunNum,type=cat._gunInfo.type.ToString(),damage=cat.Damage_str,critical_damage=cat.CriDmg_str,chance=cat.CriPer,interval=cat.AtkCool_Max,
            speed=cat._gunInfo.MissileSpeed,radius=cat._gunInfo.MissileExplosionRadius,
            start=V(Field<Vector3>("_msStart")),end=V(Field<Vector3>("_msEnd")),position=V(bullet.transform.position),
            arc_height=Field<float>("_msArcHeight"),duration=Field<float>("_msDuration"),timer=Field<float>("_msTimer"),last_position=V(Field<Vector3>("LastPos")),dead=bullet.is_Die,
            health_before=new[]{"250","250"},health_after=trees.Select(t=>t.enemy.Health_Now.Value.PlainInteger()).ToArray(),tree_deaths=trees.Select(t=>t.enemy.is_Die).ToArray(),
            count_before=count,count_after=Tree_manager.instance.TreeCount_Now,kinematic=bullet.rb.isKinematic,
            source="OriginalGun24 damage600/critical750/chance0/interval0.4/speed50/radius9, native missile trajectory and original visual assets",
            fixture="Slot24; two existing250-health trees repositioned3 apart; other trees hidden; bullet/FX pools reset; flight capture timeScale0.05; no player-stat injection/ownership/save",paused_for_capture=true
        },Newtonsoft.Json.Formatting.Indented));
    }
    public static IEnumerator CaptureFlight()
    {
        yield return null;bullet=null;Time.timeScale=.05f;var cat=Cat.instance;var bridge=cat.GetComponent<ForestCombatAcceptance>();bridge.enabled=false;
        trees=Object.FindObjectsByType<Tree>(FindObjectsInactive.Exclude).Where(t=>t!=Tree_manager.instance.Boss_tree && t.enemy.Health_Now.Value.CompareTo(new DecimalAmount(250))==0).Take(2).ToArray();
        if(trees.Length!=2) throw new System.InvalidOperationException("Two original250-health targets missing");
        foreach(var other in Object.FindObjectsByType<Tree>(FindObjectsInactive.Exclude)) if(!trees.Contains(other)) other.gameObject.SetActive(false);
        trees[0].transform.position=new Vector3(cat.Ray_trans.position.x,0,cat.Ray_trans.position.z+15);trees[1].transform.position=trees[0].transform.position+Vector3.right*3;
        var data=EquipmentCatalogue.Load();data.Selected_items=new[]{24,-1,-1};data.ApplyPackageForest(cat);
        foreach(var go in Polling_manager.instance.Polling_List[0].Objects) {var b=go.GetComponent<Bullet>();b.CancelInvoke();go.SetActive(false);b.is_Die=false;}
        foreach(var go in Polling_manager.instance.Polling_List[1].Objects) go.SetActive(false);
        Polling_manager.instance.Polling_List[0].Object_Count=0;Polling_manager.instance.Polling_List[1].Object_Count=0;
        count=Tree_manager.instance.TreeCount_Now;cat.ClearNearObj();Physics.SyncTransforms();
        bridge.EnableSingleAttacks=false;bridge.EnableShotgunAttacks=false;bridge.EnablePenetratingAttacks=false;bridge.EnableExplosiveAttacks=false;bridge.EnableMissileAttacks=true;bridge.enabled=true;
        float deadline=Time.realtimeSinceStartup+40;
        while(bullet==null && Time.realtimeSinceStartup<deadline)
        {
            yield return null;
            bullet=Polling_manager.instance.Polling_List[0].Objects.Where(go=>go.activeSelf).Select(go=>go.GetComponent<Bullet>()).FirstOrDefault(b=>b.gunType==GunType.MISSILE && !b.is_Die);
        }
        if(bullet==null) throw new System.InvalidOperationException("No missile fired");
        bridge.enabled=false;
        while(!bullet.is_Die && Field<float>("_msTimer")/Field<float>("_msDuration")<.4f) yield return null;
        if(bullet.is_Die) throw new System.InvalidOperationException("Missile contacted before flight capture");
        Time.timeScale=0;Write("missile-flight-visual-state.json");
    }
    public static IEnumerator CaptureImpact()
    {
        Time.timeScale=1;
        float deadline=Time.realtimeSinceStartup+10;
        while(!bullet.is_Die && Time.realtimeSinceStartup<deadline) yield return null;
        if(!bullet.is_Die || !trees.All(t=>t.enemy.is_Die) || Tree_manager.instance.TreeCount_Now!=count-2)
            throw new System.InvalidOperationException("Original600 missile splash did not kill both original250-health targets");
        Time.timeScale=0;Write("missile-impact-visual-state.json");
    }
}
