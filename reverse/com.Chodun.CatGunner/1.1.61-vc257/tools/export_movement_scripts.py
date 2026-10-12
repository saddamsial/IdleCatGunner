from pathlib import Path
import json,shutil
r=Path(__file__).resolve().parents[1]; p=r.parents[2]/'reconstruction/CatGunnerUnityClient'; s=p/'Assets/Recovery/Scripts'
assert not (s/'Cat.cs').exists(), 'First creation only; do not overwrite ongoing Cat restoration'
t=next(t for t in json.loads((r/'reports/resolved-type-schema.json').read_text()) if t['name']=='Cat' and t['image']=='Assembly-CSharp.dll')
allowed={'System.Single':'float','System.Int32':'int','System.Boolean':'bool','System.String':'string','UnityEngine.Vector3':'Vector3','UnityEngine.LayerMask':'LayerMask','UnityEngine.Transform':'Transform','UnityEngine.Transform[]':'Transform[]','UnityEngine.Rigidbody':'Rigidbody','UnityEngine.Animator':'Animator','UnityEngine.SpriteRenderer':'SpriteRenderer','UnityEngine.GameObject':'GameObject','UnityEngine.GameObject[]':'GameObject[]','UnityEngine.ParticleSystem':'ParticleSystem','FloatingJoystick':'FloatingJoystick'}
fields=[]; missing=[]
for f in t['fields']:
 if not f.get('serialization_visibility'):continue
 ty=allowed.get(f['signature']['name'])
 if ty:fields.append('    public '+ty+' '+f['name']+';')
 else:missing.append({'name':f['name'],'type':f['signature']['name']})
code='''using UnityEngine;

// Original Cat identity and movement methods. Full Cat.Update (auto move, AI,
// targeting and shooting) remains pending; a separately named acceptance bridge
// invokes HandleMovement so this slice does not pretend to restore that loop.
public sealed class Cat : MonoBehaviour
{
'''+ '\n'.join(fields)+'''
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
}
'''
(s/'Cat.cs').write_text(code)
shutil.copyfile(r/'assetripper-baseline/ExportedProject/Assets/Scripts/Assembly-CSharp/Cat.cs.meta',s/'Cat.cs.meta')
(r/'reports/cat-movement-field-restoration.json').write_text(json.dumps({'source':'level0-147400.json; exact metadata field names and public types','supported_serialized_fields':len(fields),'not_yet_supported':missing,'update_loop':'NOT restored; manual movement-only acceptance bridge','AutoMove':'original true retained, automatic movement pending'},indent=2)+'\n')
(s/'ForestMovementAcceptance.cs').write_text('''using UnityEngine;

namespace CatGunner.Recovery
{
    // Explicit movement-only acceptance adapter. Native Cat.Update is not yet
    // dependency-closed; original AutoMove remains serialized and unimplemented.
    [RequireComponent(typeof(Cat))]
    public sealed class ForestMovementAcceptance : MonoBehaviour
    {
        private Cat cat;
        private void Awake() => cat=GetComponent<Cat>();
        private void Start()
        {
            Cat.ApplyHandZ(cat.RightHand,130);
            Cat.ApplyHandZ(cat.LeftHand,130);
        }
        private void Update() => cat.HandleMovement();
    }
}
''')
