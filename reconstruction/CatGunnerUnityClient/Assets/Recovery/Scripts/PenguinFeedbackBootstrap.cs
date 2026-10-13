using System.Collections;
using CatGunner.Recovery;
using UnityEngine;

// The scene owns static coverage; these three recovered screens are instantiated
// during client startup. No recurring hierarchy scan is needed during gameplay.
[DefaultExecutionOrder(220)]
public sealed class PenguinFeedbackBootstrap : MonoBehaviour
{
    private IEnumerator Start()
    {
        var client = GetComponent<RecoveryForestClient>();
        while (client != null && !client.ReadyForPlay) yield return null;
        if (client == null) yield break;
        var canvas = client.Slider.GetComponentInParent<Canvas>();
        foreach (var button in canvas.GetComponentsInChildren<UnityEngine.UI.Button>(true)) AttachButton(button);
        foreach (string path in new[] {
            "SafeArea/Gun_UI  (SafeArea)/Draw_Info_UI",
            "SafeArea/Gun_UI  (SafeArea)/GunCollection_UI",
            "LanguageSelection_UI" })
        {
            var root = canvas.transform.Find(path);
            if (root == null) continue;
            if (path == "LanguageSelection_UI")
            { AttachPopup(root.gameObject, (RectTransform)root, true); continue; }
            var content = root.Find("Panel") ?? root.Find("FeedbackContent");
            if (content != null) AttachPopup(root.gameObject, (RectTransform)content);
        }
    }
    public static PenguinButtonFeedback AttachButton(UnityEngine.UI.Button button)
    {
        var feedback = button.GetComponent<PenguinButtonFeedback>();
        if (feedback != null) return feedback;
        var sound = button.GetComponent<SFX_BtnScript>();
        var bounce = button.GetComponent<BounceBtn>();
        if (sound != null) sound.enabled = false;
        if (bounce != null) bounce.enabled = false;
        // A few imported buttons use the generic Bounce rather than BounceBtn.
        foreach (var animation in button.GetComponents<Bounce>()) animation.enabled = false;
        foreach (var animation in button.GetComponents<BounceStart>()) animation.enabled = false;
        feedback = button.gameObject.AddComponent<PenguinButtonFeedback>();
        if (sound != null) feedback.ClickSound = sound._sfx;
        string name = button.name.ToLowerInvariant();
        // Full-screen dismiss hit targets are backdrops, without button artwork.
        // Their built-in colour transition remains; don't open gaps in raycasts.
        feedback.AnimateScale = !name.Contains("background") && name != "touchtoexit";
        return feedback;
    }
    public static PenguinPopupFeedback AttachPopup(GameObject root, RectTransform content, bool fadeOnly = false)
    {
        var feedback = root.GetComponent<PenguinPopupFeedback>();
        if (feedback != null) return feedback;
        var bounce = content.GetComponent<BounceStart>();
        if (bounce != null) bounce.enabled = false;
        feedback = root.AddComponent<PenguinPopupFeedback>();
        feedback.Content = content;
        feedback.FadeOnly = fadeOnly;
        if (fadeOnly) feedback.FadeGroup = root.GetComponent<CanvasGroup>() ?? root.AddComponent<CanvasGroup>();
        return feedback;
    }
}
