/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b46450, Ghidra VA 02c46450. */

void Boss_manager_Game_Exit(long param_1)

{
  undefined *puVar1;
  undefined8 uVar2;
  
  puVar1 = PTR_DAT_05e5d910;
  if ((bRam000000000625c0e0 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d910);
    bRam000000000625c0e0 = 1;
  }
  Boss_manager_SendDgResult_0x600079a(param_1,2);
  if (**(long **)(*(long *)puVar1 + 0xb8) != 0) {
    Admob_HideBannerAd_0x6000193(**(long **)(*(long *)puVar1 + 0xb8),0);
    if (*(long *)(param_1 + 0x118) != 0) {
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x118),0,0);
      if (*(long *)(param_1 + 0x28) != 0) {
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x28),0,0);
        if (*(long *)(param_1 + 0x30) != 0) {
          GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x30),0,0);
          if (*(long *)(param_1 + 0x40) != 0) {
            GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x40),1,0);
            if (*(long *)(param_1 + 0x48) != 0) {
              GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x48),0,0);
              if (cRam000000000625ba57 == '\0') {
                func_0x029f5a50(PTR_DAT_05e5dd70);
                cRam000000000625ba57 = '\x01';
              }
              if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
                Sound_manager_BGM_Change_Main_0x600054c
                          (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),0);
                if (*(long *)(param_1 + 0x88) != 0) {
                  MonoBehaviour_StopCoroutine_0x6000d45(param_1,*(long *)(param_1 + 0x88),0);
                }
                uVar2 = Boss_manager_Exit_Cor(param_1);
                MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar2,0);
                return;
              }
            }
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

