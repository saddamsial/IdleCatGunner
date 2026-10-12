/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b3b00c, Ghidra VA 02c3b00c. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Cat_UpdateHandRotation(undefined1 param_1 [16],float param_2,float param_3,long param_4)

{
  int iVar1;
  undefined *puVar2;
  undefined *puVar3;
  ulong uVar4;
  long lVar5;
  long lVar6;
  float *pfVar7;
  undefined8 uVar8;
  float extraout_s0;
  float fVar9;
  float extraout_s0_00;
  float fVar10;
  float fVar11;
  float fVar12;
  float extraout_s0_01;
  float fVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  float fStack_74;
  float fStack_28;
  float fStack_24;
  
  puVar3 = PTR_DAT_05e591c0;
  if ((bRam000000000625c0af & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e631d8);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c0af = 1;
  }
  fVar16 = *(float *)(param_4 + 500);
  uVar8 = *(undefined8 *)(param_4 + 0x1e0);
  if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar4 = Object_op_Inequality_0x6000ded(uVar8,0,0);
  puVar2 = PTR_DAT_05e59000;
  if ((uVar4 & 1) == 0) {
    fVar16 = 130.0;
    goto LAB_02c3b578;
  }
  fVar11 = extraout_s0;
  if (*(long *)(param_4 + 0x48) == 0) goto LAB_02c3b648;
  lVar5 = *(long *)(param_4 + 0xd8);
  if (*(int *)(*(long *)(param_4 + 0x48) + 0x18) == 5) {
    fVar11 = extraout_s0;
    if (lVar5 == 0) goto LAB_02c3b648;
    fVar9 = (float)Transform_get_position_0x6000f4d(lVar5,0);
    fVar11 = fVar9;
    if ((*(long *)(param_4 + 0x1e0) == 0) ||
       (fVar14 = param_2, fVar15 = param_3,
       lVar5 = Component_get_transform_0x6000c82(*(long *)(param_4 + 0x1e0),0),
       fVar11 = extraout_s0_00, lVar5 == 0)) goto LAB_02c3b648;
    fVar10 = (float)Transform_get_position_0x6000f4d(lVar5,0);
    fVar11 = fVar10;
    fVar12 = fVar15;
    if (cRam000000000625bae8 == '\0') {
      fVar11 = (float)func_0x029f5a50(PTR_DAT_05e59000);
      cRam000000000625bae8 = '\x01';
    }
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      fVar11 = (float)func_0x029f5bd0();
    }
    if (*(long *)(param_4 + 0xd8) == 0) goto LAB_02c3b648;
    fVar10 = fVar10 - fVar9;
    fVar15 = fVar15 - param_3;
    fVar11 = SQRT(fVar10 * fVar10 + fVar15 * fVar15) * _UNK_0116c21c;
    fVar9 = 4.0;
    fStack_24 = (float)Transform_get_position_0x6000f4d(*(long *)(param_4 + 0xd8),0);
    if (cRam000000000625b52e == '\0') {
      func_0x029f5a50(PTR_DAT_05e59000);
      cRam000000000625b52e = '\x01';
    }
    fVar14 = (fVar14 - param_2) + fVar11 * 4.0;
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    fVar11 = SQRT(fVar15 * fVar15 + fVar10 * fVar10 + fVar14 * fVar14);
    if (fVar11 <= _UNK_0116c240) {
      if (cRam000000000625b26f == '\0') {
        func_0x029f5a50(PTR_DAT_05e58bf8);
        cRam000000000625b26f = '\x01';
      }
      pfVar7 = *(float **)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
      fVar10 = *pfVar7;
      fVar14 = pfVar7[1];
      fVar15 = pfVar7[2];
    }
    else {
      fVar10 = fVar10 / fVar11;
      fVar14 = fVar14 / fVar11;
      fVar15 = fVar15 / fVar11;
    }
    param_3 = fVar15 * 10.0;
    fStack_24 = fStack_24 + fVar10 * 10.0;
    fVar11 = fVar12 + param_3;
    fStack_74 = fVar9 + fVar14 * 10.0;
    fStack_28 = fVar11;
  }
  else {
    fVar11 = extraout_s0;
    if (lVar5 == 0) goto LAB_02c3b648;
    fStack_24 = *(float *)(param_4 + 0x1e8);
    fStack_28 = *(float *)(param_4 + 0x1f0);
    fVar9 = fStack_24;
    fVar11 = (float)Transform_get_position_0x6000f4d(lVar5,0);
    fStack_74 = fVar9;
  }
  if (*(long *)(param_4 + 0xd8) != 0) {
    fVar12 = (float)Transform_get_position_0x6000f4d(*(long *)(param_4 + 0xd8),0);
    fVar11 = fVar12;
    fVar14 = fVar9;
    fVar15 = param_3;
    if (cRam000000000625c0be == '\0') {
      fVar11 = (float)func_0x029f5a50(PTR_DAT_05e59000);
      cRam000000000625c0be = '\x01';
    }
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      fVar11 = (float)func_0x029f5bd0();
    }
    if (*(long *)(param_4 + 0xd8) != 0) {
      fVar10 = (float)Transform_get_position_0x6000f4d(*(long *)(param_4 + 0xd8),0);
      lVar5 = Component_get_transform_0x6000c82(param_4,0);
      fVar11 = extraout_s0_01;
      if (lVar5 != 0) {
        param_3 = param_3 - fStack_28;
        fVar13 = param_3 * param_3;
        fVar9 = fVar13 + (fVar12 - fStack_24) * (fVar12 - fStack_24) +
                         (fVar9 - fStack_74) * (fVar9 - fStack_74);
        fVar11 = (float)Transform_get_position_0x6000f4d(lVar5,0);
        if (cRam000000000625c0be == '\0') {
          func_0x029f5a50(PTR_DAT_05e59000);
          cRam000000000625c0be = '\x01';
        }
        if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        fVar15 = fVar15 - param_3;
        fVar12 = fVar15 * fVar15;
        fVar11 = SQRT(fVar12 + (fVar10 - fVar11) * (fVar10 - fVar11) +
                               (fVar14 - fVar13) * (fVar14 - fVar13));
        if (fVar11 < SQRT(fVar9)) {
          if (*(long *)(param_4 + 0xd8) == 0) goto LAB_02c3b648;
          fVar11 = (float)Transform_get_position_0x6000f4d(*(long *)(param_4 + 0xd8),0);
          fStack_24 = fStack_24 - fVar11;
          fStack_74 = fStack_74 - fVar12;
          fStack_28 = fStack_28 - fVar15;
          fVar9 = fStack_28 * fStack_28 + fStack_24 * fStack_24 + fStack_74 * fStack_74;
          if (_UNK_0116c200 < fVar9) {
            fVar11 = _UNK_0116c200;
            if (*(long *)(param_4 + 0xd8) == 0) goto LAB_02c3b648;
            lVar5 = Transform_get_parent_0x6000f5f(*(long *)(param_4 + 0xd8),0);
            lVar6 = *(long *)puVar3;
            if (*(int *)(lVar6 + 0xe4) == 0) {
              func_0x029f5bd0(lVar6);
            }
            uVar4 = Object_op_Inequality_0x6000ded(lVar5,0,0);
            if ((uVar4 & 1) == 0) {
              if (cRam000000000625b52e == '\0') {
                func_0x029f5a50(PTR_DAT_05e59000);
                cRam000000000625b52e = '\x01';
              }
              if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
                func_0x029f5bd0();
              }
              fVar9 = SQRT(fVar9);
              if (fVar9 <= _UNK_0116c240) {
                if (cRam000000000625b26f == '\0') {
                  func_0x029f5a50(PTR_DAT_05e58bf8);
                  cRam000000000625b26f = '\x01';
                }
                fStack_24 = **(float **)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
                fStack_74 = (*(float **)(*(long *)PTR_DAT_05e58bf8 + 0xb8))[1];
              }
              else {
                fStack_24 = fStack_24 / fVar9;
                fStack_74 = fStack_74 / fVar9;
              }
            }
            else {
              if (cRam000000000625b52e == '\0') {
                func_0x029f5a50(PTR_DAT_05e59000);
                cRam000000000625b52e = '\x01';
              }
              if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
                func_0x029f5bd0();
              }
              fVar9 = SQRT(fVar9);
              if (fVar9 <= _UNK_0116c240) {
                if (cRam000000000625b26f == '\0') {
                  func_0x029f5a50(PTR_DAT_05e58bf8);
                  cRam000000000625b26f = '\x01';
                }
                pfVar7 = *(float **)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
                fVar11 = *pfVar7;
                fStack_74 = pfVar7[1];
                fStack_28 = pfVar7[2];
              }
              else {
                fVar11 = fStack_24 / fVar9;
                fStack_74 = fStack_74 / fVar9;
                fStack_28 = fStack_28 / fVar9;
              }
              if (lVar5 == 0) goto LAB_02c3b648;
              fStack_24 = (float)Transform_InverseTransformDirection_0x6000f74
                                           (fVar11,fStack_74,fStack_28,lVar5,0);
            }
            fVar16 = (float)func_0x05afb2e0(fStack_74,fStack_24);
            fVar16 = fVar16 * _UNK_0116c074;
          }
        }
