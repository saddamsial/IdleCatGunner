/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5e234, Ghidra VA 02c5e234. */

bool Fish_manager_get_AutoMerge_Active(long param_1)

{
  bool bVar1;
  ulong uVar2;
  
  uVar2 = Fish_manager_get_is_AutoMergeAble();
  if ((uVar2 & 1) == 0) {
    bVar1 = false;
  }
  else {
    bVar1 = *(char *)(param_1 + 0xb0) != '\0';
  }
  return bVar1;
}

