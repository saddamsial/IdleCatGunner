/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba91c4, Ghidra VA 02ca91c4. */

void SpeedRun_manager_Game_Fail(long param_1)

{
  undefined *puVar1;
  long lVar2;
  char *pcVar3;
  
  puVar1 = PTR_DAT_05e5d338;
  if ((bRam000000000625c4f6 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625c4f6 = 1;
  }
  lVar2 = *(long *)puVar1;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  pcVar3 = *(char **)(lVar2 + 0xb8);
  if (*pcVar3 != '\0') {
    if (*(int *)(lVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
      pcVar3 = *(char **)(*(long *)puVar1 + 0xb8);
    }
    *pcVar3 = '\0';
    SpeedRun_manager_SendDgResult_0x6000ea6(param_1,3);
    if (*(long *)(param_1 + 0x80) != 0) {
      SpeedRun_Slider_Value_Reload_0x6000edd
                ((float)(*(int *)(param_1 + 0x5c) - *(int *)(param_1 + 0x58)) /
                 (float)*(int *)(param_1 + 0x5c));
      if (*(long *)(param_1 + 0x40) != 0) {
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x40),1,0);
        if (cRam000000000625ba57 == '\0') {
          func_0x029f5a50(PTR_DAT_05e5dd70);
          cRam000000000625ba57 = '\x01';
        }
        if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
          Sound_manager_PlaySfx_0x600054a
                    (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),0xc,0,0);
          return;
        }
      }
    }
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  return;
}

