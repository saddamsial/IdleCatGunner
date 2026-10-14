using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using TMPro;
using UnityEngine;
using UnityEngine.UI;
using CatGunner.Runtime;
public sealed class Adventure_Reward_popup : MonoBehaviour
{
 public GameObject ExpSlider_obj;
 public GameObject Endtxt_obj;
 public GameObject Exp_obj;
 public GameObject Core_obj;
 public GameObject Exit_obj;
 public SlicedFilledImage ExpSlider_Fill;
 public TMPro.TextMeshProUGUI Slider_Lv_txt;
 public TMPro.TextMeshProUGUI Slider_Exp_txt;
 public TMPro.TextMeshProUGUI Reward_Exp_txt;
 public TMPro.TextMeshProUGUI Reward_Core_txt;
 public Image Reward_Core_img;
 public Image RewardCore_Panel_img;
 public Color[] CorePanel_Colors;
 public float ElementGap;
 public float SliderFillDuration;
 public float ExitDelay;

 private Coroutine sequence;public bool Ready=>Exit_obj.activeSelf;
 public void Reload(Map_Type type,int core,int exp,int beforeLv,int beforeExp)
 {
  if(sequence!=null)StopCoroutine(sequence);gameObject.SetActive(true);foreach(var g in new[]{ExpSlider_obj,Endtxt_obj,Exp_obj,Core_obj,Exit_obj})g.SetActive(false);Reward_Core_txt.text=core.ToString();Reward_Exp_txt.text=exp.ToString();Reward_Core_img.sprite=Adventure_manager.Core_sprite_return((int)type);RewardCore_Panel_img.color=CorePanel_Colors[(int)type];sequence=StartCoroutine(PlaySequence(beforeLv,beforeExp,exp));
 }
 private IEnumerator PlaySequence(int lv,int exp,int gain){yield return BounceIn();foreach(var g in new[]{ExpSlider_obj,Endtxt_obj,Exp_obj,Core_obj}){g.SetActive(true);yield return new WaitForSeconds(ElementGap);}yield return FillExp(lv,exp,gain);yield return new WaitForSeconds(ExitDelay);Exit_obj.SetActive(true);sequence=null;}
 private IEnumerator BounceIn(){transform.localScale=new Vector3(1,0,1);float from=0;foreach(var frame in new[]{new[]{1.1f,.15f},new[]{1f,.1f}}){float t=0;while(t<frame[1]){t+=Time.unscaledDeltaTime;transform.localScale=new Vector3(1,Mathf.Lerp(from,frame[0],Mathf.SmoothStep(0,1,t/frame[1])),1);yield return null;}from=frame[0];}transform.localScale=Vector3.one;}
 private int Need(int lv)=>lv>=0&&lv<Adventure_manager.instance.Exp_balance.Length?Mathf.Max(1,Adventure_manager.instance.Exp_balance[lv]):1;
 private void UpdateSliderText(int lv,int exp){Slider_Lv_txt.text=$"Lv.{lv+1}";Slider_Exp_txt.text=lv==15?"Max":$"{exp}/{Need(lv)}";}
 private IEnumerator FillExp(int lv,int exp,int gain){UpdateSliderText(lv,exp);ExpSlider_Fill.fillAmount=lv==15?1:(float)exp/Need(lv);while(lv<15&&gain>0){int need=Need(lv),step=Math.Min(gain,need-exp),target=exp+step;yield return LerpFill((float)exp/need,(float)target/need,lv,exp,target);gain-=step;exp=target;if(exp>=need){lv++;exp=0;UpdateSliderText(lv,exp);ExpSlider_Fill.fillAmount=lv==15?1:0;Gun_manager.Feedback(true,11);}}}
 private IEnumerator LerpFill(float from,float to,int lv,int start,int end){float duration=SliderFillDuration*Mathf.Max(0.009999999776482582f,Mathf.Abs(to-from)),t=0;while(t<duration){t+=Time.unscaledDeltaTime;float a=Mathf.Clamp01(t/duration);ExpSlider_Fill.fillAmount=Mathf.Lerp(from,to,a);UpdateSliderText(lv,Mathf.RoundToInt(Mathf.Lerp(start,end,a)));yield return null;}ExpSlider_Fill.fillAmount=to;UpdateSliderText(lv,end);}
 public void OnClick_Exit(){if(!Ready)return;gameObject.SetActive(false);}
 private void OnDisable(){if(sequence!=null)StopCoroutine(sequence);sequence=null;}

}
