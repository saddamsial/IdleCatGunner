/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6d8d8, Ghidra VA 02c6d8d8. */

bool StarUpgrade_manager_IsValidSlot(long param_1,int param_2)

{
  bool bVar1;
  
  bVar1 = false;
  if ((-1 < param_2) && (*(long *)(param_1 + 0x30) != 0)) {
    bVar1 = param_2 < *(int *)(*(long *)(param_1 + 0x30) + 0x18);
  }
  return bVar1;
}

