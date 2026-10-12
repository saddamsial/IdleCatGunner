/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b3142c, Ghidra VA 02c3142c. */

undefined4 Relic_manager_MaxLv_return(uint param_1)

{
  undefined4 uVar1;
  
  uVar1 = 300;
  if (8 < param_1) {
    uVar1 = 0x32;
  }
  return uVar1;
}

