/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9bec0, Ghidra VA 02b9bec0. */

void Bounce_Custom_resetAnim(long param_1)

{
  *(undefined4 *)(param_1 + 0x20) = 0;
  *(undefined1 *)(param_1 + 0x3c) = 0;
  return;
}

