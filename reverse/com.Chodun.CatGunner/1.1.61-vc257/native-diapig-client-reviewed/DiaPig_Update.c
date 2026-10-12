/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b8d44c, Ghidra VA 02c8d44c. */

void DiaPig_Update(long param_1)

{
  int iVar1;
  ulong uVar2;
  
  uVar2 = DiaPig_IsUnlocked();
  if ((uVar2 & 1) != 0) {
    iVar1 = *(int *)(param_1 + 0x20);
    if (iVar1 < *(int *)(param_1 + 0x24)) {
      DiaPig_Tick_Accumulate(param_1);
      if (*(int *)(param_1 + 0x20) != iVar1) {
        if (*(long *)(param_1 + 0x30) != 0) {
          SlicedFilledImage_set_fillAmount_0x60005d0
                    ((float)*(int *)(param_1 + 0x20) / (float)*(int *)(param_1 + 0x24),
                     *(long *)(param_1 + 0x30),0);
          if (*(long *)(param_1 + 0x28) != 0) {
            DiaPig_UI_UI_Reload();
            return;
          }
        }
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
    }
  }
  return;
}

