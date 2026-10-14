using System;
using System.Collections.Generic;
using System.Reflection;
using System.Text.RegularExpressions;
using CatGunner.Recovery;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

// Presentation adapter: original layout, input targets, prices and progression
// stay owned by the recovered controllers. Assets and palettes are reversible.
[DefaultExecutionOrder(190)]
public sealed class PenguinUiTheme : MonoBehaviour
{
    public bool StaticUiBaked;
    public Sprite Panel, Fill, Outline, Circle, Gear, Flipper;
    public Sprite Portrait, Coin, Shop, Penguin, Win, Fail, Rest;
    public Texture2D SnowPattern, IceStripe;
    public Sprite[] OriginalOutlineSprites = Array.Empty<Sprite>();
    private readonly List<Action> restore = new List<Action>();
    private readonly List<Material> materials = new List<Material>();
    private readonly Dictionary<Sprite, Sprite> replacements = new Dictionary<Sprite, Sprite>();
    private readonly Dictionary<Material, Material> textMaterials = new Dictionary<Material, Material>();
    private readonly Dictionary<TextMeshProUGUI, string[]> themedText = new Dictionary<TextMeshProUGUI, string[]>();
    private readonly HashSet<Transform> headerRoots = new HashSet<Transform>();
    private readonly HashSet<Image> borderedPanels = new HashSet<Image>();
    private Transform canvasRoot;
    private Image[] images;
    private TextMeshProUGUI[] texts;
    private RecoveryForestClient client;
    private bool applied;
    public int StyledImageCount { get; private set; }
    public int StyledTextCount { get; private set; }
    public static Color Navy => new Color32(24, 62, 90, 255);
    public static Color Ice => new Color32(215, 242, 251, 255);
    public static Color Blue => new Color32(53, 169, 223, 255);
    public static Color TextInk => new Color32(37, 83, 115, 255);
    public static Color MutedInk => new Color32(58, 98, 128, 255);
    public static Color DisabledInk => new Color32(180, 210, 227, 255);
    public static Color ProgressBlue => new Color32(34, 121, 165, 255);
    public static Color HeaderBlue => new Color32(43, 109, 143, 255);
    public static Color Orange => new Color32(255, 178, 76, 255);

