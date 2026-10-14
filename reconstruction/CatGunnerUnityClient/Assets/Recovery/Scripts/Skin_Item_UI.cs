using UnityEngine;
using UnityEngine.UI;
public sealed class Skin_Item_UI : MonoBehaviour
{
    private int _skinNum;public int SkinNum=>_skinNum;public Image Cat_img,Shadow_img;public GameObject Selected_obj,Locked_obj;
    public void First_Reload(int index){_skinNum=index;if(CatGunner.Recovery.RecoveryUiAuthoring.For(transform)?.StaticUiBaked!=true)Cat_img.sprite=Shadow_img.sprite=Skin_manager.instance.Skin_sprites[index];Reload();}
    public void Reload(){var m=Skin_manager.instance;Selected_obj.SetActive(m.Selected_num==_skinNum);Locked_obj.SetActive(!m.is_Unlock(_skinNum));}
    public void Touch()=>Skin_manager.instance.skin_info_ui.Reload(_skinNum);
}
