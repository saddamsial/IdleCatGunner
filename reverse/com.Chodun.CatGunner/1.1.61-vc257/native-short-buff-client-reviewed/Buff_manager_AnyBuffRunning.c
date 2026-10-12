/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b37bac, Ghidra VA 02c37bac. */

bool Buff_manager_AnyBuffRunning(long param_1)

{
  undefined *puVar1;
  ulong uVar2;
  long lVar3;
  long lVar4;
  ulong uVar5;
  long lVar6;
  
  puVar1 = PTR_DAT_05e5d4c0;
  if ((bRam000000000625c077 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d4c0);
    bRam000000000625c077 = 1;
  }
  lVar3 = *(long *)puVar1;
  uVar2 = 0;
  do {
    uVar5 = uVar2;
    if (*(int *)(lVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar3 = *(long *)puVar1;
    }
    lVar4 = (long)*(int *)(*(long *)(lVar3 + 0xb8) + 8);
    if (lVar4 <= (long)uVar5) break;
    lVar6 = *(long *)(param_1 + 0x38);
    if (lVar6 == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    if (*(uint *)(lVar6 + 0x18) <= uVar5) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    uVar2 = uVar5 + 1;
  } while (*(float *)(lVar6 + uVar5 * 4 + 0x20) <= 0.0);
  return (long)uVar5 < lVar4;
}

