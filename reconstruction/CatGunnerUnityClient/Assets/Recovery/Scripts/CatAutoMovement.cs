using UnityEngine;

// Forest hero branches of the matching 1.1.61 native Cat methods. Other mode
// target providers and companion AI still require their own dependency closure.
public sealed partial class Cat
{
    private float _autoSearchTimer;
    public Transform AutoTarget => _autoTarget;

    // Cat.Update 0x2b3a3a8: the movement decision follows targeting/spread and
    // precedes hand/face/cooldown. An input exactly at the threshold is manual.
    public void TickForestMovement()
    {
        var input=joystick!=null?joystick.Direction:Vector2.zero;
        if(!AutoMove || input.sqrMagnitude>=MovementThresholdSquared)
        {
            ClearAutoTarget();HandleMovement();
        }
        else HandleAutoMove();
    }

    // 0x2b3af70: does not change Rigidbody velocity or the attack lock.
    public void ClearAutoTarget()
    {
        _autoTarget=null;_autoSearchTimer=0;_hasOffscreenMonster=false;
        if(_autoSmoothVelocity.sqrMagnitude>.001f) _autoSmoothVelocity=Vector3.zero;
    }

    // 0x2b38be8; ARM64 s0/s2 are the rotated X/Z, not the quaternion fields.
    public static float ScreenSpeedMultiplier(Vector3 worldDirection)
    {
        var screen=CamCorrection*worldDirection;
        const float projection=.5773502588272095f;
        float length=Mathf.Sqrt(screen.x*screen.x+screen.z*screen.z*projection*projection);
        return length<.0001f?1:(1/ScreenSpeedK)/length;
    }

    // 0x2b3f3d4; the native smoothing constant is 8, independently of the AI
    // VelocitySmoothSpeed field. Both branches preserve the current Y velocity.
    public void AutoSmoothStop()
    {
        _autoSmoothVelocity=Vector3.Lerp(_autoSmoothVelocity,Vector3.zero,Time.deltaTime*8);
        if(_autoSmoothVelocity.sqrMagnitude<.01f) _autoSmoothVelocity=Vector3.zero;
        ApplyAutoVelocity();
    }
    private void ApplyAutoVelocity() =>
        rb.linearVelocity=new Vector3(_autoSmoothVelocity.x,rb.linearVelocity.y,_autoSmoothVelocity.z);
    private void AutoMoveAlong(Vector3 direction,float ratio)
    {
        var velocity=direction*(moveSpeed*ratio*ScreenSpeedMultiplier(direction));
        _autoSmoothVelocity=Vector3.Lerp(_autoSmoothVelocity,velocity,Time.deltaTime*8);
        ApplyAutoVelocity();
        FaceAutoDirection(nearObj!=null?nearObj.transform.position-transform.position:direction);
        anim.SetBool("Walk",true);
    }
    private void FaceAutoDirection(Vector3 direction)
    {
        isFacingLeft=(CamCorrection*direction).x<=0;
        Pivot_trans.localEulerAngles=isFacingLeft?LeftAngle:RightAngle;
    }
    private void StopAutoAndFace()
    {
        AutoSmoothStop();
        FaceAutoDirection((nearObj!=null?nearObj.transform:_autoTarget).position-transform.position);
        anim.SetBool("Walk",false);
    }

