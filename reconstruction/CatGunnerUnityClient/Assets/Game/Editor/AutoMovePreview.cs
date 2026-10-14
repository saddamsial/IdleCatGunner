using System.Collections;
using System.IO;
using CatGunner.Runtime;
using UnityEditor;
using UnityEngine;

// Observe the default forest scene, without changing weapons, positions, trees,
// pool state, input, damage, ownership or saves. Pause only for stable captures.
public static class AutoMovePreview
{
    private static Vector3 start;
    private static int startCount;
    private static Transform movingTarget;
    private static float[] V(Vector3 p)=>new[]{p.x,p.y,p.z};
    private static void Write(string name)
    {
        var cat=Cat.instance;var target=cat.AutoTarget;
        var tree=target!=null?target.GetComponent<Tree>():null;
        string reports=Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports"));
        File.WriteAllText(Path.Combine(reports,name),Newtonsoft.Json.JsonConvert.SerializeObject(new {
            scene=cat.gameObject.scene.path,gun=cat.GunNum,type=cat._gunInfo.type.ToString(),damage=cat.Damage_str,
            auto_move=cat.AutoMove,input=new[]{cat.joystick.Direction.x,cat.joystick.Direction.y},walk=cat.anim.GetBool("Walk"),
            start=V(start),position=V(cat.transform.position),velocity=V(cat.rb.linearVelocity),distance_moved=Vector3.Distance(start,cat.transform.position),
            target=target!=null?target.name:null,target_position=target!=null?V(target.position):null,
            target_health=tree!=null?tree.enemy.Health_Now.Value.PlainInteger():null,
            attack_target=cat.AttackTarget!=null?cat.AttackTarget.name:null,attack_point=V(cat.AttackPoint),
            count_at_observation_start=startCount,count_now=Tree_manager.instance.TreeCount_Now,count_max=Tree_manager.instance.TreeCount_Max,
            fixture="None: default forest, original initial Gun0, zero input, no target/pool/stat/save modifications; paused only for capture",
            time_scale=Time.timeScale,paused_for_capture=true
        },Newtonsoft.Json.Formatting.Indented));
    }
    public static IEnumerator CaptureMovement()
    {
        var cat=Cat.instance;start=cat.transform.position;startCount=Tree_manager.instance.TreeCount_Now;
        float timeout=Time.realtimeSinceStartup+60;
        while(Time.realtimeSinceStartup<timeout)
        {
            if(cat.anim.GetBool("Walk") && new Vector2(cat.rb.linearVelocity.x,cat.rb.linearVelocity.z).magnitude>.5f &&
                Vector3.Distance(start,cat.transform.position)>.5f && cat.joystick.Direction==Vector2.zero)
            {
                movingTarget=cat.AutoTarget;EditorApplication.isPaused=true;Write("auto-move-walking-visual-state.json");yield break;
            }
            yield return null;
        }
        throw new System.InvalidOperationException("Default forest did not walk with zero input before timeout");
    }
    public static IEnumerator CaptureStop()
    {
        var cat=Cat.instance;float timeout=Time.realtimeSinceStartup+60;
        while(Time.realtimeSinceStartup<timeout)
        {
            if(!cat.anim.GetBool("Walk") && cat.AttackTarget!=null && cat.joystick.Direction==Vector2.zero &&
                Tree_manager.instance.TreeCount_Now<startCount && cat.AutoTarget!=movingTarget)
            {
                EditorApplication.isPaused=true;Write("auto-move-stopped-visual-state.json");yield break;
            }
            yield return null;
        }
        throw new System.InvalidOperationException("Default forest did not kill, retarget and stop before timeout");
    }
}
