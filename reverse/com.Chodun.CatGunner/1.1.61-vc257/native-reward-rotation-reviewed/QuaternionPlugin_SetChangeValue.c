/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bd35e8, Ghidra VA 02cd35e8. */

void QuaternionPlugin_SetChangeValue(undefined8 param_1,long param_2)

{
  float fVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  
  if (param_2 == 0) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  fVar5 = *(float *)(param_2 + 0x130);
  fVar6 = *(float *)(param_2 + 0x134);
  fVar4 = *(float *)(param_2 + 0x138);
  if (*(char *)(param_2 + 0x98) == '\0') {
    fVar5 = (float)QuaternionPlugin_GetEulerValForCalculations
                             (fVar5,fVar6,fVar4,*(undefined4 *)(param_2 + 0x124),
                              *(undefined4 *)(param_2 + 0x128),*(undefined4 *)(param_2 + 300),
                              param_1,param_2);
  }
  fVar9 = *(float *)(param_2 + 0x124);
  fVar8 = *(float *)(param_2 + 0x128);
  fVar7 = *(float *)(param_2 + 300);
  if (*(int *)(param_2 + 0x148) != 1) {
    if (*(int *)(param_2 + 0x148) == 0) {
      if (*(char *)(param_2 + 0xb0) == '\0') {
        fVar1 = (float)func_0x05afb260(fVar5,0x43b40000);
        fVar2 = fVar1;
        if (360.0 <= fVar5) {
          fVar2 = fVar5;
        }
        if (fVar5 <= 360.0) {
          fVar1 = fVar2;
        }
        fVar2 = (float)func_0x05afb260(fVar6,0x43b40000);
        fVar5 = fVar2;
        if (360.0 <= fVar6) {
          fVar5 = fVar6;
        }
        if (fVar6 <= 360.0) {
          fVar2 = fVar5;
        }
        fVar3 = (float)func_0x05afb260(fVar4,0x43b40000);
        fVar1 = fVar1 - fVar9;
        fVar2 = fVar2 - fVar8;
        fVar5 = fVar3;
        if (360.0 <= fVar4) {
          fVar5 = fVar4;
        }
        if (fVar4 <= 360.0) {
          fVar3 = fVar5;
        }
        fVar4 = fVar1;
        if (fVar1 <= 0.0) {
          fVar4 = -fVar1;
        }
        fVar3 = fVar3 - fVar7;
        fVar5 = -(360.0 - fVar1);
        if (fVar1 <= 0.0) {
          fVar5 = fVar1 + 360.0;
        }
        if (fVar4 <= 180.0) {
          fVar5 = fVar1;
        }
        fVar6 = -(360.0 - fVar2);
        fVar4 = fVar2;
        if (fVar2 <= 0.0) {
          fVar6 = fVar2 + 360.0;
          fVar4 = -fVar2;
        }
        if (fVar4 <= 180.0) {
          fVar6 = fVar2;
        }
        fVar4 = -(360.0 - fVar3);
        fVar7 = fVar3;
        if (fVar3 <= 0.0) {
          fVar4 = fVar3 + 360.0;
          fVar7 = -fVar3;
        }
        if (fVar7 <= 180.0) {
          fVar4 = fVar3;
        }
        goto LAB_02cd3750;
      }
    }
    else if (*(char *)(param_2 + 0xb0) == '\0') goto LAB_02cd3750;
  }
  fVar5 = fVar5 - fVar9;
  fVar6 = fVar6 - fVar8;
  fVar4 = fVar4 - fVar7;
LAB_02cd3750:
  *(float *)(param_2 + 0x13c) = fVar5;
  *(float *)(param_2 + 0x140) = fVar6;
  *(float *)(param_2 + 0x144) = fVar4;
  return;
}