    // Cat.HandleAutoMove 0x2b3c100, original UI mode 0 forest branch.
    public void HandleAutoMove()
    {
        if(CatGunner.Recovery.RecoveryForestClient.Instance!=null&&CatGunner.Recovery.RecoveryForestClient.Instance.Mode==4){HandleMonsterAutoMove();return;}
        bool speedRun=CatGunner.Recovery.RecoveryForestClient.Instance!=null&&CatGunner.Recovery.RecoveryForestClient.Instance.Mode==1;
        bool mine=CatGunner.Recovery.RecoveryForestClient.Instance!=null&&CatGunner.Recovery.RecoveryForestClient.Instance.Mode==2;
        bool raid=CatGunner.Recovery.RecoveryForestClient.Instance!=null&&CatGunner.Recovery.RecoveryForestClient.Instance.Mode==5;
        bool boss=CatGunner.Recovery.RecoveryForestClient.Instance!=null&&CatGunner.Recovery.RecoveryForestClient.Instance.Mode==3;
        _autoSearchTimer+=Time.deltaTime;
        if((speedRun||boss||raid)&&nearObj!=null){_autoTarget=nearObj.transform;_autoSearchTimer=0;}
        if(_autoSearchTimer>=AutoSearchInterval || _autoTarget==null)
        {
            _autoSearchTimer=0;_autoTarget=raid?Raid_manager.instance._boss.transform:(boss?FindBossTarget():(mine?FindNearestOreMine():(speedRun?FindNearestTreeSpeedRun():FindNearestTreeByGrid())));
        }
        if(_autoTarget!=null && !_autoTarget.gameObject.activeInHierarchy)
        {
            _autoTarget=null;_autoTarget=raid?Raid_manager.instance._boss.transform:(boss?FindBossTarget():(mine?FindNearestOreMine():(speedRun?FindNearestTreeSpeedRun():FindNearestTreeByGrid())));
        }
        if(_autoTarget==null)
        {
            AutoSmoothStop();anim.SetBool("Walk",false);return;
        }
        var self=transform.position;
        var target=_autoTarget.position;
        var point=nearObj!=null?nearHitPoint:target;
        float distance=Vector2.Distance(new Vector2(self.x,self.z),new Vector2(point.x,point.z));
        if(distance<=AutoStopDistance)
        {
            if(distance>=MinEnemyDist || nearObj==null) {StopAutoAndFace();return;}
            var away=new Vector3(self.x-nearHitPoint.x,0,self.z-nearHitPoint.z);
            if(away.sqrMagnitude<.001f) away=Vector3.back;
            away=away.normalized;
            var retreat=new Vector3(nearHitPoint.x,self.y,nearHitPoint.z)+away*(MinEnemyDist+.5f);
            var delta=retreat-self;delta.y=0;
            if(delta.magnitude<=.05f) {StopAutoAndFace();return;}
            AutoMoveAlong(delta.normalized,1);return;
        }
        float offset=Mathf.Lerp(0,AutoZOffsetMax,Mathf.InverseLerp(AutoZOffsetMinDist,AutoZOffsetFullDist,distance));
        float cap=AutoStopDistance*.9f;
        if(Mathf.Abs(offset)>cap) offset*=cap/Mathf.Abs(offset);
        var desired=new Vector3(target.x,self.y,target.z+offset)-self;
        if(desired.magnitude<.3f) {AutoSmoothStop();anim.SetBool("Walk",false);return;}
        float ratio=1;
        if(distance<AutoStopDistance+AutoDecelerationRange)
        {
            float t=Mathf.Clamp01((distance-AutoStopDistance)/AutoDecelerationRange);
            float smooth=t*t*3-t*t*(t+t);
            ratio=smooth+(1-smooth)*.2f;
        }
        AutoMoveAlong(desired.normalized,ratio);
    }
    public Transform FindBossTarget()=>Boss_manager.instance._boss.transform;
    public Transform FindNearestTreeSpeedRun()
    {
        if(SpeedRun_manager.instance==null)return null;Transform target=null;float best=float.MaxValue;var self=transform.position;
        foreach(var tree in SpeedRun_manager.instance.Tree_Alive)
        {if(tree==null||!tree.gameObject.activeInHierarchy||tree.enemy==null||!tree.enemy.gameObject.activeInHierarchy)continue;var delta=tree.transform.position-self;float score=delta.x*delta.x+delta.z*delta.z;if(score<best){best=score;target=tree.transform;}}
        return target;
    }

    // Cat.FindNearestTreeByGrid 0x2b3ecd8. Stable insertion order preserves
    // native ties; grid Z lower bounds prune the search before per-tree scoring.
    public Transform FindNearestTreeByGrid()
    {
        var manager=Tree_manager.instance;
        if(manager==null) return null;
        var grids=manager.Tree_Grid_list;
        if(grids.Length==0) return null;
        var self=transform.position;
        int count=0;
        foreach(var grid in grids) if(grid!=null && grid.gameObject.activeInHierarchy) count++;
        if(count==0) return null;
        var indices=new int[count];var bounds=new float[count];int next=0;
        for(int i=0;i<grids.Length;i++)
        {
            var grid=grids[i];if(grid==null || !grid.gameObject.activeInHierarchy) continue;
            float z=grid.transform.position.z;
            indices[next]=i;bounds[next]=self.z<z?z-self.z:(self.z>z+45?self.z-(z+45):0);next++;
        }
        for(int i=1;i<count;i++)
        {
            int index=indices[i],j=i-1;float bound=bounds[i];
            while(j>=0 && bounds[j]>bound) {bounds[j+1]=bounds[j];indices[j+1]=indices[j];j--;}
            bounds[j+1]=bound;indices[j+1]=index;
        }
        Transform nearest=null;float best=float.MaxValue;
        float radiusSquared=AutoNearbyRadius*AutoNearbyRadius;
        for(int rank=0;rank<count;rank++)
        {
            if(bounds[rank]>best) break;
            var trees=grids[indices[rank]].Tree_list;if(trees==null) continue;
            foreach(var tree in trees)
            {
                if(tree==null || !tree.gameObject.activeInHierarchy || tree.enemy==null || !tree.enemy.gameObject.activeInHierarchy) continue;
                float score=ForestTargetScore(tree.transform.position,self,radiusSquared);
                if(score<best) {best=score;nearest=tree.transform;}
            }
        }
        if(manager.Level_Now==4 && manager.Boss_tree.gameObject.activeInHierarchy &&
            ForestTargetScore(manager.Boss_tree.transform.position,self,radiusSquared)<best)
            nearest=manager.Boss_tree.transform;
        return nearest;
    }
    private float ForestTargetScore(Vector3 point,Vector3 self,float radiusSquared)
    {
        float x=point.x-self.x,z=point.z-self.z;
        float square=x*x+z*z,score=Mathf.Sqrt(square);
        if(square>radiusSquared) score+=AutoZWeight*Mathf.Max(0,z);
        return score;
    }
}
