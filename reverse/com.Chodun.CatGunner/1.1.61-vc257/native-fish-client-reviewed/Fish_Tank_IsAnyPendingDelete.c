/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b63e10, Ghidra VA 02c63e10. */

bool Fish_Tank_IsAnyPendingDelete(long param_1)

{
  uint uVar1;
  long lVar2;
  uint uVar3;
  long lVar4;
  
  lVar2 = *(long *)(param_1 + 0x20);
  if (lVar2 == 0) {
LAB_02c63e70:
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  uVar1 = *(uint *)(lVar2 + 0x18);
  if ((int)uVar1 < 1) {
    uVar3 = 0;
  }
  else {
    uVar3 = 0;
    do {
      if (uVar1 == uVar3) {
                    /* WARNING: Subroutine does not return */
        Throw_Index_Wrapper();
      }
      lVar4 = *(long *)(lVar2 + (long)(int)uVar3 * 8 + 0x20);
      if (lVar4 == 0) goto LAB_02c63e70;
    } while ((*(char *)(lVar4 + 0x49) == '\0') &&
            (uVar3 = uVar3 + 1, (uVar1 & ((int)uVar1 >> 0x1f ^ 0xffffffffU)) != uVar3));
  }
  return (int)uVar3 < (int)uVar1;
}

