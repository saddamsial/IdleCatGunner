using UnityEngine;
using UnityEngine.EventSystems;

// Equipped slots are custom pointer targets, rather than uGUI Buttons.
// Existing inventory click/drag callbacks continue to own all gameplay effects.
[DisallowMultipleComponent]
public sealed class PenguinSlotFeedback : MonoBehaviour, IPointerDownHandler, IPointerUpHandler,
    IPointerExitHandler, IPointerClickHandler
{
    private Gun_Slot gun;
    private Pet_Slot pet;
    private Vector3 rest;
    private Vector3 from;
    private bool pressed, animating;
    private float elapsed;
    private void Awake() { gun = GetComponent<Gun_Slot>(); pet = GetComponent<Pet_Slot>(); rest = transform.localScale; }
    private bool Available => gun != null ? Gun_manager.instance != null && Gun_manager.instance.Selected_items[gun.SlotNum] >= 0 :
        pet != null && Pet_manager.instance != null && Pet_manager.instance.Inventory.State.Pet_Selected_items[pet.SlotNum] >= 0;
    public void OnPointerDown(PointerEventData e)
    { if (e.button == PointerEventData.InputButton.Left && Available) Begin(true); }
    public void OnPointerUp(PointerEventData e)
    { if (e.button == PointerEventData.InputButton.Left && pressed) Begin(false); }
    public void OnPointerExit(PointerEventData e) { if (pressed) Begin(false); }
    public void OnPointerClick(PointerEventData e)
    { if (e.button == PointerEventData.InputButton.Left && !e.dragging && Available) Sound_manager.instance?.PlayButtonFeedback(SfxType.Select); }
    private void Begin(bool down) { pressed = down; from = transform.localScale; elapsed = 0; animating = true; }
    private void Update()
    {
        if (pressed && !Available) Begin(false);
        if (!animating) return;
        elapsed += Time.unscaledDeltaTime; float t = Mathf.Clamp01(elapsed / (pressed ? .055f : .16f));
        float x = t - 1; float ease = pressed ? 1 - (1 - t) * (1 - t) : 1 + 2.2f * x*x*x + 1.2f*x*x;
        transform.localScale = Vector3.LerpUnclamped(from, rest * (pressed ? .92f : 1), ease);
        if (t >= 1) animating = false;
    }
    private void OnDisable() { pressed = animating = false; transform.localScale = rest; }
}
