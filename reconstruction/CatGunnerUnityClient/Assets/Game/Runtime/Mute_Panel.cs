using UnityEngine;

// Native 0x2b44ac8/0x2b44b14. Suppresses shooting SFX; other audio is unchanged.
public sealed class Mute_Panel : MonoBehaviour
{
    private void OnEnable() => Cat_manager.is_Shoot_Mute = true;
    private void OnDisable() => Cat_manager.is_Shoot_Mute = false;
}
