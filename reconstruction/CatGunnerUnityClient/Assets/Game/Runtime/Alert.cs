using TMPro;
using UnityEngine;
public sealed class Alert : MonoBehaviour
{
    public TextMeshProUGUI txt;
    public void Reload(string value)
    {
        txt.text=value;
        // Local reuse of the original alert and Animator, rather than UI_manager's
        // commercial global pool bootstrap. Original Destroy_Time handles lifetime.
        if(gameObject.activeSelf)gameObject.SetActive(false);gameObject.SetActive(true);transform.SetAsLastSibling();
    }
}
