/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b3bf38, Ghidra VA 02c3bf38. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Cat_UpdateSpreadState(long param_1)

{
  undefined *puVar1;
  byte bVar2;
  undefined8 uVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c091 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c091 = 1;
  }
  uVar3 = *(undefined8 *)(param_1 + 0x1e0);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  bVar2 = Object_op_Inequality_0x6000ded(uVar3,0,0);
  if ((bVar2 & 1) == 0) {
    fVar8 = *(float *)(param_1 + 0x13c);
    *(byte *)(param_1 + 0x140) = bVar2 & 1;
    if (0.0 < fVar8) {
      fVar6 = *(float *)(param_1 + 0xb0);
      if (*(float *)(param_1 + 0xb0) <= _UNK_0116c094) {
        fVar6 = _UNK_0116c094;
      }
      fVar6 = (float)func_0x05afb2d0(fVar6);
      fVar4 = (fVar6 + _UNK_0116c118) / _UNK_0116bf14;
      fVar6 = 1.0;
      if (fVar4 <= 1.0) {
        fVar6 = fVar4;
      }
      fVar5 = 1.0;
      if (0.0 <= fVar4) {
        fVar5 = 1.0 - fVar6;
      }
      fVar6 = 1.0;
      if (fVar5 <= 1.0) {
        fVar6 = fVar5;
      }
      fVar4 = 0.0;
      if (0.0 <= fVar5) {
        fVar4 = fVar6;
      }
      fVar6 = *(float *)(param_1 + 300) +
              (*(float *)(param_1 + 0x130) - *(float *)(param_1 + 300)) * fVar4;
      if (fVar6 <= 1.0) {
        fVar6 = 1.0;
      }
      fVar6 = *(float *)(param_1 + 0x138) * fVar6;
      fVar5 = (float)Time_get_deltaTime_0x6000ee5(0);
      fVar7 = fVar5 * fVar6;
      fVar4 = 0.0 - fVar8;
      fVar6 = -(fVar5 * fVar6);
      if (0.0 <= 0.0 - fVar8) {
        fVar6 = fVar7;
      }
      fVar8 = fVar8 + fVar6;
      if (ABS(fVar4) <= fVar7) {
        fVar8 = 0.0;
      }
      *(float *)(param_1 + 0x13c) = fVar8;
    }
  }
  else {
    if (*(char *)(param_1 + 0x140) == '\0') {
      fVar8 = 0.0;
      *(undefined4 *)(param_1 + 0x13c) = 0;
      *(undefined4 *)(param_1 + 0xac) = 0;
    }
    else {
      fVar8 = *(float *)(param_1 + 0x13c);
    }
    *(byte *)(param_1 + 0x140) = bVar2 & 1;
  }
  fVar6 = _UNK_0116c094;
  *(float *)(param_1 + 0x144) = fVar8;
  fVar8 = *(float *)(param_1 + 0xb0);
  if (*(float *)(param_1 + 0xb0) <= fVar6) {
    fVar8 = fVar6;
  }
  fVar8 = (float)func_0x05afb2d0(fVar8);
  fVar6 = (fVar8 + _UNK_0116c118) / _UNK_0116bf14;
  fVar8 = 1.0;
  if (fVar6 <= 1.0) {
    fVar8 = fVar6;
  }
  fVar4 = 1.0;
  if (0.0 <= fVar6) {
    fVar4 = 1.0 - fVar8;
  }
  fVar8 = 1.0;
  if (fVar4 <= 1.0) {
    fVar8 = fVar4;
  }
  fVar6 = 0.0;
  if (0.0 <= fVar4) {
    fVar6 = fVar8;
  }
  *(float *)(param_1 + 0x148) =
       *(float *)(param_1 + 300) + (*(float *)(param_1 + 0x130) - *(float *)(param_1 + 300)) * fVar6
  ;
  return;
}

