using UnityEngine;

namespace CatGunner.Recovery
{
    // Local presenter for source DOTweenAnimation 125065/123640. Both are
    // scaled-time InOutQuad, infinite Yoyo; SDK creation/autoKill is not restored.
    public sealed class RecoveryEcoTween : MonoBehaviour
    {
        public bool Scale;
        public float Duration;
        public Vector3 From, To;
        private float elapsed;
        private void OnEnable() { elapsed = 0; Apply(From); }
        private void OnDisable() => Apply(From);
        private void Update()
        {
            elapsed += Time.deltaTime;
            float phase = Mathf.PingPong(elapsed / Duration, 1);
            float ease = phase < .5f ? 2 * phase * phase : 1 - Mathf.Pow(-2 * phase + 2, 2) / 2;
            Apply(Vector3.LerpUnclamped(From, To, ease));
        }
        private void Apply(Vector3 value)
        {
            if (Scale) transform.localScale = value;
            else ((RectTransform)transform).anchoredPosition3D = value;
        }
    }
}
