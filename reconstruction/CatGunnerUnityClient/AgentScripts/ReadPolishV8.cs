using System;using System.IO;using System.Linq;using UnityEngine;using UnityEngine.UI;using CatGunner.Runtime;
public static class ReadPolishV8
{
 public static object Main()
 {
  var c=GameClient.Instance;if(Application.dataPath!="/Volumes/ZHITAI_1T/IdleCatGunner/reconstruction/CatGunnerUnityClient/Assets"||!Application.isPlaying||c==null||!c.ReadyForPlay)throw new Exception("Ready correct live client required");
  var cv=c.Slider.GetComponentInParent<Canvas>();var images=cv.GetComponentsInChildren<Image>(true);
  string PathOf(Transform t){return t.parent==null?t.name:PathOf(t.parent)+"/"+t.name;}
  var facts=new {
   scene=c.gameObject.scene.path,readOnly=true,profile=c.SaveFolderOverride,
   loading=images.Where(x=>x.name=="Penguin loading mascot").Select(x=>new{size=x.rectTransform.rect.size.ToString(),sprite=x.sprite.name}).ToArray(),
   handPointers=c.Tutorial.GetComponentsInChildren<PenguinGuidePointer>(true).Select(x=>new{target=x.Target.name,angle=x.Visual.rectTransform.eulerAngles.z,raycast=x.Visual.raycastTarget,size=x.Visual.rectTransform.rect.size.ToString()}).ToArray(),
   entryIcons=new[]{c.Tutorial.GunButton,c.Tutorial.ChallengeButton}.Select(b=>new{b.name,sprites=b.GetComponentsInChildren<Image>(true).Where(x=>x.sprite!=null).Select(x=>x.sprite.name).ToArray()}).ToArray(),
   diamondPacks=images.Where(x=>PathOf(x.transform).Contains("Dia (List)/Dia_Pack")&&x.name=="image").Select(x=>x.sprite.name).ToArray(),
   tierColors=new{weapons=c.Guns.Degree_Colors.Select(ColorUtility.ToHtmlStringRGBA).ToArray(),pets=c.PetUI.Degree_Colors.Select(ColorUtility.ToHtmlStringRGBA).ToArray()},
   mergeSwitches=new[]{c.Guns.OnOff_UI,c.Fish.OnOff_UI,c.PetUI.OnOff_UI}.Select(x=>new{present=x.GetComponent<PenguinMergeSwitch>()!=null,thumb=x.transform.Find("SwitchThumb")!=null,label=x.transform.Find("SwitchState")!=null}).ToArray(),
   fishInfoLayer=c.Fish.fish_info_ui.GetComponent<Canvas>().sortingOrder,
   scrolls=cv.GetComponentsInChildren<ScrollRect>(true).Where(x=>x.name=="OfferScrollView"||PathOf(x.transform).Contains("WeeklyShop")).Select(x=>new{path=PathOf(x.transform),elastic=x.movementType==ScrollRect.MovementType.Elastic,vertical=x.vertical}).ToArray(),
   fills=new[]{c.BossMode.gameSlider.Value_Fill,c.MineMode.gameSlider.Value_Fill,c.MonsterMode.monster_game_slider.Value_Fill}.Select(x=>x.pixelsPerUnitMultiplier).ToArray(),
   missionFills=cv.GetComponentsInChildren<SlicedFilledImage>(true).Where(x=>x.GetComponentInParent<Mission_Reward_Slot>(true)!=null).Select(x=>x.pixelsPerUnitMultiplier).ToArray(),
   backplates=cv.GetComponentsInChildren<Transform>(true).Where(x=>x.name=="BackPanel"&&x.parent.name=="Win_img").Select(x=>x.gameObject.activeSelf).ToArray(),
   claimExitButtons=cv.GetComponentsInChildren<Button>(true).Where(b=>b.name=="Bonus_Btn"||b.name=="NoAds_Btn"||b.name=="Reward_Get_Btn"||b.name=="Exit_Btn").Select(x=>new{path=PathOf(x.transform),normalAlpha=x.colors.normalColor.a,surfaceAlpha=x.targetGraphic==null?0:x.targetGraphic.color.a}).ToArray(),
   targets=Enumerable.Range(0,11).Select(n=>new{stage=n+1,textures=Enumerable.Range(0,4).Select(d=>Tree_manager.Sprite_return(n,d).texture.name).Distinct().ToArray()}).ToArray(),
   petCurrency=images.Where(x=>PathOf(x.transform).Contains("Currency/Petcoin/Image")).Select(x=>x.sprite.name).ToArray(),
   freeCash=cv.GetComponentsInChildren<Button>(true).Where(b=>b.name=="FreeCash_Banner").Select(x=>new{path=PathOf(x.transform),x.interactable}).ToArray()
  };
  string dir=Path.GetFullPath(Application.dataPath+"/../../../art/reskin/penguin-expedition/polish-v8");File.WriteAllText(Path.Combine(dir,"runtime-readonly-audit.json"),Newtonsoft.Json.JsonConvert.SerializeObject(facts,Newtonsoft.Json.Formatting.Indented));return new{facts.readOnly,loading=facts.loading.Length,hands=facts.handPointers.Length,bluePacks=facts.diamondPacks.Length,switches=facts.mergeSwitches.Length,backplates=facts.backplates.Length};
 }
}
