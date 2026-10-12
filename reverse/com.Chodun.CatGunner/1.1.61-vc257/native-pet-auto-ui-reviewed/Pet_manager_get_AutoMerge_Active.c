/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7d7b8, Ghidra VA 02c7d7b8. */

bool Pet_manager_get_AutoMerge_Active(long param_1)

{
  bool bVar1;
  ulong uVar2;
  
  uVar2 = Pet_manager_get_is_AutoMergeAble();
  if ((uVar2 & 1) == 0) {
    bVar1 = false;
  }
  else {
    bVar1 = *(char *)(param_1 + 0x60) != '\0';
  }
  return bVar1;
}

