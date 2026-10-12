/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2e778, Ghidra VA 02c2e778. */

uint Adventure_manager_is_OpenDay_return_0x6000647(int param_1,uint param_2)

{
  uint uVar1;
  
  if (param_1 == 2) {
    uVar1 = 0x49U >> (ulong)(param_2 & 0x1f) & 1;
    if (6 < param_2) {
      uVar1 = 0;
    }
    return uVar1;
  }
  if (param_1 == 1) {
    if (5 < param_2) {
      return 0;
    }
    uVar1 = 0x25;
  }
  else {
    if ((param_1 != 0) || (4 < param_2)) {
      return 0;
    }
    uVar1 = 0x13;
  }
  return uVar1 >> (ulong)(param_2 & 0x1f) & 1;
}

