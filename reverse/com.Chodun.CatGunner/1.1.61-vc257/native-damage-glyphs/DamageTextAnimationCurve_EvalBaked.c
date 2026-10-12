/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a82a5c, Ghidra VA 02b82a5c. */

float DamageTextAnimationCurve_EvalBaked(float param_1,long param_2)

{
  uint uVar1;
  float fVar2;
  
  if (param_1 <= 0.0) {
    if (param_2 == 0) goto LAB_02b82b0c;
    if (*(int *)(param_2 + 0x18) == 0) goto LAB_02b82b08;
    fVar2 = *(float *)(param_2 + 0x20);
  }
  else if (1.0 <= param_1) {
    if (param_2 == 0) goto LAB_02b82b0c;
    if (*(uint *)(param_2 + 0x18) < 0x41) goto LAB_02b82b08;
    fVar2 = *(float *)(param_2 + 0x120);
  }
  else {
    uVar1 = 0x80000000;
    if (param_1 * 64.0 != INFINITY) {
      uVar1 = (int)(param_1 * 64.0);
    }
    if (param_2 == 0) {
LAB_02b82b0c:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    if ((*(uint *)(param_2 + 0x18) <= uVar1) || (*(uint *)(param_2 + 0x18) <= uVar1 + 1)) {
LAB_02b82b08:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    fVar2 = *(float *)(param_2 + 0x20 + (long)(int)uVar1 * 4);
    fVar2 = fVar2 + (param_1 * 64.0 - (float)(int)uVar1) *
                    (*(float *)(param_2 + 0x20 + (long)(int)(uVar1 + 1) * 4) - fVar2);
  }
  return fVar2;
}

