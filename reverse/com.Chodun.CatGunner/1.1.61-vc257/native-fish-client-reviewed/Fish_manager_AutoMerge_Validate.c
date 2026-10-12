/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5e398, Ghidra VA 02c5e398. */

void Fish_manager_AutoMerge_Validate(long param_1)

{
  uint uVar1;
  
  uVar1 = Fish_manager_get_is_AutoMergeAble();
  if (((uVar1 & 1) == 0) && (*(char *)(param_1 + 0xb0) != '\0')) {
    *(undefined1 *)(param_1 + 0xb0) = 0;
  }
  return;
}

