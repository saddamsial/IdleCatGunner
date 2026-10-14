using UnityEngine;
namespace CatGunner.Runtime
{
    [DisallowMultipleComponent]
    public sealed class PenguinActorBinding : MonoBehaviour
    {
        public Renderer[] HiddenRenderers;
        public SpriteRenderer Shadow;
        public PenguinCatalogActor Actor;
        public PenguinPetPreview Preview;
    }
}
