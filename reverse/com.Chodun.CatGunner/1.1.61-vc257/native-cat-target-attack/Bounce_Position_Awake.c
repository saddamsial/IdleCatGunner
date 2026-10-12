/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9c13c, Ghidra VA 02b9c13c. */

void Bounce_Position_Awake(long param_1)

{
  if (*(char *)(param_1 + 0x48) != '\0') {
    return;
  }
  *(undefined1 *)(param_1 + 0x48) = 1;
  *(float *)(param_1 + 0x34) = *(float *)(param_1 + 0x30) * 0.5;
  return;
}

