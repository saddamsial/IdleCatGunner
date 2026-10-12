/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9b6a8, Ghidra VA 02b9b6a8. */

void BounceStart_Size_reload(long param_1)

{
  float fVar1;
  
  if (*(char *)(param_1 + 0x38) != '\0') {
    return;
  }
  *(undefined1 *)(param_1 + 0x38) = 1;
  fVar1 = *(float *)(param_1 + 0x28) * *(float *)(param_1 + 0x2c);
  *(float *)(param_1 + 0x30) = fVar1;
  *(float *)(param_1 + 0x34) = *(float *)(param_1 + 0x28) - fVar1;
  return;
}

