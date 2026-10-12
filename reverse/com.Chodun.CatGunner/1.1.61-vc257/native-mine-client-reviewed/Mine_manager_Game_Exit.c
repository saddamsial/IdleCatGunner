/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b49a98, Ghidra VA 02c49a98. */

void Mine_manager_Game_Exit(long param_1)

{
  undefined8 uVar1;
  
  Mine_manager_SendDgResult_0x60007e9(param_1,2);
  if (*(long *)(param_1 + 0x30) != 0) {
    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x30),0,0);
    if (*(long *)(param_1 + 0x38) != 0) {
      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x38),0,0);
      if (cRam000000000625ba57 == '\0') {
        func_0x029f5a50(PTR_DAT_05e5dd70);
        cRam000000000625ba57 = '\x01';
      }
      if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
        Sound_manager_BGM_Change_Main_0x600054c(**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),0);
        if (*(long *)(param_1 + 0x80) != 0) {
          MonoBehaviour_StopCoroutine_0x6000d45(param_1,*(long *)(param_1 + 0x80),0);
        }
        uVar1 = Mine_manager_Exit_Cor(param_1);
        MonoBehaviour_StartCoroutine_0x6000d43(param_1,uVar1,0);
        return;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

