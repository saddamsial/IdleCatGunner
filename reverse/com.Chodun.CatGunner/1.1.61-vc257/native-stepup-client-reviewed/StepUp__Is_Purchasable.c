/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba2a94, Ghidra VA 02ca2a94. */

bool StepUp__Is_Purchasable(long param_1,uint param_2)

{
  long lVar1;
  
  if (4 < param_2) {
    return false;
  }
  lVar1 = *(long *)(param_1 + 0x38);
  if (lVar1 == 0) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  if (param_2 < *(uint *)(lVar1 + 0x18)) {
    if (*(char *)(lVar1 + (ulong)param_2 + 0x20) != '\0') {
      return false;
    }
    if (param_2 == 0) {
      return true;
    }
    if (param_2 - 1 < *(uint *)(lVar1 + 0x18)) {
      return *(char *)(lVar1 + (ulong)(param_2 - 1) + 0x20) != '\0';
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_Index_Wrapper();
}

