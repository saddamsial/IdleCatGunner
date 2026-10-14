using UnityEngine;

namespace CatGunner.Runtime
{
    public static class PenguinMovementBounds
    {
        public const float HuntRadius=14;
        public const float GroundPadding=2;

        // The Ground shader clips at UV radius .5. World AABB extents include
        // the rotated square's corners, so measure the sprite's local axes.
        public static bool GroundCircle(SpriteRenderer ground,out Vector3 center,out float radius)
        {
            center=Vector3.zero;radius=0;
            if(ground==null||ground.sprite==null||!ground.gameObject.activeInHierarchy)return false;
            var bounds=ground.sprite.bounds;
            center=ground.transform.TransformPoint(bounds.center);
            var x=ground.transform.TransformVector(Vector3.right*bounds.extents.x);
            var z=ground.transform.TransformVector(Vector3.up*bounds.extents.y);
            radius=Mathf.Max(1,Mathf.Min(new Vector2(x.x,x.z).magnitude,new Vector2(z.x,z.z).magnitude)-GroundPadding);
            return true;
        }

        public static void Clamp(Rigidbody body,Vector3 center,float radius)
        {
            if(body==null||body.isKinematic)return;
            var position=body.position;
            var offset=position-center;offset.y=0;
            if(offset.sqrMagnitude>radius*radius)
            {
                offset=offset.normalized*radius;
                position=center+offset;position.y=body.position.y;
                // Keep the render transform inside too when interpolation is on.
                body.position=position;body.transform.position=position;
            }
            var velocity=body.linearVelocity;
            var next=offset+new Vector3(velocity.x,0,velocity.z)*Time.fixedDeltaTime;
            if(next.sqrMagnitude<=radius*radius)return;
            var allowed=(next.normalized*radius-offset)/Time.fixedDeltaTime;
            body.linearVelocity=new Vector3(allowed.x,velocity.y,allowed.z);
        }

    }
}
