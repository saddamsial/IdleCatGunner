/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b9264c, Ghidra VA 02c9264c. */

bool Shop_manager_Is_Dia_FirstBuy(uint param_1)

{
  undefined *puVar1;
  long lVar2;
  long lVar3;
  
  if ((bRam000000000625c407 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d920);
    bRam000000000625c407 = 1;
  }
  puVar1 = PTR_DAT_05e5d920;
  if (-1 < (int)param_1) {
    lVar2 = *(long *)PTR_DAT_05e5d920;
    if (*(int *)(lVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar2 = *(long *)puVar1;
    }
    lVar3 = *(long *)(*(long *)(lVar2 + 0xb8) + 0x28);
    if (lVar3 == 0) {
LAB_02c926fc:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    if ((int)param_1 < *(int *)(lVar3 + 0x18)) {
      if (*(int *)(lVar2 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar3 = *(long *)(*(long *)(*(long *)puVar1 + 0xb8) + 0x28);
        if (lVar3 == 0) goto LAB_02c926fc;
      }
      if (param_1 < *(uint *)(lVar3 + 0x18)) {
        return *(char *)(lVar3 + (ulong)param_1 + 0x20) == '\0';
      }
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
  }
  return false;
}

