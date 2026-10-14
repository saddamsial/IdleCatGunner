using System.Collections;
using System.IO;
using System.Linq;
using UnityEngine;
using CatGunner.Runtime;

// Transient Editor coroutine only. Explicit equipment/damage inputs are a fixture,
// not original equipment ownership, progression or balance loading.
public static class ContinuousAttackPreview
{
    public static IEnumerator Capture()
    {
        yield return null;var cat=Cat.instance;
        var tree=Object.FindObjectsByType<Tree>(FindObjectsInactive.Exclude).First(t=>t!=Tree_manager.instance.Boss_tree);
        foreach(var other in Object.FindObjectsByType<Tree>(FindObjectsInactive.Exclude)) if(other!=tree) other.gameObject.SetActive(false);
        tree.transform.position=new Vector3(cat.Ray_trans.position.x,0,cat.Ray_trans.position.z+12);
        tree.enemy.Spawn(CurrencyAmount.FromValue(new DecimalAmount(250)),CurrencyAmount.FromValue(new DecimalAmount(20)));
        cat._gunInfo.type=GunType.SINGLE;cat.ReloadGunPresentation(0);
        cat.Damage=CurrencyAmount.FromValue(new DecimalAmount(100));cat.CriDmg=CurrencyAmount.FromValue(new DecimalAmount(200));
        cat.Damage_str="100";cat.CriDmg_str="200";cat.CriPer=0;
        cat.ClearNearObj();Physics.SyncTransforms();
        var bridge=cat.GetComponent<ForestCombatAcceptance>();bridge.EnableSingleAttacks=true;bridge.enabled=true;
        for(int i=0;i<120 && tree.enemy.Health_Now.Value.CompareTo(new DecimalAmount(250))==0;i++) yield return new WaitForFixedUpdate();
        if(tree.enemy.Health_Now.Value.CompareTo(new DecimalAmount(150))!=0) throw new System.InvalidOperationException("Native continuous capture did not reach first real hit");
        yield return null;Time.timeScale=0;
        var pool=Polling_manager.instance;
        var evidence=new {health_before="250",health_after="150",damage="100",gun=cat.GunNum,target_found=cat.AttackTarget!=null,
            target_indicator_active=cat.Target_obj.activeSelf,active_fx=pool.Polling_List[1].Objects.Count(go=>go.activeInHierarchy),
            right_hand_z=cat.RightHand.localEulerAngles.z,face_z=cat.Face_Pivot_trans.localEulerAngles.z,gun_scale=cat.Gun_bounce.transform.localScale.ToString(),
            fixture="Explicit SINGLE gun0/damage100, positioned original tree. Native rays/lock/aim/cooldown/factory/real hit. Full equipment/balance/AutoMove/AI pending",paused_for_capture=true};
        string reports=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
        File.WriteAllText(Path.Combine(reports,"continuous-attack-visual-state.json"),Newtonsoft.Json.JsonConvert.SerializeObject(evidence,Newtonsoft.Json.Formatting.Indented));
    }
}
