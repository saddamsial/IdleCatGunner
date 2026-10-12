/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba8d78, Ghidra VA 02ca8d78. */

void SpeedRun_manager_Game_Exit(long param_1)

{
  undefined8 uVar1;
  
  SpeedRun_manager_SendDgResult_0x6000ea6(param_1,2);
  if (*(long *)(param_1 + 0xd0) != 0) {
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0xd0),0,0);
    if (*(long *)(param_1 + 0x38) != 0) {
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x38),0,0);
      if (*(long *)(param_1 + 0x40) != 0) {
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x40),0,0);
        if (cRam000000000625ba57 == '\0') {
          func_0x029f5a50(PTR_DAT_05e5dd70);
          cRam000000000625ba57 = '\x01';
        }
        if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
          Sound_manager_BGM_Change_Main_0x600054c(**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),0);
          if (*(long *)(param_1 + 0x68) != 0) {
            MonoBehaviour_StopCoroutine_0x6000d45(param_1,*(long *)(param_1 + 0x68),0);
          }
          uVar1 = SpeedRun_manager_Exit_Cor(param_1);
          MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar1,0);
          return;
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

