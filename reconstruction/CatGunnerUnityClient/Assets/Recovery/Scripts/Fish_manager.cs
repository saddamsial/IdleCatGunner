using System;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;
using CatGunner.Recovery;
public sealed class Fish_manager:MonoBehaviour
{
 public static Fish_manager instance;public Fish_Info[] Fish_info_list;public Sprite[] Fish_sprites,Fish_Real_sprites,Fish_Outline_sprites;
 public New_Fish_UI new_fish_ui;public GameObject fish_ui_obj;public Fish_Info_UI fish_info_ui;
 public TextMeshProUGUI All_Damage_txt,All_CriPer_txt,All_CriVal_txt,AD_Gacha_Count_txt;
 public int FreeGachaCount;public List<int> Inventory;public float[] GachaChances;public Fish_Tank fishTank;
 public bool is_AutoMerge;public OnOff OnOff_UI;public GameObject Auto_Explain_obj,NonAuto_Explain_obj,Auto_Btn_obj,AD_Draw_Icon_obj;
 public Button AD_Gacha_Btn_obj;public Color Color_Disable_Btn;
 public OriginalFishInventory Model{get;private set;}public event Action OnInventoryChanged;
 private RecoveryForestClient client;
 private void Awake()=>instance=this;
    public void AutoMerge_Validate(){if(is_AutoMerge&&!RecoveryAutoMergeAccess.Allowed)Set_AutoMerge(false);}
    private void Update()=>AutoMerge_Validate();
 public void Bind(RecoveryForestClient owner)
 {client=owner;Model=new OriginalFishInventory(owner.State,Fish_info_list);Model.Chances=GachaChances;Inventory=owner.State.FishInventory;Model.Changed+=Changed;Model.RefreshDay();UpdateStatTexts();Gacha_Btn_UI_Reload();AutoMerge_UI_Reload();}
 private void Changed(){UpdateStatTexts();Gacha_Btn_UI_Reload();OnInventoryChanged?.Invoke();client.FishChanged();}
 public void FreeGacha(){if(Model==null)return;Model.RefreshDay();if(Model.State.FreeGachaCount<3){Draw(false);return;}if(RecoveryRewardedAds.Current?.Request(()=>!Model.Full&&Model.State.FreeGachaCount<5&&fish_ui_obj.activeInHierarchy,FreeGacha_RewardGet)!=true)Gun_manager.Feedback(false);}
 public void FreeGacha_RewardGet(){if(RecoveryRewardedAds.Current?.IsCompleting!=true)return;int grade=Model.DrawAd();Gun_manager.Feedback(grade>=0,2);if(grade>=0){fishTank.SpawnFish(grade);ShowNewFishPopup(grade);TryStartAutoMerge();}}
public void PremiumGacha()=>Draw(true);
 private void Draw(bool premium){if(Model==null||!client.ReadyForPlay)return;int grade=Model.Draw(premium);Gun_manager.Feedback(grade>=0,2);if(grade<0)return;fishTank.SpawnFish(grade);ShowNewFishPopup(grade);TryStartAutoMerge();}
 public int TryFusion(int a,int b,int ga=-1,int gb=-1){int grade=Model.Fuse(a,b,ga,gb);if(grade>=0){ShowNewFishPopup(grade);Gun_manager.Feedback(true,3);}return grade;}
 public bool RemoveFish(int index,int grade)=>Model.Delete(index,grade);
 public int GetTotalDamage()=>Model?.Damage??0;public int GetTotalCriPer()=>Model?.CriticalChance??0;public int GetTotalCriVal()=>Model?.CriticalDamage??0;
 public Fish_Info GetFishStat(int grade)=>Fish_info_list[grade];
 public void ReloadFishUI(){if(Model==null)return;fish_ui_obj.SetActive(true);fishTank.ReloadAll();Gacha_Btn_UI_Reload();UpdateStatTexts();AutoMerge_UI_Reload();}
 public void Close(){Fish_DeleteZone.instance?.deletePopup.Close();new_fish_ui.gameObject.SetActive(false);fish_info_ui.gameObject.SetActive(false);fish_ui_obj.SetActive(false);}
 public void ShowNewFishPopup(int grade)=>new_fish_ui.Reload(grade);
 // Native UpdateStatTexts 0x2b5d820: damage bonus, capped critical
 // probability, and total critical multiplier including the base125 percent.
 public void UpdateStatTexts(){if(Model==null)return;All_Damage_txt.text="+"+OriginalNumberText.Format(new DecimalAmount(GetTotalDamage()))+"%";All_CriPer_txt.text=Mathf.Clamp(GetTotalCriPer(),0,100)+"%";All_CriVal_txt.text=OriginalNumberText.Format(new DecimalAmount(125+GetTotalCriVal()))+"%";}
 public void Gacha_Btn_UI_Reload(){if(Model==null)return;Model.RefreshDay();FreeGachaCount=Model.State.FreeGachaCount;AD_Gacha_Count_txt.text=(5-FreeGachaCount)+"/5";AD_Draw_Icon_obj.SetActive(FreeGachaCount>=3);AD_Gacha_Btn_obj.interactable=!Model.Full&&FreeGachaCount<5&&(FreeGachaCount<3||RecoveryRewardedAds.Available);}
 public bool is_AutoMergeAble=>RecoveryAutoMergeAccess.Entitled;
 public bool AutoMerge_Active=>is_AutoMerge&&RecoveryAutoMergeAccess.Allowed;
 public void Set_AutoMerge(bool value){is_AutoMerge=value&&RecoveryAutoMergeAccess.Allowed;AutoMerge_UI_Reload();if(AutoMerge_Active)TryStartAutoMerge();else fishTank.StopAutoMergeChain();}
 public void AutoMerge_Change(){Set_AutoMerge(!is_AutoMerge);if(!RecoveryAutoMergeAccess.Allowed)RecoveryAutoMergeAccess.ShowUnavailable();}
 // Local preview widget stays above native fish canvases (native non-drag order <=2000).
 public void AutoMerge_UI_Reload(){if(Auto_Btn_obj!=null){Auto_Btn_obj.SetActive(RecoveryAutoMergeAccess.Allowed);var canvas=Auto_Btn_obj.GetComponent<Canvas>();if(canvas==null)canvas=Auto_Btn_obj.AddComponent<Canvas>();canvas.overrideSorting=true;canvas.sortingOrder=2001;if(Auto_Btn_obj.GetComponent<GraphicRaycaster>()==null)Auto_Btn_obj.AddComponent<GraphicRaycaster>();}if(!RecoveryAutoMergeAccess.Allowed)is_AutoMerge=false;if(OnOff_UI!=null){if(AutoMerge_Active)OnOff_UI.On();else OnOff_UI.Off();}Auto_Explain_obj?.SetActive(AutoMerge_Active);NonAuto_Explain_obj?.SetActive(!AutoMerge_Active);}
 public void TryStartAutoMerge(){if(AutoMerge_Active&&fishTank.gameObject.activeInHierarchy)fishTank.StartAutoMergeChain();}
 private void OnDestroy(){if(Model!=null)Model.Changed-=Changed;if(instance==this)instance=null;}
}
