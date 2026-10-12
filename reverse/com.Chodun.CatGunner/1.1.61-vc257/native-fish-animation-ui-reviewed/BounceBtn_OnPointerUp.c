/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9b46c, Ghidra VA 02b9b46c. */

void BounceBtn_OnPointerUp(long param_1)

{
  *(undefined1 *)(param_1 + 0x30) = 0;
  return;
}

