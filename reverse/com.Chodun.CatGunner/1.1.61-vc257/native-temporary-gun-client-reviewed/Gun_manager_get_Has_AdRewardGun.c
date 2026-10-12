/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6a6c8, Ghidra VA 02c6a6c8. */

bool Gun_manager_get_Has_AdRewardGun(long param_1)

{
  return *(int *)(param_1 + 0xc0) != -1;
}

