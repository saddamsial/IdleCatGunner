/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6dc64, Ghidra VA 02c6dc64. */

undefined4 StarUpgrade_manager_Cost_return(long param_1,uint param_2)

{
  undefined *puVar1;
  undefined4 uVar2;
  long lVar3;
  uint uVar4;
  long lVar5;
  
  if ((bRam000000000625c2ad & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e058);
    bRam000000000625c2ad = 1;
  }
  puVar1 = PTR_DAT_05e5e058;
  if (((((int)param_2 < 0) || (lVar3 = *(long *)(param_1 + 0x30), lVar3 == 0)) ||
      (*(int *)(lVar3 + 0x18) <= (int)param_2)) ||
     (*(int *)(lVar3 + (ulong)param_2 * 4 + 0x20) < 0x14)) {
    if (*(int *)(*(long *)PTR_DAT_05e5e058 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    StarUpgrade_manager_EnsureTables();
    uVar4 = 1;
    lVar3 = *(long *)(*(long *)(*(long *)puVar1 + 0xb8) + 0x28);
    if ((-1 < (int)param_2) && (lVar5 = *(long *)(param_1 + 0x30), lVar5 != 0)) {
      if ((int)param_2 < *(int *)(lVar5 + 0x18)) {
        uVar4 = *(int *)(lVar5 + (ulong)param_2 * 4 + 0x20) + 1;
      }
      else {
        uVar4 = 1;
      }
    }
    if (lVar3 == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    if (*(uint *)(lVar3 + 0x18) <= uVar4) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    uVar2 = *(undefined4 *)(lVar3 + (long)(int)uVar4 * 4 + 0x20);
  }
  else {
    uVar2 = 0;
  }
  return uVar2;
}

