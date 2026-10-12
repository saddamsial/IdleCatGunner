using UnityEngine;
namespace CatGunner.Recovery
{
    // Explicit local mobile budget, not an original native frame-rate claim.
    public sealed class RecoveryMobilePerformance : MonoBehaviour
    {
        int priorSleepTimeout;
        void OnEnable()
        {
            priorSleepTimeout=Screen.sleepTimeout;
            if(Application.isMobilePlatform){Application.targetFrameRate=60;Screen.sleepTimeout=SleepTimeout.NeverSleep;}
        }
        void OnApplicationPause(bool paused)
        {
            if(Application.isMobilePlatform)Screen.sleepTimeout=paused?priorSleepTimeout:SleepTimeout.NeverSleep;
        }
        void OnDisable(){if(Application.isMobilePlatform)Screen.sleepTimeout=priorSleepTimeout;}
    }
}
