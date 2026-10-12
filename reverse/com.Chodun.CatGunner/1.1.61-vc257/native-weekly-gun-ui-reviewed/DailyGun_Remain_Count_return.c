/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b8b42c, Ghidra VA 02c8b42c. */

uint DailyGun_Remain_Count_return(long param_1,uint param_2)

{
  uint uVar1;
  undefined *puVar2;
  long lVar3;
  long lVar4;
  
  if ((bRam000000000625c3ab & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62660);
    bRam000000000625c3ab = 1;
  }
  puVar2 = PTR_DAT_05e62660;
  if (2 < param_2) {
    return 0;
  }
  lVar3 = *(long *)PTR_DAT_05e62660;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar2;
  }
  lVar3 = *(long *)(*(long *)(lVar3 + 0xb8) + 8);
  if (lVar3 == 0) {
LAB_02c8b4dc:
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  if (param_2 < *(uint *)(lVar3 + 0x18)) {
    lVar4 = *(long *)(param_1 + 0x20);
    if (lVar4 == 0) goto LAB_02c8b4dc;
    if (param_2 < *(uint *)(lVar4 + 0x18)) {
      uVar1 = *(int *)(lVar3 + (ulong)param_2 * 4 + 0x20) -
              *(int *)(lVar4 + (ulong)param_2 * 4 + 0x20);
      return uVar1 & ((int)uVar1 >> 0x1f ^ 0xffffffffU);
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_Index_Wrapper();
}

