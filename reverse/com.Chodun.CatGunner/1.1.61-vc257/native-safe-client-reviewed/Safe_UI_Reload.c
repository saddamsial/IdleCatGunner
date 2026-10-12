/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6c5c4, Ghidra VA 02c6c5c4. */

void Safe_UI_Reload(long param_1)

{
  undefined *puVar1;
  ulong uVar2;
  long lVar3;
  ulong uVar4;
  undefined8 uVar5;
  
  if ((bRam000000000625c2a1 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c2a1 = 1;
  }
  puVar1 = PTR_DAT_05e591c0;
  lVar3 = *(long *)(param_1 + 0x20);
  if (lVar3 == 0) {
    return;
  }
  uVar4 = 0;
  do {
    if ((long)(int)*(uint *)(lVar3 + 0x18) <= (long)uVar4) {
      return;
    }
    if (*(uint *)(lVar3 + 0x18) <= uVar4) {
LAB_02c6c690:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    uVar5 = *(undefined8 *)(lVar3 + uVar4 * 8 + 0x20);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar2 = Object_op_Inequality_0x6000ded(uVar5,0,0);
    if ((uVar2 & 1) != 0) {
      lVar3 = *(long *)(param_1 + 0x20);
      if (lVar3 == 0) break;
      if (*(uint *)(lVar3 + 0x18) <= uVar4) goto LAB_02c6c690;
      lVar3 = *(long *)(lVar3 + uVar4 * 8 + 0x20);
      if (lVar3 == 0) break;
      Safe_Slot_Reload(lVar3,uVar4 & 0xffffffff);
    }
    lVar3 = *(long *)(param_1 + 0x20);
    uVar4 = uVar4 + 1;
  } while (lVar3 != 0);
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

