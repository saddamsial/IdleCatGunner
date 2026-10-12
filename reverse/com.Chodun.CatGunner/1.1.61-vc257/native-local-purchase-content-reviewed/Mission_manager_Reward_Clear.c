/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2aa6b20, Ghidra VA 02ba6b20. */

bool Mission_manager_Reward_Clear(long param_1,int param_2)

{
  return param_2 < *(int *)(param_1 + 0x48);
}

