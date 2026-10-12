/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2a87488, Ghidra VA 02b87488. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

float Joystick_SnapFloat(float param_1,long param_2,int param_3)

{
  bool bVar1;
  undefined *puVar2;
  bool bVar3;
  float fVar4;
  double dVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  
  if (param_1 != 0.0) {
    if (*(int *)(param_2 + 0x28) == 0) {
      fVar7 = *(float *)(param_2 + 0x58);
      fVar8 = *(float *)(param_2 + 0x5c);
      if (cRam000000000625b95c == '\0') {
        func_0x029f5a50(PTR_DAT_05e59608);
        cRam000000000625b95c = '\x01';
      }
      fVar9 = *(float *)(*(long *)(*(long *)PTR_DAT_05e59608 + 0xb8) + 0x10);
      fVar10 = *(float *)(*(long *)(*(long *)PTR_DAT_05e59608 + 0xb8) + 0x14);
      if (cRam000000000625b95d == '\0') {
        func_0x029f5a50(PTR_DAT_05e59000);
        cRam000000000625b95d = '\x01';
      }
      puVar2 = PTR_DAT_05e59000;
      if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      fVar6 = 0.0;
      fVar4 = SQRT((fVar7 * fVar7 + fVar8 * fVar8) * (fVar9 * fVar9 + fVar10 * fVar10));
      if (_UNK_0116be5c <= fVar4) {
        fVar4 = (fVar7 * fVar9 + fVar8 * fVar10) / fVar4;
        fVar7 = 1.0;
        if (fVar4 <= 1.0) {
          fVar7 = fVar4;
        }
        fVar8 = -1.0;
        if (-1.0 <= fVar4) {
          fVar8 = fVar7;
        }
        if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        dVar5 = (double)func_0x05afb290((double)fVar8);
        fVar6 = (float)dVar5 * _UNK_0116c074;
      }
      if (param_3 == 2) {
        if ((67.5 < fVar6) && (fVar6 < 112.5)) {
          return 0.0;
        }
      }
      else {
        if (param_3 != 1) {
          return param_1;
        }
        if (fVar6 < 22.5) {
          return 0.0;
        }
        if (_UNK_0116bf98 < fVar6) {
          return 0.0;
        }
      }
      bVar1 = param_1 <= 0.0;
      param_1 = 1.0;
      if (bVar1) {
        param_1 = -1.0;
      }
    }
    else {
      bVar3 = param_1 < 0.0;
      bVar1 = param_1 <= 0.0;
      param_1 = 1.0;
      if (bVar1) {
        param_1 = 0.0;
        if (bVar3) {
          param_1 = -1.0;
        }
      }
    }
  }
  return param_1;
}

