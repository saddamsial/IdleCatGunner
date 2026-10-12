using System;
using CatGunner.Recovery;
using UnityEngine;
public sealed class StarGem_Pig : MonoBehaviour
{
    public static StarGem_Pig instance;
    public static event Action OnChanged;
    public int Lv=1,Gem,PurchaseCount,Season_Index=-1;
    public StarGem_Pig_UI pig_ui;
    public OriginalStarGemPig Model {get;private set;}
    public RecoveryForestClient Client {get;private set;}
    public int Capacity_Now=>OriginalStarGemPig.CapacityFor(Lv);
    public int PurchaseMax_Now=>OriginalStarGemPig.PurchaseMaxFor(Lv);
    public int Gem_Now=>Gem;
    public float Fill_Ratio=>Mathf.Clamp01((float)Gem/Capacity_Now);
    public bool Is_Full=>Gem>=Capacity_Now;
    public bool Is_SoldOut=>Lv>=3&&PurchaseCount>=PurchaseMax_Now;
    public bool Is_Purchasable=>Is_Full&&!Is_SoldOut;
    public string Product_id_Now=>Product_id_return(Lv);
    public static string Product_id_return(int level)=>"catgunner_stargem_pig_"+Mathf.Clamp(level,1,3);
    void Awake()=>instance=this;
    public void Bind(RecoveryForestClient owner){Client=owner;Model=new OriginalStarGemPig(owner.State,()=>owner.RaidMode.Now());Model.Load();ReloadFromState();}
    // The original Time_manager callbacks are replaced by the local calendar observer.
    public void Season_Check()
    {
        if(Model==null)return;bool changed=Model.SeasonCheck();var s=Model.State;
        // The shared local payment model may reconcile the calendar before this presenter.
        if(changed||Lv!=s.Pig_Lv||Gem!=s.Pig_Gem||PurchaseCount!=s.Pig_PurchaseCount||Season_Index!=s.Pig_Season_Index)ReloadFromState();
    }
    public void ReloadFromState()
    {
        if(Model==null)return;var state=Model.State;Lv=state.Pig_Lv;Gem=state.Pig_Gem;PurchaseCount=state.Pig_PurchaseCount;Season_Index=state.Pig_Season_Index;OnChanged?.Invoke();
    }
    public void OnRaidEnter(){Season_Check();Add(50);}
    public void OnBossBarCleared()=>Add(25);
    public void Add(int amount){if(Model!=null&&Model.Add(amount))ReloadFromState();}
    public void Open_Popup(){if(Client==null||!Client.ReadyForPlay)return;Season_Check();pig_ui.gameObject.SetActive(true);pig_ui.Reload();}
    public void Close_Popup(){if(pig_ui!=null)pig_ui.gameObject.SetActive(false);}
    public void Purchase(string place="raid")
    {
        Season_Check();if(!Is_Purchasable){Gun_manager.Feedback(false);ReloadFromState();return;}
        Client?.LocalStore?.Request(Product_id_Now);
    }
    public void OnLocalPurchased(){ReloadFromState();Client.StarUpgrades?.RefreshWallet();}
    void OnDestroy(){if(instance==this)instance=null;}
}
