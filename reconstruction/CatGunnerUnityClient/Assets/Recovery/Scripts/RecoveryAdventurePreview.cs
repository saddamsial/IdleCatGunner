using UnityEngine;
// Local presentation lifecycle adapter for the external original preview root.
// Keeps its camera off when the Map tab is hidden; no progression mutation.
public sealed class RecoveryAdventurePreview : MonoBehaviour
{
    public Adventure_Panel Panel;
    private void OnEnable()
    {
        if(Panel==null||Panel.RenderTexture_Map_obj==null)return;
        Panel.RenderTexture_Map_obj.SetActive(true);
        Panel.RenderTexture_Map_Reload();
    }
    private void OnDisable()
    {
        if(Panel!=null&&Panel.RenderTexture_Map_obj!=null)Panel.RenderTexture_Map_obj.SetActive(false);
    }
}
