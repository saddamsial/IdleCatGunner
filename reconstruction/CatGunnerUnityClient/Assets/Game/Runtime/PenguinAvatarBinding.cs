using UnityEngine;
using UnityEngine.U2D.Animation;
namespace CatGunner.Runtime
{
    /// <summary>Authored penguin presentation over the existing gameplay rig.</summary>
    [DisallowMultipleComponent]
    public sealed class PenguinAvatarBinding : MonoBehaviour
    {
        public Cat Owner;
        public SpriteRenderer Visual,Shadow;
        public Renderer[] HiddenRenderers;
        public void HideNativeRenderers()
        {
            foreach(var renderer in HiddenRenderers)
            {
                if(renderer==null)continue;
                renderer.enabled=false;
                var skin=renderer.GetComponent<SpriteSkin>();if(skin!=null)skin.enabled=false;
            }
        }
        public void PreviewPose(Camera camera)
        {
            if(camera==null||Visual==null||Shadow==null||Shadow.sprite==null)return;
            var bounds=Shadow.sprite.bounds;
            float width=Mathf.Abs(Vector3.Dot(Shadow.transform.TransformVector(Vector3.right*bounds.size.x),camera.transform.right))
                +Mathf.Abs(Vector3.Dot(Shadow.transform.TransformVector(Vector3.up*bounds.size.y),camera.transform.right));
            float height=width*1.12f;
            Visual.transform.rotation=camera.transform.rotation;
            Visual.transform.localScale=Vector3.one*(height/Visual.sprite.bounds.size.y/Visual.transform.parent.lossyScale.x);
            Visual.transform.position=Shadow.bounds.center+camera.transform.up*(height*.5f+.08f);
        }
    }
}
