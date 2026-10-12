/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2baf12c, Ghidra VA 02caf12c. */

void Tutorial_manager_set_CurrentStep(long param_1,undefined4 param_2)

{
  *(undefined4 *)(param_1 + 0x60) = param_2;
  return;
}

