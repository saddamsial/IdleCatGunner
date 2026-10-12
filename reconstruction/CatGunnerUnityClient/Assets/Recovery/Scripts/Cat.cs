using UnityEngine;

// Original Cat identity. Manual movement, forest aim and normal attack methods
// and forest automatic movement are restored across partial files. Other modes/AI and the original
// manager equipment/balance lifecycle remains pending. The package initial
// profile is loaded by an explicit acceptance bridge.
public sealed partial class Cat : MonoBehaviour
{
    public float moveSpeed;
    public FloatingJoystick joystick;
    public Rigidbody rb;
    public Animator anim;
    public int GunNum;
    public Gun[] Gun_list;
    public Gun_Info _gunInfo;
    public CatGunner.Recovery.OriginalAmount Damage;
    public CatGunner.Recovery.OriginalAmount CriDmg;
    public Bounce_Custom Gun_bounce;
    public Bounce_Position Rebound_bounce;
    public string Damage_str;
    public string CriDmg_str;
    public float CriPer;
    public float Attack_Length;
    public float Raycast_Cool_Max;
    public float AtkCool_Now;
    public float AtkCool_Max;
    public LayerMask EnemyLayer;
    public Transform Pivot_trans;
    public Transform Gun_Pivot_trans;
    public Transform Face_Pivot_trans;
    public Transform LeftHand;
    public Transform RightHand;
    public Transform Shoot_trans;
    public Transform Ray_trans;
    public Transform[] Shoot_Random_trans;
    public ParticleSystem Shoot_particle;
    public GameObject Target_obj;
    public float HandRotateSpeed;
    public float FaceRotateSpeed;
    public int RayCount;
    public float SpreadAngleMin;
    public float SpreadAngleMax;
    public float SpreadGrowthRate;
    public float SpreadDecayMultiplier;
    public float Debug_SpreadAngle;
    public float Debug_SpreadMaxAngle;
    public bool AutoMove;
    public float AutoStopDistance;
    public float AutoZOffsetMax;
    public float AutoZOffsetMinDist;
    public float AutoZOffsetFullDist;
    public float AutoSearchInterval;
    public float AutoStopRatio;
    public float AutoDecelerationRange;
    public float AutoZWeight;
    public float AutoNearbyRadius;
    public float AutoOreSearchRadius;
    public float AutoOreSearchRadiusFallbackMult;
    public int OreOverlapBufferSize;
    public LayerMask OreLayer;
    public bool is_AI;
    public bool is_Helper=>Cat_manager.instance!=null&&Cat_manager.instance.Helper_Cat==this;
    public LayerMask ObstacleLayer;
    public float MinEnemyDist;
    public float FollowIdealDist;
    public float FollowMaxDist;
    public Vector3 FormationOffset;
    public Vector3 SeparationForce;
    public float HysteresisMargin;
    public float MinStateDuration;
    public float DecelerationRange;
    public float MinSpeedRatio;
    public float VelocitySmoothSpeed;
    public int SlotNum;
    public SpriteRenderer skin_spriteRenderer;
    public SpriteRenderer hand_spriteRenderer;
    public GameObject[] Gun_Degree_FX_list;
    public static Cat instance;
    private Collider nearObj;
    private bool isFacingLeft;
    private Vector3 _smoothVelocity, _autoSmoothVelocity;
    private Transform _autoTarget;
    private static readonly Vector3 LeftAngle=new Vector3(40,-45,0);
    private static readonly Vector3 RightAngle=new Vector3(-40,135,0);
    private static readonly Quaternion CamCorrection=Quaternion.Euler(0,45,0);
    private const float ScreenSpeedK=1.2f;
    private const float MovementThresholdSquared=.0001f;

    // Cat.Awake 0x2b38cd0.
    private void Awake() {if(!is_AI) instance=this;}

    // Cat.HandleMovement 0x2b3aa78. ARM64 vector return registers were checked:
    // both moving and idle paths preserve the existing Y velocity.
    public void HandleMovement()
    {
        var direction=joystick.Direction;
        bool moving=direction.sqrMagnitude>MovementThresholdSquared;
        anim.SetBool("Walk",moving);
        if(!moving)
        {
            var velocity=rb.linearVelocity;
            rb.linearVelocity=new Vector3(0,velocity.y,0);
            if(nearObj==null) return;
            FaceFromTarget();
            return;
        }
        if(nearObj!=null) FaceFromTarget();
        else
        {
            isFacingLeft=direction.x<=0;
            Pivot_trans.localEulerAngles=isFacingLeft?LeftAngle:RightAngle;
        }
        direction.x/=ScreenSpeedK;
        direction.y*=ScreenSpeedK;
        var world=Quaternion.Euler(0,-45,0)*new Vector3(direction.x,0,direction.y);
        rb.linearVelocity=new Vector3(world.x*moveSpeed,rb.linearVelocity.y,world.z*moveSpeed);
    }

    private void FaceFromTarget()
    {
        isFacingLeft=(CamCorrection*(nearObj.transform.position-transform.position)).x<=0;
        Pivot_trans.localEulerAngles=isFacingLeft?LeftAngle:RightAngle;
    }

    // Cat.ApplyHandZ 0x2b3a370: preserves local X and Y.
    public static void ApplyHandZ(Transform hand,float z)
    {
        var euler=hand.localEulerAngles;euler.z=z;hand.localEulerAngles=euler;
    }

    // Cat.Warp 0x2b42da4.
    public void Warp(Vector3 position)
    {
        rb.position=position;rb.linearVelocity=Vector3.zero;
        transform.position=position;isFacingLeft=false;
        Pivot_trans.localEulerAngles=RightAngle;
        _smoothVelocity=Vector3.zero;_autoTarget=null;_autoSmoothVelocity=Vector3.zero;
    }
    // Cat.TrySpawnBulletEx 0x2b41e38: exact original pool factory, shared
    // firing entry. Forest aim/cooldown and normal critical branch are restored;
    // original manager lifecycle and other weapon attack branches remain pending.
    public bool TrySpawnBulletEx(Vector3 pos,Vector3 dir,GunType type,float expRadius,float lifetime,
        CatGunner.Recovery.OriginalAmount dmg,string dmgStr,bool isCri)
    {
        var go=Polling_manager.instance.Object_Polling_Smart(0);
        if(go==null) return false;
        go.GetComponent<Bullet>().SpawnEx(GunNum,pos,dir,dmg,dmgStr,isCri,type,expRadius,EnemyLayer,lifetime);
        return true;
    }
}
