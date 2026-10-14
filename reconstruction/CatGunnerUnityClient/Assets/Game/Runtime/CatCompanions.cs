using System.Collections.Generic;
using UnityEngine;

// Ordinary forest AI from vc257 native state/movement bodies. Vector3 HFA
// arguments are reconstructed from ARM64 registers, not pseudocode X alone.
public sealed partial class Cat
{
    public enum CompanionState {Follow,Chase,AttackStay,Reposition,Assist}
    public CompanionState AIState {get;private set;}
    private float stateTimer,lagSeconds,speedMultiplier=1,fidgetTimer,fidgetInterval;
    private Vector3 fidgetOffset;
    private bool companionInitialized;
    private static readonly List<Vector3> breadcrumbs=new List<Vector3>();
    private static readonly Queue<(float time,Vector3 pos)> leaderHistory=new Queue<(float,Vector3)>();
    private static Vector3 lastRecordPosition;
    public static void ResetLeaderTrail(){breadcrumbs.Clear();leaderHistory.Clear();lastRecordPosition=Vector3.zero;}
    public void RecordLeaderTrail()
    {
        var position=transform.position;
        if(Vector3.Distance(position,lastRecordPosition)>=.5f)
        {breadcrumbs.Add(position);if(breadcrumbs.Count>100)breadcrumbs.RemoveAt(0);lastRecordPosition=position;}
        leaderHistory.Enqueue((Time.time,position));
        while(leaderHistory.Count>0&&Time.time-leaderHistory.Peek().time>2)leaderHistory.Dequeue();
    }
    private void InitializeCompanion()
    {
        if(companionInitialized)return;companionInitialized=true;
        Random.InitState(GetInstanceID());lagSeconds=Random.Range(.15f,.6f);speedMultiplier=Random.Range(.88f,1.12f);
        fidgetInterval=Random.Range(1.8f,3.5f);AtkCool_Now=Random.Range(0,.4f);stateTimer=0;_smoothVelocity=Vector3.zero;
        InitializeHandPose();
    }
    private Vector3 LaggedLeaderPosition()
    {
        var previous=instance!=null?instance.transform.position:transform.position;
        foreach(var record in leaderHistory){if(record.time>Time.time-lagSeconds)return previous;previous=record.pos;}
        return previous;
    }
    public CompanionState EvaluateCompanionState(float leaderDistance)
    {
        if(leaderDistance>FollowMaxDist)return CompanionState.Follow;
        if(nearObj==null)return instance!=null&&instance.nearObj!=null?CompanionState.Assist:CompanionState.Follow;
        float distance=Vector3.Distance(transform.position,nearHitPoint),margin=1+HysteresisMargin;
        if(AIState==CompanionState.Reposition&&distance<MinEnemyDist*margin)return CompanionState.Reposition;
        if(AIState!=CompanionState.Reposition&&distance<MinEnemyDist)return CompanionState.Reposition;
        if(AIState==CompanionState.AttackStay)return distance>AutoStopDistance*margin?CompanionState.Chase:CompanionState.AttackStay;
        if(distance<=AutoStopDistance)return CompanionState.AttackStay;
        return instance!=null&&Vector3.Distance(ApproachPosition(nearObj.transform.position,AutoStopDistance),instance.transform.position)<=FollowMaxDist?CompanionState.Chase:CompanionState.Follow;
    }
    private Vector3 ApproachPosition(Vector3 point,float distance)
    {var away=transform.position-point;away.y=0;if(away.sqrMagnitude<.001f)away=Vector3.back;return point+away.normalized*distance;}
    private bool CompanionPathClear(Vector3 from,Vector3 to)
    {
        var delta=to-from;delta.y=0;float distance=delta.magnitude;
        return distance<.01f||!Physics.BoxCast(Ray_trans.position,new Vector3(.3f,.4f,.3f),delta/distance,Quaternion.identity,distance,ObstacleLayer);
    }
    private Vector3 BreadcrumbTarget(Vector3 position)
    {
        if(breadcrumbs.Count==0)return position;
        int closest=0;float best=float.MaxValue;
        for(int i=0;i<breadcrumbs.Count;i++){float d=(breadcrumbs[i]-position).sqrMagnitude;if(d<best){closest=i;best=d;}}
        int next=Mathf.Min(closest+5,breadcrumbs.Count-1);
        return next!=closest?breadcrumbs[next]:instance!=null?instance.transform.position:position;
    }
    public void SmoothCompanionStop()
    {
        _smoothVelocity=Vector3.Lerp(_smoothVelocity,Vector3.zero,VelocitySmoothSpeed*Time.deltaTime);
        bool moving=_smoothVelocity.sqrMagnitude>=.01f;if(!moving)_smoothVelocity=Vector3.zero;
        rb.linearVelocity=new Vector3(_smoothVelocity.x,rb.linearVelocity.y,_smoothVelocity.z);anim.SetBool("Walk",moving);
    }
    private void SeparationDrift(float ratio)
    {
        var direction=SeparationForce;direction.y=0;if(direction.sqrMagnitude<.001f)return;direction.Normalize();
        var desired=direction*(moveSpeed*ratio*ScreenSpeedMultiplier(direction));
        _smoothVelocity=Vector3.Lerp(_smoothVelocity,desired,VelocitySmoothSpeed*Time.deltaTime);
        rb.linearVelocity=new Vector3(_smoothVelocity.x,rb.linearVelocity.y,_smoothVelocity.z);anim.SetBool("Walk",true);
    }
    private void MoveCompanionToward(Vector3 target)
    {
        var self=transform.position;if(!CompanionPathClear(self,target))target=BreadcrumbTarget(self);
        var delta=target-self;delta.y=0;float distance=delta.magnitude;var direction=delta.normalized;
        if(direction.sqrMagnitude<=.0001f){if(SeparationForce.sqrMagnitude>.01f)SeparationDrift(.5f);else SmoothCompanionStop();return;}
        float ratio=DecelerationRange>0&&distance<DecelerationRange?Mathf.Lerp(MinSpeedRatio,1,Mathf.SmoothStep(0,1,distance/DecelerationRange)):1;
        var velocity=direction*(ratio*moveSpeed*speedMultiplier*ScreenSpeedMultiplier(direction))+SeparationForce*moveSpeed;
        _smoothVelocity=Vector3.Lerp(_smoothVelocity,velocity,VelocitySmoothSpeed*Time.deltaTime);
        rb.linearVelocity=new Vector3(_smoothVelocity.x,rb.linearVelocity.y,_smoothVelocity.z);
        FaceAutoDirection(nearObj!=null?nearObj.transform.position-self:direction);anim.SetBool("Walk",true);
    }
    public void TickCompanion()
    {
        if(instance==null)return;InitializeCompanion();HandleRaycastTimer();UpdateSpreadState();
        stateTimer+=Time.deltaTime;var desired=EvaluateCompanionState(Vector3.Distance(transform.position,instance.transform.position));
        if(desired!=AIState&&stateTimer>=MinStateDuration){AIState=desired;stateTimer=0;}
        switch(AIState)
        {
            case CompanionState.Follow:
                var follow=LaggedLeaderPosition()+FormationOffset+fidgetOffset;
                if(nearObj!=null)FaceFromTarget();
                if(Vector3.Distance(transform.position,follow)<FollowIdealDist*.5f)
                {
                    if(SeparationForce.sqrMagnitude>.1f)SeparationDrift(.3f);else SmoothCompanionStop();
                    fidgetTimer+=Time.deltaTime;
                    if(fidgetTimer>=fidgetInterval){fidgetTimer=0;fidgetInterval=Random.Range(1.8f,3.5f);float angle=Random.Range(0,360f)*Mathf.Deg2Rad,radius=Random.Range(.3f,.8f);fidgetOffset=new Vector3(Mathf.Cos(angle)*radius,0,Mathf.Sin(angle)*radius);}
                }
                else MoveCompanionToward(follow);break;
            case CompanionState.Chase:
                if(nearObj!=null){var point=ApproachPosition(nearHitPoint,AutoStopDistance);if(Vector3.Distance(transform.position,point)<.5f)SmoothCompanionStop();else MoveCompanionToward(point);}break;
            case CompanionState.AttackStay:
                if(SeparationForce.sqrMagnitude>.3f)SeparationDrift(.4f);else SmoothCompanionStop();if(nearObj!=null)FaceFromTarget();break;
            case CompanionState.Reposition:
                if(nearObj!=null)MoveCompanionToward(ApproachPosition(nearHitPoint,MinEnemyDist+.5f));break;
            case CompanionState.Assist:
                if(instance.nearObj==null){SmoothCompanionStop();break;}
                var assist=ApproachPosition(instance.nearObj.transform.position,AutoStopDistance);
                var offset=assist-instance.transform.position;float max=FollowMaxDist*.85f;
                if(offset.magnitude>max)assist=instance.transform.position+offset.normalized*max;
                if(Vector3.Distance(transform.position,assist)<.5f)SmoothCompanionStop();else MoveCompanionToward(assist);break;
        }
        UpdateHandRotation();UpdateFaceRotation();TickProjectileAttackCooldown();
    }
}
