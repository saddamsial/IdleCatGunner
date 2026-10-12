using UnityEngine;

namespace CatGunner.Recovery
{
    // The active combat bridge orders forest movement after targeting, as in
    // native Cat.Update. Disabling targeting leaves this manual-only adapter
    // available for independent movement/physics acceptance.
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
        private void Update()
        {
            var combat=GetComponent<ForestCombatAcceptance>();
            if(combat!=null && combat.isActiveAndEnabled && combat.EnableTargeting) return;
            cat.HandleMovement();
        }
    }
}
