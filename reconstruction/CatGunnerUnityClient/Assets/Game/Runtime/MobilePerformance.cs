using UnityEngine;
namespace CatGunner.Runtime
{
    // Explicit local mobile budget, not an original native frame-rate claim.
    [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "RecoveryMobilePerformance")] public sealed class MobilePerformance : MonoBehaviour
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
