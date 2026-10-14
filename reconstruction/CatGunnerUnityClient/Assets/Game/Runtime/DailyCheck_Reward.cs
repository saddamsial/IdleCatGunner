using UnityEngine;

// Original serialized GUID and vc257 normal/getable/geted visibility and order.
public sealed class DailyCheck_Reward : MonoBehaviour
{
    public int Date;
    public GameObject Getable_obj, Geted_obj;
    public void Click() => DailyCheck.instance?.DailyReward_Get(Date);
    public void Reload(DailyCheck_status status)
    {
        Getable_obj.SetActive(status == DailyCheck_status.Getable);
        Geted_obj.SetActive(status == DailyCheck_status.Geted);
        if (status == DailyCheck_status.Getable) transform.SetAsLastSibling();
    }
}
