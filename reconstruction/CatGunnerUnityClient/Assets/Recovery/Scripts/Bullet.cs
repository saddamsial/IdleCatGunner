using System;
using System.Collections.Generic;
using UnityEngine;
using CatGunner.Recovery;

// Original component identity; forest projectile/hit branches.
// Native UI mode5 remains a separate pending slice.
public sealed class Bullet : MonoBehaviour
{
    private int gunNum;
    private bool is_Cri;
    public OriginalAmount Damage;
    public string Damage_str;
    public float Speed;
    public Rigidbody rb;
    public ParticleSystem particle;
    public bool is_Die;
    private Vector3 LastPos;
    public ParticleSystem[] Skin_particles;
    private Collider _collider;
    [SerializeField] private float _deactivateDelay;
    private Bullet_Mesh _activeBulletMesh;
    public GunType gunType;
    public float explosionRadius;
    public LayerMask enemyLayer;
    private bool _isMissile,_firstHitDone,_fxSpawned;
    private Vector3 _msStart,_msEnd;
    private float _msArcHeight,_msDuration,_msTimer;
    private int _pierceCount;
    private readonly HashSet<int> _hitIds=new HashSet<int>();
    private static readonly Dictionary<GameObject,Bullet_FX> _fxCache=new Dictionary<GameObject,Bullet_FX>();

