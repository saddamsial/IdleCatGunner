/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9c2dc, Ghidra VA 02b9c2dc. */

void Bounce_Position_resetAnim(long param_1)

{
  *(undefined4 *)(param_1 + 0x20) = 0;
  *(undefined1 *)(param_1 + 0x38) = 0;
  return;
}

