/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba0f8c, Ghidra VA 02ca0f8c. */

int StarGem_Pig__LvIndex(int param_1)

{
  if (2 < param_1) {
    param_1 = 3;
  }
  if (param_1 < 2) {
    param_1 = 1;
  }
  return param_1 + -1;
}