    private void Awake() => _collider=GetComponent<Collider>();
    public void Skin_Reload(int GunNum)
    {
        gunNum=GunNum;particle.gameObject.SetActive(false);
        particle=Skin_particles[GunNum];particle.gameObject.SetActive(true);
    }
    public void Mesh_Reload(int GunNum)
    {
        if(_activeBulletMesh!=null) _activeBulletMesh.Stop();
        _activeBulletMesh=Skin_particles[GunNum].GetComponent<Bullet_Mesh>();
        if(_activeBulletMesh!=null) _activeBulletMesh.Active();
    }
    private void ResetState()
    {
        is_Die=false;_isMissile=false;_firstHitDone=false;_fxSpawned=false;
        _pierceCount=0;explosionRadius=0;_hitIds.Clear();
        rb.isKinematic=false;CancelInvoke();if(_collider!=null) _collider.enabled=true;
    }
    public void SpawnEx(int GunNum,Vector3 Pos,Vector3 Dir,OriginalAmount Dmg,string DamageStr,
        bool isCri,GunType type,float expRadius,LayerMask layer,float lifetime)
    {
        if(type!=GunType.SINGLE && type!=GunType.SHOTGUN && type!=GunType.PIERCE && type!=GunType.LASER &&
            type!=GunType.EXPLOSIVE && type!=GunType.BLAST_SNIPER)
            throw new NotSupportedException("Linear spawn does not accept missile flight");
        Skin_Reload(GunNum);Mesh_Reload(GunNum);ResetState();
        gunType=type;explosionRadius=expRadius;enemyLayer=layer;
        SetupLinear(Pos,Dir,Dmg,DamageStr,isCri);
        Invoke(nameof(Destroy),Mathf.Min(lifetime,50/Mathf.Max(Speed,.1f)));
    }
    // 0x2b65958. Missile has its own kinematic trajectory and expiry, not linear velocity.
    public void SpawnMissile(int GunNum,Vector3 startPos,Vector3 targetPos,OriginalAmount Dmg,string DamageStr,
        bool isCri,float expRadius,LayerMask layer,float duration,float arcHeightMultiplier=.4f)
    {
        Skin_Reload(GunNum);Mesh_Reload(GunNum);ResetState();
        gunType=GunType.MISSILE;enemyLayer=layer;explosionRadius=expRadius;_isMissile=true;
        _msStart=startPos;_msEnd=targetPos;_msDuration=duration;_msTimer=0;
        var delta=targetPos-startPos;_msArcHeight=new Vector2(delta.x,delta.z).magnitude*arcHeightMultiplier;
        rb.isKinematic=true;transform.position=startPos;LastPos=startPos;
        if(delta.sqrMagnitude>.001f) transform.forward=delta.normalized;
        Damage=OriginalAmount.FromValue(Dmg.Value);Damage_str=DamageStr;is_Cri=isCri;
        gameObject.SetActive(true);particle.Clear();Invoke(nameof(Destroy),duration+.5f);
    }
    // 0x2b65c44. ARM64 HFA returns verified: LastPos retains previous XYZ, not just X/Z.
    private void Update()
    {
        if(is_Die || !_isMissile) return;
        _msTimer+=Time.deltaTime;
        float t=Mathf.Clamp01(_msTimer/_msDuration);
        var previous=transform.position;var position=Vector3.Lerp(_msStart,_msEnd,t);
        position.y+=4*_msArcHeight*t*(1-t);transform.position=position;
        var delta=position-previous;
        if(delta.sqrMagnitude>.0001f) transform.forward=delta.normalized;
        LastPos=previous;
        if(t>=1) {Explode(position);SpawnFX(position);DieAndWait();}
    }
    private void SetupLinear(Vector3 Pos,Vector3 Dir,OriginalAmount Dmg,string DmgStr,bool isCri)
    {
        particle.Stop(true,ParticleSystemStopBehavior.StopEmitting);particle.Clear(true);
        rb.isKinematic=false;transform.position=Pos;LastPos=Pos;transform.forward=Dir;
        rb.linearVelocity=transform.forward*Speed;
        Damage=OriginalAmount.FromValue(Dmg.Value);Damage_str=DmgStr;is_Cri=isCri;
        gameObject.SetActive(true);particle.Play(true);
    }
    private void OnTriggerEnter(Collider coll)
    {
        if(is_Die || _hitIds.Contains(coll.GetInstanceID())) return;
        var origin=_isMissile?LastPos:transform.position-rb.linearVelocity*Time.fixedDeltaTime;
        var point=coll.ClosestPoint(origin);
        bool isEnemy=coll.CompareTag("Enemy");
        if(gunType==GunType.SINGLE || gunType==GunType.SHOTGUN) HitSingle(point,coll);
        else if(gunType==GunType.PIERCE) HitPierce(point,coll,isEnemy,coll.GetInstanceID());
        else if(gunType==GunType.LASER) HitLaser(point,coll,isEnemy,coll.GetInstanceID());
        else if(gunType==GunType.EXPLOSIVE || gunType==GunType.MISSILE) HitExplosive(point);
        else if(gunType==GunType.BLAST_SNIPER) HitBlastSniper(point,coll,isEnemy,coll.GetInstanceID());
        else throw new NotSupportedException("Weapon hit dispatch not integrated");
    }
    private void HitSingle(Vector3 point,Collider coll)
    {
        ForestDamageDispatch.Damage_Collider(coll,Damage,point,Damage_str,is_Cri);
        SpawnFX(point);DieAndWait();
    }
    // Forest branch of 0x2b66980. Compare against health BEFORE dispatch/death.
    private void HitPierce(Vector3 point,Collider coll,bool isEnemy,int id)
    {
        if(!isEnemy) {SpawnFX(point);DieAndWait();return;}
        var link=coll.GetComponent<EnemyColl>();
        _hitIds.Add(id);
        if(link==null || link.enemyScript==null || link.enemyScript.is_Die) return;
        _pierceCount++;
        bool lethal=Damage.Value.CompareTo(link.enemyScript.Health_Now.Value)>=0;
        ForestDamageDispatch.Damage_Collider(coll,Damage,point,Damage_str,is_Cri);
        SpawnFXOnce(point);
        if(_pierceCount>=2 && !lethal) DieAndWait();
    }
    // Forest branch of 0x2b667f4. No pierce-count/health stop condition.
    private void HitLaser(Vector3 point,Collider coll,bool isEnemy,int id)
    {
        if(!isEnemy) {SpawnFX(point);DieAndWait();return;}
        _hitIds.Add(id);
        ForestDamageDispatch.Damage_Collider(coll,Damage,point,Damage_str,is_Cri);
        SpawnFXOnce(point);
    }
    private void SpawnFXOnce(Vector3 point)
    {
        if(_fxSpawned) return;
        _fxSpawned=true;SpawnFX(point);
    }
    // 0x2b65edc: original allocating query, global trigger setting, collider IDs.
    // Damage is unchanged per collider; inactive entries can change during dispatch.
    private void Explode(Vector3 center)
    {
        if(!(explosionRadius>0)) return;
        var colliders=Physics.OverlapSphere(center,explosionRadius,enemyLayer);
        foreach(var coll in colliders)
        {
            if(coll==null || !coll.gameObject.activeInHierarchy) continue;
            int id=coll.GetInstanceID();
            if(_hitIds.Contains(id)) continue;
            _hitIds.Add(id);
            ForestDamageDispatch.Damage_Collider(coll,Damage,coll.ClosestPoint(center),Damage_str,is_Cri);
        }
    }
    private void HitExplosive(Vector3 point)
    {
        Explode(point);SpawnFX(point);DieAndWait();
    }
    // 0x2b66c64: first contact explodes; later contacts use original piercing.
    private void HitBlastSniper(Vector3 point,Collider coll,bool isEnemy,int id)
    {
        if(_firstHitDone) {HitPierce(point,coll,isEnemy,id);return;}
        _firstHitDone=true;
        bool stop=true;
        if(isEnemy)
        {
            var link=coll.GetComponent<EnemyColl>();
            if(link!=null && link.enemyScript!=null && !link.enemyScript.is_Die)
                stop=Damage.Value.CompareTo(link.enemyScript.Health_Now.Value)<0;
        }
        Explode(point);SpawnFXOnce(point);
        if(stop) DieAndWait();
    }
    private void SpawnFX(Vector3 position)
    {
        if(!FXThrottle.CanSpawn(gunNum,position)) return;
        var go=Polling_manager.instance.Object_Polling(1);
        if(!_fxCache.TryGetValue(go,out var fx)) {_fxCache[go]=fx=go.GetComponent<Bullet_FX>();}
        fx.Spawn(gunNum,position);
    }
    public void DieAndWait()
    {
        if(is_Die) return;is_Die=true;
        if(!rb.isKinematic) rb.linearVelocity=Vector3.zero;
        rb.isKinematic=true;if(_collider!=null) _collider.enabled=false;
        if(_activeBulletMesh!=null) _activeBulletMesh.Stop();
        CancelInvoke();Invoke(nameof(Deactivate),_deactivateDelay);
    }
    private void Deactivate() => gameObject.SetActive(false);
    private void Destroy()
    {
        if(is_Die) return;
        if(gunType==GunType.EXPLOSIVE || gunType==GunType.MISSILE)
        {Explode(transform.position);SpawnFX(transform.position);}
        DieAndWait();
    }
}
