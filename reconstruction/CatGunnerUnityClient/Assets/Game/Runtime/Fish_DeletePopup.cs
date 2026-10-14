using UnityEngine;
using UnityEngine.UI;
public sealed class Fish_DeletePopup:MonoBehaviour
{
 public Image Fish_img,Panel_img;public GameObject[] Degree_objs;public Color[] Degree_Colors;private Fish_Item targetFish;private int expectedGrade;
 public void Show(Fish_Item target){Fish_manager.instance.fishTank.StopAutoMergeChain();targetFish=target;expectedGrade=target.grade;target.isPendingDelete=true;Fish_img.sprite=Fish_manager.instance.Fish_sprites[target.grade];if(Degree_Colors.Length>target.grade)Panel_img.color=Degree_Colors[target.grade];for(int i=0;i<Degree_objs.Length;i++)Degree_objs[i].SetActive(i==target.grade);gameObject.SetActive(true);}
 public void OnConfirm(){if(targetFish!=null&&targetFish.isActive&&targetFish.isPendingDelete&&targetFish.grade==expectedGrade)Fish_manager.instance.fishTank.Delete(targetFish);Close();}
 public void OnCancel()=>Close();public void Close(){targetFish=null;if(Fish_manager.instance!=null&&Fish_manager.instance.fishTank!=null)Fish_manager.instance.fishTank.ClearPendingDelete();gameObject.SetActive(false);Fish_manager.instance?.TryStartAutoMerge();}
}
