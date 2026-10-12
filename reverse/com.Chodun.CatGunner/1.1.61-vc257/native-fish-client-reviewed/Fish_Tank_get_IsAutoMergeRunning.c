/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b63054, Ghidra VA 02c63054. */

bool Fish_Tank_get_IsAutoMergeRunning(long param_1)

{
  return *(long *)(param_1 + 0x58) != 0;
}

