using System;
using UnityEngine;
using Cysharp.Threading.Tasks;
using CatGunner.Runtime;

public sealed class Polling_manager : MonoBehaviour
{
    public Object_struct[] Polling_List;
    public static Polling_manager instance;
    [SerializeField] private string contentResource;
    private DeferredPrefabSlot content;
    public bool IsReady => string.IsNullOrEmpty(contentResource) || content?.Instance != null;
    private void Awake()
    {
        instance=this;
        if(!string.IsNullOrEmpty(contentResource))content=new DeferredPrefabSlot(contentResource,transform,destroyCancellationToken);
    }
    public async UniTask PrepareAsync()
    {
        if(content==null)return;
        var root=await content.LoadAsync();
        Polling_List=root.GetComponent<ProjectilePoolContent>().Pools;
        for(int i=0;i<Polling_List.Length;i++)Polling_List[i].CacheBullets();
    }
    private void OnDestroy(){if(instance==this)instance=null;content?.Release();}
    public GameObject Object_Polling_Smart(int num) => IsReady ? Polling_List[num].Object_Polling_Smart() : null;
    public GameObject Object_Polling(int num) => Polling_List[num].Object_Polling();
}

[Serializable]
public struct Object_struct
{
    public string Object_str;
    public GameObject[] Objects;
    [NonSerialized] public int Object_Count;
    [NonSerialized] private Bullet[] bullets;
    public void CacheBullets()
    {
        if(bullets!=null&&bullets.Length==Objects.Length)return;
        bullets=new Bullet[Objects.Length];
        for(int i=0;i<Objects.Length;i++)bullets[i]=Objects[i].GetComponent<Bullet>();
    }
    // Original ring selection 0x2b17de4. It intentionally does not test active state.
    public GameObject Object_Polling()
    {
        var result=Objects[Object_Count];Object_Count=(Object_Count+1)%Objects.Length;return result;
    }
    // 0x2b17bb4: inactive first, then already-dead bullet waiting on trails,
    // otherwise null. No live bullet is stolen and no new object is allocated.
    public GameObject Object_Polling_Smart()
    {
        CacheBullets();
        for(int offset=0;offset<Objects.Length;offset++)
        {
            int index=(Object_Count+offset)%Objects.Length;
            if(!Objects[index].activeInHierarchy) return Take(index);
        }
        for(int offset=0;offset<Objects.Length;offset++)
        {
            int index=(Object_Count+offset)%Objects.Length;
            var bullet=bullets[index];
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
