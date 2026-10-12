/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9b06c, Ghidra VA 02b9b06c. */

void Bounce_resetAnim(long param_1)

{
  *(undefined4 *)(param_1 + 0x20) = 0;
  *(undefined1 *)(param_1 + 0x34) = 0;
  return;
}

