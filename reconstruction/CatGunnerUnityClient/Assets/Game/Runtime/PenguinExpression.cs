using UnityEngine;

namespace CatGunner.Runtime
{
    // Face-only presentation layer. The approved mesh motion remains its owner.
    [DefaultExecutionOrder(210)]
    [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "PenguinExpression")] public sealed class PenguinExpression : MonoBehaviour
    {
        public float Blink { get; private set; }
        public float Speak { get; private set; }
        public int BlinkCount { get; private set; }
        public float Focus {get;private set;}
        public float Happy {get;private set;}
        private PenguinBoneMotion motion;
        private Material material, originalMaterial;
        private float age,offset,lastBlink;
        public void Configure(PenguinBoneMotion body,Shader shader,float phase)
        {
            motion=body;offset=phase;originalMaterial=body.Renderer.sharedMaterial;
            material=new Material(shader){name="Penguin expressive face"};motion.Renderer.sharedMaterial=material;
        }
        public void SetSkin(Sprite sprite,Vector4 eyeA,Vector4 eyeB,Vector4 mouth)
        {
            if(material==null)return;
            if(material.mainTexture!=sprite.texture)material.mainTexture=sprite.texture;
            material.SetVector("_EyeA",eyeA);material.SetVector("_EyeB",eyeB);material.SetVector("_Mouth",mouth);
        }
        private void LateUpdate()
        {
            if(material==null)return;age+=Time.deltaTime;
            float phase=Mathf.Repeat(age+offset,3.7f);
            Blink=phase<.24f?Mathf.Sin(phase/.24f*Mathf.PI):0;
            if(Blink>.1f&&lastBlink<=.1f)BlinkCount++;lastBlink=Blink;
            Happy=motion.VictoryStrength;
            Focus=Mathf.MoveTowards(Focus,Happy>.1f?0:motion.RecoilStrength>.05f?1:0,Time.deltaTime*9);
            Speak=Mathf.Clamp01(motion.RecoilStrength*.6f+Happy*.45f+(phase>1.6f&&phase<1.9f?Mathf.Sin((phase-1.6f)/.3f*Mathf.PI)*.25f:0));
            material.SetFloat("_Blink",Blink);material.SetFloat("_Speak",Speak);
            material.SetFloat("_Focus",Focus);material.SetFloat("_Happy",Happy);
        }
        private void OnDestroy(){if(motion!=null&&motion.Renderer!=null&&motion.Renderer.sharedMaterial==material)motion.Renderer.sharedMaterial=originalMaterial;if(material!=null)Destroy(material);}
    }
}
