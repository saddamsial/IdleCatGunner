/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b0b3b4, Ghidra VA 02c0b3b4. */

bool OfflineResult_get_IsCapped(long param_1)

{
  return *(float *)(param_1 + 0x10) + 1.0 < *(float *)(param_1 + 0x14);
}

