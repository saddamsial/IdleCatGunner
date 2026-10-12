using UnityEngine;

namespace CatGunner.Recovery
{
    // Acceptance harness, not the original Gamemanager. It starts only the
    // recovered forest pool and supplies a separate gate for tree damage tests.
    public sealed class ForestRuntimeAcceptance : MonoBehaviour
    {
        public static bool IsGaming {get;set;}
        private void Start()
        {
            IsGaming=true;
            Tree_manager.instance.Map_Batch();
        }
        private void OnDisable() => IsGaming=false;
    }
}
