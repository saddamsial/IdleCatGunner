/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6bcf8, Ghidra VA 02c6bcf8. */

bool Safe_manager_Is_Slot_Open(long param_1,uint param_2)

{
  uint uVar1;
  
  if (-1 < (int)param_2) {
    uVar1 = *(int *)(param_1 + 0x28) + 6;
    if (0xf < (int)uVar1) {
      uVar1 = 0x10;
    }
    return param_2 < (uVar1 & ((int)uVar1 >> 0x1f ^ 0xffffffffU));
  }
  return false;
}

