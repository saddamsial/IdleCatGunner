/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5fe20, Ghidra VA 02c5fe20. */

void Fish_Tank_ClearPendingDelete(long param_1)

{
  uint uVar1;
  long lVar2;
  uint uVar3;
  long lVar4;
  
  lVar2 = *(long *)(param_1 + 0x20);
  if (lVar2 != 0) {
    uVar1 = *(uint *)(lVar2 + 0x18);
    if (0 < (int)uVar1) {
      uVar3 = 0;
      do {
        if (uVar1 == uVar3) {
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        lVar4 = *(long *)(lVar2 + (long)(int)uVar3 * 8 + 0x20);
        if (lVar4 == 0) goto LAB_02c5fe6c;
        uVar3 = uVar3 + 1;
        *(undefined1 *)(lVar4 + 0x49) = 0;
      } while ((uVar1 & ((int)uVar1 >> 0x1f ^ 0xffffffffU)) != uVar3);
    }
    return;
  }
LAB_02c5fe6c:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

