using System.Collections;
using System.IO;
using System.Linq;
using CatGunner.Runtime;
using UnityEngine;

// Temporary slot/target-position fixture; player amounts remain original gun data.
public static class ExplosionPreview
{
    public static IEnumerator Capture()
    {
        yield return null;var cat=Cat.instance;var bridge=cat.GetComponent<ForestCombatAcceptance>();bridge.enabled=false;
        var trees=Object.FindObjectsByType<Tree>(FindObjectsInactive.Exclude).Where(t=>t!=Tree_manager.instance.Boss_tree && t.enemy.Health_Now.Value.CompareTo(new DecimalAmount(250))==0).Take(2).ToArray();
        if(trees.Length!=2) throw new System.InvalidOperationException("Two original250-health targets missing");
        foreach(var other in Object.FindObjectsByType<Tree>(FindObjectsInactive.Exclude)) if(!trees.Contains(other)) other.gameObject.SetActive(false);
        trees[0].transform.position=new Vector3(cat.Ray_trans.position.x,0,cat.Ray_trans.position.z+12);
        trees[1].transform.position=trees[0].transform.position+Vector3.right*3;
        var data=EquipmentCatalogue.Load();data.Selected_items=new[]{14,-1,-1};data.ApplyPackageForest(cat);
        foreach(var go in Polling_manager.instance.Polling_List[0].Objects)
        {var b=go.GetComponent<Bullet>();b.CancelInvoke();go.SetActive(false);b.is_Die=false;}
        foreach(var go in Polling_manager.instance.Polling_List[1].Objects) go.SetActive(false);
        Polling_manager.instance.Polling_List[0].Object_Count=0;Polling_manager.instance.Polling_List[1].Object_Count=0;
        cat.ClearNearObj();Physics.SyncTransforms();bridge.EnableSingleAttacks=false;bridge.EnableShotgunAttacks=false;bridge.EnablePenetratingAttacks=false;
        bridge.EnableExplosiveAttacks=true;bridge.enabled=true;
        for(int i=0;i<200 && trees.All(t=>t.enemy.Health_Now.Value.CompareTo(new DecimalAmount(250))==0);i++) yield return new WaitForFixedUpdate();
        if(!trees.All(t=>t.enemy.Health_Now.Value.CompareTo(new DecimalAmount(130))==0 && !t.enemy.is_Die)) throw new System.InvalidOperationException("First full120 splash to both targets not captured");
        yield return null;Time.timeScale=0;
        string reports=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
        File.WriteAllText(Path.Combine(reports,"explosion-visual-state.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new {
            health_before=new[]{"250","250"},health_after=trees.Select(t=>t.enemy.Health_Now.Value.PlainInteger()).ToArray(),gun=cat.GunNum,type=cat._gunInfo.type.ToString(),
            damage=cat.Damage_str,critical_damage=cat.CriDmg_str,chance=cat.CriPer,interval=cat.AtkCool_Max,radius=cat._gunInfo.ExplosionRadius,
            active_bullets=Polling_manager.instance.Polling_List[0].Objects.Count(go=>go.activeSelf),
            live_bullets=Polling_manager.instance.Polling_List[0].Objects.Count(go=>go.activeSelf && !go.GetComponent<Bullet>().is_Die),
            active_fx=Polling_manager.instance.Polling_List[1].Objects.Count(go=>go.activeInHierarchy),target_found=cat.AttackTarget!=null,
            source="OriginalGun14 EXPLOSIVE damage120/critical150/chance0/interval0.7/radius5, native request1.5s; no direct player amount injection",
            fixture="Slot14; two existing250-health trees repositioned 3 units apart; other trees hidden and bullet/FX pools reset; no ownership grant/save",paused_for_capture=true
        },Newtonsoft.Json.Formatting.Indented));
    }
}
