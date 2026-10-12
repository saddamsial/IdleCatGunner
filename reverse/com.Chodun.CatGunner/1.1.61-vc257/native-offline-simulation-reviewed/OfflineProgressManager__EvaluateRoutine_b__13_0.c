/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b06c7c, Ghidra VA 02c06c7c. */

void OfflineProgressManager__EvaluateRoutine_b__13_0(long param_1,undefined8 param_2)

{
  *(undefined8 *)(param_1 + 0x38) = param_2;
  Managed_WriteBarrier();
  return;
}

