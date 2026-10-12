using UnityEngine;
using UnityEngine.UI;
public sealed class New_Fish_UI:MonoBehaviour
{
 public Image Fish_img;public GameObject[] Degree_objs;
 public void Reload(int grade){gameObject.SetActive(false);Fish_img.sprite=Fish_manager.instance.Fish_sprites[grade];for(int i=0;i<Degree_objs.Length;i++)Degree_objs[i].SetActive(i==grade);gameObject.SetActive(true);}
 public void Close()=>gameObject.SetActive(false);
}
