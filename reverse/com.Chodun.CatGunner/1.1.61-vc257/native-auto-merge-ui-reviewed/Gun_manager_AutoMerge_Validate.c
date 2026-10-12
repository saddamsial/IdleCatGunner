/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b69694, Ghidra VA 02c69694. */

void Gun_manager_AutoMerge_Validate(long param_1)

{
  uint uVar1;
  
  uVar1 = Gun_manager_get_is_AutoMergeAble();
  if (((uVar1 & 1) == 0) && (*(char *)(param_1 + 0x70) != '\0')) {
    *(undefined1 *)(param_1 + 0x70) = 0;
  }
  return;
}

