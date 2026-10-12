/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6bc30, Ghidra VA 02c6bc30. */

void Safe_manager_InitArray(long param_1)

{
  uint uVar1;
  long lVar2;
  long lVar3;
  long *plVar4;
  
  if ((bRam000000000625c290 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d790);
    bRam000000000625c290 = 1;
  }
  plVar4 = (long *)(param_1 + 0x20);
  lVar3 = *plVar4;
  if ((lVar3 == 0) || (*(int *)(lVar3 + 0x18) != 0x10)) {
    lVar3 = func_0x029f5b40(*(undefined8 *)PTR_DAT_05e5d790,0x10);
    *plVar4 = lVar3;
    Managed_WriteBarrier(plVar4,lVar3);
    lVar3 = *plVar4;
    if (lVar3 == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
  }
  uVar1 = *(uint *)(lVar3 + 0x18);
  lVar2 = 0;
  do {
    if ((ulong)uVar1 * 4 - lVar2 == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    *(undefined4 *)(lVar3 + 0x20 + lVar2) = 0xffffffff;
    lVar2 = lVar2 + 4;
  } while (lVar2 != 0x40);
  return;
}

