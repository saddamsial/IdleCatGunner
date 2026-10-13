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
    public Sprite Panel, Fill, Outline, Circle, Gear, Flipper;
    public Sprite Portrait, Coin, Shop, Penguin, Win, Fail, Rest;
    public Texture2D SnowPattern, IceStripe;
    public Sprite[] OriginalOutlineSprites = Array.Empty<Sprite>();
    private readonly List<Action> restore = new List<Action>();
    private readonly List<Material> materials = new List<Material>();
    private readonly Dictionary<Sprite, Sprite> replacements = new Dictionary<Sprite, Sprite>();
    private readonly Dictionary<Material, Material> textMaterials = new Dictionary<Material, Material>();
    private readonly Dictionary<TextMeshProUGUI, string[]> themedText = new Dictionary<TextMeshProUGUI, string[]>();
    private Image[] images;
    private TextMeshProUGUI[] texts;
    private RecoveryForestClient client;
    private bool applied;
    public int StyledImageCount { get; private set; }
    public int StyledTextCount { get; private set; }
    public static Color Navy => new Color32(24, 62, 90, 255);
    public static Color Ice => new Color32(215, 242, 251, 255);
    public static Color Blue => new Color32(53, 169, 223, 255);
    public static Color Orange => new Color32(255, 178, 76, 255);

    private void Start() => Apply();
    private void OnEnable() { if (client != null && !applied) Apply(); }
    private void Apply()
    {
        if (applied || Panel == null) return;
        client = GetComponent<RecoveryForestClient>();
        var canvas = client.Slider.GetComponentInParent<Canvas>();
        images = canvas.GetComponentsInChildren<Image>(true);
        foreach (var component in canvas.GetComponentsInChildren<MonoBehaviour>(true))
        {
            if (component == null || component is Graphic || component is Selectable) continue;
            foreach (var field in component.GetType().GetFields(BindingFlags.Public | BindingFlags.Instance))
            {
                // Skin_Colors also tint the gameplay hand; keep the approved character.
                if (component is Skin_manager && field.Name == "Skin_Colors") continue;
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
        if (skin != null) foreach (var sprite in skin.Skin_sprites) if (sprite != null) replacements[sprite] = Penguin;
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
            graphic.sprite = Fill; graphic.color = Palette(color);
        }
        foreach (var graphic in canvas.GetComponentsInChildren<RawImage>(true))
        {
            var texture = graphic.texture; var color = graphic.color;
            restore.Add(() => { if (graphic != null) { graphic.texture = texture; graphic.color = color; } });
            if (texture != null && (texture.name == "Cat_Foot" || texture.name == "Field")) graphic.texture = SnowPattern;
            else if (texture != null && (texture.name == "Hatch" || texture.name == "Pattern")) graphic.texture = IceStripe;
            graphic.color = Palette(color);
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
        var loading = canvas.transform.Find("SafeArea/Main_UI/Loading_UI/Background/Cat/Cat_Pivot");
        if (loading != null)
        {
            var go = new GameObject("Penguin loading mascot", typeof(RectTransform), typeof(Image));
            var rt = (RectTransform)go.transform; rt.SetParent(loading, false);
            rt.sizeDelta = new Vector2(220, 260); rt.anchoredPosition = new Vector2(0, 75);
            var image = go.GetComponent<Image>(); image.sprite = Penguin; image.preserveAspect = true; image.raycastTarget = false;
            restore.Add(() => { if (go != null) Destroy(go); });
        }
        foreach (var upgrade in client.UpgradePanels)
        {
            upgrade.Fill_Colors = new[] { Blue, Orange };
            upgrade.Panel_Colors = new Color[] { new Color32(45, 99, 130, 255), new Color32(74, 123, 159, 255) };
            bool buff = client.ReadyForPlay && client.BuffMultiplier(Upgrade_Ingame.ToBuffType(upgrade.type)) > 1;
            upgrade.Fill.color = upgrade.Fill_Colors[buff ? 1 : 0]; upgrade.Panel_img.color = upgrade.Panel_Colors[buff ? 1 : 0];
        }
        client.Slider.Hole_Color = new Color[] { new Color32(143, 194, 215, 255), Orange, Blue };
        applied = true;
        Canvas.willRenderCanvases += MaintainDynamicSprites;
    }

    private static string PathOf(Transform t, Transform root)
    { string p = t.name; while (t.parent != null && t != root) { t = t.parent; p = t.name + "/" + p; } return p; }
    private static bool IsPanel(Sprite s)
    {
        if (s == null) return false; string n = s.name;
        return n.StartsWith("ui ") || n.StartsWith("u i ") || n.StartsWith("Panel_") || n.StartsWith("Relic_Panel") ||
            n.StartsWith("Title_Ribbon") || n.StartsWith("StageFrame_") || n == "Frame_TableFrame01_Line";
    }
    private void StyleImage(Image image, string path)
    {
        var sprite = image.sprite; string n = sprite != null ? sprite.name : "";
        if (IsPanel(sprite))
        {
            bool outline = Array.IndexOf(OriginalOutlineSprites, sprite) >= 0 || image.name.ToLowerInvariant().Contains("outline") || n.ToLowerInvariant().Contains("outline") || n.Contains("Ourline") || n.Contains("Frame01_Line");
            bool fill = n.Contains("Fill") || n.Contains("White") || image.name.Contains("Purchased") || image.name.Contains("Locked");
            image.sprite = outline ? Outline : fill ? Fill : Panel;
            image.type = Image.Type.Sliced;
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
        else if (sprite == null || n == "Background" || n.StartsWith("Gradiann")) image.color = Palette(image.color);
    }
    private void MaintainDynamicSprites()
    {
        if (!applied) return;
        foreach (var image in images)
        {
            if (image == null || !image.isActiveAndEnabled || image.sprite == null) continue;
            if (replacements.TryGetValue(image.sprite, out var replacement)) { image.sprite = replacement; image.preserveAspect = true; }
            else if (IsPanel(image.sprite)) StyleImage(image, "");
        }
        foreach (var text in texts)
        {
            if (text == null || !text.isActiveAndEnabled) continue;
            ThemeWording(text);
            var original = text.fontSharedMaterial;
            if (original == null || materials.Contains(original)) continue;
            // Locale changes replace font materials through the original text adapter.
            if (!textMaterials.TryGetValue(original, out var themed))
            {
                themed = new Material(original) { name = original.name + " Penguin UI" };
                if (themed.HasProperty(ShaderUtilities.ID_OutlineColor)) themed.SetColor(ShaderUtilities.ID_OutlineColor, Navy);
                textMaterials.Add(original, themed); materials.Add(themed);
            }
            bool outlined = original.HasProperty(ShaderUtilities.ID_OutlineWidth) && original.GetFloat(ShaderUtilities.ID_OutlineWidth) > .01f;
            var color = text.color; text.fontSharedMaterial = themed;
            text.color = TextColor(text, color, outlined);
        }
    }
    private static Color TextColor(TextMeshProUGUI text, Color color, bool outlined)
    {
        if (outlined && text.name.Contains("Price") && color.r < .5f && color.g < .5f && color.b < .5f) return new Color(1, 1, 1, color.a);
        return !outlined && IsNearWhite(color) ? new Color(Navy.r, Navy.g, Navy.b, color.a) : Palette(color);
    }
    private void ThemeWording(TextMeshProUGUI text)
    {
        string source = text.text;
        if (string.IsNullOrEmpty(source) || themedText.TryGetValue(text, out var last) && source == last[1]) return;
        // Only display terminology changes; original catalog strings, numeric
        // targets and counters remain untouched in their owning controllers.
        string value = source.Replace("树木", "冰块").Replace("棵树", "块冰块").Replace("樹木", "冰塊").Replace("棵樹", "塊冰塊")
            .Replace("小猫", "企鹅").Replace("猫咪", "企鹅").Replace("小貓", "企鵝").Replace("貓咪", "企鵝")
            .Replace("나무", "얼음").Replace("고양이", "펭귄");
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
        restore.Clear(); replacements.Clear(); textMaterials.Clear();
        foreach (var material in materials) if (material != null) Destroy(material);
        materials.Clear(); applied = false; StyledImageCount = StyledTextCount = 0;
    }
}
