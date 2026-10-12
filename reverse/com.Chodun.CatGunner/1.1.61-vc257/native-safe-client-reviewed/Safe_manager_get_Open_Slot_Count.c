/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6bcdc, Ghidra VA 02c6bcdc. */

uint Safe_manager_get_Open_Slot_Count(long param_1)

{
  uint uVar1;
  
  uVar1 = *(int *)(param_1 + 0x28) + 6;
  if (0xf < (int)uVar1) {
    uVar1 = 0x10;
  }
  return uVar1 & ((int)uVar1 >> 0x1f ^ 0xffffffffU);
}

