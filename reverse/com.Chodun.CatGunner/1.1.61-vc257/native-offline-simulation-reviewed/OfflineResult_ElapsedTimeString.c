/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b0b55c, Ghidra VA 02c0b55c. */

void OfflineResult_ElapsedTimeString(long param_1)

{
  OfflineResult_FormatTime(*(undefined4 *)(param_1 + 0x10));
  return;
}

