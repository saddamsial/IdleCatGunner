/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b0637c, Ghidra VA 02c0637c. */

void OfflineProgressManager_set_LastResult(long param_1,undefined8 param_2)

{
  *(undefined8 *)(param_1 + 0x38) = param_2;
  Managed_WriteBarrier();
  return;
}

