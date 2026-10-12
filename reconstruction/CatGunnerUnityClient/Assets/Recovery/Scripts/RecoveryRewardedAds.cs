using System;
using System.Collections;
using UnityEngine;
using UnityEngine.UI;
namespace CatGunner.Recovery
{
    // User-authorized local recovery variant. No ad SDK, network callback,
    // purchase flag or production entitlement is represented by this component.
    public sealed class RecoveryRewardedAds : MonoBehaviour
    {
        public bool Enabled=true;
        public bool Busy {get;private set;}
        public bool IsCompleting {get;private set;}
        public int CompletedWatches {get;private set;}
        RecoveryForestClient client;
        public static RecoveryRewardedAds Current=>RecoveryForestClient.Instance?.RewardedAds;
        public static bool Available=>Current!=null&&Current.Enabled;
        public void Bind(RecoveryForestClient owner)=>client=owner;
        public bool Request(Func<bool> eligible,Action reward)
        {
            if(!Enabled||Busy||client==null||!client.ReadyForPlay||eligible==null||!eligible())return false;
            Busy=true;StartCoroutine(Complete(eligible,reward));return true;
        }
        IEnumerator Complete(Func<bool> eligible,Action reward)
        {
            // Complete on the next frame, retaining the same cancellation and
            // placement gates that a real asynchronous reward callback needs.
            yield return null;
            try
            {
                if(!Enabled||client==null||!client.ReadyForPlay||!eligible())yield break;
                IsCompleting=true;reward();CompletedWatches++;client.SaveNow();
            }
            finally{IsCompleting=false;Busy=false;}
        }
        public void Cancel(){StopAllCoroutines();Busy=false;IsCompleting=false;}
        void OnDisable()=>Cancel();
        public static void Button(GameObject go,bool eligible=true)
        {if(go!=null&&go.TryGetComponent<UnityEngine.UI.Button>(out var b))b.interactable=Available&&eligible;}
    }
}
