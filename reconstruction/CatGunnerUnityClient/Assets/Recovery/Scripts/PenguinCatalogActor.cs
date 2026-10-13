using System;
using UnityEngine;
namespace CatGunner.Recovery
{
    // Native actors retain their hitboxes, target anchors and animation callbacks.
    [DefaultExecutionOrder(220)]
    public sealed class PenguinCatalogActor:MonoBehaviour
    {
        private Sprite[] sprites;private Func<int> selection;private Func<bool> dead;
        private Renderer[] hidden;private SpriteRenderer shadow,visual;private float heightRatio,age;
        private Pet pet;private Cat hero;
        public SpriteRenderer Visual=>visual;
        public void Configure(Sprite[] catalogue,Func<int> selected,Func<bool> destroyed,Renderer[] originals,SpriteRenderer feet,float ratio,Pet follower,Cat heroCat)
        {
            sprites=catalogue;selection=selected;dead=destroyed;hidden=originals;shadow=feet;heightRatio=ratio;pet=follower;hero=heroCat;
            visual=gameObject.AddComponent<SpriteRenderer>();visual.sharedMaterial=hero.skin_spriteRenderer.sharedMaterial;visual.sortingLayerID=hero.skin_spriteRenderer.sortingLayerID;visual.sortingOrder=3;
        }
        private void LateUpdate()
        {
            if(visual==null||Camera.main==null)return;foreach(var r in hidden)if(r!=null)r.enabled=false;
            visual.sprite=sprites[Mathf.Clamp(selection(),0,sprites.Length-1)];age+=Time.deltaTime;var cam=Camera.main;
            float heroHeight=hero.GetComponentInChildren<PenguinBoneMotion>(true)?.Renderer.bounds.size.y??14f;
            float h=Mathf.Clamp(heroHeight,10,22)*heightRatio;
            transform.rotation=cam.transform.rotation;float scale=h/visual.sprite.bounds.size.y;transform.localScale=Vector3.one;var unit=transform.lossyScale;transform.localScale=new Vector3(scale/Mathf.Max(.0001f,Mathf.Abs(unit.x)),scale/Mathf.Max(.0001f,Mathf.Abs(unit.y)),scale/Mathf.Max(.0001f,Mathf.Abs(unit.z)));
            var feet=shadow!=null?shadow.bounds.center:transform.parent.position;
            float bob=Mathf.Sin(age*(pet!=null&&pet.IsMoving?9:2.4f))*h*.016f;
            transform.position=feet+cam.transform.up*(h*.5f+bob+.1f);
            if(pet!=null&&pet.rb.linearVelocity.sqrMagnitude>.01f)visual.flipX=Vector3.Dot(pet.rb.linearVelocity,cam.transform.right)<0;
            if(dead())visual.color=new Color(.62f,.72f,.85f,.65f);else visual.color=Color.white;
        }
    }
}
