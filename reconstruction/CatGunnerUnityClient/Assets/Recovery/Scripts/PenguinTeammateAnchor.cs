using UnityEngine;
namespace CatGunner.Recovery
{
    // Set the billboard before the approved mesh/flipper animation samples it.
    [DefaultExecutionOrder(160)]
    public sealed class PenguinTeammateAnchor:MonoBehaviour
    {
        private Cat cat;private SpriteRenderer anchor,shadow;private Sprite penguin;
        public void Configure(Cat owner,SpriteRenderer target,SpriteRenderer feet,Sprite body){cat=owner;anchor=target;shadow=feet;penguin=body;}
        private void LateUpdate()
        {
            var cam=Camera.main;if(cam==null||shadow==null)return;var b=shadow.sprite.bounds;
            float width=Mathf.Abs(Vector3.Dot(shadow.transform.TransformVector(Vector3.right*b.size.x),cam.transform.right))+Mathf.Abs(Vector3.Dot(shadow.transform.TransformVector(Vector3.up*b.size.y),cam.transform.right));float height=width*1.12f;
            anchor.transform.rotation=cam.transform.rotation;anchor.transform.localScale=Vector3.one*(height/penguin.bounds.size.y/anchor.transform.parent.lossyScale.x);anchor.transform.position=shadow.bounds.center+cam.transform.up*(height*.5f+.08f);
            var target=cat.AttackTarget;var position=cat.transform.position;var next=target!=null?target.transform.position:position+cat.rb.linearVelocity;
            if(target!=null||cat.rb.linearVelocity.sqrMagnitude>.01f)anchor.flipX=cam.WorldToViewportPoint(next).x<cam.WorldToViewportPoint(position).x;
        }
    }
}
