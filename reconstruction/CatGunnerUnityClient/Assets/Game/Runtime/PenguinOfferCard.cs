using UnityEngine;
using UnityEngine.UI;
using TMPro;
namespace CatGunner.Runtime
{
    [DefaultExecutionOrder(340)]
    [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "PenguinOfferCard")] public sealed class PenguinOfferCard : MonoBehaviour
    {
        [SerializeField] Image surface;
        [SerializeField] TMP_Text status;
        [SerializeField] StepUp_Item_UI step;
        [SerializeField] DailyGun_Item weekly;
        [SerializeField] PlusPackItem plus;
        public Color AvailableColor=new Color32(255,213,130,255),PurchasedColor=new Color32(151,195,173,255),LockedColor=new Color32(144,163,182,255);
        float tick;
        public int State {get;private set;}=-1;
        void Awake(){if(surface!=null&&status!=null)Refresh();}
        public void Configure(Sprite panel)
        {
            if(status!=null)return;
            surface=GetComponent<Image>()??gameObject.AddComponent<Image>();surface.sprite=panel;surface.type=Image.Type.Sliced;
            step=GetComponent<StepUp_Item_UI>();weekly=GetComponent<DailyGun_Item>();plus=GetComponent<PlusPackItem>();
            var source=GetComponentInChildren<TMP_Text>(true);
            var go=new GameObject("OfferState",typeof(RectTransform),typeof(Image));go.transform.SetParent(transform,false);var rt=(RectTransform)go.transform;rt.anchorMin=rt.anchorMax=new Vector2(.5f,1);rt.sizeDelta=new Vector2(240,48);rt.anchoredPosition=new Vector2(40,-22);go.GetComponent<Image>().sprite=panel;go.GetComponent<Image>().type=Image.Type.Sliced;go.GetComponent<Image>().color=PenguinUiTheme.Navy;go.GetComponent<Image>().raycastTarget=false;
            var text=new GameObject("Label",typeof(RectTransform),typeof(TextMeshProUGUI));text.transform.SetParent(rt,false);status=text.GetComponent<TextMeshProUGUI>();status.font=source!=null?source.font:TMP_Settings.defaultFontAsset;status.fontSize=26;status.color=Color.white;status.alignment=TextAlignmentOptions.Center;status.raycastTarget=false;status.rectTransform.anchorMin=Vector2.zero;status.rectTransform.anchorMax=Vector2.one;status.rectTransform.sizeDelta=Vector2.zero;
            foreach(var child in new[]{transform.Find("Purchased_obj"),transform.Find("Disable_obj")})
                if(child!=null&&child.TryGetComponent<Image>(out var image))image.color=child.name=="Purchased_obj"?new Color(.12f,.29f,.24f,.38f):new Color(.10f,.18f,.27f,.48f);
            var purchase=transform.Find("Purchase_Btn/Image")?.GetComponent<Image>();if(purchase!=null)purchase.color=new Color32(233,155,37,255);
            Refresh();
        }
        void LateUpdate(){if(surface==null||Time.unscaledTime<tick)return;tick=Time.unscaledTime+.15f;Refresh();}
        void Refresh()
        {
            int state=0;
            if(step!=null&&StepUp.instance?.Model!=null)state=StepUp.instance.Purchased[step.Step_Num]?1:StepUp.instance.Is_Purchasable(step.Step_Num)?0:2;
            else if(weekly!=null&&DailyGun.instance?.Bound==true)state=DailyGun.instance.Remain_Count_return(weekly.Item_Idx)>0?0:1;
            else if(plus!=null)state=plus.Active?1:0;
            State=state;surface.color=state==0?AvailableColor:state==1?PurchasedColor:LockedColor;
            WeaponText.Set(status,state==0?"当前可购买":state==1?"已购买":"未解锁");
            if(plus!=null){var active=plus.ActivePanel.GetComponent<Image>();if(active!=null)active.color=PurchasedColor;var offer=plus.NonPurchasePanel.GetComponent<Image>();if(offer!=null)offer.color=AvailableColor;}
        }
    }
}
