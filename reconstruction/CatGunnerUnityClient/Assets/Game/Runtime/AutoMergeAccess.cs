using System;
using UnityEngine;
namespace CatGunner.Runtime
{
 // An entitlement boundary for original PlusPack.Is_Active(2). Never writes
 // purchase history or injects a purchased flag. Native store SDK is unavailable.
 [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "RecoveryAutoMergeAccess")] public static class AutoMergeAccess
 {
  public static Func<bool> EntitlementProvider;
  public static bool LocalPreviewEnabled=>GameClient.Instance!=null&&GameClient.Instance.OfflineAutoMergePreview;
  public static bool Allowed=>Entitled||LocalPreviewEnabled;
  public static bool Entitled=>EntitlementProvider?.Invoke()==true;
  public static void ShowUnavailable(){Gun_manager.Feedback(false);Debug.Log("Auto merge requires original PlusPack 2 entitlement; store connection unavailable in recovered offline client.");}
 }
}