LAB_02c3b578:
        puVar3 = PTR_DAT_05e631d8;
        fVar14 = *(float *)(param_4 + 500);
        fVar9 = *(float *)(param_4 + 0x120);
        fVar11 = (float)Time_get_deltaTime_0x6000ee5(0);
        fVar16 = fVar16 - fVar14;
        fVar9 = fVar9 * fVar11;
        uVar8 = *(undefined8 *)(param_4 + 0xd8);
        fVar16 = fVar16 + (float)(int)(fVar16 / 360.0) * -360.0;
        fVar11 = 360.0;
        if (fVar16 <= 360.0) {
          fVar11 = fVar16;
        }
        fVar15 = 0.0;
        if (0.0 <= fVar16) {
          fVar15 = fVar11;
        }
        iVar1 = *(int *)(*(long *)puVar3 + 0xe4);
        fVar16 = fVar15 + -360.0;
        if (fVar15 <= 180.0) {
          fVar16 = fVar15;
        }
        fVar11 = 1.0;
        if (fVar9 <= 1.0) {
          fVar11 = fVar9;
        }
        fVar15 = 0.0;
        if (0.0 <= fVar9) {
          fVar15 = fVar11;
        }
        fVar14 = fVar14 + fVar15 * fVar16;
        *(float *)(param_4 + 500) = fVar14;
        if (iVar1 == 0) {
          func_0x029f5bd0();
        }
        Cat_ApplyHandZ(fVar14,uVar8);
        Cat_ApplyLeftHandTowardGunPivot(param_4);
        return;
      }
    }
  }
LAB_02c3b648:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper(fVar11);
}

