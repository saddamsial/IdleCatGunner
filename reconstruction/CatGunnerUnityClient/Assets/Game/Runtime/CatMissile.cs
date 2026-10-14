using UnityEngine;
using CatGunner.Runtime;

public sealed partial class Cat
{
    // 0x2b421b4. Pool acquisition precedes scatter; impact uses the target's
    // transform (not collider surface), captured once before launch.
    public bool TryFireMissile(Vector3 spawnPos,Collider target,float spread,CurrencyAmount dmg,string dmgStr,bool isCri)
    {
        var go=Polling_manager.instance.Object_Polling_Smart(0);
        if(go==null) return false;
        var end=target!=null?target.transform.position:nearHitPoint;
        if(spread>.01f)
        {
            var delta=end-spawnPos;
            float radiusMax=new Vector2(delta.x,delta.z).magnitude*Mathf.Tan(spread*Mathf.Deg2Rad);
            float angle=UnityEngine.Random.Range(0f,360f)*Mathf.Deg2Rad;
            float radius=UnityEngine.Random.Range(0f,radiusMax);
            end.x+=radius*Mathf.Cos(angle);end.z+=radius*Mathf.Sin(angle);
        }
        var distance=end-spawnPos;
        float duration=new Vector2(distance.x,distance.z).magnitude/Mathf.Max(_gunInfo.MissileSpeed,.1f);
        go.GetComponent<Bullet>().SpawnMissile(GunNum,spawnPos,end,dmg,dmgStr,isCri,
            _gunInfo.MissileExplosionRadius,EnemyLayer,duration,.4f);
        return true;
    }
    // 0x2b3b00c: the derivative of 4*h*t*(1-t) at launch supplies elevation.
    // Serialized MissileElevationMin/Max are not consumed by this native method.
    public static Vector3 MissileAimPoint(Vector3 hand,Vector3 target)
    {
        var direction=target-hand;
        direction.y+=4*(new Vector2(direction.x,direction.z).magnitude*.4f);
        return hand+direction.normalized*10;
    }
}
