using System;
using System.IO;
using System.Linq;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using UnityEditor.SceneManagement;
using CatGunner.Runtime;

public static class InstallPenguinUi
{
    const string Folder = "Assets/Game/PenguinUi/";
    public static string Run()
    {
        if (Application.dataPath != "/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets" || EditorApplication.isPlaying) throw new Exception("Correct EditMode required");
        AssetDatabase.Refresh();
        var scene = EditorSceneManager.OpenScene("Assets/Game/Scenes/GameClient.unity");
        var c = UnityEngine.Object.FindAnyObjectByType<GameClient>(FindObjectsInactive.Include);
        var theme = c.GetComponent<PenguinUiTheme>() ?? Undo.AddComponent<PenguinUiTheme>(c.gameObject);
        theme.Panel = Shape("IcePanel", 0); theme.Fill = Shape("IceFill", 1); theme.Outline = Shape("IceOutline", 2);
        theme.Circle = Shape("IceCircle", 3); theme.Gear = Shape("IceGear", 4); theme.Flipper = Shape("FlipperPointer", 5);
        theme.Portrait = Picture("portrait"); theme.Coin = Picture("coin"); theme.Shop = Picture("shop");
        theme.Win = Picture("win"); theme.Fail = Picture("fail"); theme.Rest = Picture("rest");
        theme.SnowPattern = Pattern("SnowPattern", false); theme.IceStripe = Pattern("IceStripe", true);
        var canvas = c.Slider.GetComponentInParent<Canvas>();
        var originals = canvas.GetComponentsInChildren<UnityEngine.UI.Image>(true).Select(i => i.sprite).Where(s => s != null && (s.name.StartsWith("ui ") || s.name.StartsWith("u i ") || s.name.StartsWith("Panel_") || s.name.StartsWith("Relic_Panel"))).Distinct().ToArray();
        theme.OutlineSprites = originals.Where(HasEmptyCenter).ToArray();
        theme.Penguin = c.GetComponent<PenguinExpeditionTheme>().Penguin;
        theme.enabled = true; EditorUtility.SetDirty(theme); EditorSceneManager.MarkSceneDirty(scene);
        if (!EditorSceneManager.SaveScene(scene)) throw new Exception("Scene save failed");
        AssetDatabase.SaveAssets(); GameProjectEditor.SetPortraitGameView();
        return "Installed unified UI theme across the original Canvas; approved character and animation assets untouched.";
    }
    static Sprite Picture(string name)
    {
        string path = Folder + name + ".png";
        var importer = (TextureImporter)AssetImporter.GetAtPath(path);
        bool changed = importer.textureType != TextureImporterType.Default || importer.npotScale != TextureImporterNPOTScale.None || !importer.alphaIsTransparency || importer.mipmapEnabled || importer.textureCompression != TextureImporterCompression.Uncompressed || importer.maxTextureSize != 512;
        importer.textureType = TextureImporterType.Default; importer.npotScale = TextureImporterNPOTScale.None;
        importer.alphaIsTransparency = true; importer.mipmapEnabled = false; importer.textureCompression = TextureImporterCompression.Uncompressed;
        importer.maxTextureSize = 512; if (changed) importer.SaveAndReimport();
        var tex = AssetDatabase.LoadAssetAtPath<Texture2D>(path);
        return SaveSprite(name, tex, Vector4.zero);
    }
    static Sprite Shape(string name, int kind)
    {
        const int n = 96;
        var tex = new Texture2D(n, n, TextureFormat.RGBA32, false) { name = name, filterMode = FilterMode.Bilinear, wrapMode = TextureWrapMode.Clamp };
        for (int y = 0; y < n; y++) for (int x = 0; x < n; x++)
        {
            Vector2 p = new Vector2(x + .5f - n / 2f, y + .5f - n / 2f);
            float d;
            if (kind == 3) d = p.magnitude - 44;
            else if (kind == 4)
            {
                float angle = Mathf.Atan2(p.y, p.x); float radius = 35 + 7 * Mathf.Round(Mathf.Cos(angle * 8));
                d = Mathf.Max(p.magnitude - radius, 13 - p.magnitude);
            }
            else if (kind == 5)
            {
                p = new Vector2(p.x + p.y * .25f, p.y);
                d = new Vector2(p.x / .66f, p.y).magnitude - 39;
            }
            else
            { var q = new Vector2(Mathf.Abs(p.x), Mathf.Abs(p.y)) - new Vector2(26, 26); d = new Vector2(Mathf.Max(q.x, 0), Mathf.Max(q.y, 0)).magnitude + Mathf.Min(Mathf.Max(q.x, q.y), 0) - 20; }
            float alpha = Mathf.Clamp01(.5f - d);
            Color color = kind == 2 ? PenguinUiTheme.Navy : kind == 5 ? new Color32(70, 82, 107, 255) : Color.white;
            if (kind != 1 && d > -4.5f) color = PenguinUiTheme.Navy;
            if (kind == 2 && d < -5) alpha = 0;
            if (kind == 0 && d < -5) color = Color.Lerp(new Color32(215, 242, 251, 255), Color.white, (y / 95f));
            color.a = alpha; tex.SetPixel(x, y, color);
        }
        tex.Apply();
        string texPath = Folder + name + "Texture.asset";
        var existing = AssetDatabase.LoadAssetAtPath<Texture2D>(texPath);
        if (existing == null) AssetDatabase.CreateAsset(tex, texPath);
        else { EditorUtility.CopySerialized(tex, existing); UnityEngine.Object.DestroyImmediate(tex); tex = existing; EditorUtility.SetDirty(tex); }
        return SaveSprite(name, tex, kind < 3 ? Vector4.one * 24 : Vector4.zero);
    }
    static Sprite SaveSprite(string name, Texture2D tex, Vector4 border)
    {
        var sprite = Sprite.Create(tex, new Rect(0, 0, tex.width, tex.height), Vector2.one * .5f, 100, 0, SpriteMeshType.FullRect, border); sprite.name = name;
        string path = Folder + name + ".asset"; var old = AssetDatabase.LoadAssetAtPath<Sprite>(path);
        if (old == null) { AssetDatabase.CreateAsset(sprite, path); return sprite; }
        EditorUtility.CopySerialized(sprite, old); UnityEngine.Object.DestroyImmediate(sprite); EditorUtility.SetDirty(old); return old;
    }
    static Texture2D Pattern(string name, bool stripe)
    {
        const int n = 64; var tex = new Texture2D(n, n, TextureFormat.RGBA32, false) { name = name, filterMode = FilterMode.Bilinear, wrapMode = TextureWrapMode.Repeat };
        for (int y = 0; y < n; y++) for (int x = 0; x < n; x++)
        {
            bool mark = stripe ? (x + y) % 32 < 12 : Mathf.Abs(x - 32) < 2 && Mathf.Abs(y - 32) < 12 || Mathf.Abs(y - 32) < 2 && Mathf.Abs(x - 32) < 12 || Mathf.Abs(Mathf.Abs(x - 32) - Mathf.Abs(y - 32)) < 2 && Mathf.Abs(x - 32) < 8;
            tex.SetPixel(x, y, mark ? new Color32(234, 250, 255, 255) : new Color32(188, 227, 243, 255));
        }
        tex.Apply(); string path = Folder + name + ".asset"; var old = AssetDatabase.LoadAssetAtPath<Texture2D>(path);
        if (old == null) { AssetDatabase.CreateAsset(tex, path); return tex; }
        EditorUtility.CopySerialized(tex, old); UnityEngine.Object.DestroyImmediate(tex); EditorUtility.SetDirty(old); return old;
    }
    static bool HasEmptyCenter(Sprite sprite)
    {
        var tex = sprite.texture; var rt = RenderTexture.GetTemporary(tex.width, tex.height, 0, RenderTextureFormat.ARGB32);
        var previous = RenderTexture.active; var sample = new Texture2D(3, 3, TextureFormat.RGBA32, false);
        try
        {
            UnityEngine.Graphics.Blit(tex, rt); RenderTexture.active = rt;
            var center = sprite.textureRect.center; sample.ReadPixels(new Rect(Mathf.RoundToInt(center.x) - 1, Mathf.RoundToInt(center.y) - 1, 3, 3), 0, 0); sample.Apply();
            return sample.GetPixels().Average(p => p.a) < .1f;
        }
        finally { RenderTexture.active = previous; RenderTexture.ReleaseTemporary(rt); UnityEngine.Object.DestroyImmediate(sample); }
    }
}
