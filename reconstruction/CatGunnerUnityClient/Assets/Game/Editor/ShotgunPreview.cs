using System.Collections;
using System.IO;
using System.Linq;
using CatGunner.Runtime;
using UnityEngine;

// Transient equipped-slot/target-position fixture only, never saved to scene.
// Shotgun parameters and player amounts are read from matching package data.
public static class ShotgunPreview
{
    public static IEnumerator Capture()
    {
        yield return null;var cat=Cat.instance;
        var bridge=cat.GetComponent<ForestCombatAcceptance>();bridge.enabled=false;
        var tree=Object.FindObjectsByType<Tree>(FindObjectsInactive.Exclude).First(t=>t!=Tree_manager.instance.Boss_tree &&
            t.enemy.Health_Now.Value.CompareTo(new DecimalAmount(250))==0);
        foreach(var other in Object.FindObjectsByType<Tree>(FindObjectsInactive.Exclude)) if(other!=tree) other.gameObject.SetActive(false);
        tree.transform.position=new Vector3(cat.Ray_trans.position.x,0,cat.Ray_trans.position.z+12);
        var data=EquipmentCatalogue.Load();data.Selected_items=new[]{3,-1,-1};data.ApplyPackageForest(cat);
        foreach(var go in Polling_manager.instance.Polling_List[0].Objects)
        {var bullet=go.GetComponent<Bullet>();bullet.CancelInvoke();go.SetActive(false);bullet.is_Die=false;}
        Polling_manager.instance.Polling_List[0].Object_Count=0;
        cat.ClearNearObj();Physics.SyncTransforms();
        var originalRandom=Random.state;Random.InitState(392);
        bridge.EnableSingleAttacks=false;bridge.EnableShotgunAttacks=true;bridge.enabled=true;
        for(int i=0;i<200 && tree.enemy.Health_Now.Value.CompareTo(new DecimalAmount(250))==0;i++) yield return new WaitForFixedUpdate();
        Random.state=originalRandom;
        var health=tree.enemy.Health_Now.Value;
        if(health.CompareTo(new DecimalAmount(250))>=0 || tree.enemy.is_Die) throw new System.InvalidOperationException("Shotgun first impact not captured");
        yield return null;Time.timeScale=0;
        var evidence=new {health_before="250",health_after=tree.enemy.Health_Now.Value.PlainInteger(),
            gun=cat.GunNum,type=cat._gunInfo.type.ToString(),damage=cat.Damage_str,critical_damage=cat.CriDmg_str,
            chance=cat.CriPer,interval=cat.AtkCool_Max,pellets=cat._gunInfo.ShotgunPelletCount,spread=cat._gunInfo.ShotgunSpreadAngle,
            active_bullets=Polling_manager.instance.Polling_List[0].Objects.Count(go=>go.activeSelf),
            target_found=cat.AttackTarget!=null,active_fx=Polling_manager.instance.Polling_List[1].Objects.Count(go=>go.activeInHierarchy),
            source="Gun3 original catalogue: damage80, crit100, two pellets, +-10 degrees, interval1; no direct player amount injection",
            fixture="Independent selected-slot3, existing250-health tree position, other trees hidden, isolated pool/RNG; no ownership grant/save",paused_for_capture=true};
        string reports=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
        File.WriteAllText(Path.Combine(reports,"shotgun-visual-state.json"),Newtonsoft.Json.JsonConvert.SerializeObject(evidence,Newtonsoft.Json.Formatting.Indented));
    }
}
