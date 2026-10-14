using System.Collections;
using System.IO;
using System.Linq;
using CatGunner.Runtime;
using UnityEngine;

// Transient capture fixture repositions one original tree. Player gun, damage,
// cooldown, chance and spread are provided by the package profile, not injected.
public static class PackageEquipmentPreview
{
    public static IEnumerator Capture()
    {
        yield return null;var cat=Cat.instance;
        var tree=Object.FindObjectsByType<Tree>(FindObjectsInactive.Exclude).First(t=>t!=Tree_manager.instance.Boss_tree &&
            t.enemy.Health_Now.Value.CompareTo(new DecimalAmount(250))==0);
        foreach(var other in Object.FindObjectsByType<Tree>(FindObjectsInactive.Exclude)) if(other!=tree) other.gameObject.SetActive(false);
        tree.transform.position=new Vector3(cat.Ray_trans.position.x,0,cat.Ray_trans.position.z+12);
        if(cat.GunNum!=0 || cat.Damage_str!="100" || tree.enemy.Health_Now.Value.CompareTo(new DecimalAmount(250))!=0)
            throw new System.InvalidOperationException("Package initial profile capture prerequisites not met");
        cat.ClearNearObj();Physics.SyncTransforms();
        for(int i=0;i<160 && tree.enemy.Health_Now.Value.CompareTo(new DecimalAmount(250))==0;i++) yield return new WaitForFixedUpdate();
        if(tree.enemy.Health_Now.Value.CompareTo(new DecimalAmount(150))!=0) throw new System.InvalidOperationException("Initial-profile real first hit missing");
        yield return null;Time.timeScale=0;
        var evidence=new {health_before="250",health_after="150",gun=cat.GunNum,type=cat._gunInfo.type.ToString(),
            damage=cat.Damage_str,critical_damage=cat.CriDmg_str,chance=cat.CriPer,interval=cat.AtkCool_Max,speed=cat.moveSpeed,
            target_found=cat.AttackTarget!=null,active_fx=Polling_manager.instance.Polling_List[1].Objects.Count(go=>go.activeInHierarchy),
            source="Original package slot0/gun catalogue/initial modifier profile; no injected player gun or stats",
            fixture="One original tree moved and others hidden for inspection; screenshot paused",paused_for_capture=true};
        string reports=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
        File.WriteAllText(Path.Combine(reports,"package-equipment-visual-state.json"),Newtonsoft.Json.JsonConvert.SerializeObject(evidence,Newtonsoft.Json.Formatting.Indented));
    }
}
