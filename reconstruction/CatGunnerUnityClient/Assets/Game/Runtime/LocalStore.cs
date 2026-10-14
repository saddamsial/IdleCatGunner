using System;
using System.Collections;
using System.Linq;
using UnityEngine;
namespace CatGunner.Runtime
{
 // Explicitly local payment-success simulator: no store SDK, network, receipt,
 // transaction ID or real-money charge. Rewards use the reviewed native catalog.
 [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "RecoveryLocalStore")] public sealed class LocalStore : MonoBehaviour
 {
  public GameObject ShopUI;
  public GameClient Client {get;private set;}
  public LocalPurchases Model {get;private set;}
  public StepUp StepUpOffer {get;private set;}
  public bool Busy {get;private set;}
  public int Completed {get;private set;}
  public string LastMessage {get;private set;}
  Coroutine pending;
  public void Bind(GameClient owner)
  {
   Client=owner;Model=new LocalPurchases(owner.State,owner.Inventory,owner.Missions,()=>owner.RaidMode.Now());
   owner.Missions.PremiumAccess=()=>owner.OfflinePurchaseSimulation&&Model.PremiumVerified;
   AutoMergeAccess.EntitlementProvider=()=>owner.OfflinePurchaseSimulation&&Model.PlusActive(2);
   PlusPackItem.BindAll(owner);
   StepUpOffer=owner.gameObject.scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<StepUp>(true)).SingleOrDefault();StepUpOffer?.Bind(owner);
   if(ShopUI!=null)foreach(var currency in ShopUI.GetComponentsInChildren<Currency>(true))currency.Bind(owner);
   BindBuffPopup();
  }
  void BindBuffPopup()
  {
   // Original Main button123680 -> Inapp_Purchase_Popup(type3). The popup
   // controller belongs to the excluded store; bind the authorized local adapter.
   var go=Client.Buffs?.Popup?.transform.Find("InApp & FREECASH/BuffPack (Inapp)/BuffPack")?.gameObject;
   if(go==null)return;
   var button=go.GetComponent<UnityEngine.UI.Button>();if(button==null)return;
   // This original branch starts hidden until the commercial controller selects
   // an offer. Select its original art for the explicit local simulation.
   go.transform.parent.gameObject.SetActive(true);
   UiAuthoring.Find(Client.Buffs.Popup.transform,"InApp & FREECASH/FreeCash")?.gameObject.SetActive(false);
   var adapter=go.GetComponent<LocalPurchaseButton>();if(adapter==null)adapter=go.AddComponent<LocalPurchaseButton>();
   adapter.ProductId="buff_pack";adapter.Button=button;adapter.RequireVisiblePage=true;
   button.onClick.RemoveListener(adapter.Purchase);
   bool persistent=Enumerable.Range(0,button.onClick.GetPersistentEventCount()).Any(i=>button.onClick.GetPersistentTarget(i)==adapter&&button.onClick.GetPersistentMethodName(i)==nameof(adapter.Purchase));
   if(!persistent)button.onClick.AddListener(adapter.Purchase);
  }
  public bool CanBuy(string id)=>Client!=null&&Client.ReadyForPlay&&Client.OfflinePurchaseSimulation&&!Busy&&Model!=null&&
   (id!="catgunner_rebirth_single"||(Client.Mode==0&&Client.RebirthUI?.rebirth_fx!=null&&!Client.RebirthUI.rebirth_fx.gameObject.activeSelf))&&
   (id!="catgunner_raid_ticket"||(Client.Mode==0&&!Client.RaidMode.Entering&&!Client.RaidMode.Exiting))&&Model.CanBuy(id);
  public bool Request(string id,Func<bool> stillValid=null)
  {
   if(Client!=null&&id.StartsWith("catgunner_dailygun_",StringComparison.Ordinal))Client.WeeklyGuns.Week_Refresh();
   if((stillValid!=null&&!stillValid())||!CanBuy(id)){Gun_manager.Feedback(false);return false;}Busy=true;pending=StartCoroutine(Complete(id,stillValid));return true;
  }
  IEnumerator Complete(string id,Func<bool> stillValid)
  {
   // A separate frame supplies the same asynchronous boundary as rewarded ads.
   yield return null;pending=null;Busy=false;
   if((stillValid!=null&&!stillValid())||!CanBuy(id)||!Model.Apply(id)){Gun_manager.Feedback(false);yield break;}
   Client.WeeklyGuns?.Bind(Client);Client.RaidMissions?.LoadFromSaveData(Client.State);Client.RaidMissions?.Ticket_Popup_Close();
   Client.RaidMode?.Ticket_Reload();if(Client.RaidMode!=null)Client.RaidMode.Helper_Season_Index=Client.State.Raid_Helper_Season_Index;
   if(id=="catgunner_raid_helper")Client.RaidMode.Helper_Apply();
   if(id=="catgunner_raid_ticket")Client.RaidMode.EnterPurchasedTicket();
   if(id=="catgunner_rebirth_single")Client.RebirthUI.StartLocalPurchasedRebirth();
   if(id.StartsWith("catgunner_stepup_",StringComparison.Ordinal))StepUpOffer?.OnPurchased(int.Parse(id.Substring("catgunner_stepup_".Length)));
   if(id.StartsWith("catgunner_stargem_pig_",StringComparison.Ordinal)||id=="stargem_pig_dynamic")Client.StarGemPig?.OnLocalPurchased();
   if(id.StartsWith("catgunner_core_",StringComparison.Ordinal))Client.Adventure?.RefreshCoreCurrency();
   Client.DiamondPig?.RefreshEntitlements();
   RefreshPlusPresentation();Client.Guns.ReloadGunUI();Client.MissionUI.UI_Reload();Client.AutoUpgrades?.Panel?.Reload();Client.NotifyOfflineStateChanged();Client.SaveNow();
   Completed++;LastMessage="模拟购买成功（未扣款）";Gun_manager.Feedback(true,7);
   // Existing popup, translated here to glyphs already supported by its font.
   UnityEngine.Object.FindAnyObjectByType<Alert>(FindObjectsInactive.Include)?.Reload("Simulated purchase complete\nNo real money charged");
  }
  public void OpenShop(){if(Client==null||!Client.ReadyForPlay||ShopUI==null)return;ShopUI.SetActive(true);ShopUI.transform.SetAsLastSibling();Client.Guns.gun_info_ui.Close();}
  public void CloseShop(){if(ShopUI!=null)ShopUI.SetActive(false);}
  public void Cancel(){if(pending!=null)StopCoroutine(pending);pending=null;Busy=false;}
  int plusMask=-1,plusStage=-1;float plusTick;
  void Update()
  {
   if(Client==null||!Client.ReadyForPlay||Time.unscaledTime<plusTick)return;plusTick=Time.unscaledTime+.25f;Client.RaidMode?.RefreshHelperEntitlements();Client.StarGemPig?.Season_Check();
   int mask=(Client.PlusActive(0)?1:0)|(Client.PlusActive(1)?2:0)|(Client.PlusActive(2)?4:0)|(Client.OfflinePurchaseSimulation?8:0);
   int stage=Client.State.Stage_Value_Max>=190?1:0;
   if(mask==plusMask&&stage==plusStage)return;plusMask=mask;plusStage=stage;RefreshPlusPresentation();
  }
  public void RefreshPlusPresentation()
  {
   foreach(var root in gameObject.scene.GetRootGameObjects())foreach(var item in root.GetComponentsInChildren<PlusPackItem>(true))item.Reload();
   SetBanner(Client.BossMode?.Start_UI?.PlusPack_Banner_obj,0);Client.MineMode?.mineStart_ui?.Banner_Reload();
   SetBanner(Client.MonsterMode?.monster_start_ui?.PlusPack_Banner_obj,2);SetBanner(Client.SpeedRun?.Start_UI?.PlusPack_Banner_obj,2);
  }
  void SetBanner(GameObject obj,int type){if(obj!=null)obj.SetActive(Client.PlusBanner(type));}
  void OnDisable()=>Cancel();
  void OnDestroy(){if(Client!=null&&GameClient.Instance==Client)AutoMergeAccess.EntitlementProvider=null;}
 }
}