    private void Start() { if (!StaticUiBaked) Apply(); }
    private void OnEnable() { if (!StaticUiBaked && client != null && !applied) Apply(); }
    private void Apply()
    {
        if (applied || Panel == null) return;
        client = GetComponent<RecoveryForestClient>();
        var canvas = client.Slider.GetComponentInParent<Canvas>();
        canvasRoot = canvas.transform;
        images = canvas.GetComponentsInChildren<Image>(true);
        foreach (var component in canvas.GetComponentsInChildren<MonoBehaviour>(true))
        {
            if (component == null || component is Graphic || component is Selectable) continue;
            foreach (var field in component.GetType().GetFields(BindingFlags.Public | BindingFlags.Instance))
            {
                // Skin_Colors also tint the gameplay hand; keep the approved character.
                if (component is Skin_manager && field.Name == "Skin_Colors") continue;
                // Grade identity is gameplay information: retain all native hues.
                if (field.Name == "Degree_Colors") continue;
                if (field.FieldType == typeof(Color))
                {
                    var old = (Color)field.GetValue(component);
                    restore.Add(() => { if (component != null) field.SetValue(component, old); });
                    field.SetValue(component, Palette(old));
                }
                else if (field.FieldType == typeof(Color[]))
                {
                    var old = (Color[])field.GetValue(component); if (old == null) continue;
                    var next = Array.ConvertAll(old, Palette);
                    restore.Add(() => { if (component != null) field.SetValue(component, old); });
                    field.SetValue(component, next);
                }
                else if (field.FieldType == typeof(Sprite[]) && component.GetType().Name.StartsWith("Relic_"))
                {
                    var old = (Sprite[])field.GetValue(component); if (old == null) continue;
                    var next = Array.ConvertAll(old, s => IsPanel(s) ? Panel : s);
                    restore.Add(() => { if (component != null) field.SetValue(component, old); });
                    field.SetValue(component, next);
                }
            }
        }
        var skin = canvas.GetComponentInChildren<Skin_manager>(true);
        if (skin != null && GetComponent<PenguinFullReskin>()?.enabled != true) foreach (var sprite in skin.Skin_sprites) if (sprite != null) replacements[sprite] = Penguin;
        foreach (var image in images)
        {
            var oldSprite = image.sprite; var oldColor = image.color; var oldType = image.type;
            var oldAspect = image.preserveAspect; var oldEnabled = image.enabled;
            restore.Add(() => { if (image == null) return; image.sprite = oldSprite; image.color = oldColor;
                image.type = oldType; image.preserveAspect = oldAspect; image.enabled = oldEnabled; });
            string path = PathOf(image.transform, canvas.transform);
            if (path.Contains("Loading_UI/Background/Cat/Cat_Pivot/"))
            {
                image.enabled = false; continue;
            }
            StyleImage(image, path); StyledImageCount++;
        }
        foreach (var graphic in canvas.GetComponentsInChildren<SlicedFilledImage>(true))
        {
            var sprite = graphic.sprite; var color = graphic.color;
            restore.Add(() => { if (graphic != null) { graphic.sprite = sprite; graphic.color = color; } });
            graphic.sprite = Fill; graphic.color = ProgressColor(color);
        }
        foreach (var graphic in canvas.GetComponentsInChildren<RawImage>(true))
        {
            var texture = graphic.texture; var color = graphic.color;
            restore.Add(() => { if (graphic != null) { graphic.texture = texture; graphic.color = color; } });
            if (texture != null && !(texture is RenderTexture) && (texture.name == "Cat_Foot" || texture.name == "Field")) graphic.texture = SnowPattern;
            else if (texture != null && (texture.name == "Hatch" || texture.name == "Pattern")) graphic.texture = IceStripe;
            graphic.color = Palette(color);
            if (graphic.GetComponentInParent<SlicedFilledImage>(true) != null) graphic.color = new Color(1, 1, 1, color.a * .18f);
        }
        texts = canvas.GetComponentsInChildren<TextMeshProUGUI>(true);
        foreach (var text in texts)
        {
            var original = text.fontSharedMaterial; var color = text.color;
            restore.Add(() => { if (text != null) { text.fontSharedMaterial = original; text.color = color; } });
            if (original != null)
            {
                if (!textMaterials.TryGetValue(original, out var themed))
                {
                    themed = new Material(original) { name = original.name + " Penguin UI" };
                    if (themed.HasProperty(ShaderUtilities.ID_OutlineColor)) themed.SetColor(ShaderUtilities.ID_OutlineColor, Navy);
                    textMaterials.Add(original, themed); materials.Add(themed);
                }
                text.fontSharedMaterial = themed;
            }
            bool outlined = original != null && original.HasProperty(ShaderUtilities.ID_OutlineWidth) && original.GetFloat(ShaderUtilities.ID_OutlineWidth) > .01f;
            text.color = TextColor(text, color, outlined);
            ThemeWording(text);
            StyledTextCount++;
        }
        foreach (var button in canvas.GetComponentsInChildren<Button>(true))
        {
            var old = button.colors; var next = old;
            next.highlightedColor = new Color(.88f, .97f, 1); next.pressedColor = new Color(.65f, .84f, .94f);
            next.disabledColor = new Color(.64f, .74f, .80f, old.disabledColor.a);
            restore.Add(() => { if (button != null) button.colors = old; }); button.colors = next;
        }
        var loading = client.LoadingUI.transform.Find("Background");
        if (loading != null)
        {
            var go = new GameObject("Penguin loading mascot", typeof(RectTransform), typeof(Image));
            var rt = (RectTransform)go.transform; rt.SetParent(loading, false);
            rt.sizeDelta = new Vector2(170, 205); rt.anchoredPosition = new Vector2(0, 150);
            var nativeAnimation=loading.Find("Cat").GetComponent<Animator>();
            if(nativeAnimation!=null)
            {
                bool wasEnabled=nativeAnimation.enabled;nativeAnimation.enabled=false;
                restore.Add(()=>{if(nativeAnimation!=null)nativeAnimation.enabled=wasEnabled;});
            }
            go.AddComponent<PenguinLoadingMascot>().Configure(canvas.rootCanvas,
                (RectTransform)loading,(RectTransform)loading.Find("Cat/Loading_Txt"),
                (RectTransform)loading.Find("Cat/Image"),PenguinLoadingMascot.Motion.Walking,Penguin);
            var image = go.GetComponent<Image>(); image.sprite = Penguin; image.preserveAspect = true; image.raycastTarget = false;
            restore.Add(() => { if (go != null) Destroy(go); });
        }
        var setting=canvas.GetComponentInChildren<Setting>(true);
        if(setting!=null&&setting.EcoCat_img!=null)
        {
            foreach(var tween in setting.EcoPanel_obj.GetComponentsInChildren<RecoveryEcoTween>(true))
            {
                bool wasEnabled=tween.enabled;tween.enabled=false;
                restore.Add(()=>{if(tween!=null)tween.enabled=wasEnabled;});
            }
            var actor=setting.EcoCat_img.gameObject.AddComponent<PenguinLoadingMascot>();
            var backdrop=(RectTransform)setting.EcoPanel_obj.transform.Find("Background");
            actor.Configure(canvas.rootCanvas,backdrop,(RectTransform)backdrop.Find("Loading_Txt"),
                (RectTransform)backdrop.Find("Shadow"),PenguinLoadingMascot.Motion.Battling,Penguin);
            restore.Add(()=>{if(actor!=null){actor.enabled=false;Destroy(actor);}});
        }
        foreach (var upgrade in client.UpgradePanels)
        {
            upgrade.Fill_Colors = new[] { Blue, Orange };
            upgrade.Panel_Colors = new Color[] { new Color32(45, 99, 130, 255), new Color32(74, 123, 159, 255) };
            bool buff = client.ReadyForPlay && client.BuffMultiplier(Upgrade_Ingame.ToBuffType(upgrade.type)) > 1;
            upgrade.Fill.color = upgrade.Fill_Colors[buff ? 1 : 0]; upgrade.Panel_img.color = upgrade.Panel_Colors[buff ? 1 : 0];
        }
        foreach(var hand in new[]{client.Tutorial.CatHand_Upgrade,client.Tutorial.CatHand_Challenge,client.Tutorial.CatHand_GunOpen,client.Tutorial.CatHand_GunBuy})
        {
            if(hand==null)continue;var image=hand.GetComponentInChildren<Image>(true);if(image==null)continue;
            var pointer=image.gameObject.AddComponent<PenguinGuidePointer>();pointer.Configure(image,Flipper,canvas,(RectTransform)(hand==client.Tutorial.CatHand_Challenge?client.Tutorial.ChallengeButton.transform:hand==client.Tutorial.CatHand_GunOpen?client.Tutorial.GunButton.transform:hand==client.Tutorial.CatHand_GunBuy?client.Tutorial.GunBuyButton.transform:client.UpgradePanels[0].transform),hand==client.Tutorial.CatHand_Challenge);restore.Add(()=>{if(pointer!=null)Destroy(pointer);});
        }
        foreach(var image in images) AddPanelBorder(image);
        foreach(var upgrade in client.UpgradePanels)
        {
            if(upgrade==null||upgrade.Buff_Icon_obj==null)continue;
            var icon=upgrade.Buff_Icon_obj.transform;int index=icon.GetSiblingIndex();
            restore.Add(()=>{if(icon!=null)icon.SetSiblingIndex(index);});
        }
        RaiseBuffIcons();
        client.Slider.Hole_Color = new Color[] { new Color32(143, 194, 215, 255), Orange, Blue };
        var pass = canvas.transform.Find("SafeArea/Mission_maanger/Mission_UI/Reward/Pass_Purchase_Btn") as RectTransform;
        var scaler = canvas.GetComponent<CanvasScaler>();
        if (pass != null && scaler != null)
        {
            var min = pass.anchorMin; var max = pass.anchorMax; var position = pass.anchoredPosition;
            restore.Add(() => { if (pass != null) { pass.anchorMin = min; pass.anchorMax = max; pass.anchoredPosition = position; } });
            // The original center-relative offset clips this action on tablets.
            // Keep its portrait position, then let it follow the page's left edge.
            var nextMin = min; var nextMax = max; nextMin.x = nextMax.x = 0;
            var nextPosition = position; nextPosition.x += scaler.referenceResolution.x * min.x;
            pass.anchorMin = nextMin; pass.anchorMax = nextMax; pass.anchoredPosition = nextPosition;
        }
        applied = true;
        Canvas.willRenderCanvases += MaintainDynamicSprites;
    }

#if UNITY_EDITOR
    public void BakeStaticUi()
    {
        if (StaticUiBaked) throw new InvalidOperationException("UI already authored; rebaking would overwrite manual edits");
        Apply();
        Canvas.willRenderCanvases -= MaintainDynamicSprites;
        restore.Clear(); materials.Clear(); themedText.Clear(); textMaterials.Clear();
        StaticUiBaked = true; applied = false;
    }
#endif
    private static string PathOf(Transform t, Transform root)
    { string p = t.name; while (t.parent != null && t != root) { t = t.parent; p = t.name + "/" + p; } return p; }
    private static bool IsPanel(Sprite s)
    {
        if (s == null) return false; string n = s.name;
        return n.StartsWith("ui ") || n.StartsWith("u i ") || n.StartsWith("Panel_") || n.StartsWith("Relic_Panel") ||
            n.StartsWith("Title_Ribbon") || n.StartsWith("StageFrame_") || n == "Frame_TableFrame01_Line" || n.Contains("flat-ui-panel") || n.Contains("flat-ui-fill") || n.Contains("flat-ui-outline");
    }
    private void AddPanelBorder(Image image)
    {
        if(image==null||image.sprite==null||image.color.a<.9f)return;
        bool button=image.GetComponent<Button>()!=null;
        if(image.sprite!=Panel&&!image.sprite.name.Contains("flat-ui-panel")&&!(button&&image.sprite==Fill))return;
        if(image.rectTransform.rect.width<24||image.rectTransform.rect.height<24||image.name=="Event_obj")return;
        if(!borderedPanels.Add(image))return;
        if(image.transform.Find("Panel edge")!=null)return;
        var go=new GameObject("Panel edge",typeof(RectTransform),typeof(CanvasRenderer),typeof(LayoutElement),typeof(PenguinPanelBorder));
        go.layer=image.gameObject.layer;var rt=(RectTransform)go.transform;rt.SetParent(image.transform,false);
        rt.anchorMin=Vector2.zero;rt.anchorMax=Vector2.one;rt.offsetMin=rt.offsetMax=Vector2.zero;
        go.GetComponent<LayoutElement>().ignoreLayout=true;
        go.GetComponent<PenguinPanelBorder>().Configure(button?3:1.75f,Navy);
        restore.Add(()=>{if(go!=null){go.name="Retired panel edge";go.SetActive(false);Destroy(go);}});
    }
    private void StyleImage(Image image, string path)
    {
        var sprite = image.sprite; string n = sprite != null ? sprite.name : "";
        if (IsPanel(sprite))
        {
            bool outline = Array.IndexOf(OriginalOutlineSprites, sprite) >= 0 || image.name.ToLowerInvariant().Contains("outline") || n.ToLowerInvariant().Contains("outline") || n.Contains("Ourline") || n.Contains("Frame01_Line");
            bool fill = n.Contains("Fill") || n.Contains("flat-ui-fill") || n.Contains("White") || image.name.Contains("Purchased") || image.name.Contains("Locked");
            image.sprite = outline ? Outline : fill ? Fill : Panel;
            image.type = Image.Type.Sliced;
            image.preserveAspect = false;
            image.color = outline ? Color.white : Palette(image.color);
            if (!outline && !fill && image.color.a > .9f && IsNearWhite(image.color)) image.color = Ice;
            if (image.GetComponent<Button>() != null && !image.name.ToLowerInvariant().Contains("close"))
                image.color = image.name.ToLowerInvariant().Contains("buy") || image.name.Contains("Purchase") || image.name.Contains("Enter") || image.name.Contains("Upgrade") || image.name.Contains("Shop") ? Orange : Ice;
        }
        else if (n == "Circle" || n == "Circle 1")
        {
            // Shadows and translucent masks retain their alpha and visibility.
            image.sprite = Circle; image.color = Palette(image.color);
            if (image.GetComponent<Button>() != null) image.color = Ice;
        }
        else if (n == "Cat_icon") { image.sprite = Portrait; image.preserveAspect = true; }
        else if (n == "currency_dia_0" || n == "Currency 2_0") { image.sprite = Coin; image.preserveAspect = true; }
        else if (n == "Icon_Shop") { image.sprite = Shop; image.preserveAspect = true; }
        else if (n.StartsWith("chodun (774)")) { image.sprite = Panel; image.type = Image.Type.Sliced; image.color = Blue; }
        else if (n == "Setting") { image.sprite = Gear; image.color = Color.white; }
        else if (n == "Hand") { image.sprite = Flipper; image.color = Color.white; image.preserveAspect = true; }
        else if (n == "Cat_Win" || n == "AngelCat") { image.sprite = Win; image.preserveAspect = true; }
        else if (n == "Cat_Fail") { image.sprite = Fail; image.preserveAspect = true; }
        else if (n == "Cat_Offline") { image.sprite = Rest; image.preserveAspect = true; }
        else if (n == "Cat_Gun" || n.StartsWith("replicate-prediction-") || path.Contains("EcoMode_Panel_UI") && image.name == "Cat_img")
        { image.sprite = Penguin; image.preserveAspect = true; }
        else if (sprite != null && replacements.TryGetValue(sprite, out var replacement))
        { image.sprite = replacement; image.preserveAspect = true; }
        else if (n.StartsWith("Common_Glow_Circle") || n == "grab2 1")
            image.color = WithAlpha(Blue, image.color.a * .35f);
        else if (sprite == null || n == "Background" || n.StartsWith("Gradiann")) image.color = Palette(image.color);
        StyleReadability(image, path, n);
    }

