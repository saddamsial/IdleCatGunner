using System;
using System.IO;
using System.Linq;
using System.Collections;
using System.Collections.Generic;
using CatGunner.Runtime;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.SceneManagement;
using UnityEngine.TestTools;

public sealed class HatchThicknessTests
{
    [Serializable] sealed class FillSnapshot{public float m_PixelsPerUnitMultiplier;}
    string folder;GameClient client;bool background;
    string Report(string name)=>Path.GetFullPath(Path.Combine(Application.dataPath,"../../../reverse/com.Chodun.CatGunner/1.1.61-vc257/reports/"+name));
    void Configure(Scene scene,LoadSceneMode mode){if(scene.name=="GameClient")scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<GameClient>(true)).Single().SaveFolderOverride=folder;}
    [UnitySetUp] public IEnumerator Setup()
    {
        background=Application.runInBackground;Application.runInBackground=true;folder=Path.Combine(Application.temporaryCachePath,"HatchThickness-"+Guid.NewGuid().ToString("N"));
        SceneManager.sceneLoaded+=Configure;yield return TestSceneLoader.LoadAsync("GameClient");yield return ClientStartupWait.Ready();client=GameClient.Instance;
        client.DailyLogin.Close();client.Tutorial.SetCleared();ForestRuntimeAcceptance.IsGaming=false;
    }
    [UnityTearDown] public IEnumerator Cleanup(){Time.timeScale=1;yield return TestSceneLoader.LoadAsync("TargetPreview");SceneManager.sceneLoaded-=Configure;Application.runInBackground=background;if(Directory.Exists(folder))Directory.Delete(folder,true);}
    IEnumerator Capture(string name){yield return new WaitForEndOfFrame();ScreenCapture.CaptureScreenshot(Report("visual/hatch-ppu-"+name+"-gpu.png"));yield return new WaitForSecondsRealtime(.2f);}
    [UnityTest] public IEnumerator UserPixelsMultiplierKeepsOriginalGeometryScrollAndHeaderTargetsClear()
    {
        var fill=client.Slider.Value_Fill;var hatch=fill.GetComponentInChildren<UnityEngine.UI.RawImage>();
        Assert.That(JsonUtility.FromJson<FillSnapshot>(JsonUtility.ToJson(fill)).m_PixelsPerUnitMultiplier,Is.EqualTo(10));
        Assert.That(fill.rectTransform.rect.height,Is.EqualTo(37));Assert.That(hatch.rectTransform.rect.height,Is.EqualTo(37));Assert.That(hatch.uvRect.height,Is.EqualTo(.37f).Within(.001f));
        Assert.That(hatch.GetComponent<Scrolling>().Speed,Is.EqualTo(new Vector2(-1,0)));client.Slider.Value_Reload(.25f);yield return null;Canvas.ForceUpdateCanvases();
        Assert.That(fill.canvasRenderer.GetMesh().bounds.size.x,Is.EqualTo(270).Within(1));Assert.That(fill.canvasRenderer.GetMesh().bounds.size.y,Is.EqualTo(37).Within(1));
        float phase=hatch.uvRect.x;yield return new WaitForSeconds(.2f);Assert.That(hatch.uvRect.x,Is.LessThan(phase-.15f));yield return Capture("quarter");
        var main=fill.transform.parent.parent;Assert.That(((RectTransform)client.Slider.Time_Fill.transform.parent).anchoredPosition.y,Is.EqualTo(-15));
        foreach(string name in new[]{"Setting_Btn","DailyCheck_Btn"})
        {
            var button=main.Find("Btn_list/"+name).GetComponent<UnityEngine.UI.Button>();var rect=(RectTransform)button.transform;var corners=new Vector3[4];rect.GetWorldCorners(corners);
            Assert.That(corners[1].y,Is.LessThan(hatch.rectTransform.TransformPoint(hatch.rectTransform.rect.min).y),name+" stays below progress bar");
            var pointer=new PointerEventData(EventSystem.current){position=RectTransformUtility.WorldToScreenPoint(null,rect.TransformPoint(rect.rect.center))};var hits=new List<RaycastResult>();EventSystem.current.RaycastAll(pointer,hits);
            Assert.That(hits.First().gameObject.GetComponentInParent<UnityEngine.UI.Button>(),Is.SameAs(button),name+" remains clickable");
        }
        client.Slider.Stage_Reload(0,3);client.Slider.Value_Reload(1);yield return null;Canvas.ForceUpdateCanvases();Assert.That(fill.canvasRenderer.GetMesh().bounds.size.x,Is.EqualTo(1080).Within(1));
        yield return Capture("full");File.WriteAllText(Report("hatch-ppu-observation.txt"),"runtimeFill=1080x37, userPixelsPerUnitMultiplier=10, UVHeight=.37, timeY=-15, original header positions, quarter width270/full1080, scroll and raycast verified");
    }
}
