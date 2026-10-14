using System;
using UnityEngine;

namespace CatGunner.Runtime
{
    // Local owner/event bridge for native Upgrade_manager and Upgrade_list.
    [DefaultExecutionOrder(110)]
    [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "RecoveryAutomaticUpgrade")] public sealed class AutomaticUpgrade : MonoBehaviour
    {
        public AutoUpgrade_UI Panel;
        public GameClient Client {get;private set;}
        public event Action Changed;
        [NonSerialized] public Func<DateTime> Now=()=>DateTime.Now;
        bool dirty;
        public bool Active=>Client!=null&&AutoUpgradeRules.Active(Client.State);
        public bool Paid=>Client!=null&&Client.State.Is_AutoUpgrade_Pack;
        public bool Enabled=>Client!=null&&AutoUpgradeRules.Enabled(Client.State);
        public bool Able=>Client!=null&&AutoUpgradeRules.Able(Client.State,Now());
        public bool WatchedToday=>Client!=null&&AutoUpgradeRules.WatchedToday(Client.State,Now());
        public float Remaining=>Client?.State.AD_AutoUpgrade_RemainSec??0;
        public void Bind(GameClient owner)
        {
            if(Client!=null)Client.MoneyChanged-=SetDirty;
            Client=owner;AutoUpgradeRules.Load(owner.State);owner.MoneyChanged+=SetDirty;dirty=true;
            Panel?.Bind(this);
        }
        void SetDirty()=>dirty=true;
        void Update()
        {
            if(Client==null||!Client.ReadyForPlay)return;
            if(AutoUpgradeRules.Tick(Client.State,Time.deltaTime,Client.RewardedAds.Busy)){Client.SaveNow();Changed?.Invoke();}
            if(!dirty)return;
            if(Enabled&&!Setting.is_AutoDisable)Client.AutoUpgradeAll();
            dirty=false;
        }
        public bool RequestReward()
        {
            return Client!=null&&Client.RewardedAds.Request(
                ()=>Able&&Panel!=null&&Panel.isActiveAndEnabled,
                ()=>{AutoUpgradeRules.Reward(Client.State,Now());Client.SaveNow();if(!Setting.is_AutoDisable)Client.AutoUpgradeAll();Changed?.Invoke();});
        }
        public void SetDisabled(bool value){Setting.is_AutoDisable=value;Changed?.Invoke();}
        void OnDestroy(){if(Client!=null)Client.MoneyChanged-=SetDirty;}
    }
}
