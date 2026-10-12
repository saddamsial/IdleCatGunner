using System.Collections;
using System.IO;
using System.Linq;
using CatGunner.Recovery;
using UnityEngine;

// Transient selected-slot/target-position fixture. Never saved to scene/save.
public static class PenetratingPreview
{
    public static IEnumerator Capture()
    {
        yield return null;var cat=Cat.instance;var bridge=cat.GetComponent<ForestCombatAcceptance>();bridge.enabled=false;
        var tree=Object.FindObjectsByType<Tree>(FindObjectsInactive.Exclude).First(t=>t!=Tree_manager.instance.Boss_tree && t.enemy.Health_Now.Value.CompareTo(new DecimalAmount(250))==0);
        foreach(var other in Object.FindObjectsByType<Tree>(FindObjectsInactive.Exclude)) if(other!=tree) other.gameObject.SetActive(false);
        tree.transform.position=new Vector3(cat.Ray_trans.position.x,0,cat.Ray_trans.position.z+12);
        var data=OriginalEquipmentCatalogue.Load();data.Selected_items=new[]{19,-1,-1};data.ApplyPackageForest(cat);
        foreach(var go in Polling_manager.instance.Polling_List[0].Objects)
        {var bullet=go.GetComponent<Bullet>();bullet.CancelInvoke();go.SetActive(false);bullet.is_Die=false;}
        Polling_manager.instance.Polling_List[0].Object_Count=0;cat.ClearNearObj();Physics.SyncTransforms();
        bridge.EnableSingleAttacks=false;bridge.EnableShotgunAttacks=false;bridge.EnablePenetratingAttacks=true;bridge.enabled=true;
        for(int i=0;i<200 && tree.enemy.Health_Now.Value.CompareTo(new DecimalAmount(250))==0;i++) yield return new WaitForFixedUpdate();
        if(tree.enemy.Health_Now.Value.CompareTo(new DecimalAmount(50))!=0 || tree.enemy.is_Die) throw new System.InvalidOperationException("Laser first impact not captured");
        yield return null;Time.timeScale=0;
        string reports=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
        File.WriteAllText(Path.Combine(reports,"penetrating-visual-state.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new {
            health_before="250",health_after=tree.enemy.Health_Now.Value.PlainInteger(),gun=cat.GunNum,type=cat._gunInfo.type.ToString(),
            damage=cat.Damage_str,critical_damage=cat.CriDmg_str,chance=cat.CriPer,interval=cat.AtkCool_Max,requested_lifetime=cat._gunInfo.PenetratingBulletLifetime,
            active_bullets=Polling_manager.instance.Polling_List[0].Objects.Count(go=>go.activeSelf),
            live_bullets=Polling_manager.instance.Polling_List[0].Objects.Count(go=>go.activeSelf && !go.GetComponent<Bullet>().is_Die),
            target_found=cat.AttackTarget!=null,active_fx=Polling_manager.instance.Polling_List[1].Objects.Count(go=>go.activeInHierarchy),
            source="OriginalGun19 LASER damage200/critical250/chance0/interval1/requested lifetime2; no direct player amount injection",
            fixture="Selected slot19; original250-health tree repositioned; other trees hidden and pool reset; no ownership grant/save",paused_for_capture=true
        },Newtonsoft.Json.Formatting.Indented));
    }
}
