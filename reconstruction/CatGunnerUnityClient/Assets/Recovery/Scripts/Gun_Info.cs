using System;
using CatGunner.Recovery;

// Original serialized contract; independent decimal adapter replaces InfVal.
[Serializable] public sealed class Gun_Info
{
    public string Name;
    public GunType type;
    public OriginalAmount Damage;
    public float AtkSpeed;
    public int ShotgunPelletCount;
    public float ShotgunSpreadAngle,ExplosionRadius,MissileExplosionRadius,MissileSpeed;
    public float MissileElevationMin,MissileElevationMax,BlastSniperExplosionRadius,PenetratingBulletLifetime;
}
