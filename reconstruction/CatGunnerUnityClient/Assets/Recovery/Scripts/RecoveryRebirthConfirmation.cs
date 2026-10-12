using UnityEngine;
// Runtime-only original-popup revision. Closing and reopening invalidates an
// in-flight local ad callback without changing original serialized art/events.
public sealed class RecoveryRebirthConfirmation : MonoBehaviour
{
    public int Revision {get;private set;}
    void OnDisable()=>Revision++;
}
