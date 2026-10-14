using UnityEngine;using Spine.Unity;
namespace CatGunner.Runtime
{
    [DefaultExecutionOrder(220)]
    [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "PenguinPetPreview")] public sealed class PenguinPetPreview:MonoBehaviour
    {
        private Pet_Dummy owner;private Sprite[] sprites;private Camera camera;private Renderer[] originals;private SpriteRenderer visual;private float age;
        public void Configure(Pet_Dummy dummy,Sprite[] catalogue,Camera previewCamera,Renderer[] hidden)
        {owner=dummy;sprites=catalogue;camera=previewCamera;originals=hidden;visual=gameObject.GetComponent<SpriteRenderer>()??gameObject.AddComponent<SpriteRenderer>();visual.sortingOrder=8;}
        private void LateUpdate()
        {
            if(owner==null||camera==null)return;foreach(var r in originals)if(r!=null)r.enabled=false;
            int n=System.Array.FindIndex(owner.Skin_obj,g=>g.activeSelf);if(n<0)return;visual.sprite=sprites[n%sprites.Length];
            var source=owner.Skin_obj[n].GetComponent<SkeletonAnimation>();var data=source.skeletonDataAsset.GetSkeletonData(false);
            var b=source.GetComponent<Renderer>().bounds;var up=camera.transform.up;float h=Mathf.Abs(up.x)*b.size.x+Mathf.Abs(up.y)*b.size.y+Mathf.Abs(up.z)*b.size.z;if(h<.1f)h=camera.orthographicSize*.18f;age+=Time.deltaTime;
            transform.rotation=camera.transform.rotation;transform.localScale=Vector3.one;var unit=transform.lossyScale;float scale=h/visual.sprite.bounds.size.y;transform.localScale=new Vector3(scale/Mathf.Max(.0001f,Mathf.Abs(unit.x)),scale/Mathf.Max(.0001f,Mathf.Abs(unit.y)),scale/Mathf.Max(.0001f,Mathf.Abs(unit.z)));transform.position=owner.transform.position+camera.transform.up*(h*.5f+Mathf.Sin(age*2.3f)*h*.02f);
        }
    }
}
