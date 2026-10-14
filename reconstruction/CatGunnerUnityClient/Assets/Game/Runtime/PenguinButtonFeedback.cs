using UnityEngine;
using UnityEngine.EventSystems;

// Shared presentation feedback, without replacing any Button business callback.
[DisallowMultipleComponent]
[RequireComponent(typeof(UnityEngine.UI.Button))]
public sealed class PenguinButtonFeedback : MonoBehaviour, IPointerDownHandler, IPointerUpHandler,
    IPointerExitHandler, ISubmitHandler
{
    public SfxType ClickSound = SfxType.Button;
    public bool AnimateScale = true;
    private UnityEngine.UI.Button button;
    private Vector3 restScale;
    private bool pressed;
    private bool animating;
    private float elapsed;
    private Vector3 from;
    private Vector3 to;
    private float duration;
    public int ClickCount { get; private set; }

    private void Awake()
    {
        button = GetComponent<UnityEngine.UI.Button>();
        restScale = transform.localScale;
    }
    private void Start() => button.onClick.AddListener(Clicked);
    private void OnEnable() { pressed = false; animating = false; }
    private void Clicked()
    {
        // A close/navigation callback may already have deactivated this button.
        if (!button.interactable) return;
        ClickCount++;
        Sound_manager.instance?.PlayButtonFeedback(ClickSound);
        if (isActiveAndEnabled) Animate(restScale, .16f);
    }
    public void OnPointerDown(PointerEventData e)
    {
        if (e.button != PointerEventData.InputButton.Left || !button.IsInteractable() || !button.IsActive()) return;
        pressed = true; Animate(restScale * .92f, .055f);
    }
    public void OnPointerUp(PointerEventData e)
    {
        if (e.button != PointerEventData.InputButton.Left || !pressed) return;
        pressed = false; Animate(restScale, .16f);
    }
    public void OnPointerExit(PointerEventData e)
    { if (pressed) { pressed = false; Animate(restScale, .12f); } }
    public void OnSubmit(BaseEventData e)
    { if (AnimateScale && button.IsInteractable() && button.IsActive()) { transform.localScale = restScale * .92f; Animate(restScale, .16f); } }
    private void Animate(Vector3 target, float seconds)
    { if (!AnimateScale) return; from = transform.localScale; to = target; duration = seconds; elapsed = 0; animating = true; }
    private void Update()
    {
        // Releasing a lock while held must not leave a compressed visual.
        if (pressed && !button.IsInteractable()) { pressed = false; Animate(restScale, .12f); }
        if (!animating) return;
        elapsed += Time.unscaledDeltaTime;
        float t = Mathf.Clamp01(elapsed / duration);
        float eased = pressed ? 1 - (1 - t) * (1 - t) : EaseOutBack(t);
        transform.localScale = Vector3.LerpUnclamped(from, to, eased);
        if (t >= 1) { transform.localScale = to; animating = false; }
    }
    private static float EaseOutBack(float t)
    { float x = t - 1; return 1 + 2.2f * x * x * x + 1.2f * x * x; }
    private void OnDisable() { pressed = animating = false; transform.localScale = restScale; }
    private void OnDestroy() { if (button != null) button.onClick.RemoveListener(Clicked); }
}
