using System;
using System.IO;
using System.Collections;
using System.Linq;
using UnityEngine;
using CatGunner.Recovery;

public static class PreviewPenguinAnimation
{
    private static string Dir=>Path.GetFullPath(Path.Combine(Application.dataPath,"../../../art/reskin/penguin-expedition/penguin-actions/captures"));
    public static string Capture()
    {
        if(Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets"||!Application.isPlaying)throw new Exception("Wrong project or not playing");
        Directory.CreateDirectory(Dir);var c=RecoveryForestClient.Instance;c.StartCoroutine(Observe(c));return "Capturing natural combat plus explicitly controlled Idle/Walk/Shoot diagnostic loops.";
    }
    private static IEnumerator Observe(RecoveryForestClient c)
    {
        while(!c.ReadyForPlay)yield return null;
        // Natural play first: original auto movement, aim, weapons and stats.
        for(int i=0;i<60;i++)
        {yield return new WaitForEndOfFrame();ScreenCapture.CaptureScreenshot(Path.Combine(Dir,"natural-"+i.ToString("D2")+".png"));yield return new WaitForSeconds(.07f);}
        bool gaming=ForestRuntimeAcceptance.IsGaming,heroEnabled=c.Hero.enabled;var velocity=c.Hero.rb.linearVelocity;
        var drivers=c.Hero.GetComponents<Behaviour>().Where(b=>b is ForestCombatAcceptance||b is ForestMovementAcceptance).ToArray();
        var driverStates=drivers.Select(b=>b.enabled).ToArray();
        bool walk=c.Hero.anim.GetBool("Walk");
        try
        {
            // Diagnostic fixture isolates the movement intent from combat so
            // both complete motion loops are visible; it grants no rewards.
            ForestRuntimeAcceptance.IsGaming=false;c.Hero.enabled=false;c.Hero.rb.linearVelocity=Vector3.zero;
            foreach(var driver in drivers)driver.enabled=false;
            foreach(var mode in new[]{"idle","walk","shoot"})
            {
                c.Hero.anim.SetBool("Walk",mode=="walk");yield return new WaitForSeconds(.4f);
                float nextShot=Time.time;
                for(int i=0;i<36;i++)
                {
                    if(mode=="shoot" && Time.time>=nextShot)
                    {
                        var target=UnityEngine.Object.FindObjectsByType<Tree>().Where(t=>!t.enemy.is_Die&&c.Hero.IsOnScreen(t.transform.position)).OrderBy(t=>Vector3.Distance(t.transform.position,c.Hero.transform.position)).FirstOrDefault();
                        if(target!=null)c.Hero.Attack(target.GetComponent<Collider>());
                        nextShot=Time.time+.55f;
                    }
                    yield return new WaitForEndOfFrame();ScreenCapture.CaptureScreenshot(Path.Combine(Dir,mode+"-"+i.ToString("D2")+".png"));yield return new WaitForSeconds(.07f);
                }
            }
            var theme=c.GetComponent<PenguinExpeditionTheme>();var motion=theme.Avatar.GetComponent<PenguinBoneMotion>();
            File.WriteAllText(Path.Combine(Dir,"observation.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{scene=c.gameObject.scene.path,sprite=theme.Penguin.name,mesh=motion.VisualMesh.name,vertices=motion.VisualMesh.vertexCount,controller=c.Hero.anim.runtimeAnimatorController.name,save=c.SaveFolderOverride,naturalFrames=60,idleFrames=36,walkFrames=36,shootFrames=36,motion.Shots,grip="Connected gray flipper; original circular palm hidden",noScarf=true,noFracture=true,natural="Unmodified automatic combat, no stat/position override",diagnostic="Idle/Walk intent flags and actual Attack calls; combat temporarily held in isolated profile, no synthetic hit rewards; restored in finally",width=Screen.width,height=Screen.height},Newtonsoft.Json.Formatting.Indented));
        }
        finally{ForestRuntimeAcceptance.IsGaming=gaming;c.Hero.enabled=heroEnabled;c.Hero.rb.linearVelocity=velocity;c.Hero.anim.SetBool("Walk",walk);for(int i=0;i<drivers.Length;i++)drivers[i].enabled=driverStates[i];}
    }
}
