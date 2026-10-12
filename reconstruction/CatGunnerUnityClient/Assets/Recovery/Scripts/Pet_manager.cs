using System;
using System.Linq;
using UnityEngine;
using UnityEngine.UI;
using CatGunner.Recovery;

public sealed class Pet_manager : MonoBehaviour
{
    public static Pet_manager instance;
    public Sprite[] Pet_sprites;
    public Color[] Degree_Colors;
    public Pet_Item_List gunItemList;
    public Pet_Slot[] Pet_Slot_List;
    public GameObject Pet_UI_obj,AD_Draw_Btn_obj,Auto_Btn_obj;
    public Pet_Info_UI pet_info_ui;
    public NewPet_UI newPet_ui;
    public bool is_AutoMerge;public int AutoMerge_Degree=6;public OnOff OnOff_UI;public GameObject Auto_Explain_obj,NonAuto_Explain_obj;
    public OriginalPetInventory Inventory {get;private set;}
    TMPro.TMP_Text normalPrice,diamondPrice;Button normalDraw,diamondDraw;
    private void Awake()=>instance=this;
    void BindDrawPrices()
    {
        normalDraw=Pet_UI_obj.GetComponentsInChildren<Button>(true).First(b=>b.name=="Draw_Btn");
        diamondDraw=Pet_UI_obj.GetComponentsInChildren<Button>(true).First(b=>b.name=="Draw_Btn (Dia)");
        normalPrice=normalDraw.transform.Find("Price_txt").GetComponent<TMPro.TMP_Text>();
        diamondPrice=diamondDraw.transform.Find("Price_txt").GetComponent<TMPro.TMP_Text>();
        var currency=Pet_UI_obj.transform.Find("Panel/Currency");
        var wallet=currency.GetComponent<Currency>();if(wallet==null)wallet=currency.gameObject.AddComponent<Currency>();
        wallet.Money_txt=currency.Find("Money/Price_txt").GetComponent<TMPro.TextMeshProUGUI>();
        wallet.Dia_txt=currency.Find("Dia/Price_txt").GetComponent<TMPro.TextMeshProUGUI>();wallet.Bind(RecoveryForestClient.Instance);
        RecoveryForestClient.Instance.MoneyChanged+=Price_Reload;
    }
    public void Price_Reload()
    {
        if(Inventory==null||normalPrice==null)return;
        var red=RecoveryForestClient.Instance.UpgradePanels[0].Color_Disable;
        normalPrice.color=Inventory.State.PetCoin>=100?Color.white:red;
        diamondPrice.color=Inventory.State.Dia>=100?Color.white:red;
        normalDraw.interactable=Inventory.State.PetCoin>=100&&Inventory.FirstEmpty>=0;
        diamondDraw.interactable=Inventory.State.Dia>=100&&Inventory.FirstEmpty>=0;
    }
    public void AutoMerge_Validate(){if(is_AutoMerge&&!RecoveryAutoMergeAccess.Allowed)Set_AutoMerge(false);}
    private void Update()=>AutoMerge_Validate();
    public void Bind(OriginalPetInventory inventory){Inventory=inventory;BindDrawPrices();inventory.Changed+=Pet_Reload;inventory.Acquired+=OnAcquired;AD_Draw_Btn_Reload();if(Auto_Btn_obj!=null)Auto_Btn_obj.GetComponent<Button>().interactable=true;Pet_Reload();}
    private void OnAcquired(int pet,bool first){if(first&&newPet_ui!=null)newPet_ui.Reload(pet);}
    public void Pet_Reload(){if(Inventory==null)return;if(gunItemList!=null)gunItemList.ReloadList();foreach(var slot in Pet_Slot_List??Array.Empty<Pet_Slot>())if(slot!=null)slot.Reload();AD_Draw_Btn_Reload();AutoMerge_UI_Reload();TryStartAutoMerge();Price_Reload();}
    public void ReloadPetUI()=>Pet_Reload();
    public void Panel_Open(){Pet_UI_obj.SetActive(true);Pet_Reload();}
    public void Pet_Info_UI_Reload(int pet){if(pet_info_ui!=null)pet_info_ui.Reload(pet);}
    public void DrawPet_Normal()=>DrawPet(false);
    public void DrawPet_Dia()=>DrawPet(true);
    private void DrawPet(bool diamonds){int slot=Inventory?.FirstEmpty??-1;int pet=Inventory?.Draw(diamonds)??-1;Gun_manager.Feedback(pet>=0,2);if(pet>=0)gunItemList.PlaySpawnBounceAtSlot(slot);}
    public bool Is_AD_Daily_Pet_Able=>Inventory!=null&&(Inventory.State.Wave_Now>0||Inventory.State.Lv_Now>0)&&Inventory.State.AD_Daily_Pet_LastDate!=DateTime.Now.ToString("yyyyMMdd")&&Inventory.FirstEmpty>=0;
    public void AD_Draw_Btn_Reload()=>RecoveryRewardedAds.Button(AD_Draw_Btn_obj,Is_AD_Daily_Pet_Able);
    public void AD_Draw_Btn_Click(){if(RecoveryRewardedAds.Current?.Request(()=>Is_AD_Daily_Pet_Able,AD_Daily_Pet_RewardGet)!=true)Gun_manager.Feedback(false);}
    public void AD_Daily_Pet_RewardGet(){if(RecoveryRewardedAds.Current?.IsCompleting!=true)return;int slot=Inventory.FirstEmpty;int pet=Inventory.DrawDailyAd(DateTime.Now);Gun_manager.Feedback(pet>=0,2);if(pet>=0)gunItemList.PlaySpawnBounceAtSlot(slot);AD_Draw_Btn_Reload();}
    public bool is_AutoMergeAble=>RecoveryAutoMergeAccess.Entitled;
    public bool AutoMerge_Active=>is_AutoMerge&&RecoveryAutoMergeAccess.Allowed;
    public int Max_Collected_Degree {get{for(int i=(Inventory.State.Pet_Collect?.Length??0)-1;i>=0;i--)if(Inventory.State.Pet_Collect[i])return i;return -1;}}
    public int AutoMerge_Limit_Degree=>Math.Min(6,Math.Min(AutoMerge_Degree,Max_Collected_Degree-1));
    public void Set_AutoMerge(bool value){is_AutoMerge=value&&RecoveryAutoMergeAccess.Allowed;AutoMerge_UI_Reload();if(AutoMerge_Active)TryStartAutoMerge();else gunItemList.StopAutoMergeChain();}
    public void AutoMerge_Change(){Set_AutoMerge(!is_AutoMerge);if(!RecoveryAutoMergeAccess.Allowed)RecoveryAutoMergeAccess.ShowUnavailable();}
    public void AutoMerge_UI_Reload(){Auto_Btn_obj?.SetActive(RecoveryAutoMergeAccess.Allowed);if(!RecoveryAutoMergeAccess.Allowed)is_AutoMerge=false;if(OnOff_UI!=null){if(AutoMerge_Active)OnOff_UI.On();else OnOff_UI.Off();}Auto_Explain_obj?.SetActive(AutoMerge_Active);NonAuto_Explain_obj?.SetActive(!AutoMerge_Active);}
    public void TryStartAutoMerge(){if(AutoMerge_Active&&gunItemList.gameObject.activeInHierarchy)gunItemList.StartAutoMergeChain();}

    public static void Present(int pet,Image image,Image shadow,Image panel,GameObject[] degrees)
    {var o=instance;if(o==null||pet<0||pet>=10)return;if(image!=null)image.sprite=o.Pet_sprites[pet];if(shadow!=null)shadow.sprite=o.Pet_sprites[pet];if(panel!=null)panel.color=o.Degree_Colors[pet];for(int i=0;i<(degrees?.Length??0);i++)if(degrees[i]!=null)degrees[i].SetActive(i==pet);}
    private void OnDestroy(){if(RecoveryForestClient.Instance!=null)RecoveryForestClient.Instance.MoneyChanged-=Price_Reload;if(Inventory!=null){Inventory.Changed-=Pet_Reload;Inventory.Acquired-=OnAcquired;}if(instance==this)instance=null;}
}
