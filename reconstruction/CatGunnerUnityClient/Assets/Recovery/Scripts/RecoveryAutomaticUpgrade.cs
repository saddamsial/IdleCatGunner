using System;
using UnityEngine;

namespace CatGunner.Recovery
{
    // Local owner/event bridge for native Upgrade_manager and Upgrade_list.
    [DefaultExecutionOrder(110)]
    public sealed class RecoveryAutomaticUpgrade : MonoBehaviour
    {
        public AutoUpgrade_UI Panel;
        public RecoveryForestClient Client {get;private set;}
        public event Action Changed;
        [NonSerialized] public Func<DateTime> Now=()=>DateTime.Now;
        bool dirty;
        public bool Active=>Client!=null&&OriginalAutoUpgradeRules.Active(Client.State);
        public bool Paid=>Client!=null&&Client.State.Is_AutoUpgrade_Pack;
        public bool Enabled=>Client!=null&&OriginalAutoUpgradeRules.Enabled(Client.State);
        public bool Able=>Client!=null&&OriginalAutoUpgradeRules.Able(Client.State,Now());
        public bool WatchedToday=>Client!=null&&OriginalAutoUpgradeRules.WatchedToday(Client.State,Now());
        public float Remaining=>Client?.State.AD_AutoUpgrade_RemainSec??0;
        public void Bind(RecoveryForestClient owner)
        {
            if(Client!=null)Client.MoneyChanged-=SetDirty;
            Client=owner;OriginalAutoUpgradeRules.Load(owner.State);owner.MoneyChanged+=SetDirty;dirty=true;
            Panel?.Bind(this);
        }
        void SetDirty()=>dirty=true;
        void Update()
        {
            if(Client==null||!Client.ReadyForPlay)return;
            if(OriginalAutoUpgradeRules.Tick(Client.State,Time.deltaTime,Client.RewardedAds.Busy)){Client.SaveNow();Changed?.Invoke();}
            if(!dirty)return;
            if(Enabled&&!Setting.is_AutoDisable)Client.AutoUpgradeAll();
            dirty=false;
        }
        public bool RequestReward()
        {
            return Client!=null&&Client.RewardedAds.Request(
                ()=>Able&&Panel!=null&&Panel.isActiveAndEnabled,
                ()=>{OriginalAutoUpgradeRules.Reward(Client.State,Now());Client.SaveNow();if(!Setting.is_AutoDisable)Client.AutoUpgradeAll();Changed?.Invoke();});
        }
        public void SetDisabled(bool value){Setting.is_AutoDisable=value;Changed?.Invoke();}
        void OnDestroy(){if(Client!=null)Client.MoneyChanged-=SetDirty;}
    }
}
