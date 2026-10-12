/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b8b23c, Ghidra VA 02c8b23c. */

int DailyGun_GunNum_return(uint param_1)

{
  int iVar1;
  undefined *puVar2;
  int iVar3;
  long lVar4;
  
  if ((bRam000000000625c3a9 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62660);
    bRam000000000625c3a9 = 1;
  }
  puVar2 = PTR_DAT_05e62660;
  if (param_1 < 3) {
    lVar4 = *(long *)PTR_DAT_05e62660;
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar4 = *(long *)puVar2;
    }
    lVar4 = *(long *)(*(long *)(lVar4 + 0xb8) + 0x18);
    if (lVar4 == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    if (*(uint *)(lVar4 + 0x18) <= param_1) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    iVar1 = *(int *)(lVar4 + (ulong)param_1 * 4 + 0x20);
    iVar3 = DailyGun_Week_Offset_return();
    iVar3 = iVar3 + iVar1;
  }
  else {
    iVar3 = -1;
  }
  return iVar3;
}

