/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b67de0, Ghidra VA 02c67de0. */

uint Gun_manager_FindFirstEmptyOwned(long param_1)

{
  uint uVar1;
  uint uVar2;
  long lVar3;
  
  lVar3 = *(long *)(param_1 + 0x40);
  if (lVar3 == 0) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  uVar1 = *(uint *)(lVar3 + 0x18);
  if (0 < (int)uVar1) {
    uVar2 = 0;
    do {
      if (uVar1 == uVar2) {
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      if (*(int *)(lVar3 + (long)(int)uVar2 * 4 + 0x20) == -1) {
        return uVar2;
      }
      uVar2 = uVar2 + 1;
    } while ((uVar1 & ((int)uVar1 >> 0x1f ^ 0xffffffffU)) != uVar2);
  }
  return 0xffffffff;
}

