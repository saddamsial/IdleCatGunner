/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2bd3210, Ghidra VA 02cd3210. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

float QuaternionPlugin_GetEulerValForCalculations
                (float param_1,float param_2,float param_3,float param_4,float param_5,float param_6
                ,undefined8 param_7,long param_8)

{
  int iVar1;
  bool bVar2;
  bool bVar3;
  bool bVar4;
  bool bVar5;
  int iVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  float fVar19;
  
  if (param_8 == 0) {
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  if ((*(char *)(param_8 + 0xb0) == '\0') && ((*(uint *)(param_8 + 0x148) & 0xfffffffe) != 2)) {
    fVar15 = 180.0 - param_1;
    if (cRam000000000625b870 == '\0') {
      func_0x029f5a50(PTR_DAT_05e5a218);
      cRam000000000625b870 = '\x01';
    }
    fVar9 = ABS(param_4);
    fVar13 = ABS(param_2 + 180.0);
    fVar16 = ABS(param_6);
    fVar19 = ABS(param_3 + 180.0);
    fVar7 = fVar9;
    if (fVar9 <= ABS(param_1)) {
      fVar7 = ABS(param_1);
    }
    fVar18 = **(float **)(*(long *)PTR_DAT_05e5a218 + 0xb8) * 8.0;
    fVar12 = ABS(param_5);
    fVar8 = fVar7 * _UNK_0116c1e4;
    if (fVar7 * _UNK_0116c1e4 <= fVar18) {
      fVar8 = fVar18;
    }
    if (fVar9 <= ABS(fVar15)) {
      fVar9 = ABS(fVar15);
    }
    fVar7 = fVar9 * _UNK_0116c1e4;
    if (fVar9 * _UNK_0116c1e4 <= fVar18) {
      fVar7 = fVar18;
    }
    fVar9 = fVar12;
    if (fVar12 <= ABS(param_2)) {
      fVar9 = ABS(param_2);
    }
    fVar10 = ABS(param_2 - param_5);
    fVar11 = fVar9 * _UNK_0116c1e4;
    if (fVar9 * _UNK_0116c1e4 <= fVar18) {
      fVar11 = fVar18;
    }
    bVar2 = fVar10 < fVar11;
    if (fVar12 <= fVar13) {
      fVar12 = fVar13;
    }
    fVar13 = ABS((param_2 + 180.0) - param_5);
    fVar9 = fVar12 * _UNK_0116c1e4;
    if (fVar12 * _UNK_0116c1e4 <= fVar18) {
      fVar9 = fVar18;
    }
    fVar12 = fVar16;
    if (fVar16 <= ABS(param_3)) {
      fVar12 = ABS(param_3);
    }
    fVar14 = fVar12 * _UNK_0116c1e4;
    if (fVar12 * _UNK_0116c1e4 <= fVar18) {
      fVar14 = fVar18;
    }
    if (fVar16 <= fVar19) {
      fVar16 = fVar19;
    }
    fVar17 = ABS(param_3 - param_6);
    fVar12 = ABS(param_1 - param_4);
    fVar19 = fVar16 * _UNK_0116c1e4;
    if (fVar16 * _UNK_0116c1e4 <= fVar18) {
      fVar19 = fVar18;
    }
    bVar3 = fVar17 < fVar14;
    bVar4 = fVar12 < fVar8;
    bVar5 = ABS((param_3 + 180.0) - param_6) < fVar19;
    if (((bVar3 && bVar2 || bVar4 && (bVar3 || bVar2)) ||
        (ABS(fVar15 - param_4) < fVar7 &&
         ((bVar5 || fVar13 < fVar9) && ((!bVar3 || !bVar2) && (!bVar4 || !bVar3 && !bVar2))))) ||
       (bVar5 && fVar13 < fVar9)) {
      iVar6 = 2;
      iVar1 = iVar6;
      if (fVar11 <= fVar10) {
        iVar1 = 1;
      }
      if (fVar8 <= fVar12) {
        iVar1 = 0;
      }
      if (fVar9 <= fVar13) {
        iVar6 = 1;
      }
      if (fVar7 <= ABS(fVar15 - param_4)) {
        iVar6 = 0;
      }
      if ((!bVar3 || !bVar2) && (!bVar4 || !bVar3 && !bVar2)) {
        iVar1 = iVar6;
      }
      if (iVar1 == 0) {
        if (fVar14 <= fVar17) {
          return fVar15;
        }
      }
      else {
        if (iVar1 == 1) {
          if (fVar14 <= fVar17) {
            return fVar15;
          }
          if (fVar12 < fVar8) {
            return param_1;
          }
          return fVar15;
        }
        if (fVar8 <= fVar12) {
          return fVar15;
        }
      }
      if (fVar11 <= fVar10) {
        return fVar15;
      }
    }
  }
  return param_1;
}

