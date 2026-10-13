using System.Collections.Generic;
using UnityEngine;
namespace CatGunner.Recovery
{
    // Separate visual sprites only. Native Gun, Shoot_trans and projectile
    // factories still own equipment, aim, fire timing and collision.
    [DefaultExecutionOrder(205)]
    public sealed class PenguinHoldingWing : MonoBehaviour
    {
        public SpriteRenderer Wing {get;private set;}
        public SpriteRenderer Weapon {get;private set;}
        public float GripSpan {get;private set;}
        private Cat cat;private PenguinBoneMotion motion;private SpriteRenderer anchor;
        private SpriteRenderer[] native;private bool[] enabledBefore;
        private readonly Dictionary<Sprite,Vector2> grips=new Dictionary<Sprite,Vector2>();
        private readonly Dictionary<Sprite,float> aspects=new Dictionary<Sprite,float>();
        public void Configure(Cat owner,PenguinBoneMotion body,SpriteRenderer target,Sprite flipper)
        {
            cat=owner;motion=body;anchor=target;
            native=new SpriteRenderer[cat.Gun_list.Length];enabledBefore=new bool[native.Length];
            for(int i=0;i<native.Length;i++){native[i]=cat.Gun_list[i].GetComponent<SpriteRenderer>();enabledBefore[i]=native[i]!=null&&native[i].enabled;}
            Wing=Make("Penguin holding flipper",target.sortingOrder+4);Wing.sprite=flipper;
            Weapon=Make("Penguin weapon visual",target.sortingOrder+3);LateUpdate();
        }
        private SpriteRenderer Make(string name,int order)
        {
            var go=new GameObject(name);go.transform.SetParent(transform,false);
            var r=go.AddComponent<SpriteRenderer>();r.sharedMaterial=anchor.sharedMaterial;r.sortingLayerID=anchor.sortingLayerID;r.sortingOrder=order;return r;
        }
        private Vector2 Grip(Sprite s)
        {
            if(grips.TryGetValue(s,out var p))return p;
            float x0=0,y0=0,x1=s.rect.width,y1=s.rect.height;
            if(s.texture.isReadable)
            {
                var pixels=s.texture.GetPixels32();int tx=s.texture.width;
                x0=s.rect.width;y0=s.rect.height;x1=y1=0;
                for(int y=0;y<(int)s.rect.height;y++)for(int x=0;x<(int)s.rect.width;x++)if(pixels[((int)s.rect.y+y)*tx+(int)s.rect.x+x].a>100){x0=Mathf.Min(x0,x);y0=Mathf.Min(y0,y);x1=Mathf.Max(x1,x+1);y1=Mathf.Max(y1,y+1);}
                if(x1<=x0||y1<=y0){x0=y0=0;x1=s.rect.width;y1=s.rect.height;}
            }
            float u=(x0+(x1-x0)*.24f)/s.rect.width,v=(y0+(y1-y0)*.24f)/s.rect.height;
            p=new Vector2(Mathf.Lerp(s.bounds.min.x,s.bounds.max.x,u),Mathf.Lerp(s.bounds.min.y,s.bounds.max.y,v));grips[s]=p;aspects[s]=(x1-x0)/Mathf.Max(1,y1-y0);return p;
        }
        private void LateUpdate()
        {
            if(cat==null||Wing==null||motion==null)return;
            foreach(var r in native)if(r!=null)r.enabled=false;
            var shoulder=motion.ShoulderLocal;var tip=motion.HoldingPointLocal;var delta=tip-shoulder;GripSpan=delta.magnitude;
            Wing.flipX=anchor.flipX;
            var art=Wing.sprite.bounds;var artTip=new Vector3(Mathf.Lerp(art.min.x,art.max.x,.84f),Mathf.Lerp(art.min.y,art.max.y,.23f),0);
            if(anchor.flipX)artTip.x=-artTip.x;
            float angle=(Mathf.Atan2(delta.y,delta.x)-Mathf.Atan2(artTip.y,artTip.x))*Mathf.Rad2Deg;
            Wing.transform.localRotation=Quaternion.Euler(0,0,angle);Wing.transform.localScale=Vector3.one*(delta.magnitude/Mathf.Max(.001f,artTip.magnitude));Wing.transform.localPosition=shoulder;
            var source=native[Mathf.Clamp(cat.GunNum,0,native.Length-1)];
            if(source==null||source.sprite==null){Weapon.enabled=false;return;}
            Weapon.sprite=source.sprite;Weapon.flipX=anchor.flipX;Weapon.color=Color.white;
            var grip=Grip(source.sprite);if(anchor.flipX)grip.x=-grip.x;
            var camera=Camera.main;var target=cat.AttackTarget;
            var direction=target!=null&&camera!=null?camera.WorldToViewportPoint(target.transform.position)-camera.WorldToViewportPoint(cat.transform.position):new Vector3(anchor.flipX?-1:1,-.12f,0);
            float aim=Mathf.Clamp(Mathf.Atan2(direction.y,Mathf.Max(.01f,Mathf.Abs(direction.x)))*Mathf.Rad2Deg,-45,45)*(anchor.flipX?-1:1);
            var rotation=Quaternion.Euler(0,0,aim);float width=motion.BodyHeight*Mathf.Clamp(.42f*aspects[source.sprite]/1.3f,.36f,.62f);float scale=width/source.sprite.bounds.size.x;
            Weapon.transform.localRotation=rotation;Weapon.transform.localScale=Vector3.one*scale;Weapon.transform.localPosition=tip-rotation*(Vector3)(grip*scale);
            Weapon.enabled=source.gameObject.activeInHierarchy;
        }
        private void Restore(){if(native==null)return;for(int i=0;i<native.Length;i++)if(native[i]!=null)native[i].enabled=enabledBefore[i];}
        private void OnDisable()=>Restore();
        private void OnDestroy()=>Restore();
    }
}
