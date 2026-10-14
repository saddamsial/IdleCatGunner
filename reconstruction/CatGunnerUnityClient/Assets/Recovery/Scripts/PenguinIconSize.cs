using UnityEngine;
using UnityEngine.UI;
namespace CatGunner.Recovery
{
    [DefaultExecutionOrder(310)]
    public sealed class PenguinIconSize : MonoBehaviour
    {
        public bool Authored;
        Image image;RectTransform space;Vector2 box;Sprite previous;
        public void Configure(RectTransform reference,Vector2 bounds){image=GetComponent<Image>();space=reference;box=bounds;previous=null;Apply();}
        void LateUpdate(){if(image!=null&&image.sprite!=previous)Apply();}
        void Apply()
        {
            if(Authored)return;
            if(image==null||image.sprite==null||space==null)return;previous=image.sprite;
            var rt=image.rectTransform;var parent=rt.parent;
            var sx=space.InverseTransformVector(parent.TransformVector(Vector3.right)).magnitude;
            var sy=space.InverseTransformVector(parent.TransformVector(Vector3.up)).magnitude;
            rt.sizeDelta=new Vector2(box.x/Mathf.Max(.0001f,sx*Mathf.Abs(rt.localScale.x)),box.y/Mathf.Max(.0001f,sy*Mathf.Abs(rt.localScale.y)));image.preserveAspect=true;
        }
    }
}
