/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b405f0, Ghidra VA 02c405f0. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Cat_AIAssist(undefined1 param_1 [16],float param_2,float param_3,long param_4,long param_5)

{
  float fVar1;
  undefined *puVar2;
  ulong uVar3;
  float *pfVar4;
  long lVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  
  if ((bRam000000000625c0a2 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c0a2 = 1;
  }
  if (param_5 == 0) goto LAB_02c40918;
  lVar5 = *(long *)(param_5 + 0x1e0);
  if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Equality_0x6000dec(lVar5,0,0);
  if ((uVar3 & 1) != 0) {
LAB_02c408c4:
    Cat_SmoothStop_0x600074e(param_4);
    return;
  }
  if ((lVar5 != 0) && (lVar5 = Component_get_transform_0x6000c82(lVar5,0), lVar5 != 0)) {
    Transform_get_position_0x6000f4d(lVar5,0);
    fVar6 = (float)Cat_GetApproachPosition_0x6000752(param_4);
    fVar8 = param_2;
    fVar10 = param_3;
    lVar5 = Component_get_transform_0x6000c82(param_5,0);
    if (lVar5 != 0) {
      fVar7 = (float)Transform_get_position_0x6000f4d(lVar5,0);
      if (cRam000000000625c0be == '\0') {
        func_0x029f5a50(PTR_DAT_05e59000);
        cRam000000000625c0be = '\x01';
      }
      puVar2 = PTR_DAT_05e59000;
      if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      fVar1 = _UNK_0116bf90;
      fVar10 = param_3 - fVar10;
      fVar9 = *(float *)(param_4 + 0x1c0) * _UNK_0116bf90;
      if (fVar9 < SQRT(fVar10 * fVar10 +
                       (fVar6 - fVar7) * (fVar6 - fVar7) + (param_2 - fVar8) * (param_2 - fVar8))) {
        lVar5 = Component_get_transform_0x6000c82(param_5,0);
        if (lVar5 == 0) goto LAB_02c40918;
        fVar7 = (float)Transform_get_position_0x6000f4d(lVar5,0);
        fVar8 = fVar10;
        if (cRam000000000625b52e == '\0') {
          func_0x029f5a50(PTR_DAT_05e59000);
          cRam000000000625b52e = '\x01';
        }
        fVar6 = fVar6 - fVar7;
        param_2 = param_2 - fVar9;
        param_3 = param_3 - fVar10;
        fVar10 = fVar8;
        if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
          func_0x029f5bd0();
          fVar10 = fVar8;
        }
        fVar8 = SQRT(param_3 * param_3 + fVar6 * fVar6 + param_2 * param_2);
        fVar9 = _UNK_0116c240;
        if (fVar8 <= _UNK_0116c240) {
          if (cRam000000000625b26f == '\0') {
            func_0x029f5a50(PTR_DAT_05e58bf8);
            cRam000000000625b26f = '\x01';
          }
          pfVar4 = *(float **)(*(long *)PTR_DAT_05e58bf8 + 0xb8);
          fVar6 = *pfVar4;
          param_2 = pfVar4[1];
          param_3 = pfVar4[2];
        }
        else {
          fVar6 = fVar6 / fVar8;
          param_2 = param_2 / fVar8;
          param_3 = param_3 / fVar8;
        }
        lVar5 = Component_get_transform_0x6000c82(param_5,0);
        if (lVar5 == 0) goto LAB_02c40918;
        fVar8 = (float)Transform_get_position_0x6000f4d(lVar5,0);
        fVar7 = *(float *)(param_4 + 0x1c0);
        fVar6 = fVar8 + fVar6 * fVar7 * fVar1;
        param_2 = fVar9 + param_2 * fVar7 * fVar1;
        param_3 = fVar10 + param_3 * fVar7 * fVar1;
      }
      lVar5 = Component_get_transform_0x6000c82(param_4,0);
      if (lVar5 != 0) {
        fVar8 = (float)Transform_get_position_0x6000f4d(lVar5,0);
        if (cRam000000000625c0be == '\0') {
          func_0x029f5a50(PTR_DAT_05e59000);
          cRam000000000625c0be = '\x01';
        }
        if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        if (0.5 <= SQRT((fVar10 - param_3) * (fVar10 - param_3) +
                        (fVar8 - fVar6) * (fVar8 - fVar6) + (fVar9 - param_2) * (fVar9 - param_2)))
        {
          Cat_SmoothMoveTowardWithAvoidance_0x600074d(fVar6,param_2,param_3,param_4);
          return;
        }
        goto LAB_02c408c4;
      }
    }
  }
LAB_02c40918:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

