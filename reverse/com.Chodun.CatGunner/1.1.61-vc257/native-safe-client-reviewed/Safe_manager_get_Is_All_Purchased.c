/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6bd50, Ghidra VA 02c6bd50. */

bool Safe_manager_get_Is_All_Purchased(long param_1)

{
  return 9 < *(int *)(param_1 + 0x28);
}

