using System;
using UnityEngine;
namespace CatGunner.Runtime
{
    // Native actors retain their hitboxes, target anchors and animation callbacks.
    [DefaultExecutionOrder(220)]
    [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "PenguinCatalogActor")] public sealed class PenguinCatalogActor:MonoBehaviour
    {
        private Sprite[] sprites;private Func<int> selection;private Func<bool> dead;
        private Renderer[] hidden;private SpriteRenderer shadow,visual;private float heightRatio,age;
        private Pet pet;private Cat hero;private PenguinPetMotion petMotion;
        public SpriteRenderer Visual=>visual;
        public void Configure(Sprite[] catalogue,Func<int> selected,Func<bool> destroyed,Renderer[] originals,SpriteRenderer feet,float ratio,Pet follower,Cat heroCat,Sprite[] directions=null)
        {
            sprites=catalogue;selection=selected;dead=destroyed;hidden=originals;shadow=feet;heightRatio=ratio;pet=follower;hero=heroCat;
            visual=gameObject.GetComponent<SpriteRenderer>()??gameObject.AddComponent<SpriteRenderer>();visual.sharedMaterial=hero.skin_spriteRenderer.sharedMaterial;visual.sortingLayerID=hero.skin_spriteRenderer.sortingLayerID;visual.sortingOrder=3;
            if(pet!=null)
            {
                visual.sortingLayerName="Default";visual.sortingOrder=0;
                if(petMotion==null){petMotion=gameObject.GetComponent<PenguinPetMotion>()??gameObject.AddComponent<PenguinPetMotion>();petMotion.Configure(visual,pet,directions);}
            }
        }
        private void LateUpdate()
        {
            if(visual==null||Camera.main==null)return;foreach(var r in hidden)if(r!=null)r.enabled=false;
            int selected=Mathf.Clamp(selection(),0,sprites.Length-1);visual.sprite=petMotion!=null?petMotion.SpriteFor(selected,sprites[selected]):sprites[selected];age+=Time.deltaTime;var cam=Camera.main;
            float heroHeight=hero.GetComponentInChildren<PenguinBoneMotion>(true)?.Renderer.bounds.size.y??14f;
            // The world Y bounds of a tilted billboard are not its screen height.
            // Pets should keep their native companion proportion to the hero.
            if(pet!=null){var motion=hero.GetComponentInChildren<PenguinBoneMotion>(true);if(motion!=null)heroHeight=motion.BodyHeight*motion.transform.TransformVector(Vector3.up).magnitude;}
            float h=(pet!=null?Mathf.Max(.1f,heroHeight):Mathf.Clamp(heroHeight,10,22))*heightRatio;
            transform.rotation=cam.transform.rotation;float scale=h/visual.sprite.bounds.size.y;transform.localScale=Vector3.one;var unit=transform.lossyScale;transform.localScale=new Vector3(scale/Mathf.Max(.0001f,Mathf.Abs(unit.x)),scale/Mathf.Max(.0001f,Mathf.Abs(unit.y)),scale/Mathf.Max(.0001f,Mathf.Abs(unit.z)));
            var feet=shadow!=null?shadow.bounds.center:transform.parent.position;
            float bob=Mathf.Sin(age*(pet!=null&&pet.IsMoving?9:2.4f))*h*.016f;
            transform.position=feet+cam.transform.up*(h*.5f+bob+.1f);
            if(pet!=null)visual.flipX=false;
            if(dead())visual.color=new Color(.62f,.72f,.85f,.65f);else visual.color=Color.white;
        }
    }
}
