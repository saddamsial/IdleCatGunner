using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using CatGunner.Runtime;
using UnityEditor;
using UnityEngine;
using UnityEngine.U2D;
using UnityEngine.U2D.Animation;

public static class InspectPenguinSpriteSkin
{
    static string Dir=>Path.GetFullPath(Application.dataPath+"/../../../art/reskin/penguin-expedition/sprite-skin-v1");
    public static string Prepare()
    {
        if(Application.isPlaying)throw new Exception("Edit mode required.");
        SessionState.SetString("CatGunner.Recovery.TestHostFolder",Path.Combine(Path.GetTempPath(),"PenguinSpriteSkinPreview-"+Guid.NewGuid().ToString("N")));
        return "Isolated SpriteSkin preview profile ready.";
    }
    public static string Capture()
    {
        var c=GameClient.Instance;
        if(!Application.isPlaying || c==null || c.SaveFolderOverride==null || !c.SaveFolderOverride.Contains("PenguinSpriteSkinPreview-"))
            throw new Exception("Isolated SpriteSkin preview required.");
        c.StartCoroutine(Observe(c));return "Recording actual Unity frames and comparing SpriteSkin output with the legacy motion equations.";
    }
    static float Field(PenguinBoneMotion motion,string name)=>(float)typeof(PenguinBoneMotion).GetField(name,BindingFlags.NonPublic|BindingFlags.Instance).GetValue(motion);
    static Vector3 Point(Bounds b,float u,float v)=>new Vector3(Mathf.Lerp(b.min.x,b.max.x,u),Mathf.Lerp(b.min.y,b.max.y,v),0);
    static float Compare(PenguinBoneMotion m,Cat cat,out float gripError)
    {
        var renderer=m.Renderer;var b=renderer.sprite.bounds;float height=m.BodyHeight;
        float phase=Field(m,"walkPhase"),stride=Field(m,"walkBlend"),idle=Field(m,"idlePhase"),victory=Field(m,"victoryAge");
        float step=Mathf.Sin(phase),recoil=m.RecoilStrength,win=m.VictoryStrength;
        float breath=Mathf.Sin(idle)*.012f*(1-stride),landing=win*Mathf.Pow(1-m.JumpAmount,6)*.045f;
        float sx=1+breath+recoil*.025f+landing,sy=1-breath-recoil*.035f-landing;
        var offset=new Vector3(-step*height*.018f*stride-recoil*height*.025f,Mathf.Abs(step)*height*.016f*stride+m.JumpAmount*height*.18f,0);
        var body=Quaternion.Euler(0,0,step*7.5f*stride+recoil*8+win*Mathf.Sin(victory/.5f*Mathf.PI*2)*3);
        var lrot=Quaternion.Euler(0,0,-step*12*stride);var rrot=Quaternion.Euler(0,0,step*12*stride);
        var wing=Quaternion.Euler(0,0,-step*9*stride);
        var head=Quaternion.Euler(0,0,Mathf.Clamp(Mathf.DeltaAngle(Field(m,"faceBase"),cat.Face_Pivot_trans.localEulerAngles.z),-20,20)*.25f);
        var leftOffset=new Vector3(step*height*.013f*stride,Mathf.Max(0,step)*height*.09f*stride,0);
        var rightOffset=new Vector3(-step*height*.013f*stride,Mathf.Max(0,-step)*height*.09f*stride,0);
        var actual=m.Skin.GetDeformedVertexPositionData().ToArray();float error=0;
        for(int y=0;y<=28;y++)for(int x=0;x<=24;x++)
        {
            float u=(float)x/24,v=(float)y/28;var p=Point(b,u,v);
            float feet=1-Mathf.SmoothStep(0,1,Mathf.InverseLerp(.1f,.24f,v));
            float left=feet*(1-Mathf.SmoothStep(0,1,Mathf.InverseLerp(.43f,.55f,u))),right=feet-left;
            float wingWeight=Mathf.SmoothStep(0,1,Mathf.InverseLerp(.12f,.25f,v))*(1-Mathf.SmoothStep(0,1,Mathf.InverseLerp(.51f,.61f,v)))*Mathf.SmoothStep(0,1,Mathf.InverseLerp(.73f,.88f,u));
            float headWeight=Mathf.SmoothStep(0,1,Mathf.InverseLerp(.52f,.73f,v));
            var lp=Point(b,.28f,.13f);var rp=Point(b,.75f,.13f);var wp=Point(b,.85f,.5f);var hp=Point(b,.53f,.57f);
            p+=(lrot*(p-lp)-(p-lp)+leftOffset)*left+(rrot*(p-rp)-(p-rp)+rightOffset)*right+(wing*(p-wp)-(p-wp))*wingWeight+(head*(p-hp)-(p-hp))*headWeight;
            var expected=body*new Vector3(p.x*sx,p.y*sy,0)+offset;
            error=Mathf.Max(error,Vector3.Distance(actual[y*25+x],expected));
        }
        Vector3 Pose(Vector3 p){p=body*new Vector3(p.x*sx,p.y*sy,0)+offset;if(renderer.flipX)p.x=-p.x;return p;}
        gripError=Mathf.Max(Vector3.Distance(m.ShoulderLocal,Pose(Point(b,.22f,.44f))),Vector3.Distance(m.HoldingPointLocal,Pose(Point(b,.41f,.35f))));
        return error;
    }
    static IEnumerator Observe(GameClient c)
    {
        float deadline=Time.realtimeSinceStartup+40;
        while(!c.ReadyForPlay && Time.realtimeSinceStartup<deadline)yield return null;
        if(!c.ReadyForPlay)throw new Exception("Preview startup timeout.");
        c.DailyLogin.AutoShow=false;c.DailyLogin.Close();c.Tutorial.SetCleared();
        foreach(var pair in new[]{(gun:5,slot:1),(gun:10,slot:2)}){c.Inventory.AddRewardGun(pair.gun);c.Inventory.Equip(Array.FindIndex(c.State.Owned_Gun_list,g=>g==pair.gun),pair.slot);}
        c.ApplyBalance();yield return new WaitForSeconds(.5f);
        float maxError=0,maxGrip=0;int samples=0;var motions=c.Team.Cat_list.Select(cat=>cat.GetComponentInChildren<PenguinBoneMotion>(true)).ToArray();
        var frames=new List<object>();
        for(int i=0;i<36;i++)
        {
            yield return new WaitForEndOfFrame();
            for(int j=0;j<motions.Length;j++)if(motions[j].Skin.HasCurrentDeformedVertices())
            {float grip;maxError=Mathf.Max(maxError,Compare(motions[j],c.Team.Cat_list[j],out grip));maxGrip=Mathf.Max(maxGrip,grip);samples++;}
            if(i%6==0)ScreenCapture.CaptureScreenshot(Path.Combine(Dir,"runtime-"+i.ToString("00")+".png"));
            frames.Add(new{frame=i,shots=motions.Select(m=>m.Shots).ToArray(),flipped=motions.Select(m=>m.Renderer.flipX).ToArray()});
            yield return new WaitForSeconds(.07f);
        }
        var report=new{source="Actual Unity Editor GPU screenshots; Unity SpriteSkin deformed vertex data",isolatedSave=c.SaveFolderOverride,
            fixture="Native equipment adds guns 5/10 to activate both teammates; tutorial/login overlays closed. No normal save changes.",
            samples,maxLegacyMotionError=maxError,maxLegacyGripError=maxGrip,withinTolerance=maxError<.0001f&&maxGrip<.0001f,
            skins=motions.Select(m=>new{sprite=m.Renderer.sprite.name,bindPoses=m.Renderer.sprite.GetBindPoses().Length,bones=m.Skin.boneTransforms.Length,
                state=m.Skin.SetBoneTransforms(m.Skin.boneTransforms).ToString(),m.Shots}).ToArray(),frames};
        File.WriteAllText(Path.Combine(Dir,"runtime-report.json"),Newtonsoft.Json.JsonConvert.SerializeObject(report,Newtonsoft.Json.Formatting.Indented));
    }
    public static string Finish(){SessionState.EraseString("CatGunner.Recovery.TestHostFolder");return "Preview override cleared.";}
}