    private void StyleReadability(Image image, string path, string sourceName)
    {
        // Roles separate foreground, track and surface; hue mapping alone made
        // experience fills and their tracks exactly the same lavender.
        bool shape = image.sprite == Panel || image.sprite == Fill;
        if (!shape) return;
        bool track = image.GetComponent<Button>() == null &&
            (image.name.EndsWith("Slider", StringComparison.Ordinal) ||
             HasDirectFill(image.transform));
        if (track) { image.color = WithAlpha(Ice, image.color.a); return; }
        string name = image.name.ToLowerInvariant();
        bool header = name == "top" || name == "topbar" || name == "title" || name == "titlebar" || sourceName.StartsWith("Title_Ribbon");
        if (header)
        {
            image.color = WithAlpha(HeaderBlue, image.color.a); headerRoots.Add(image.transform);
        }
        else if (image.GetComponent<Button>() != null && image.GetComponentInParent<Mission_Item_UI>(true) != null && path.Contains("/GetAble_obj"))
            image.color = WithAlpha(Orange, image.color.a);
    }
    private static bool HasDirectFill(Transform parent)
    { foreach (Transform child in parent) if (child.GetComponent<SlicedFilledImage>() != null) return true; return false; }
    private static Color WithAlpha(Color color, float alpha) { color.a = alpha; return color; }
    private static Color ProgressColor(Color original)
    {
        // Health and unavailable sweep states keep their warning meaning.
        bool warning = original.r > original.g * 1.4f && original.r > original.b * 1.4f;
        return WithAlpha(warning ? new Color32(206, 81, 83, 255) : ProgressBlue, original.a);
    }
    private void MaintainDynamicSprites()
    {
        if (StaticUiBaked || !applied) return;
        foreach (var image in images)
        {
            if (image == null || !image.isActiveAndEnabled || image.sprite == null) continue;
            if (replacements.TryGetValue(image.sprite, out var replacement)) { image.sprite = replacement; image.preserveAspect = true; }
            else if (IsPanel(image.sprite) && image.sprite != Panel && image.sprite != Fill && image.sprite != Outline) StyleImage(image, PathOf(image.transform, canvasRoot));
            AddPanelBorder(image);
        }
        RaiseBuffIcons();
    }
    private void RaiseBuffIcons()
    {
        foreach(var upgrade in client.UpgradePanels)
            if(upgrade!=null&&upgrade.Buff_Icon_obj!=null)
            {
                var icon=upgrade.Buff_Icon_obj.transform;
                if(icon.GetSiblingIndex()!=icon.parent.childCount-1)icon.SetAsLastSibling();
            }
    }
    private void LateUpdate()
    {
        if (StaticUiBaked || !applied) return;
        // TMP rebuilds in the Canvas pre-render callback. Resolve locale/theme
        // changes before that callback so a rendered frame never sees a cleared mesh.
        foreach (var text in texts)
        {
            if (text == null) continue;
            ThemeWording(text);
            if (!text.isActiveAndEnabled) continue;
            var original = text.fontSharedMaterial;
            if (original == null) continue;
            if (!materials.Contains(original))
            {
                // Locale changes replace font materials through the original text adapter.
                if (!textMaterials.TryGetValue(original, out var themed))
                {
                    themed = new Material(original) { name = original.name + " Penguin UI" };
                    if (themed.HasProperty(ShaderUtilities.ID_OutlineColor)) themed.SetColor(ShaderUtilities.ID_OutlineColor, Navy);
                    textMaterials.Add(original, themed); materials.Add(themed);
                }
                text.fontSharedMaterial = themed;
            }
            bool outlined = original.HasProperty(ShaderUtilities.ID_OutlineWidth) && original.GetFloat(ShaderUtilities.ID_OutlineWidth) > .01f;
            var color = TextColor(text, text.color, outlined);
            // Price/status controllers can assign colors without changing materials.
            // Canonical colors are idempotent, so stable text does not rebuild.
            if (text.color != color) text.color = color;
        }
    }
    private Color TextColor(TextMeshProUGUI text, Color color, bool outlined)
    {
        for (var t = text.transform.parent; t != null; t = t.parent)
            if (headerRoots.Contains(t)) return WithAlpha(Color.white, color.a);
        bool neutral = Mathf.Max(color.r, color.g, color.b) - Mathf.Min(color.r, color.g, color.b) < .08f;
        bool muted = neutral && !IsNearWhite(color) || SameRgb(color, MutedInk) || SameRgb(color, DisabledInk) || SameRgb(color, new Color32(172, 202, 217, 255));
        if (outlined)
        {
            if (muted) return WithAlpha(DisabledInk, color.a);
            if (color.r < .5f && color.g < .5f && color.b < .5f) return WithAlpha(Color.white, color.a);
            return IsThemeAccent(color) ? color : Palette(color);
        }
        bool dark = HasDarkSurface(text.transform.parent);
        if (muted) return WithAlpha(dark ? DisabledInk : MutedInk, color.a);
        if (dark) return WithAlpha(Ice, color.a);
        if (color.r > .55f && color.g < .5f && color.r > color.g * 1.4f && color.r > color.b * 1.4f)
            return WithAlpha(new Color32(173, 68, 75, 255), color.a);
        if (SameRgb(color, new Color32(30, 108, 147, 255)) || color.b > color.r * 1.4f && color.g > color.r * 1.4f && color.b > .6f && !SameRgb(color, Ice))
            return WithAlpha(new Color32(30, 108, 147, 255), color.a);
        return WithAlpha(TextInk, color.a);
    }
    private bool HasDarkSurface(Transform start)
    {
        for (var t = start; t != null && t != canvasRoot; t = t.parent)
        {
            var image = t.GetComponent<Image>();
            if (image != null && image.color.a > .75f && (image.sprite == Panel || image.sprite == Fill || image.sprite == null))
                return image.color.grayscale < .5f;
        }
        return false;
    }
    private static bool SameRgb(Color a, Color b) => Mathf.Abs(a.r-b.r)<.002f && Mathf.Abs(a.g-b.g)<.002f && Mathf.Abs(a.b-b.b)<.002f;
    private static bool IsThemeAccent(Color c) => IsNearWhite(c) || SameRgb(c, Ice) || SameRgb(c, Blue) || SameRgb(c, Orange) ||
        SameRgb(c, new Color32(255,127,113,255)) || SameRgb(c, new Color32(137,154,219,255)) || SameRgb(c, new Color32(116,203,238,255));
    public static string DisplayWording(string source)
    {
        if(string.IsNullOrEmpty(source))return source;
        string value=source.Replace("树木","冰块").Replace("棵树","块冰块").Replace("樹木","冰塊").Replace("棵樹","塊冰塊")
            .Replace("小猫","企鹅").Replace("猫咪","企鹅").Replace("小貓","企鵝").Replace("貓咪","企鵝")
            .Replace("나무","얼음").Replace("고양이","펭귄").Replace("새로운 총 획득!","获得新武器！");
        if(value!=source&&(source.Contains("树")||source.Contains("樹")))value=value.Replace("破坏","清除").Replace("破壞","清除");
        return Regex.Replace(Regex.Replace(value,@"\btrees?\b","ice blocks",RegexOptions.IgnoreCase),@"\bcats?\b","penguins",RegexOptions.IgnoreCase);
    }
    private void ThemeWording(TextMeshProUGUI text)
    {
        string source = text.text;
        if (string.IsNullOrEmpty(source) || themedText.TryGetValue(text, out var last) && source == last[1]) return;
        // Only display terminology changes; original catalog strings, numeric
        // targets and counters remain untouched in their owning controllers.
        string value = source.Replace("树木", "冰块").Replace("棵树", "块冰块").Replace("樹木", "冰塊").Replace("棵樹", "塊冰塊")
            .Replace("小猫", "企鹅").Replace("猫咪", "企鹅").Replace("小貓", "企鵝").Replace("貓咪", "企鵝")
            .Replace("나무", "얼음").Replace("고양이", "펭귄").Replace("새로운 총 획득!", "获得新武器！");
        if (value != source && (source.Contains("树") || source.Contains("樹"))) value = value.Replace("破坏", "清除").Replace("破壞", "清除");
        if (value == source && (source.IndexOf("tree", StringComparison.OrdinalIgnoreCase) >= 0 || source.IndexOf("cat", StringComparison.OrdinalIgnoreCase) >= 0))
            value = Regex.Replace(Regex.Replace(source, @"\btrees?\b", "ice blocks", RegexOptions.IgnoreCase), @"\bcats?\b", "penguins", RegexOptions.IgnoreCase);
        if (value != source) { themedText[text] = new[] { source, value }; text.text = value; }
        else themedText.Remove(text);
    }
    private static bool IsNearWhite(Color c) => c.r > .92f && c.g > .92f && c.b > .92f;
    private static Color Palette(Color c)
    {
        if (IsNearWhite(c) || c.a < .01f) return c;
        float max = Mathf.Max(c.r, Mathf.Max(c.g, c.b)), min = Mathf.Min(c.r, Mathf.Min(c.g, c.b));
        Color result;
        if (max < .15f) result = Navy;
        else if (max - min < .1f) result = max < .6f ? new Color32(83, 119, 143, 255) : new Color32(172, 202, 217, 255);
        else if (c.r > c.b * 1.25f && c.g > c.b * 1.15f) result = c.r > .75f ? Ice : Navy;
        else if (c.r > c.g * 1.4f && c.r > c.b * 1.4f) result = new Color32(255, 127, 113, 255);
        else if (c.g > c.r * 1.2f) result = Blue;
        else if (c.r > c.g * 1.15f && c.b > c.g * 1.15f) result = new Color32(137, 154, 219, 255);
        else result = new Color32(116, 203, 238, 255);
        result.a = c.a; return result;
    }
    private void OnDisable()
    {
        Canvas.willRenderCanvases -= MaintainDynamicSprites;
        foreach (var item in themedText) if (item.Key != null && item.Key.text == item.Value[1]) item.Key.text = item.Value[0];
        themedText.Clear();
        for (int i = restore.Count - 1; i >= 0; i--) restore[i]();
        restore.Clear(); replacements.Clear(); textMaterials.Clear(); headerRoots.Clear(); borderedPanels.Clear();
        foreach (var material in materials) if (material != null) Destroy(material);
        materials.Clear(); applied = false; StyledImageCount = StyledTextCount = 0;
    }
}
