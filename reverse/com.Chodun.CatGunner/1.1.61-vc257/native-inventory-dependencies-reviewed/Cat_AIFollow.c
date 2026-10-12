/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b3fd70, Ghidra VA 02c3fd70. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Cat_AIFollow(undefined1 param_1 [16],float param_2,float param_3,long param_4)

{
  int iVar1;
  undefined *puVar2;
  long lVar3;
  ulong uVar4;
  undefined4 *puVar5;
  undefined4 *puVar6;
  undefined4 *puVar7;
  undefined8 uVar8;
  long lVar9;
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
  undefined4 uVar20;
  undefined4 uVar21;
  float fVar22;
  float fVar23;
  float fVar24;
  float fVar25;
  float fVar26;
  undefined4 uVar27;
  float fVar28;
  undefined4 uVar29;
  
  if ((bRam000000000625c09e & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e631d8);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c09e = 1;
  }
  fVar10 = (float)Cat_GetLaggedLeaderPos(param_4);
  fVar22 = *(float *)(param_4 + 0x1c4);
  fVar23 = *(float *)(param_4 + 0x1c8);
  fVar24 = *(float *)(param_4 + 0x1cc);
  fVar25 = *(float *)(param_4 + 600);
  fVar26 = *(float *)(param_4 + 0x25c);
  fVar28 = *(float *)(param_4 + 0x260);
  fVar18 = param_2;
  fVar19 = param_3;
  lVar3 = Component_get_transform_0x6000c82(param_4,0);
  if (lVar3 != 0) {
    fVar11 = (float)Transform_get_position_0x6000f4d(lVar3,0);
    fVar14 = fVar18;
    fVar16 = fVar19;
    if (cRam000000000625c0be == '\0') {
      func_0x029f5a50(PTR_DAT_05e59000);
      cRam000000000625c0be = '\x01';
    }
    puVar2 = PTR_DAT_05e591c0;
    if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar8 = *(undefined8 *)(param_4 + 0x1e0);
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar4 = Object_op_Inequality_0x6000ded(uVar8,0,0);
    puVar2 = PTR_DAT_05e631d8;
    if ((uVar4 & 1) == 0) {
LAB_02c3ffac:
      fVar18 = fVar18 - (param_2 + fVar23 + fVar26);
      fVar11 = fVar11 - (fVar10 + fVar22 + fVar25);
      fVar19 = fVar19 - (param_3 + fVar24 + fVar28);
      if (SQRT(fVar19 * fVar19 + fVar11 * fVar11 + fVar18 * fVar18) <
          *(float *)(param_4 + 0x1bc) * 0.5) {
        fVar18 = (float)*(undefined8 *)(param_4 + 0x1d0);
        fVar19 = (float)((ulong)*(undefined8 *)(param_4 + 0x1d0) >> 0x20);
        if (fVar18 * fVar18 + fVar19 * fVar19 +
            *(float *)(param_4 + 0x1d8) * *(float *)(param_4 + 0x1d8) <= _UNK_0116c174) {
          Cat_SmoothStop_0x600074e(param_4);
        }
        else {
          Cat_ApplySeparationDrift_0x600074f(_UNK_0116c190,param_4);
        }
        Cat_AIFidget(param_4);
        return;
      }
      Cat_SmoothMoveTowardWithAvoidance_0x600074d(param_4);
      return;
    }
    lVar3 = *(long *)PTR_DAT_05e631d8;
    if (*(int *)(lVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar3 = *(long *)puVar2;
    }
    if (*(long *)(param_4 + 0x1e0) != 0) {
      lVar3 = *(long *)(lVar3 + 0xb8);
      uVar27 = *(undefined4 *)(lVar3 + 0x44);
      uVar29 = *(undefined4 *)(lVar3 + 0x48);
      uVar20 = *(undefined4 *)(lVar3 + 0x4c);
      uVar21 = *(undefined4 *)(lVar3 + 0x50);
      lVar3 = Component_get_transform_0x6000c82(*(long *)(param_4 + 0x1e0),0);
      if (lVar3 != 0) {
        fVar12 = (float)Transform_get_position_0x6000f4d(lVar3,0);
        fVar15 = fVar14;
        fVar17 = fVar16;
        lVar3 = Component_get_transform_0x6000c82(param_4,0);
        if (lVar3 != 0) {
          fVar13 = (float)Transform_get_position_0x6000f4d(lVar3,0);
          fVar14 = (float)Quaternion_op_Multiply_0x6000a54
                                    (uVar27,uVar29,uVar20,uVar21,fVar12 - fVar13,fVar14 - fVar15,
                                     fVar16 - fVar17,0);
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
            puVar5 = (undefined4 *)(lVar3 + 0x2c);
            puVar6 = (undefined4 *)(lVar3 + 0x30);
            puVar7 = (undefined4 *)(lVar3 + 0x34);
          }
          else {
            if (iVar1 == 0) {
              func_0x029f5bd0();
              lVar3 = *(long *)puVar2;
            }
            lVar3 = *(long *)(lVar3 + 0xb8);
            puVar5 = (undefined4 *)(lVar3 + 0x20);
            puVar6 = (undefined4 *)(lVar3 + 0x24);
            puVar7 = (undefined4 *)(lVar3 + 0x28);
          }
          if (lVar9 != 0) {
            Transform_set_localEulerAngles_0x6000f54(*puVar5,*puVar6,*puVar7,lVar9,0);
            goto LAB_02c3ffac;
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

