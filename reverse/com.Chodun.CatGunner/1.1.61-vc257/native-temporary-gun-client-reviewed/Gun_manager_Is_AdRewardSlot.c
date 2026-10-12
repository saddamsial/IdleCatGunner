/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b68408, Ghidra VA 02c68408. */

bool Gun_manager_Is_AdRewardSlot(long param_1,int param_2)

{
  return *(int *)(param_1 + 0xc0) != -1 && *(int *)(param_1 + 0xc0) == param_2;
}

