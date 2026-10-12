/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b49be0, Ghidra VA 02c49be0. */

void Mine_manager_Game_End(long param_1)

{
  undefined *puVar1;
  long lVar2;
  char *pcVar3;
  
  puVar1 = PTR_DAT_05e5d338;
  if ((bRam000000000625c10f & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625c10f = 1;
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
    lVar2 = *(long *)(param_1 + 0x98);
    *pcVar3 = '\0';
    *(undefined1 *)(param_1 + 0x69) = 1;
    if (lVar2 != 0) {
      Mine_Slider_Dia_Reload_0x600081f(lVar2,*(undefined4 *)(param_1 + 100));
      if (cRam000000000625ba57 == '\0') {
        func_0x029f5a50(PTR_DAT_05e5dd70);
        cRam000000000625ba57 = '\x01';
      }
      if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
        Sound_manager_PlaySfx_0x600054a
                  (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),0xb,0,0);
        if (*(long *)(param_1 + 0x38) != 0) {
          GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x38),1,0);
          Mine_manager_Reward_Panel_Reload_0x60007f5(param_1);
          Mine_manager_SendDgResult_0x60007e9(param_1,1);
          return;
        }
      }
    }
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  return;
}

