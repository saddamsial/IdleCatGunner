using System;
using UnityEngine;

public sealed class Polling_manager : MonoBehaviour
{
    public Object_struct[] Polling_List;
    public static Polling_manager instance;
    private void Awake() => instance=this;
    public GameObject Object_Polling_Smart(int num) => Polling_List[num].Object_Polling_Smart();
    public GameObject Object_Polling(int num) => Polling_List[num].Object_Polling();
}

[Serializable]
public struct Object_struct
{
    public string Object_str;
    public GameObject[] Objects;
    [NonSerialized] public int Object_Count;
    // Original ring selection 0x2b17de4. It intentionally does not test active state.
    public GameObject Object_Polling()
    {
        var result=Objects[Object_Count];Object_Count=(Object_Count+1)%Objects.Length;return result;
    }
    // 0x2b17bb4: inactive first, then already-dead bullet waiting on trails,
    // otherwise null. No live bullet is stolen and no new object is allocated.
    public GameObject Object_Polling_Smart()
    {
        for(int offset=0;offset<Objects.Length;offset++)
        {
            int index=(Object_Count+offset)%Objects.Length;
            if(!Objects[index].activeInHierarchy) return Take(index);
        }
        for(int offset=0;offset<Objects.Length;offset++)
        {
            int index=(Object_Count+offset)%Objects.Length;
            var bullet=Objects[index].GetComponent<Bullet>();
            if(bullet!=null && bullet.is_Die)
            {
                bullet.CancelInvoke();Objects[index].SetActive(false);return Take(index);
            }
        }
        return null;
    }
    private GameObject Take(int index)
    {
        Object_Count=(index+1)%Objects.Length;return Objects[index];
    }
}
