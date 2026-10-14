using UnityEngine;

// Animate only the content; the full-screen backdrop keeps its raycast coverage.
[DisallowMultipleComponent]
public sealed class PenguinPopupFeedback : MonoBehaviour
{
    public RectTransform Content;
    public bool PlayOpenSound = true;
    public Vector3 PresentationScale = Vector3.one;
    public bool FadeOnly;
    public CanvasGroup FadeGroup;
    private Vector3 restScale;
    private float restAlpha;
    private bool initialized;
    private bool animating;
    private float elapsed;
    public int OpenCount { get; private set; }
    private void Awake() => Initialize();
    private void Initialize()
    {
        if (initialized || Content == null) return;
        restScale = Content.localScale;
        restAlpha = FadeGroup != null ? FadeGroup.alpha : 1f;
        initialized = true;
    }
    private void OnEnable()
    {
        Initialize(); if (!initialized) return;
        OpenCount++; elapsed = 0; animating = true;
        if (FadeOnly && FadeGroup != null) FadeGroup.alpha = 0;
        else Content.localScale = Vector3.Scale(restScale, PresentationScale) * .86f;
        if (PlayOpenSound) Sound_manager.instance?.PlaySfx(SfxType.Pop);
    }
    private void Update()
    {
        if (!animating || Content == null) return;
        elapsed += Time.unscaledDeltaTime;
        float t = Mathf.Clamp01(elapsed / .24f);
        float x = t - 1;
        float eased = 1 + 2.15f * x * x * x + 1.15f * x * x;
        if (FadeOnly && FadeGroup != null) FadeGroup.alpha = restAlpha * (1 - (1 - t) * (1 - t));
        else Content.localScale = Vector3.Scale(restScale, PresentationScale) * Mathf.LerpUnclamped(.86f, 1f, eased);
        if (t >= 1) { Content.localScale = Vector3.Scale(restScale, PresentationScale); animating = false; }
    }
    public void SetPresentationScale(Vector3 scale)
    {
        PresentationScale = scale;
        if (!initialized || Content == null || FadeOnly) return;
        float t = Mathf.Clamp01(elapsed / .24f);
        float x = t - 1;
        float eased = 1 + 2.15f * x * x * x + 1.15f * x * x;
        Content.localScale = Vector3.Scale(restScale, scale) *
            (animating ? Mathf.LerpUnclamped(.86f, 1f, eased) : 1);
    }
    private void OnDisable()
    { animating = false; if (initialized && Content != null) Content.localScale = Vector3.Scale(restScale, PresentationScale); if (initialized && FadeGroup != null) FadeGroup.alpha = restAlpha; }
}
