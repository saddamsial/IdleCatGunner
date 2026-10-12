/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b453a8, Ghidra VA 02c453a8. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

bool Boss_PathCrossesCat(float param_1,float param_2,float param_3,float param_4,float param_5,
                        float param_6)

{
  undefined *puVar1;
  float *pfVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float fStack0000000000000000;
  float fStack0000000000000004;
  float in_stack_00000008;
  float in_stack_00000010;
  
  if (cRam000000000625b26f == '\0') {
    func_0x029f5a50(PTR_DAT_05e58bf8);
    cRam000000000625b26f = '\x01';
  }
  pfVar2 = *(float **)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
  if (_UNK_0116be94 <=
      (in_stack_00000008 - pfVar2[2]) * (in_stack_00000008 - pfVar2[2]) +
      (fStack0000000000000000 - *pfVar2) * (fStack0000000000000000 - *pfVar2) +
      (fStack0000000000000004 - pfVar2[1]) * (fStack0000000000000004 - pfVar2[1])) {
    if (cRam000000000625bae8 == '\0') {
      func_0x029f5a50(PTR_DAT_05e59000);
      cRam000000000625bae8 = '\x01';
    }
    puVar1 = PTR_DAT_05e59000;
    param_4 = param_4 - param_1;
    param_5 = param_5 - param_2;
    param_6 = param_6 - param_3;
    if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    fVar3 = SQRT(param_6 * param_6 + param_4 * param_4 + param_5 * param_5);
    if (_UNK_0116c268 <= fVar3) {
      fVar6 = (in_stack_00000008 - param_3) * (param_6 / fVar3) +
              (fStack0000000000000000 - param_1) * (param_4 / fVar3) +
              (fStack0000000000000004 - param_2) * (param_5 / fVar3);
      fVar4 = fVar3;
      if (fVar6 <= fVar3) {
        fVar4 = fVar6;
      }
      fVar5 = 0.0;
      if (0.0 <= fVar6) {
        fVar5 = fVar4;
      }
      if (cRam000000000625c0be == '\0') {
        func_0x029f5a50(PTR_DAT_05e59000);
        cRam000000000625c0be = '\x01';
      }
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      fStack0000000000000004 = (param_2 + (param_5 / fVar3) * fVar5) - fStack0000000000000004;
      fStack0000000000000000 = (param_1 + (param_4 / fVar3) * fVar5) - fStack0000000000000000;
      in_stack_00000008 = (param_3 + (param_6 / fVar3) * fVar5) - in_stack_00000008;
      return SQRT(in_stack_00000008 * in_stack_00000008 +
                  fStack0000000000000000 * fStack0000000000000000 +
                  fStack0000000000000004 * fStack0000000000000004) < in_stack_00000010;
    }
  }
  return false;
}

