/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b679fc, Ghidra VA 02c679fc. */

void Gun_manager_ReloadAllSlots(long param_1)

{
  undefined *puVar1;
  ulong uVar2;
  long lVar3;
  long lVar4;
  ulong uVar5;
  
  if ((bRam000000000625c26e & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c26e = 1;
  }
  puVar1 = PTR_DAT_05e591c0;
  lVar4 = *(long *)(param_1 + 0x98);
  if ((lVar4 != 0) && (0 < (int)*(ulong *)(lVar4 + 0x18))) {
    uVar5 = 0;
    uVar2 = *(ulong *)(lVar4 + 0x18) & 0xffffffff;
    do {
      if (uVar2 <= uVar5) {
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      lVar3 = *(long *)(lVar4 + 0x20 + uVar5 * 8);
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar2 = Object_op_Inequality_0x6000ded(lVar3,0,0);
      if ((uVar2 & 1) != 0) {
        if (lVar3 == 0) {
                    /* WARNING: Subroutine does not return */
          Throw_NullReference_Wrapper();
        }
        Gun_Slot_Reload(lVar3,0);
      }
      uVar2 = (ulong)*(uint *)(lVar4 + 0x18);
      uVar5 = uVar5 + 1;
    } while ((long)uVar5 < (long)(int)*(uint *)(lVar4 + 0x18));
  }
  return;
}

