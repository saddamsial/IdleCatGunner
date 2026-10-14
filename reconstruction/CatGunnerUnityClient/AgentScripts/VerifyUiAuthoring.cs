using System;using System.Linq;using UnityEngine;using UnityEngine.UI;using CatGunner.Runtime;
public static class VerifyUiAuthoring
{
 public static object Main()
 {
  var c=UnityEngine.Object.FindAnyObjectByType<GameClient>(FindObjectsInactive.Include);
  var canvas=c.Slider.GetComponentInParent<Canvas>();
  int scrolls=canvas.GetComponentsInChildren<ScrollRect>(true).Count(s=>s.name=="OfferScrollView");
  if(scrolls!=2)throw new Exception("Static offer scroll containers must exist in EditMode: expected 2, actual "+scrolls);
  if(canvas.GetComponentsInChildren<PenguinMergeSwitch>(true).Length!=3)throw new Exception("Three authored merge switches required");
  if(canvas.GetComponentsInChildren<PenguinLoadingMascot>(true).Length!=2)throw new Exception("Both authored status mascots required");
  if(canvas.GetComponentsInChildren<PenguinGuidePointer>(true).Length!=4)throw new Exception("Four authored tutorial pointers required");
  return new{scrolls,playing=Application.isPlaying};
 }
}
