using UnityEngine;
// Explicit presentation adapter for ten frozen DOTween scale/rotation loops.
// Original timing/ease/loop parameters retained; no DOTween runtime substitute identity.
public sealed class RecoveryWeeklyUiTween : MonoBehaviour
{
 public int AnimationType,LoopType,EaseType;
 public float Duration=1,EndScale=1,EndRotation;
 public Vector3 SourceScale=Vector3.one,SourceEuler;
 private float start;
 private void OnEnable(){start=Time.time;ResetTransform();}
 private void Update(){float elapsed=Mathf.Max(0,Time.time-start)/Duration;float phase=elapsed-Mathf.Floor(elapsed);if(LoopType==1&&(Mathf.FloorToInt(elapsed)&1)!=0)phase=1-phase;float eased=EaseType==6?1-(1-phase)*(1-phase):phase;if(AnimationType==5)transform.localScale=Vector3.LerpUnclamped(SourceScale,Vector3.one*EndScale,eased);else if(AnimationType==4){float angle=Mathf.DeltaAngle(SourceEuler.z,EndRotation);transform.localEulerAngles=new Vector3(SourceEuler.x,SourceEuler.y,SourceEuler.z+angle*(LoopType==2?elapsed:eased));}}
 private void ResetTransform(){if(AnimationType==5)transform.localScale=SourceScale;else if(AnimationType==4)transform.localEulerAngles=SourceEuler;}
 private void OnDisable()=>ResetTransform();
}
