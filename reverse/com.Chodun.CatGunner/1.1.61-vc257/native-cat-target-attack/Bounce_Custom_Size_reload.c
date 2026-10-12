/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9bd48, Ghidra VA 02b9bd48. */

void Bounce_Custom_Size_reload(long param_1)

{
  if (*(char *)(param_1 + 0x4c) != '\0') {
    return;
  }
  *(undefined1 *)(param_1 + 0x4c) = 1;
  *(float *)(param_1 + 0x38) = *(float *)(param_1 + 0x34) * 0.5;
  return;
}

