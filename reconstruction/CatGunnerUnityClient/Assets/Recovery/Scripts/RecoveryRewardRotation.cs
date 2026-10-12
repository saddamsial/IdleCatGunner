using UnityEngine;

// Local presentation of the nine original Rotate/Fast/Linear/Incremental loops.
// QuaternionPlugin.SetChangeValue retains signed +/-180 ties (unlike DeltaAngle).
public sealed class RecoveryRewardRotation : MonoBehaviour
{
    public int OriginalComponent;
    public float Duration = 1, EndRotation;
    public Vector3 SourceEuler;
    float started, change;
    void OnEnable()
    {
        started = Time.time; transform.localEulerAngles = SourceEuler;
        change = EndRotation - SourceEuler.z;
        if (Mathf.Abs(change) > 180) change += change < 0 ? 360 : -360;
    }
    void Update() => transform.localEulerAngles = new Vector3(SourceEuler.x, SourceEuler.y, SourceEuler.z + change * Mathf.Max(0, Time.time - started) / Duration);
    void OnDisable() => transform.localEulerAngles = SourceEuler;
}
