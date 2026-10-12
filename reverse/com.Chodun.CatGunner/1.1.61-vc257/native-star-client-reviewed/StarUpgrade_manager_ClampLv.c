/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6d978, Ghidra VA 02c6d978. */

uint StarUpgrade_manager_ClampLv(uint param_1)

{
  if (0x13 < (int)param_1) {
    param_1 = 0x14;
  }
  return param_1 & ((int)param_1 >> 0x1f ^ 0xffffffffU);
}

