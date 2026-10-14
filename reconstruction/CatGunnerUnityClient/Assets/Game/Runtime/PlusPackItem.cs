using System;
using System.Linq;
using UnityEngine;
using UnityEngine.SceneManagement;
using TMPro;
namespace CatGunner.Runtime
{
 // Original item hierarchy/field references, attached at runtime by a local bridge.
 // Native active/nonpurchase panels and remaining time use the simulated ledger.
 [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "RecoveryPlusPackItem")] public sealed class PlusPackItem : MonoBehaviour
 {
  public bool Authored;
  public int Type;public bool IsBanner;public GameObject ActivePanel,NonPurchasePanel;public TextMeshProUGUI RemainingText;
  GameClient client;float nextTick;
  public bool Active=>client!=null&&client.PlusActive(Type);
  [Serializable] sealed class Node {public string name;public int ordinal;}
  [Serializable] sealed class Fields {public Node[] Active_obj,NonActive_obj,Remain_Time_txt;}
  [Serializable] sealed class Row {public Node[] path;public int type;public bool is_banner;public Fields fields;}
  [Serializable] sealed class Manifest {public Row[] rows;}
  static GameObject Resolve(Scene scene,Node[] path)
  {
   if(path==null)return null;Transform current=null;
   foreach(var n in path){var siblings=current==null?scene.GetRootGameObjects().Select(g=>g.transform):current.Cast<Transform>();current=siblings.Where(t=>t.name==n.name).Skip(n.ordinal).FirstOrDefault();if(current==null)return null;}
   return current?.gameObject;
  }
  public static void BindAll(GameClient owner)
  {
   if(Application.isPlaying&&owner.StaticUiBaked)
   {
    foreach(var item in owner.gameObject.scene.GetRootGameObjects().SelectMany(g=>g.GetComponentsInChildren<PlusPackItem>(true))){item.client=owner;item.Reload();}
    return;
   }
   var asset=Resources.Load<TextAsset>("PlusItems");if(asset==null)throw new InvalidOperationException("Original PlusPack UI manifest missing");
   foreach(var row in JsonUtility.FromJson<Manifest>(asset.text).rows)
   {
    var obj=Resolve(owner.gameObject.scene,row.path);if(obj==null)throw new InvalidOperationException("Original PlusPack item missing: "+row.path.Last().name);
    var item=obj.GetComponent<PlusPackItem>()??obj.AddComponent<PlusPackItem>();item.client=owner;item.Type=row.type;item.IsBanner=row.is_banner;
    item.ActivePanel=Resolve(obj.scene,row.fields.Active_obj);item.NonPurchasePanel=Resolve(obj.scene,row.fields.NonActive_obj);item.RemainingText=Resolve(obj.scene,row.fields.Remain_Time_txt)?.GetComponent<TextMeshProUGUI>();
    if(item.ActivePanel==null||item.NonPurchasePanel==null||item.RemainingText==null)throw new InvalidOperationException("Original PlusPack item references incomplete: "+obj.name);item.Reload();
   }
  }
  public void Reload()
  {
   if(client?.LocalStore?.Model==null)return;bool active=Active;ActivePanel.SetActive(active);NonPurchasePanel.SetActive(!active);
   var remaining=client.LocalStore.Model.PlusRemaining(Type);RemainingText.text=active?Format(remaining):string.Empty;
  }
  // Native uses day plus HH/MM/SS components; language formatting is a local adapter.
  public static string Format(TimeSpan time)=>time<=TimeSpan.Zero?"00:00:00":(time.Days>0?time.Days+"d ":string.Empty)+string.Format("{0:00}:{1:00}:{2:00}",time.Hours,time.Minutes,time.Seconds);
  void OnEnable(){nextTick=0;Reload();}
  void Update(){if(Time.unscaledTime<nextTick)return;nextTick=Time.unscaledTime+.25f;Reload();}
 }
}
