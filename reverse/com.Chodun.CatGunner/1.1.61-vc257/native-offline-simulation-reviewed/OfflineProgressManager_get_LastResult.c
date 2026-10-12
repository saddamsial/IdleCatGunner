/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b06374, Ghidra VA 02c06374. */

undefined8 OfflineProgressManager_get_LastResult(long param_1)

{
  return *(undefined8 *)(param_1 + 0x38);
}

