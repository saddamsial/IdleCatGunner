using System;
using System.Linq;
using UnityEngine;
using UnityEditor;
using UnityEngine.U2D.Animation;
using UnityEngine.U2D;
public static class InspectPenguinAnimation
{
    public static string Run()
    {
        if(Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets"||EditorApplication.isPlaying)throw new Exception("Wrong project or PlayMode");
        var cat=UnityEngine.Object.FindAnyObjectByType<CatGunner.Recovery.RecoveryForestClient>(FindObjectsInactive.Include).Hero;var skin=cat.skin_spriteRenderer.GetComponent<SpriteSkin>();
        var data=new {animator=cat.anim.name,controller=AssetDatabase.GetAssetPath(cat.anim.runtimeAnimatorController),skin=skin!=null,bones=skin.boneTransforms.Select((t,i)=>new{i,t.name,parent=t.parent!=null?t.parent.name:"none",pos=t.localPosition.ToString(),rot=t.localEulerAngles.ToString(),scale=t.localScale.ToString()}).ToArray(),spriteBones=cat.skin_spriteRenderer.sprite.GetBones().Select((b,i)=>new{i,b.name,b.parentId,pos=b.position.ToString(),b.length}).ToArray(),clips=cat.anim.runtimeAnimatorController.animationClips.Select(c=>new {c.name,c.length,bindings=AnimationUtility.GetCurveBindings(c).Select(b=>new{b.path,b.propertyName}).ToArray()}).ToArray()};
        string json=Newtonsoft.Json.JsonConvert.SerializeObject(data,Newtonsoft.Json.Formatting.Indented);
        System.IO.Directory.CreateDirectory("../../art/reskin/penguin-expedition/animation-fix");
        System.IO.File.WriteAllText("../../art/reskin/penguin-expedition/animation-fix/original-animation.json",json);return json;
    }
}
