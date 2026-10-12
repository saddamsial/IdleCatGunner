/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6bd60, Ghidra VA 02c6bd60. */

int Safe_manager_get_Next_Price(long param_1)

{
  return *(int *)(param_1 + 0x28) * 0x32 + 0x32;
}

