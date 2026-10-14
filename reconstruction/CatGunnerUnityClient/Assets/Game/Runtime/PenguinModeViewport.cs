using System;
using UnityEngine;

namespace CatGunner.Runtime
{
    // Fit the authored mode cards and offers as one composition on shorter screens.
    // Keep each native parent and name so controller lookups and button bindings survive.
    [DefaultExecutionOrder(500)]
    [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "PenguinModeViewport")] public sealed class PenguinModeViewport : MonoBehaviour
    {
        [Serializable]
        public struct Card
        {
            public RectTransform Rect;
            public Vector2 Position;
            public Vector3 Scale;
        }
        public Card[] Cards = Array.Empty<Card>();
        public Vector2 ReferenceSize = new Vector2(1080, 1920);
        RectTransform root;
        Vector2 previousSize = new Vector2(-1, -1);
        void OnEnable() { root = (RectTransform)transform; previousSize = new Vector2(-1, -1); }
        void LateUpdate()
        {
            var size = root.rect.size;
            if (size == previousSize || size.x <= 0 || size.y <= 0) return;
            previousSize = size;
            float scale = Mathf.Min(1, size.x / ReferenceSize.x, size.y / ReferenceSize.y);
            foreach (var card in Cards)
            {
                if (card.Rect == null) continue;
                card.Rect.anchoredPosition = card.Position * scale;
                var popup = GetComponent<PenguinPopupFeedback>();
                if (popup != null && popup.Content == card.Rect && !popup.FadeOnly)
                {
                    popup.SetPresentationScale(Vector3.one * scale);
                    continue;
                }
                var bounce = card.Rect.GetComponent<BounceStart>();
                if (bounce != null)
                {
                    bounce.PresentationScale = card.Scale * scale;
                    if (!bounce.isActiveAndEnabled || bounce.time > bounce._upSizeTime) card.Rect.localScale = bounce.PresentationScale;
                }
                else card.Rect.localScale = card.Scale * scale;
            }
        }
        void OnDisable()
        {
            foreach (var card in Cards)
            {
                if (card.Rect == null) continue;
                card.Rect.anchoredPosition = card.Position;
                var popup = GetComponent<PenguinPopupFeedback>();
                if (popup != null && popup.Content == card.Rect) popup.SetPresentationScale(Vector3.one);
                var bounce = card.Rect.GetComponent<BounceStart>();
                if (bounce != null) bounce.PresentationScale = card.Scale;
                card.Rect.localScale = card.Scale;
            }
        }
    }
}
