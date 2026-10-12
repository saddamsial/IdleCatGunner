/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b3bad0, Ghidra VA 02c3bad0. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Cat_ResolveAttackTarget(undefined1 param_1 [16],float param_2,float param_3,long param_4)

{
  undefined *puVar1;
  ulong uVar2;
  long lVar3;
  long lVar4;
  undefined8 uVar5;
  float fVar6;
  float fVar7;
  undefined4 uVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c0ac & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63228);
    func_0x029f5a50(PTR_DAT_05e613d0);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c0ac = 1;
  }
  uVar5 = *(undefined8 *)(param_4 + 0x28);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Object_op_Inequality_0x6000ded(uVar5,0,0);
  if ((uVar2 & 1) == 0) {
    if (cRam000000000625b271 == '\0') {
      func_0x029f5a50(PTR_DAT_05e59608);
      cRam000000000625b271 = '\x01';
    }
    fVar6 = **(float **)(*(long *)PTR_DAT_05e59608 + 0xb8);
    param_2 = (*(float **)(*(long *)PTR_DAT_05e59608 + 0xb8))[1];
  }
  else {
    if (*(long *)(param_4 + 0x28) == 0) goto LAB_02c3bf34;
    fVar6 = (float)Joystick_get_Direction_0x6000129(*(long *)(param_4 + 0x28),0);
  }
  fVar11 = _UNK_0116c200;
  if (_UNK_0116c200 < fVar6 * fVar6 + param_2 * param_2) {
LAB_02c3be50:
    *(undefined8 *)(param_4 + 0x180) = *(undefined8 *)(param_4 + 0x1e0);
    func_0x029f59f4(param_4 + 0x180);
    uVar5 = *(undefined8 *)(param_4 + 0x1e0);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar2 = Object_op_Inequality_0x6000ded(uVar5,0,0);
    if ((uVar2 & 1) == 0) goto LAB_02c3beb0;
    lVar3 = *(long *)(param_4 + 0x1e0);
  }
  else {
    if (*(char *)(param_4 + 0x14c) != '\0') {
      uVar5 = *(undefined8 *)(param_4 + 0x178);
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar2 = Object_op_Equality_0x6000dec(uVar5,0,0);
      if ((uVar2 & 1) == 0) {
        if (*(long *)(param_4 + 0x178) == 0) goto LAB_02c3bf34;
        lVar3 = func_0x02fe5f2c(*(long *)(param_4 + 0x178),*(undefined8 *)PTR_DAT_05e613d0);
        if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
          func_0x029f5bd0(*(long *)puVar1);
        }
        uVar2 = Object_op_Equality_0x6000dec(lVar3,0,0);
        if ((uVar2 & 1) != 0) {
          if (*(long *)(param_4 + 0x178) == 0) goto LAB_02c3bf34;
          lVar3 = func_0x02fe6108(*(long *)(param_4 + 0x178),*(undefined8 *)PTR_DAT_05e63228);
        }
        if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar2 = Object_op_Inequality_0x6000ded(lVar3,0,0);
        if (((uVar2 & 1) != 0) &&
           (uVar2 = Cat_IsValidTarget_0x6000759(param_4,lVar3), (uVar2 & 1) != 0)) {
          if ((*(long *)(param_4 + 0xe8) == 0) ||
             ((fVar6 = (float)Transform_get_position_0x6000f4d(*(long *)(param_4 + 0xe8),0),
              lVar3 == 0 ||
              (fVar9 = fVar11, fVar10 = param_3, lVar4 = Component_get_transform_0x6000c82(lVar3,0),
              lVar4 == 0)))) goto LAB_02c3bf34;
          fVar7 = (float)Transform_get_position_0x6000f4d(lVar4,0);
          if (cRam000000000625c0be == '\0') {
            func_0x029f5a50(PTR_DAT_05e59000);
            cRam000000000625c0be = '\x01';
          }
          if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          param_3 = param_3 - fVar10;
          fVar10 = *(float *)(param_4 + 0xa4);
          if (SQRT(param_3 * param_3 +
                   (fVar6 - fVar7) * (fVar6 - fVar7) + (fVar11 - fVar9) * (fVar11 - fVar9)) <=
              fVar10) {
            *(long *)(param_4 + 0x1e0) = lVar3;
            func_0x029f59f4(param_4 + 0x1e0,lVar3);
            if (*(long *)(param_4 + 0xe8) == 0) goto LAB_02c3bf34;
            Transform_get_position_0x6000f4d(*(long *)(param_4 + 0xe8),0);
            uVar8 = Collider_ClosestPoint_0x600001a(lVar3,0);
            *(undefined4 *)(param_4 + 0x1e8) = uVar8;
            *(float *)(param_4 + 0x1ec) = fVar10;
            *(float *)(param_4 + 0x1f0) = param_3;
            *(long *)(param_4 + 0x180) = lVar3;
          }
          else {
            if (*(long *)(param_4 + 0xe8) == 0) goto LAB_02c3bf34;
            Transform_get_position_0x6000f4d(*(long *)(param_4 + 0xe8),0);
            uVar8 = Collider_ClosestPoint_0x600001a(lVar3,0);
            *(undefined4 *)(param_4 + 0x1e8) = uVar8;
            *(float *)(param_4 + 0x1ec) = fVar10;
            *(float *)(param_4 + 0x1f0) = param_3;
            *(undefined8 *)(param_4 + 0x1e0) = 0;
            func_0x029f59f4(param_4 + 0x1e0,0);
            lVar3 = 0;
            *(undefined8 *)(param_4 + 0x180) = 0;
          }
          func_0x029f59f4(param_4 + 0x180,lVar3);
          goto LAB_02c3beb0;
        }
      }
    }
    uVar5 = *(undefined8 *)(param_4 + 0x180);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar2 = Object_op_Inequality_0x6000ded(uVar5,0,0);
    if (((uVar2 & 1) == 0) ||
       (uVar2 = Cat_IsValidTarget_0x6000759(param_4,*(undefined8 *)(param_4 + 0x180)),
       (uVar2 & 1) == 0)) goto LAB_02c3be50;
    if (*(long *)(param_4 + 0xe8) == 0) goto LAB_02c3bf34;
    fVar6 = (float)Transform_get_position_0x6000f4d(*(long *)(param_4 + 0xe8),0);
    if ((*(long *)(param_4 + 0x180) == 0) ||
       (fVar9 = fVar11, fVar10 = param_3,
       lVar3 = Component_get_transform_0x6000c82(*(long *)(param_4 + 0x180),0), lVar3 == 0))
    goto LAB_02c3bf34;
    fVar7 = (float)Transform_get_position_0x6000f4d(lVar3,0);
    if (cRam000000000625c0be == '\0') {
      func_0x029f5a50(PTR_DAT_05e59000);
      cRam000000000625c0be = '\x01';
    }
    if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    fVar9 = fVar11 - fVar9;
    param_3 = param_3 - fVar10;
    fVar11 = *(float *)(param_4 + 0xa4);
    if (fVar11 < SQRT(param_3 * param_3 + (fVar6 - fVar7) * (fVar6 - fVar7) + fVar9 * fVar9))
    goto LAB_02c3be50;
    *(undefined8 *)(param_4 + 0x1e0) = *(undefined8 *)(param_4 + 0x180);
    func_0x029f59f4(param_4 + 0x1e0);
    lVar3 = *(long *)(param_4 + 0x180);
  }
  if ((lVar3 == 0) || (lVar3 = Component_get_transform_0x6000c82(lVar3,0), lVar3 == 0)) {
LAB_02c3bf34:
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  uVar8 = Transform_get_position_0x6000f4d(lVar3,0);
  *(undefined4 *)(param_4 + 0x1e8) = uVar8;
  *(float *)(param_4 + 0x1ec) = fVar11;
  *(float *)(param_4 + 0x1f0) = param_3;
LAB_02c3beb0:
  Cat_UpdateTargetIndicator_0x600075a(param_4);
  return;
}

