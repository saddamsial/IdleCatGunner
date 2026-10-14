using CatGunner.Runtime;
using UnityEngine;
using UnityEngine.UI;
// Only original cash-purchase callbacks are replaced. Other click listeners and
// the original art/price labels remain. This adapter never contacts a store.
[DefaultExecutionOrder(200)]
public sealed class LocalPurchaseButton : MonoBehaviour
{
 public string ProductId;
 public Button Button;
 [System.NonSerialized] public bool RequireVisiblePage;
 int visibilityRevision;
 public void Purchase()
 {
  var store=GameClient.Instance?.LocalStore;
  if(ProductId=="navigation_Panel_Open"){store?.OpenShop();return;}
  if(ProductId=="navigation_Panel_Close"){store?.CloseShop();return;}
  if(store==null)return;
  if(!RequireVisiblePage){store.Request(ProductId);return;}
  int revision=visibilityRevision,mode=store.Client.Mode;string product=ProductId;
  store.Request(product,()=>this!=null&&isActiveAndEnabled&&gameObject.activeInHierarchy&&
   revision==visibilityRevision&&ProductId==product&&GameClient.Instance==store.Client&&store.Client.Mode==mode);
 }
 void LateUpdate()
 {
  var store=GameClient.Instance?.LocalStore;if(Button==null||store==null)return;
  RefreshPassPresentation(store);RefreshCorePresentation(store);
  Button.interactable=ProductId.StartsWith("navigation_")?store.Client.ReadyForPlay:store.CanBuy(ProductId);
 }
 float coreTick;Transform coreSoldOut;TMPro.TMP_Text coreCount,coreRemaining;bool coreResolved;
 void RefreshCorePresentation(LocalStore store)
 {
  if(!ProductId.StartsWith("catgunner_core_"))return;
  if(!coreResolved){coreResolved=true;coreSoldOut=transform.Find("SoldOut_obj");coreCount=transform.Find("Count_txt")?.GetComponent<TMPro.TMP_Text>();coreRemaining=coreSoldOut?.Find("CoolTime_txt")?.GetComponent<TMPro.TMP_Text>();}
  if(coreSoldOut==null||Time.unscaledTime<coreTick)return;coreTick=Time.unscaledTime+.25f;
  bool available=store.Model.CanBuy(ProductId);coreSoldOut.gameObject.SetActive(!available);if(coreCount!=null)coreCount.text=available?"1/1":"0/1";
  if(!available&&coreRemaining!=null)
  {
   var state=store.Client.State;string date=ProductId=="catgunner_core_daily_750"?state.LastDailyCorePurchase_Date:ProductId=="catgunner_core_weekly_1750"?state.LastWeeklyCorePurchase_Date:state.LastWeekly6000CorePurchase_Date;
   if(System.DateTime.TryParse(date,System.Globalization.CultureInfo.InvariantCulture,System.Globalization.DateTimeStyles.RoundtripKind,out var bought))
   {var remaining=bought.AddHours(ProductId=="catgunner_core_daily_750"?24:168)-store.Model.Now();long seconds=System.Math.Max(0,(long)System.Math.Ceiling(remaining.TotalSeconds));coreRemaining.text=(seconds/3600)+"h "+(seconds/60%60)+"m "+(seconds%60)+"s";}
  }
 }
 bool? shownPurchased;
 public void RefreshPassPresentation(LocalStore store)
 {
  bool vip=ProductId=="vip_pass",luxury=ProductId=="catgunner_luxury_pass"||ProductId=="catgunner_luxury_upgrade";
  if(!vip&&!luxury)return;
  if(luxury)ProductId=store.Client.State.Mission_is_Vip&&!store.Client.State.Mission_is_Luxury?"catgunner_luxury_upgrade":"catgunner_luxury_pass";
  // Only the original card root owns its authored purchased/offer overlays.
  var purchased=transform.Find("Purchased_obj");if(purchased==null)return;
  bool owned=vip?store.Client.State.Mission_is_Vip:store.Client.State.Mission_is_Luxury;
  if(shownPurchased!=owned)
  {
   shownPurchased=owned;purchased.gameObject.SetActive(owned);
   var purchase=transform.Find("Purchase_Btn");if(purchase!=null)purchase.gameObject.SetActive(!owned);
   var glow=transform.Find("Glow");if(glow!=null)glow.gameObject.SetActive(!owned);
  }
  if(luxury)
  {
   var purchase=transform.Find("Purchase_Btn");var price=purchase?.Find("Price_txt");var upgrade=purchase?.Find("Price_txt (Upgrade)");
   bool upgrading=store.Client.State.Mission_is_Vip&&!owned;
   if(price!=null)price.gameObject.SetActive(!upgrading);if(upgrade!=null)upgrade.gameObject.SetActive(upgrading);
  }
 }
 void OnDisable()=>visibilityRevision++;
}
