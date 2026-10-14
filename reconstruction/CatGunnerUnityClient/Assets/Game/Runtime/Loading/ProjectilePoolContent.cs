using UnityEngine;
namespace CatGunner.Runtime
{
    // Owns all internal pool references inside the reusable prefab.
    public sealed class ProjectilePoolContent : MonoBehaviour
    {
        public Object_struct[] Pools;
    }
}
