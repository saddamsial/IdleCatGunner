using CatGunner.Runtime;
using UnityEngine;

public sealed class Safe_manager : MonoBehaviour
{
    public static Safe_manager instance;
    public int[] Safe_Gun_list;
    public int Purchased_Count;
    public Safe_UI safe_ui;
    public Safe_HUD safe_hud;
    public SafeInventory Inventory {get;private set;}
    private GameClient client;
    public bool Is_Unlocked=>Inventory!=null&&Inventory.Unlocked;
    public int Open_Slot_Count=>Inventory?.OpenCount??6;
    public int Next_Price=>Inventory?.NextPrice??50;
    private void Awake()=>instance=this;
    public void Bind(GameClient owner)
    {
        client=owner;Inventory=new SafeInventory(owner.Inventory,()=>owner.Forest.Stage_Value_Max);
        Inventory.Changed+=Changed;owner.Inventory.Changed+=UI_Reload;UI_Reload();
    }
    private void Changed(){Gun_manager.instance.ReloadGunUI();UI_Reload();client.SafeChanged();}
    public void UI_Reload()
    {
        if(Inventory==null)return;Safe_Gun_list=Inventory.State.Safe_Gun_list;Purchased_Count=Inventory.State.Safe_Purchased_Count;
        if(safe_ui!=null)safe_ui.Reload();if(safe_hud!=null)safe_hud.Reload();
    }
    public int Put_From_Inventory(int index,int expected=-1)
    {
        if(!Is_Unlocked){Alert_Locked();return -1;}
        int at=Inventory.Put(index,expected);if(at<0&&Inventory.FirstEmpty<0)Alert("Safe is full");
        Gun_manager.Feedback(at>=0,9);return at;
    }
    public int Take_Out(int index,int expected=-1)
    {
        int at=Inventory.TakeOut(index,expected);if(at<0&&client.Inventory.FirstEmpty<0)Alert("Inventory is full");
        Gun_manager.Feedback(at>=0,13);if(at>=0)Gun_manager.instance.gunItemList.PlaySpawnBounceAtSlot(at);return at;
    }
    public void Purchase_Slot(int index)=>Gun_manager.Feedback(Inventory.Purchase(index),1);
    public void Open_UI(){if(!Is_Unlocked){Alert_Locked();return;}Gun_manager.Feedback(true,1);safe_ui.Open();}
    public void Alert_Locked(){Alert("Unlock at Stage 40");Gun_manager.Feedback(false);}
    public void Alert(string text)
    {
        // Existing original alert object; translation fallback is a local adapter.
        var alert=Object.FindAnyObjectByType<Alert>(FindObjectsInactive.Include);if(alert!=null)alert.Reload(text);
    }
    private void OnDestroy()
    {
        if(Inventory!=null)Inventory.Changed-=Changed;if(client!=null&&client.Inventory!=null)client.Inventory.Changed-=UI_Reload;
        if(instance==this)instance=null;
    }
}
