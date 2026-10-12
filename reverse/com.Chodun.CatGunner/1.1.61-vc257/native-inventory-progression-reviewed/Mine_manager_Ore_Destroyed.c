/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4a66c, Ghidra VA 02c4a66c. */

void Mine_manager_Ore_Destroyed(long param_1,long param_2)

{
  int iVar1;
  undefined *puVar2;
  long lVar3;
  
  puVar2 = PTR_DAT_05e5d338;
  if ((bRam000000000625c119 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    bRam000000000625c119 = 1;
  }
  lVar3 = *(long *)puVar2;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar2;
  }
  if (**(char **)(lVar3 + 0xb8) == '\0') {
    return;
  }
  iVar1 = *(int *)(param_1 + 0x6c) + -1;
  *(int *)(param_1 + 0x6c) = iVar1;
  if (param_2 != 0) {
    *(int *)(param_1 + 100) = *(int *)(param_2 + 0x20) + *(int *)(param_1 + 100);
    if ((*(long *)(param_1 + 0x98) != 0) &&
       (lVar3 = *(long *)(*(long *)(param_1 + 0x98) + 0x20), lVar3 != 0)) {
      SlicedFilledImage_set_fillAmount_0x60005d0
                ((float)(*(int *)(param_1 + 0x70) - iVar1) / (float)*(int *)(param_1 + 0x70),lVar3,0
                );
      if (*(long *)(param_1 + 0x98) != 0) {
        Mine_Slider_Dia_Reload_0x600081f(*(long *)(param_1 + 0x98),*(undefined4 *)(param_1 + 100));
        if (0 < *(int *)(param_1 + 0x6c)) {
          return;
        }
        Mine_manager_Game_End(param_1);
        return;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

