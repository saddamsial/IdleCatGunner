/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b63668, Ghidra VA 02c63668. */

long Fish_Tank_GetInactiveItem(long param_1)

{
  uint uVar1;
  long lVar2;
  long lVar3;
  uint uVar4;
  
  lVar3 = *(long *)(param_1 + 0x20);
  if (lVar3 == 0) {
LAB_02c636bc:
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  uVar1 = *(uint *)(lVar3 + 0x18);
  if (0 < (int)uVar1) {
    uVar4 = 0;
    do {
      if (uVar1 == uVar4) {
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      lVar2 = *(long *)(lVar3 + (long)(int)uVar4 * 8 + 0x20);
      if (lVar2 == 0) goto LAB_02c636bc;
      if (*(char *)(lVar2 + 0x48) == '\0') {
        return lVar2;
      }
      uVar4 = uVar4 + 1;
    } while ((uVar1 & ((int)uVar1 >> 0x1f ^ 0xffffffffU)) != uVar4);
  }
  return 0;
}

