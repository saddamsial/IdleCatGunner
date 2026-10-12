using UnityEngine;
using CatGunner.Recovery;

public sealed partial class Cat
{
    // Cat.TryFireShotgun 0x2b41fbc: minimum one pellet; acquire before
    // sampling the random angle; partial emission succeeds without rollback.
    public bool TryFireShotgun(Vector3 spawnPos,Vector3 baseDir,OriginalAmount dmg,string dmgStr,bool isCri)
    {
        int count=Mathf.Max(1,_gunInfo.ShotgunPelletCount);
        float spread=_gunInfo.ShotgunSpreadAngle;
        bool any=false;
        for(int i=0;i<count;i++)
        {
            var go=Polling_manager.instance.Object_Polling_Smart(0);
            if(go==null) return any;
            var direction=Quaternion.Euler(0,UnityEngine.Random.Range(-spread,spread),0)*baseDir;
            go.GetComponent<Bullet>().SpawnEx(GunNum,spawnPos,direction,dmg,dmgStr,isCri,
                GunType.SHOTGUN,0,EnemyLayer,.7f);
            any=true;
        }
        return true;
    }
}
