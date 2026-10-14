using UnityEngine;
namespace CatGunner.Runtime
{
    // Unity resets an inactive Canvas' native sorting when it opens. The saved
    // authoring order is restored while the popup is active.
    [DefaultExecutionOrder(370)]
    [RequireComponent(typeof(Canvas))]
    [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "PenguinModalLayer")] public sealed class PenguinModalLayer:MonoBehaviour
    {
        public bool Authored;
        [SerializeField] int authoredSortingOrder=10020;
        Canvas overlay;
        public int SortingOrder {get=>authoredSortingOrder;set{authoredSortingOrder=value;Apply();}}
        public void CaptureAuthoredSorting(int order){authoredSortingOrder=order;}
        void OnEnable(){Apply();}
        void LateUpdate(){if(overlay==null||!overlay.overrideSorting||overlay.sortingOrder!=authoredSortingOrder)Apply();}
        void Apply(){if(overlay==null)overlay=GetComponent<Canvas>();overlay.overrideSorting=true;overlay.sortingOrder=Authored?authoredSortingOrder:10020;}
    }
}
