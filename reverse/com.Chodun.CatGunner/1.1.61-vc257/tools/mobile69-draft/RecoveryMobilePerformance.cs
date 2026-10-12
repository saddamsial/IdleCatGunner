using UnityEngine;
namespace CatGunner.Recovery
{
    // Explicit local mobile budget, not an original native frame-rate claim.
    public sealed class RecoveryMobilePerformance : MonoBehaviour
    {
        void Awake()
        {
            if(Application.isMobilePlatform)Application.targetFrameRate=60;
        }
    }
}
