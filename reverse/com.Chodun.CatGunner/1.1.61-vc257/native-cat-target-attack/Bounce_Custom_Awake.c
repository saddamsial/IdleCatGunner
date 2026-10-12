/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9bd20, Ghidra VA 02b9bd20. */

void Bounce_Custom_Awake(long param_1)

{
  if (*(char *)(param_1 + 0x4c) != '\0') {
    return;
  }
  *(undefined1 *)(param_1 + 0x4c) = 1;
  *(float *)(param_1 + 0x38) = *(float *)(param_1 + 0x34) * 0.5;
  return;
}

