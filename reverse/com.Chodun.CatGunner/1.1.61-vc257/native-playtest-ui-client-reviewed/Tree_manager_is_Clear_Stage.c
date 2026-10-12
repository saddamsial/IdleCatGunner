/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bad054, Ghidra VA 02cad054. */

bool Tree_manager_is_Clear_Stage(long param_1)

{
  return *(int *)(param_1 + 0x2c) + *(int *)(param_1 + 0x28) * 10 < *(int *)(param_1 + 0x30);
}

