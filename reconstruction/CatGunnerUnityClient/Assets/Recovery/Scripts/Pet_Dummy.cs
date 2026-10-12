using UnityEngine;
// Native Reload/Hide only toggle original skins; Idle is serialized per skin.
public sealed class Pet_Dummy : MonoBehaviour
{
    public GameObject[] Skin_obj;
    public void Reload(int number)
    {
        gameObject.SetActive(true);
        for(int i=0;i<Skin_obj.Length;i++)Skin_obj[i].SetActive(i==number);
    }
    public void Hide()=>gameObject.SetActive(false);
}
