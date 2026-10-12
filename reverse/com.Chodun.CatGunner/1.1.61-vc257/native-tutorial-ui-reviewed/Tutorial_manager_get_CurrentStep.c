/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2baf124, Ghidra VA 02caf124. */

undefined4 Tutorial_manager_get_CurrentStep(long param_1)

{
  return *(undefined4 *)(param_1 + 0x60);
}

