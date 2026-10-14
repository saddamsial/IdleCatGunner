using UnityEngine;
using UnityEngine.UI;
public sealed class NewPet_UI : MonoBehaviour
{
    public Image Pet_img,Shadow_img,Panel_img;
    public GameObject[] Degree_objs;
    public void Reload(int pet){gameObject.SetActive(false);Pet_manager.Present(pet,Pet_img,Shadow_img,Panel_img,Degree_objs);gameObject.SetActive(true);}
}
