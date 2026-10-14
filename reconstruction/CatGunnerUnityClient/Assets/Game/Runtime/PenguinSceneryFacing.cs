using UnityEngine;
namespace CatGunner.Runtime
{
    [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "PenguinSceneryFacing")] public sealed class PenguinSceneryFacing:MonoBehaviour
    {void LateUpdate(){if(Camera.main!=null)transform.rotation=Camera.main.transform.rotation;}}
}
