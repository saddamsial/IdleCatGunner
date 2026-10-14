using System.Collections;
using System.Linq;
using NUnit.Framework;
using TMPro;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;
using UnityEngine.UI;

public sealed class PresentationTests
{
    [UnityTest]
    public IEnumerator OriginalSettingSpritesAndFontFacesRemainRenderableAfterReload()
    {
        yield return SceneManager.LoadSceneAsync("Settings");
        yield return null;
        var images=Object.FindObjectsByType<Image>(FindObjectsInactive.Include).Where(i=>i.sprite!=null).ToArray();
        Assert.That(images.Length,Is.EqualTo(33));
        foreach(var image in images)
        {
            Assert.That(image.sprite.texture,Is.Not.Null,image.sprite.name);
            Assert.That(image.sprite.rect.width,Is.GreaterThan(0));
            Assert.That(image.sprite.texture.width,Is.GreaterThanOrEqualTo(image.sprite.rect.width));
        }
        var texts=Object.FindObjectsByType<TMP_Text>(FindObjectsInactive.Include);
        foreach(var text in texts)
        {
            Assert.That(text.font,Is.Not.Null,text.name);
            foreach(char c in text.text.Where(c=>!char.IsWhiteSpace(c)&&!char.IsControl(c)&&c!='\u200b'))
                Assert.That(text.font.HasCharacter(c),Is.True,text.font.name+" missing U+"+((int)c).ToString("X4"));
        }
        foreach(var font in texts.Select(t=>t.font).Distinct())
        {
            Assert.That(font.sourceFontFile,Is.Not.Null,"Original source font file");
            Assert.That(font.atlasTexture.format,Is.EqualTo(TextureFormat.Alpha8));
            Assert.That(font.atlasTexture.GetPixels32().Any(c=>c.a>0&&c.a<255),Is.True,"Nonempty SDF distances, not a blank atlas with stale glyph metadata");
        }
    }
}
