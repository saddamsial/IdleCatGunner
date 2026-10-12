/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a9aeec, Ghidra VA 02b9aeec. */

void Bounce_Size_reload_Fit(float param_1,float param_2,float param_3,long param_4)

{
  float fVar1;
  
  fVar1 = *(float *)(param_4 + 0x24);
  *(float *)(param_4 + 0x38) = param_1;
  *(float *)(param_4 + 0x3c) = param_2;
  *(float *)(param_4 + 0x40) = param_3;
  *(float *)(param_4 + 0x44) = param_1 * fVar1;
  *(float *)(param_4 + 0x48) = param_2 * fVar1;
  *(float *)(param_4 + 0x4c) = param_3 * fVar1;
  *(float *)(param_4 + 0x30) = *(float *)(param_4 + 0x2c) * 0.5;
  return;
}

