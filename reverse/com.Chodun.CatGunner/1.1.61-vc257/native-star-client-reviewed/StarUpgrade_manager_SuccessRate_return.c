/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6dd48, Ghidra VA 02c6dd48. */

int StarUpgrade_manager_SuccessRate_return(long param_1,uint param_2)

{
  uint uVar1;
  uint uVar2;
  undefined *puVar3;
  int iVar4;
  long lVar5;
  uint uVar6;
  
  if ((bRam000000000625c2ae & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e058);
    bRam000000000625c2ae = 1;
  }
  puVar3 = PTR_DAT_05e5e058;
  uVar6 = 0;
  if ((-1 < (int)param_2) && (lVar5 = *(long *)(param_1 + 0x30), lVar5 != 0)) {
    if ((int)param_2 < *(int *)(lVar5 + 0x18)) {
      lVar5 = lVar5 + (ulong)param_2 * 4;
      if (0x13 < *(int *)(lVar5 + 0x20)) {
        return 0;
      }
      uVar6 = *(uint *)(lVar5 + 0x20);
    }
    else {
      uVar6 = 0;
    }
  }
  lVar5 = *(long *)PTR_DAT_05e5e058;
  if (*(int *)(lVar5 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar5 = *(long *)puVar3;
  }
  lVar5 = *(long *)(*(long *)(lVar5 + 0xb8) + 0x10);
  if (lVar5 != 0) {
    uVar2 = *(uint *)(lVar5 + 0x18) - 1;
    uVar1 = uVar6;
    if ((int)uVar2 <= (int)uVar6) {
      uVar1 = uVar2;
    }
    uVar2 = 0;
    if (-1 < (int)uVar6) {
      uVar2 = uVar1;
    }
    if (*(uint *)(lVar5 + 0x18) <= uVar2) {
LAB_02c6de58:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    iVar4 = *(int *)(lVar5 + (long)(int)uVar2 * 4 + 0x20);
    if (0x11 < (int)(uVar6 + 1)) {
      lVar5 = *(long *)(param_1 + 0x38);
      if (lVar5 == 0) goto LAB_02c6de54;
      if (*(uint *)(lVar5 + 0x18) <= param_2) goto LAB_02c6de58;
      iVar4 = *(int *)(lVar5 + (long)(int)param_2 * 4 + 0x20) + iVar4;
      if (4 < iVar4) {
        iVar4 = 5;
      }
    }
    return iVar4;
  }
LAB_02c6de54:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

