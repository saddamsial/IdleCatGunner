/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b3e32c, Ghidra VA 02c3e32c. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Cat_SmoothMoveTowardWithAvoidance(float param_1,undefined4 param_2,float param_3,long param_4)

{
  int iVar1;
  undefined *puVar2;
  long lVar3;
  ulong uVar4;
  ulong uVar5;
  undefined4 *puVar6;
  undefined4 *puVar7;
  undefined4 *puVar8;
  long lVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  undefined4 uVar17;
  undefined4 uVar18;
  float fVar19;
  undefined4 uVar20;
  undefined4 uVar21;
  float fVar22;
  float fVar23;
  undefined8 uVar24;
  float fVar25;
  
  fVar14 = param_3;
  if ((bRam000000000625c0a3 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e631d8);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e61878);
    bRam000000000625c0a3 = 1;
  }
  lVar3 = Component_get_transform_0x6000c82(param_4,0);
  if (lVar3 != 0) {
    fVar10 = (float)Transform_get_position_0x6000f4d(lVar3,0);
    uVar4 = Cat_IsPathClear_0x6000750(param_4);
    puVar2 = PTR_DAT_05e59000;
    if ((uVar4 & 1) == 0) {
      param_3 = fVar14;
      param_1 = (float)Cat_GetBreadcrumbTarget(fVar10,param_2);
      if (cRam000000000625bae8 == '\0') {
        func_0x029f5a50(PTR_DAT_05e59000);
        cRam000000000625bae8 = '\x01';
      }
      lVar3 = *(long *)puVar2;
    }
    else {
      if (cRam000000000625bae8 == '\0') {
        func_0x029f5a50(PTR_DAT_05e59000);
        cRam000000000625bae8 = '\x01';
      }
      lVar3 = *(long *)puVar2;
    }
    param_1 = param_1 - fVar10;
    param_3 = param_3 - fVar14;
    if (*(int *)(lVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    fVar14 = SQRT(param_1 * param_1 + param_3 * param_3);
    if (fVar14 <= _UNK_0116c268) {
      if (cRam000000000625b26f == '\0') {
        func_0x029f5a50(PTR_DAT_05e58bf8);
        cRam000000000625b26f = '\x01';
      }
      uVar24 = **(undefined8 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
      param_3 = *(float *)(*(undefined8 **)(*(long *)PTR_DAT_05e58bf8 + 0xb8) + 1);
    }
    else {
      param_3 = param_3 / fVar14;
      uVar24 = CONCAT44(0.0 / fVar14,param_1 / fVar14);
    }
    fVar12 = (float)uVar24;
    fVar16 = (float)((ulong)uVar24 >> 0x20);
    fVar10 = fVar12 * fVar12 + fVar16 * fVar16 + param_3 * param_3;
    if (fVar10 <= _UNK_0116c200) {
      fVar14 = (float)*(undefined8 *)(param_4 + 0x1d0);
      fVar10 = (float)((ulong)*(undefined8 *)(param_4 + 0x1d0) >> 0x20);
      if (_UNK_0116c088 <
          fVar14 * fVar14 + fVar10 * fVar10 +
          *(float *)(param_4 + 0x1d8) * *(float *)(param_4 + 0x1d8)) {
        Cat_ApplySeparationDrift(0x3f000000,param_4);
        return;
      }
      Cat_SmoothStop(param_4);
      return;
    }
    if (cRam000000000625b52e == '\0') {
      func_0x029f5a50(PTR_DAT_05e59000);
      cRam000000000625b52e = '\x01';
    }
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    fVar10 = SQRT(fVar10);
    if (fVar10 <= _UNK_0116c240) {
      if (cRam000000000625b26f == '\0') {
        func_0x029f5a50(PTR_DAT_05e58bf8);
        cRam000000000625b26f = '\x01';
      }
      uVar4 = **(ulong **)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
      param_3 = *(float *)(*(ulong **)(*(long *)PTR_DAT_05e58bf8 + 0xb8) + 1);
    }
    else {
      uVar4 = CONCAT44(fVar16 / fVar10,fVar12 / fVar10);
      param_3 = param_3 / fVar10;
    }
    fVar12 = *(float *)(param_4 + 0x220);
    *(ulong *)(param_4 + 0x20c) = uVar4;
    *(float *)(param_4 + 0x214) = param_3;
    puVar2 = PTR_DAT_05e631d8;
    fVar10 = 1.0;
    if ((0.0 < fVar12) && (fVar10 = 1.0, fVar14 < fVar12)) {
      fVar14 = fVar14 / fVar12;
      fVar10 = 1.0;
      if (fVar14 <= 1.0) {
        fVar10 = fVar14;
      }
      fVar12 = 0.0;
      if (0.0 <= fVar14) {
        fVar12 = fVar10;
      }
      fVar10 = fVar12 * fVar12 * 3.0 - fVar12 * fVar12 * (fVar12 + fVar12);
      fVar10 = fVar10 + (1.0 - fVar10) * *(float *)(param_4 + 0x224);
    }
    fVar14 = *(float *)(param_4 + 0x20);
    fVar12 = *(float *)(param_4 + 0x24c);
    if (*(int *)(*(long *)PTR_DAT_05e631d8 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    fVar16 = (float)(uVar4 >> 0x20);
    fVar11 = (float)Cat_ScreenSpeedMultiplier_0x600072b(uVar4,fVar16,param_3);
    fVar13 = *(float *)(param_4 + 0x20);
    fVar15 = *(float *)(param_4 + 0x1d0);
    fVar22 = *(float *)(param_4 + 0x228);
    uVar24 = *(undefined8 *)(param_4 + 0x230);
    fVar19 = *(float *)(param_4 + 0x238);
    fVar11 = fVar10 * fVar14 * fVar12 * fVar11;
    fVar10 = *(float *)(param_4 + 0x1d8);
    fVar14 = (float)Time_get_deltaTime_0x6000ee5(0);
    fVar22 = fVar22 * fVar14;
    lVar3 = *(long *)(param_4 + 0x30);
    fVar14 = 1.0;
    if (fVar22 <= 1.0) {
      fVar14 = fVar22;
    }
    fVar23 = (float)uVar24;
    fVar25 = (float)((ulong)uVar24 >> 0x20);
    fVar12 = 0.0;
    if (0.0 <= fVar22) {
      fVar12 = fVar14;
    }
    fVar14 = ((param_3 * fVar11 + fVar10 * fVar13) - fVar19) * fVar12;
    uVar24 = CONCAT44(fVar25 + ((fVar13 * 0.0 + 0.0) - fVar25) * fVar12,
                      fVar23 + ((fVar15 * fVar13 + fVar11 * (float)uVar4) - fVar23) * fVar12);
    *(undefined8 *)(param_4 + 0x230) = uVar24;
    *(float *)(param_4 + 0x238) = fVar19 + fVar14;
    if (lVar3 != 0) {
      Rigidbody_get_linearVelocity_0x6000095(lVar3,0);
      fVar10 = *(float *)(param_4 + 0x238);
      Rigidbody_set_linearVelocity_0x6000096(uVar24,lVar3,0);
      uVar24 = *(undefined8 *)(param_4 + 0x1e0);
      if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar5 = Object_op_Inequality_0x6000ded(uVar24,0,0);
      lVar3 = *(long *)puVar2;
      if ((uVar5 & 1) == 0) {
        if (*(int *)(lVar3 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar3 = *(long *)puVar2;
        }
        lVar3 = *(long *)(lVar3 + 0xb8);
        uVar17 = *(undefined4 *)(lVar3 + 0x44);
        uVar18 = *(undefined4 *)(lVar3 + 0x48);
        uVar20 = *(undefined4 *)(lVar3 + 0x4c);
        uVar21 = *(undefined4 *)(lVar3 + 0x50);
      }
      else {
        if (*(int *)(lVar3 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar3 = *(long *)puVar2;
        }
        if (*(long *)(param_4 + 0x1e0) == 0) goto LAB_02c3e90c;
        lVar3 = *(long *)(lVar3 + 0xb8);
        uVar17 = *(undefined4 *)(lVar3 + 0x44);
        uVar18 = *(undefined4 *)(lVar3 + 0x48);
        uVar20 = *(undefined4 *)(lVar3 + 0x4c);
        uVar21 = *(undefined4 *)(lVar3 + 0x50);
        lVar3 = Component_get_transform_0x6000c82(*(long *)(param_4 + 0x1e0),0);
        if (lVar3 == 0) goto LAB_02c3e90c;
        fVar12 = (float)Transform_get_position_0x6000f4d(lVar3,0);
        fVar16 = fVar14;
        param_3 = fVar10;
        lVar3 = Component_get_transform_0x6000c82(param_4,0);
        if (lVar3 == 0) goto LAB_02c3e90c;
        fVar11 = (float)Transform_get_position_0x6000f4d(lVar3,0);
        uVar4 = (ulong)(uint)(fVar12 - fVar11);
        fVar16 = fVar14 - fVar16;
        param_3 = fVar10 - param_3;
      }
      fVar14 = (float)Quaternion_op_Multiply_0x6000a54
                                (uVar17,uVar18,uVar20,uVar21,uVar4,fVar16,param_3,0);
      lVar3 = *(long *)puVar2;
      lVar9 = *(long *)(param_4 + 0xb8);
      iVar1 = *(int *)(lVar3 + 0xe4);
      *(bool *)(param_4 + 0x1f8) = 0.0 > fVar14 || fVar14 == 0.0;
      if (0.0 <= fVar14 && fVar14 != 0.0) {
        if (iVar1 == 0) {
          func_0x029f5bd0();
          lVar3 = *(long *)puVar2;
        }
        lVar3 = *(long *)(lVar3 + 0xb8);
        puVar6 = (undefined4 *)(lVar3 + 0x2c);
        puVar7 = (undefined4 *)(lVar3 + 0x30);
        puVar8 = (undefined4 *)(lVar3 + 0x34);
      }
      else {
        if (iVar1 == 0) {
          func_0x029f5bd0();
          lVar3 = *(long *)puVar2;
        }
        lVar3 = *(long *)(lVar3 + 0xb8);
        puVar6 = (undefined4 *)(lVar3 + 0x20);
        puVar7 = (undefined4 *)(lVar3 + 0x24);
        puVar8 = (undefined4 *)(lVar3 + 0x28);
      }
      if (lVar9 != 0) {
        Transform_set_localEulerAngles_0x6000f54(*puVar6,*puVar7,*puVar8,lVar9,0);
        if (*(long *)(param_4 + 0x38) != 0) {
          Animator_SetBool_0x6000033(*(long *)(param_4 + 0x38),*(undefined8 *)PTR_DAT_05e61878,1,0);
          return;
        }
      }
    }
  }
LAB_02c3e90c:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

