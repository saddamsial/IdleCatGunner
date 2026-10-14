using UnityEngine;

// Original 65 gun presentation component contracts. Inventory/merge logic pending.
public sealed class Gun : MonoBehaviour
{
    public Transform Shoot_trans;
    public Transform[] Shoot_Random_trans;
    public ParticleSystem Shoot_particle;
}
