using UnityEngine;
namespace CatGunner.Runtime
{
    [DefaultExecutionOrder(350)]
    [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "PenguinTargetVariety")] public sealed class PenguinTargetVariety : MonoBehaviour
    {
        SpriteRenderer visual;Sprite chosen;Vector3 baseScale;Vector2 nativeSize;
        public void Configure(SpriteRenderer renderer,Sprite[] options,int seed)
        {
            visual=renderer;chosen=options[(seed&int.MaxValue)%options.Length];baseScale=renderer.transform.localScale;nativeSize=renderer.sprite!=null?(Vector2)renderer.sprite.bounds.size:Vector2.one;
        }
        void LateUpdate()
        {
            if(visual==null||chosen==null||visual.sprite==chosen)return;
            visual.sprite=chosen;float ratio=Mathf.Max(nativeSize.x,nativeSize.y)/Mathf.Max(chosen.bounds.size.x,chosen.bounds.size.y);visual.transform.localScale=Vector3.Scale(baseScale,new Vector3(ratio,ratio,1));
        }
    }
}
