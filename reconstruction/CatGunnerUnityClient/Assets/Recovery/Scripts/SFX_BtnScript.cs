using UnityEngine;
using UnityEngine.UI;
public sealed class SFX_BtnScript:MonoBehaviour
{
 public SfxType _sfx;private Button button;
 private void Start(){button=GetComponent<Button>();button.onClick.AddListener(Sfx);}
 private void Sfx(){if(Sound_manager.instance!=null)Sound_manager.instance.PlaySfx(_sfx);}
 private void OnDestroy(){if(button!=null)button.onClick.RemoveListener(Sfx);}
}
