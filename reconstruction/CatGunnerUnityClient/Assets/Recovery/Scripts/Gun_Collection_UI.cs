using UnityEngine;

// Original vc257 controller and serialized field; no inventory mutations.
public sealed class Gun_Collection_UI : MonoBehaviour
{
    public Gun_Item_Collection[] Gun_Item_list;
    public void UI_Reload()
    {
        for(int i=0;i<Gun_Item_list.Length;i++) Gun_Item_list[i].Reload(i);
        gameObject.SetActive(true);
        transform.SetAsLastSibling(); // Local modal ownership under existing canvas.
    }
}
