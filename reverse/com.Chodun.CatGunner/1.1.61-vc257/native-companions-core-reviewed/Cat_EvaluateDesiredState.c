/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b3fad0, Ghidra VA 02c3fad0. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined1
Cat_EvaluateDesiredState(float param_1,float param_2,float param_3,long param_4,long param_5)

{
  undefined *puVar1;
  ulong uVar2;
  long lVar3;
  undefined8 uVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  
  if ((bRam000000000625c09d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c09d = 1;
  }
  puVar1 = PTR_DAT_05e591c0;
  if (*(float *)(param_4 + 0x1c0) < param_1) {
    return false;
  }
  fVar7 = *(float *)(param_4 + 0x218);
  uVar4 = *(undefined8 *)(param_4 + 0x1e0);
  if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar2 = Object_op_Inequality_0x6000ded(uVar4,0,0);
  if ((uVar2 & 1) == 0) {
    if (param_5 != 0) {
      uVar4 = *(undefined8 *)(param_5 + 0x1e0);
      if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar2 = Object_op_Inequality_0x6000ded(uVar4,0,0);
      if ((uVar2 & 1) == 0) {
        return false;
      }
      return 4;
    }
  }
  else {
    lVar3 = Component_get_transform_0x6000c82(param_4,0);
    if (lVar3 != 0) {
      fVar5 = (float)Transform_get_position_0x6000f4d(lVar3,0);
      fVar8 = *(float *)(param_4 + 0x1e8);
      fVar10 = *(float *)(param_4 + 0x1ec);
      fVar9 = *(float *)(param_4 + 0x1f0);
      if (cRam000000000625c0be == '\0') {
        func_0x029f5a50(PTR_DAT_05e59000);
        cRam000000000625c0be = '\x01';
      }
      puVar1 = PTR_DAT_05e59000;
      if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      param_2 = param_2 - fVar10;
      fVar5 = fVar5 - fVar8;
      param_3 = param_3 - fVar9;
      fVar7 = fVar7 + 1.0;
      fVar8 = *(float *)(param_4 + 0x150);
      fVar5 = SQRT(param_3 * param_3 + fVar5 * fVar5 + param_2 * param_2);
      if (*(int *)(param_4 + 0x208) == 3) {
        fVar7 = fVar7 * *(float *)(param_4 + 0x1b8);
        if (fVar5 < fVar7) {
          return 3;
        }
      }
      else {
        if (fVar5 < *(float *)(param_4 + 0x1b8)) {
          return 3;
        }
        if (*(int *)(param_4 + 0x208) == 2) {
          if (fVar7 * fVar8 < fVar5) {
            return true;
          }
          return 2;
        }
      }
      if (fVar5 <= fVar8) {
        return 2;
      }
      if ((*(long *)(param_4 + 0x1e0) != 0) &&
         (lVar3 = Component_get_transform_0x6000c82(*(long *)(param_4 + 0x1e0),0), lVar3 != 0)) {
        Transform_get_position_0x6000f4d(lVar3,0);
        fVar5 = (float)Cat_GetApproachPosition_0x6000752(param_4);
        if ((param_5 != 0) &&
           (fVar9 = fVar8, fVar10 = fVar7, lVar3 = Component_get_transform_0x6000c82(param_5,0),
           lVar3 != 0)) {
          fVar6 = (float)Transform_get_position_0x6000f4d(lVar3,0);
          if (cRam000000000625c0be == '\0') {
            func_0x029f5a50(PTR_DAT_05e59000);
            cRam000000000625c0be = '\x01';
          }
          if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          return SQRT((fVar7 - fVar10) * (fVar7 - fVar10) +
                      (fVar5 - fVar6) * (fVar5 - fVar6) + (fVar8 - fVar9) * (fVar8 - fVar9)) <=
                 *(float *)(param_4 + 0x1c0);
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

