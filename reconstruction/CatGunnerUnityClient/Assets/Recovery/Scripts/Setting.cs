using System;
using UnityEngine;
using UnityEngine.UI;

// Toggle logic: exact-native, com.Chodun.CatGunner 1.1.61 / vc257.
// Local persistence and unavailable cloud integration are explicit reconstruction adapters.
public sealed class Setting : MonoBehaviour
{
    public static bool is_AutoDisable;
    public bool is_BGM_Mute, is_SFX_Mute, is_Vibration_Mute;
    public GameObject BGM_ON_obj, BGM_OFF_obj, SFX_ON_obj, SFX_OFF_obj;
    public GameObject Vibration_ON_obj, Vibration_OFF_obj;
    public GameObject GoogleLogin_Btn_obj, AppleLogin_Btn_obj, DataLoad_Btn_obj, DataSave_Btn_obj;
    public GameObject DataSave_Loading_obj, LoadExit_obj, RedeemCode_Btn_obj;
    // Original DataLoad_UI/DataSave_UI controllers are not implemented yet.
    public UnityEngine.Object dataLoad_UI, dataSave_UI;
    public static Setting instance;
    public string Email_Body_str;
    public Image EcoMode_Btn_img, EcoCat_img;
    public Color ExoMode_Color_Disable, ExoMode_Color_Able;
    public GameObject Camera_obj, EcoPanel_obj;
    public static bool is_eco;
    private const string SaveKey = "reconstruction.com.Chodun.CatGunner.settings.v1";
    // Local test isolation; production still persists the existing audio preferences.
    [NonSerialized] public bool PersistPreferences = true;

    [Serializable] private sealed class LocalSettings
    {
        public bool bgmMute, sfxMute, vibrationMute;
    }

    private void Awake()
    {
        instance = this; // Native Setting.Awake, 0x2b1ffc0.
        var saved = PlayerPrefs.GetString(SaveKey, string.Empty);
        if (string.IsNullOrEmpty(saved)) return;
        try
        {
            var value = JsonUtility.FromJson<LocalSettings>(saved);
            if (value == null) return;
            is_BGM_Mute = value.bgmMute;
            is_SFX_Mute = value.sfxMute;
            is_Vibration_Mute = value.vibrationMute;
        }
        catch (ArgumentException) { Debug.LogWarning("本地设置记录无法读取，使用场景默认值。"); }
    }

    private void Start() => UI_Reload();

    // Native 0x2b21548: state/color, camera, mask, then selected skin sprite.
    public void EcoMode_Change()
    {
        is_eco = !is_eco;
        EcoMode_Btn_img.color = is_eco ? ExoMode_Color_Able : ExoMode_Color_Disable;
        Camera_obj.SetActive(!is_eco);
        EcoPanel_obj.SetActive(is_eco);
        EcoCat_img.sprite = Skin_manager.instance.Skin_sprites[Skin_manager.instance.Selected_num];
    }

    public void EcoMode_Off() { if (is_eco) EcoMode_Change(); } // 0x2b21688.

    private void OnDestroy()
    {
        if (instance != this) return;
        // Local scene-lifetime adapter: runtime-only state cannot leak into a new client.
        if (Camera_obj != null) Camera_obj.SetActive(true);
        if (EcoPanel_obj != null) EcoPanel_obj.SetActive(false);
        is_eco = false;
        instance = null;
    }

    public void BGM_Setting_Change()
    {
        is_BGM_Mute = !is_BGM_Mute; // 0x2b20374.
        if (Sound_manager.instance != null) Sound_manager.instance.ApplyBGMMute(is_BGM_Mute);
        UI_Reload();
        PersistLocalSettings();
    }

    public void SFX_Setting_Change()
    {
        is_SFX_Mute = !is_SFX_Mute; // 0x2b203e0.
        UI_Reload();
        PersistLocalSettings();
    }

    public void Vibration_Setting_Change()
    {
        is_Vibration_Mute = !is_Vibration_Mute; // 0x2b203f0.
        UI_Reload();
        PersistLocalSettings();
    }

    public void UI_Reload()
    {
        // Exact native visibility expressions at 0x2b200b4, and original serialized references.
        BGM_ON_obj.SetActive(!is_BGM_Mute);
        BGM_OFF_obj.SetActive(is_BGM_Mute);
        SFX_ON_obj.SetActive(!is_SFX_Mute);
        SFX_OFF_obj.SetActive(is_SFX_Mute);
        Vibration_ON_obj.SetActive(!is_Vibration_Mute);
        Vibration_OFF_obj.SetActive(is_Vibration_Mute);
        if (Sound_manager.instance != null) Sound_manager.instance.ApplyBGMMute(is_BGM_Mute);
        // The original SDK authentication/cloud backend has not been configured for this project.
        SetCloudControl(GoogleLogin_Btn_obj, Application.platform == RuntimePlatform.Android);
        SetCloudControl(AppleLogin_Btn_obj, Application.platform == RuntimePlatform.IPhonePlayer);
        SetCloudControl(RedeemCode_Btn_obj, Application.platform == RuntimePlatform.Android);
        if (DataLoad_Btn_obj != null) DataLoad_Btn_obj.SetActive(false);
        if (DataSave_Btn_obj != null) DataSave_Btn_obj.SetActive(false);
        if (DataSave_Loading_obj != null) DataSave_Loading_obj.SetActive(false);
    }

    private static void SetCloudControl(GameObject control, bool visible)
    {
        if (control == null) return;
        control.SetActive(visible);
        var button = control.GetComponent<Button>();
        if (button != null) button.interactable = false;
    }

    private void PersistLocalSettings()
    {
        if (!PersistPreferences) return;
        PlayerPrefs.SetString(SaveKey, JsonUtility.ToJson(new LocalSettings
        {
            bgmMute = is_BGM_Mute, sfxMute = is_SFX_Mute, vibrationMute = is_Vibration_Mute
        }));
        PlayerPrefs.Save();
    }
}
