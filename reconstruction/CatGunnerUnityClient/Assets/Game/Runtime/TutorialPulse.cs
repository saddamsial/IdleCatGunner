using UnityEngine;

namespace CatGunner.Runtime
{
    // Local presenter for the three original DOTweenAnimation scale records.
    // Source Ease6=OutQuad, LoopType1=Yoyo, duration1, endScale1.2, scaled time.
    // SDK creation/autoKill lifecycle is not reconstructed; reopening resets here.
    [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "RecoveryTutorialPulse")] public sealed class TutorialPulse : MonoBehaviour
    {
        public float Duration=1,EndScale=1.2f;
        public Vector3 SourceScale=Vector3.one;
        private float elapsed;
        private void OnEnable(){elapsed=0;transform.localScale=SourceScale;}
        private void Update()
        {
            elapsed+=Time.deltaTime;float phase=Mathf.PingPong(elapsed/Duration,1);
            float ease=1-(1-phase)*(1-phase);transform.localScale=Vector3.LerpUnclamped(SourceScale,Vector3.one*EndScale,ease);
        }
        private void OnDisable(){transform.localScale=SourceScale;}
    }
}
