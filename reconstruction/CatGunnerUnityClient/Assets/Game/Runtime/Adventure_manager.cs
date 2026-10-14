using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using TMPro;
using UnityEngine;
using UnityEngine.UI;
using CatGunner.Runtime;
public sealed class Adventure_manager : MonoBehaviour
{
 private int[] Adventure_Duration_Balance,Adventure_PetSlot_Unlock_Balance;
 public Adventure_Map_Info_list[] Map_list;
 public int[] Currency_Core;
 public int Lv;
 public int Exp;
 public int[] Exp_balance;
 public Adventure_Panel adventure_panel_ui;
 public Adventure_Exit_Panel adventure_exit_panel;
 public GameObject Alert_obj;
 public int Ticket_Now;
 public System.DateTime Last_Ticket_Charge_dateTime;
 public int AD_Reduce_UseCount;
 public string AD_Reduce_LastDate;
 public Sprite[] Core_sprites;

 public static Adventure_manager instance;public static event Action OnCoreChanged;
 public GameObject LocalAdventureMenu;public Menu LocalTabs;public AdventureProgression Progression{get;private set;}
 public GameClient Client{get;private set;}public Func<DateTime> Now=()=>DateTime.Now;
 private void Awake()=>instance=this;
 public void Bind(GameClient client){Client=client;Progression=new AdventureProgression(client.State,null,()=>Now());Progression.Changed+=Changed;Progression.Rewarded+=Reward;BindPrismPurchase();Sync();InvokeRepeating(nameof(Alert_Tick),1,10);}
 public GameObject PrismCorePurchasePopup {get;private set;}
 TMP_Text[] coreWalletTexts;
 TMP_Text prismWalletText;
 void BindPrismPurchase()
 {
  var canvas=Client.Slider.GetComponentInParent<Canvas>().rootCanvas.transform;
  PrismCorePurchasePopup=canvas.Find("Adventure_manager/PrismCore_Purchase_popup").gameObject;
  coreWalletTexts=new[]{"Forest","Desert","Tundra","ALL"}.Select(name=>adventure_panel_ui.transform.Find("Currency_Core/Core ("+name+")/Count_txt").GetComponent<TMP_Text>()).ToArray();
  prismWalletText=PrismCorePurchasePopup.transform.Find("Panel/PrismCore_Panel/Currency_Core/Core (ALL)/Count_txt").GetComponent<TMP_Text>();
  var banner=adventure_panel_ui.transform.Find("PrismCore_Panel").GetComponent<Button>();
  banner.interactable=true;banner.onClick.RemoveListener(OpenPrismPurchase);banner.onClick.AddListener(OpenPrismPurchase);
  foreach(var close in PrismCorePurchasePopup.GetComponentsInChildren<Button>(true).Where(b=>b.name.ToLowerInvariant().Contains("close")))
  {close.onClick.RemoveListener(ClosePrismPurchase);close.onClick.AddListener(ClosePrismPurchase);}
 }
 public void OpenPrismPurchase()
 {
  if(Client==null||!Client.ReadyForPlay||!LocalAdventureMenu.activeInHierarchy)return;
  Sync();
  PrismCorePurchasePopup.SetActive(true);
  var overlay=PrismCorePurchasePopup.GetComponent<Canvas>();if(overlay==null)overlay=PrismCorePurchasePopup.AddComponent<Canvas>();overlay.overrideSorting=true;overlay.sortingOrder=10000;
  if(PrismCorePurchasePopup.GetComponent<GraphicRaycaster>()==null)PrismCorePurchasePopup.AddComponent<GraphicRaycaster>();
 }
 public void RefreshCoreCurrency()=>Changed();
 public void ClosePrismPurchase()=>PrismCorePurchasePopup.SetActive(false);
 private void Sync(){if(Progression==null)return;var s=Progression.State;Lv=s.Adventure_Lv;Exp=s.Adventure_Exp;Currency_Core=s.Adventure_Currency_Core;Ticket_Now=s.Adventure_Ticket_Now;Exp_balance=Progression.Catalogue.ExpBalance;Adventure_Duration_Balance=Progression.Catalogue.DurationHours;Adventure_PetSlot_Unlock_Balance=Progression.Catalogue.PetSlotUnlockLevels;if(coreWalletTexts!=null){for(int i=0;i<4;i++)WeaponText.Set(coreWalletTexts[i],NumberText.Format(new DecimalAmount(Currency_Core[i])));WeaponText.Set(prismWalletText,NumberText.Format(new DecimalAmount(Currency_Core[3])));}}
 private void Changed(){Sync();Client.PetUI.Pet_Reload();adventure_panel_ui.Refresh();Client.Relics.UI_Reload();OnCoreChanged?.Invoke();Client.SaveNow();}
 private void Reward(Map_Type t,int core,int exp,int beforeLv,int beforeExp)=>adventure_panel_ui.Reward_Popup_Open(t,core,exp,beforeLv,beforeExp);
 public void Open(){if(Progression==null)return;Sync();LocalAdventureMenu.SetActive(true);LocalTabs.Menu_Reload(0);adventure_panel_ui.Refresh();}
 public void Close(){PrismCorePurchasePopup?.SetActive(false);LocalAdventureMenu.SetActive(false);adventure_panel_ui.Adventure_Maplist_popup.SetActive(false);adventure_panel_ui.Adventure_Enter_popup.gameObject.SetActive(false);adventure_panel_ui.Adventure_Enter_popup.petSelect_popup.gameObject.SetActive(false);adventure_exit_panel.gameObject.SetActive(false);adventure_panel_ui.Adventure_Reward_popup.gameObject.SetActive(false);}
 public int CoreCount_return(Core_Type t)=>Progression?.State.Adventure_Currency_Core[(int)t]??0;
 public static Sprite Core_sprite_return(int type)=>instance.Core_sprites[type];public static Sprite Core_sprite_return(Core_Type t)=>Core_sprite_return((int)t);
 public int Adventure_Duration_return(int i)=>Progression.Catalogue.DurationHours[i];public int Adventure_PetSlot_OpenCount_return()=>Progression.OpenSlots;
 public int Adventure_Reward_Core_return(List<int> grades,int i)=>Progression.CoreReward(grades,i);public int Adventure_Reward_Exp_return(int i)=>Adventure_Duration_return(i)*10;
 public List<int> Dispatched_Grades_return(Map_Type t,int i)=>Progression.Grades(t,i);
 public bool is_OpenDay_return(Map_Type t)=>AdventureRules.OpenDay(t,Now().DayOfWeek);public bool is_Unlock_return(int i)=>Progression.Unlocked(i);
 public bool is_Entered_return(Map_Type t,int i)=>Progression.Map(t,i).is_Enter;public bool is_Finish_return(Map_Type t,int i)=>is_Entered_return(t,i)&&Progression.Remaining(t,i)<=TimeSpan.Zero;
 public Adventure_Map_Status Map_Status_return(Map_Type t,int i)=>Progression.Status(t,i);
 public TimeSpan Adventure_Remain_Duration_return(Map_Type t,int i)=>Progression.Remaining(t,i);
 public bool Adventure_Start(Map_Type t,int i,Dispatch_Pet[] pets){bool ok=Progression.Start(t,i,pets);if(ok)Gun_manager.Feedback(true,10);else Gun_manager.Feedback(false);return ok;}
 public void Adventure_Reward_Get(Map_Type t,int i){if(Progression.Claim(t,i))Gun_manager.Feedback(true,7);}
 public void Adventure_Cancel(Map_Type t,int i)=>Progression.Cancel(t,i);
 public void Alert_Tick(){if(Progression==null)return;Sync();Alert_Reload();}
 public void Alert_Reload(){if(Progression==null)return;bool alert=Currency_Core.Any(v=>v>=20)||Enumerable.Range(0,3).Any(t=>Progression.HasFinish((Map_Type)t));if(Alert_obj!=null)Alert_obj.SetActive(alert);adventure_panel_ui.Alert_Reload();}
 public void Ticket_Refresh(){if(Progression==null)return;if(Progression.RefreshTickets())Client.SaveNow();Sync();}
 // Native local reward placement 13: highest unlocked, active dispatch only.
 public void AD_Reduce_DayCheck()
 {
  if(Progression==null)return;var state=Progression.State;string today=Now().ToString("yyyyMMdd",System.Globalization.CultureInfo.InvariantCulture);
  if(state.Adventure_AD_Reduce_LastDate!=today){state.Adventure_AD_Reduce_LastDate=today;state.Adventure_AD_Reduce_UseCount=0;}
  AD_Reduce_LastDate=state.Adventure_AD_Reduce_LastDate;AD_Reduce_UseCount=state.Adventure_AD_Reduce_UseCount;
 }
 public bool AD_Reduce_Able_return(Map_Type type,int index)
 {
  if(Progression==null||(int)type<0||(int)type>2||index<0||index>=5||AutoMergeAccess.Entitled)return false;
  int max=Enumerable.Range(0,5).Where(Progression.Unlocked).DefaultIfEmpty(-1).Max();
  if(index!=max||Progression.Status(type,index)!=Adventure_Map_Status.Entered)return false;
  AD_Reduce_DayCheck();return AD_Reduce_UseCount<2;
 }
 public void AD_Reduce_Request(Map_Type type,int index)
 {
  if(RewardedAds.Current?.Request(()=>AD_Reduce_Able_return(type,index),()=>AD_Reduce_RewardGet(type,index))!=true)Gun_manager.Feedback(false);
 }
 void AD_Reduce_RewardGet(Map_Type type,int index)
 {
  if(RewardedAds.Current?.IsCompleting!=true||!AD_Reduce_Able_return(type,index))return;
  var state=Progression.State;var map=Progression.Map(type,index);
  map.Enter_dateTime=AdventureRules.ParseDate(map.Enter_dateTime).AddMinutes(-30).ToString("O",System.Globalization.CultureInfo.InvariantCulture);
  state.Adventure_AD_Reduce_UseCount++;AD_Reduce_DayCheck();adventure_panel_ui.Refresh();Alert_Reload();Client.SaveNow();
 }
 private void OnDestroy(){CancelInvoke();if(Progression!=null){Progression.Changed-=Changed;Progression.Rewarded-=Reward;}if(instance==this)instance=null;}

}
