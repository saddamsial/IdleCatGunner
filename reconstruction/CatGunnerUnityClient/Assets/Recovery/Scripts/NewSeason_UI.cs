using CatGunner.Recovery;
using UnityEngine;

// Rule66: original vc257 fields and OnEnable/Reload presentation branch.
// Bind is a local bootstrap adapter for the retained source scene objects.
public sealed class NewSeason_UI : MonoBehaviour
{
    public GameObject VIP_Purchase_popup_obj;
    public Mission_Reward_Item[] Mission_Reward_Items;
    bool bound;
    public void Bind(GameObject purchase, Mission_Reward_Item[] items)
    {
        VIP_Purchase_popup_obj=purchase;Mission_Reward_Items=items;bound=true;
        if(gameObject.activeInHierarchy)Reload();
    }
    void OnEnable(){if(bound&&Mission_manager.instance?.Model!=null)Reload();}
    public static int PreviewStart(int level,int rewardCount,int itemCount)
        =>Mathf.Clamp(Mathf.Clamp(level,0,rewardCount)-itemCount,0,Mathf.Max(0,rewardCount-itemCount));
    public void Reload()
    {
        if(!bound||Mission_manager.instance?.Model==null)return;
        var model=Mission_manager.instance.Model;var state=model.State;
        // Native static is_Vip controls presentation. Actual claims continue to
        // require the existing explicit local purchase ownership adapter.
        VIP_Purchase_popup_obj.SetActive(!state.Mission_is_Vip);
        if(state.Mission_is_Vip)return;
        int count=state.EpicReward_Get.Length,start=PreviewStart(state.Mission_Reward_Lv,count,Mission_Reward_Items.Length);
        for(int i=0;i<Mission_Reward_Items.Length;i++)
        {
            var item=Mission_Reward_Items[i];int index=start+i;
            item.gameObject.SetActive(index<count);if(index>=count)continue;
            var reward=model.Reward(index,true);item.First_Reload(1,index,reward.type,reward.value);
            int status=state.EpicReward_Get[index]?2:index<state.Mission_Reward_Lv?1:0;
            item.ReloadPreviewStatus(status);
        }
    }
}
