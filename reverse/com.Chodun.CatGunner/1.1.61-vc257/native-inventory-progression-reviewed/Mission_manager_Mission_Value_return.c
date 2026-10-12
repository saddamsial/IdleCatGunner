/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2aa4fd4, Ghidra VA 02ba4fd4. */

undefined4 Mission_manager_Mission_Value_return(long param_1,int param_2)

{
  undefined4 uVar1;
  
  uVar1 = 0;
  if (param_2 < 2) {
    if (param_2 == 0) {
      return *(undefined4 *)(param_1 + 0x50);
    }
    if (param_2 == 1) {
      return *(undefined4 *)(param_1 + 0x54);
    }
  }
  else if (param_2 == 2) {
    uVar1 = *(undefined4 *)(param_1 + 0x58);
  }
  else if (param_2 == 3) {
    return *(undefined4 *)(param_1 + 0x5c);
  }
  return uVar1;
}

