/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6bd74, Ghidra VA 02c6bd74. */

long Safe_manager_FindFirstEmpty(long param_1)

{
  int iVar1;
  int iVar2;
  long lVar3;
  long lVar4;
  
  iVar1 = *(int *)(param_1 + 0x28) + 6;
  iVar2 = iVar1;
  if (0xf < iVar1) {
    iVar2 = 0x10;
  }
  if (0 < iVar1) {
    lVar4 = *(long *)(param_1 + 0x20);
    if (lVar4 == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    lVar3 = 0;
    if (iVar2 < 2) {
      iVar2 = 1;
    }
    do {
      if ((int)*(undefined8 *)(lVar4 + 0x18) == (int)lVar3) {
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      if (*(int *)(lVar4 + 0x20 + lVar3 * 4) == -1) {
        return lVar3;
      }
      lVar3 = lVar3 + 1;
    } while (iVar2 != (int)lVar3);
  }
  return 0xffffffff;
}

