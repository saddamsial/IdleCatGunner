using System;
using System.IO;
using System.Linq;
using UnityEditor;
using UnityEngine;
using UnityEngine.UI;
using TMPro;
using CatGunner.Runtime;

public static class InspectPenguinUi
{
    public static string Run()
    {
        if(Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets"||EditorApplication.isPlaying)throw new Exception("Stable correct EditMode required");
        var c=UnityEngine.Object.FindAnyObjectByType<GameClient>(FindObjectsInactive.Include);var canvas=c.Slider.GetComponentInParent<Canvas>();
        string PathOf(Transform t){string p=t.name;while(t.parent!=null&&t!=canvas.transform){t=t.parent;p=t.name+"/"+p;}return p;}
        var images=canvas.GetComponentsInChildren<Image>(true).Select(i=>new{path=PathOf(i.transform),sprite=i.sprite!=null?i.sprite.name:null,type=i.type.ToString(),color=ColorUtility.ToHtmlStringRGBA(i.color),rect=i.rectTransform.rect.ToString(),active=i.gameObject.activeSelf}).ToArray();
        var buttons=canvas.GetComponentsInChildren<Button>(true).Select(b=>new{path=PathOf(b.transform),b.interactable,listeners=b.onClick.GetPersistentEventCount()}).ToArray();
        var texts=canvas.GetComponentsInChildren<TextMeshProUGUI>(true).Where(t=>PathOf(t.transform).Contains("Ingame")).Select(t=>new{path=PathOf(t.transform),t.text,color=ColorUtility.ToHtmlStringRGBA(t.color),material=t.fontSharedMaterial!=null?t.fontSharedMaterial.name:null}).ToArray();
        string dir=System.IO.Path.GetFullPath(System.IO.Path.Combine(Application.dataPath,"../../../art/reskin/penguin-expedition/ui-batch-01"));Directory.CreateDirectory(dir);
        File.WriteAllText(System.IO.Path.Combine(dir,"inventory.json"),Newtonsoft.Json.JsonConvert.SerializeObject(new{images,buttons,texts},Newtonsoft.Json.Formatting.Indented));
        return "Images: "+images.Length+", buttons: "+buttons.Length+"\n"+string.Join("\n",images.Where(i=>i.path.Contains("Ingame")||i.path.Contains("Menu")||i.path.Contains("GameSlider")||i.sprite=="Cat_icon").Take(100).Select(i=>i.path+" : "+i.sprite+" / "+i.type+" / "+i.color));
    }
}
