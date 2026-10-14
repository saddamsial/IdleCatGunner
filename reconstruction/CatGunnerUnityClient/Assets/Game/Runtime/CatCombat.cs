using System;
using UnityEngine;

// Forest hero targeting, aim and projectile attack. Companion AI and the
// original manager lifecycle still require separate reconstruction.
public sealed partial class Cat
{
    public void Skin_Reload()
    {
        var m=Skin_manager.instance;if(m==null||m.Progression==null)return;
        skin_spriteRenderer.sprite=m.Skin_Bone_return();hand_spriteRenderer.color=m.Skin_Color_return();
    }
    private float raycastTimer,currentHandZ=130,_spreadAngle;
    private bool _prevHadTarget;
    private Collider _lockedAttackTarget;
    private Vector3 nearHitPoint;
    private Camera _mainCam;
    private const float FaceAngleMin=20,FaceAngleMax=160;
    private static readonly Vector3 GroundProjectionDirection=Quaternion.Euler(40,-45,0)*Vector3.forward;
    public Collider AttackTarget => nearObj;
    public Vector3 AttackPoint => nearHitPoint;
    public void InitializeHandPose()
    {
        currentHandZ=130;ApplyHandZ(RightHand,currentHandZ);ApplyHandZ(LeftHand,currentHandZ);
    }
    // 0x2b38de0: camera missing means visible; front test strict, viewport inclusive.
    public bool IsOnScreen(Vector3 worldPos,float margin=.02f)
    {
        if(_mainCam==null) _mainCam=Camera.main;
        if(_mainCam==null) return true;
        var p=_mainCam.WorldToViewportPoint(worldPos);
        return p.z>0 && p.x>=-margin && p.x<=1+margin && p.y>=-margin && p.y<=1+margin;
    }
    public bool IsValidTarget(Collider target) => target!=null && target.gameObject.activeInHierarchy && IsOnScreen(target.transform.position);
    // 0x2b4126c: nearest visible collider, plus Monster off-screen movement hint.
    public Collider FindNearestEnemyByRaycast()
    {
        var origin=Ray_trans.position;Collider nearest=null;float distance=float.MaxValue,offscreen=float.MaxValue;
        _hasOffscreenMonster=false;bool monster=CatGunner.Runtime.GameClient.Instance!=null&&CatGunner.Runtime.GameClient.Instance.Mode==4;
        for(int i=0;i<RayCount;i++)
        {
            float a=(360f/RayCount)*i*Mathf.Deg2Rad;
            var direction=new Vector3(Mathf.Sin(a),0,Mathf.Cos(a));
            if(!Physics.Raycast(origin,direction,out var hit,Attack_Length,EnemyLayer))continue;
            if(IsOnScreen(hit.collider.transform.position)){if(hit.distance<distance){distance=hit.distance;nearest=hit.collider;nearHitPoint=hit.point;}}
            else if(monster&&hit.distance<offscreen){offscreen=hit.distance;_offscreenMonster=hit.collider.transform.position;_hasOffscreenMonster=true;}
        }
        UpdateIndicator(nearest);return nearest;
    }
    public void HandleRaycastTimer()
    {
        raycastTimer+=Time.deltaTime;
        if(raycastTimer<Raycast_Cool_Max) return;
        raycastTimer=0;nearObj=FindNearestEnemyByRaycast();
    }
    // Cat.ResolveAttackTarget 0x2b3bad0: an automatic target uses its closest
    // collider point; manual input and invalid targets retain the native lock path.
    public void ResolveAttackTarget()
    {
        var input=joystick!=null?joystick.Direction:Vector2.zero;
        if(input.sqrMagnitude<=MovementThresholdSquared && AutoMove && _autoTarget!=null)
        {
            var collider=_autoTarget.GetComponent<Collider>();
            if(collider==null) collider=_autoTarget.GetComponentInChildren<Collider>();
            if(collider!=null && IsValidTarget(collider))
            {
                nearHitPoint=collider.ClosestPoint(Ray_trans.position);
                if(Vector3.Distance(Ray_trans.position,collider.transform.position)<=Attack_Length)
                    nearObj=_lockedAttackTarget=collider;
                else nearObj=_lockedAttackTarget=null;
                UpdateTargetIndicator();return;
            }
        }
        ResolveManualAttackTarget();
    }
    // Also exposed independently for isolated manual-input acceptance fixtures.
    public void ResolveManualAttackTarget()
    {
        var input=joystick!=null?joystick.Direction:Vector2.zero;
        if(input.sqrMagnitude>MovementThresholdSquared || !IsValidTarget(_lockedAttackTarget) ||
            Vector3.Distance(Ray_trans.position,_lockedAttackTarget.transform.position)>Attack_Length)
        {
            _lockedAttackTarget=nearObj;
            if(nearObj!=null) nearHitPoint=nearObj.transform.position;
        }
        else
        {
            nearObj=_lockedAttackTarget;nearHitPoint=nearObj.transform.position;
        }
        UpdateTargetIndicator();
    }
    private void UpdateIndicator(Collider target)
    {
        if(Target_obj==null) return;
        if(target!=null) {Target_obj.transform.position=target.transform.position;if(!Target_obj.activeSelf) Target_obj.SetActive(true);}
        else if(Target_obj.activeSelf) Target_obj.SetActive(false);
    }
    public void UpdateTargetIndicator() => UpdateIndicator(nearObj);
    public void ClearNearObj() {nearObj=null;_lockedAttackTarget=null;UpdateTargetIndicator();}
    public void FaceTowardEnemy(Collider target)
    {
        if(target==null) return;
        isFacingLeft=(CamCorrection*(target.transform.position-transform.position)).x<=0;
        Pivot_trans.localEulerAngles=isFacingLeft?LeftAngle:RightAngle;
    }
    // 0x2b3b00c: ordinary horizontal aim or missile initial arc tangent.
    public void UpdateHandRotation()
    {
        float desired=currentHandZ;
        if(nearObj==null) desired=130;
        else
        {
            var point=_gunInfo!=null && _gunInfo.type==GunType.MISSILE?
                MissileAimPoint(RightHand.position,nearObj.transform.position):
                new Vector3(nearHitPoint.x,RightHand.position.y,nearHitPoint.z);
            if(Vector3.Distance(RightHand.position,transform.position)<Vector3.Distance(RightHand.position,point))
            {
                var direction=point-RightHand.position;
                if(direction.sqrMagnitude>MovementThresholdSquared)
                {
                    direction=direction.normalized;
                    if(RightHand.parent!=null) direction=RightHand.parent.InverseTransformDirection(direction);
                    desired=Mathf.Atan2(direction.y,direction.x)*Mathf.Rad2Deg;
                }
            }
        }
        currentHandZ=Mathf.LerpAngle(currentHandZ,desired,HandRotateSpeed*Time.deltaTime);
        ApplyHandZ(RightHand,currentHandZ);ApplyLeftHandTowardGunPivot();
    }
    public void ApplyLeftHandTowardGunPivot()
    {
        if(Gun_Pivot_trans==null || LeftHand==null) return;
        var direction=Gun_Pivot_trans.position-LeftHand.position;
        if(LeftHand.parent!=null) direction=LeftHand.parent.InverseTransformDirection(direction);
        if(direction.sqrMagnitude>=MovementThresholdSquared) ApplyHandZ(LeftHand,Mathf.Atan2(direction.y,direction.x)*Mathf.Rad2Deg);
    }
    // Native hero (non-AI) branch 0x2b3b64c.
    public void UpdateFaceRotation()
    {
        Vector3 direction;
        if(nearObj!=null) {direction=nearHitPoint-transform.position;direction.y=0;}
        else {var input=joystick!=null?joystick.Direction:Vector2.zero;direction=Quaternion.Euler(0,-45,0)*new Vector3(input.x,0,input.y);}
        float angle=90;
        if(direction.sqrMagnitude>MovementThresholdSquared)
        {
            direction=CamCorrection*direction.normalized;
            angle=Mathf.Atan2(direction.z,direction.x)*Mathf.Rad2Deg*(isFacingLeft?-1:1);
        }
        float desired=Mathf.Lerp(FaceAngleMin,FaceAngleMax,angle/180);
        var e=Face_Pivot_trans.localEulerAngles;
        e.z=Mathf.LerpAngle(e.z,desired,FaceRotateSpeed*Time.deltaTime);Face_Pivot_trans.localEulerAngles=e;
    }
    private static float ProjectedSpreadMax(float cooldown,float minimum,float maximum)
    {
        // logf import confirmed at preferred VA 0x59fb2d0.
        float speed=1-Mathf.Clamp01((Mathf.Log(Mathf.Max(cooldown,.05f))+2.9957323f)/3.6888795f);
        return Mathf.Lerp(minimum,maximum,speed);
    }
    public void UpdateSpreadState()
    {
        float maximum=ProjectedSpreadMax(AtkCool_Max,SpreadAngleMin,SpreadAngleMax);
        if(nearObj!=null)
        {
            if(!_prevHadTarget) {_spreadAngle=0;AtkCool_Now=0;}
            _prevHadTarget=true;
        }
        else
        {
            _prevHadTarget=false;
            if(_spreadAngle>0) _spreadAngle=Mathf.MoveTowards(_spreadAngle,0,SpreadDecayMultiplier*Mathf.Max(maximum,1)*Time.deltaTime);
        }
        Debug_SpreadAngle=_spreadAngle;Debug_SpreadMaxAngle=maximum;
    }
    public static Vector3 ApplySpread(Vector3 direction,float spread)
    {
        if(spread<.01f) return direction;
        return Quaternion.Euler(0,UnityEngine.Random.Range(-spread,spread),0)*direction;
    }
    public static Vector3 CalcBulletDir(Vector3 spawnPos,Vector3 targetPos)
    {
        var direction=targetPos-spawnPos;direction.y=0;
        return direction.sqrMagnitude<=MovementThresholdSquared?Vector3.forward:direction.normalized;
    }
    public static Vector3 ProjectGunToBulletPlane(Vector3 point)
    {
        float distance=(2-point.y)/GroundProjectionDirection.y;
        return new Vector3(point.x+distance*GroundProjectionDirection.x,2,point.z+distance*GroundProjectionDirection.z);
    }
    public Vector3 CalcBulletSpawnPos() => ProjectGunToBulletPlane(Shoot_trans.position);
    public Vector3 GetFirePosition() => Shoot_Random_trans==null || Shoot_Random_trans.Length==0?CalcBulletSpawnPos():
        ProjectGunToBulletPlane(Shoot_Random_trans[UnityEngine.Random.Range(0,Shoot_Random_trans.Length)].position);
    // Presentation-only tail of Balance_Reload 0x2b38f10; numeric modifiers,
    // owned equipment and save/inventory selection are not implemented here.
    public void ReloadGunPresentation(int gun)
    {
        GunNum=gun;Shoot_trans=Gun_list[gun].Shoot_trans;
        Shoot_Random_trans=Gun_list[gun].Shoot_Random_trans;
        Shoot_particle=Gun_list[gun].Shoot_particle;
        for(int i=0;i<Gun_list.Length;i++) Gun_list[i].gameObject.SetActive(i==gun);
        _spreadAngle=0;
        for(int i=0;i<Gun_Degree_FX_list.Length;i++) Gun_Degree_FX_list[i].SetActive(i==gun/5);
    }
    // Compatibility entry for callers of the earlier normal-only slice.
    public bool AttackSingle(Collider target)
    {
        if(_gunInfo==null || _gunInfo.type!=GunType.SINGLE) throw new NotSupportedException("Normal attack entry requires SINGLE");
        return Attack(target);
    }
    // Forest projectile branches of original Cat.Attack 0x2b3d4ac.
    // Other weapons are rejected before mutation at this explicit capability boundary.
    public bool Attack(Collider target)
    {
        if(_gunInfo==null || (_gunInfo.type!=GunType.SINGLE && _gunInfo.type!=GunType.SHOTGUN &&
            _gunInfo.type!=GunType.PIERCE && _gunInfo.type!=GunType.LASER &&
            _gunInfo.type!=GunType.EXPLOSIVE && _gunInfo.type!=GunType.BLAST_SNIPER && _gunInfo.type!=GunType.MISSILE))
            throw new NotSupportedException("Unknown projectile attack branch");
        FaceTowardEnemy(target);var position=GetFirePosition();var direction=CalcBulletDir(position,nearHitPoint);
        bool critical=UnityEngine.Random.value<CriPer;
        var damage=critical?CriDmg:Damage;var text=critical?CriDmg_str:Damage_str;
        bool shotgun=_gunInfo.type==GunType.SHOTGUN;
        float lifetime=(_gunInfo.type==GunType.PIERCE || _gunInfo.type==GunType.LASER || _gunInfo.type==GunType.BLAST_SNIPER)?
            _gunInfo.PenetratingBulletLifetime:(_gunInfo.type==GunType.EXPLOSIVE?1.5f:.7f);
        float radius=_gunInfo.type==GunType.EXPLOSIVE?_gunInfo.ExplosionRadius:
            (_gunInfo.type==GunType.BLAST_SNIPER?_gunInfo.BlastSniperExplosionRadius:0);
        bool fired=_gunInfo.type==GunType.MISSILE?TryFireMissile(position,target,_spreadAngle,damage,text,critical):
            shotgun?TryFireShotgun(position,direction,damage,text,critical):
            TrySpawnBulletEx(position,ApplySpread(direction,_spreadAngle),_gunInfo.type,radius,lifetime,damage,text,critical);
        if(!fired) return false;
        if(!shotgun) _spreadAngle=Mathf.Lerp(_spreadAngle,ProjectedSpreadMax(AtkCool_Max,SpreadAngleMin,SpreadAngleMax),SpreadGrowthRate);
        Gun_bounce.Bounce_Start();Rebound_bounce.Bounce_Start();Shoot_particle.Play();
        // Native Cat.Attack checks Cat_manager.is_Shoot_Mute before PlaySfx.
        if(!Cat_manager.is_Shoot_Mute && !Setting.is_eco && Sound_manager.instance!=null) Sound_manager.instance.PlaySfx(SfxType.Shoot);
        return true;
    }
    // Exact cooldown update/failure-retry portion of native Update, not full Update.
    public bool TickSingleAttackCooldown()
    {
        if(_gunInfo==null || _gunInfo.type!=GunType.SINGLE) throw new NotSupportedException("Normal cooldown entry requires SINGLE");
        return TickProjectileAttackCooldown();
    }
    public bool TickProjectileAttackCooldown()
    {
        AtkCool_Now+=Time.deltaTime;
        if(AtkCool_Now<AtkCool_Max || nearObj==null) return false;
        AtkCool_Now=0;
        bool fired=Attack(nearObj);
        if(!fired) AtkCool_Now=AtkCool_Max-Time.deltaTime;
        return fired;
    }
}
