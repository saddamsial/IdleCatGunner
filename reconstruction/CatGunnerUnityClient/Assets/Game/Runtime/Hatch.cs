using UnityEngine;
using UnityEngine.UI;
public sealed class Hatch:MonoBehaviour
{
 public float Hatch_Size;public RawImage img;
 private void Start()=>Reload();public void Reload(){if(img!=null&&Hatch_Size>0){var r=img.rectTransform.rect;img.uvRect=new Rect(0,0,r.width/Hatch_Size,r.height/Hatch_Size);}}
}
