/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b40208, Ghidra VA 02c40208. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void Cat_AIAttackStay(undefined1 param_1 [16],undefined1 param_2 [16],float param_3,long param_4)

{
  int iVar1;
  undefined *puVar2;
  ulong uVar3;
  long lVar4;
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
  undefined4 uVar15;
  undefined4 uVar16;
  undefined4 uVar17;
  undefined4 uVar18;
  
  if ((bRam000000000625c0a0 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e631d8);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c0a0 = 1;
  }
  puVar2 = PTR_DAT_05e591c0;
  fVar10 = (float)*(undefined8 *)(param_4 + 0x1d0);
  fVar14 = (float)((ulong)*(undefined8 *)(param_4 + 0x1d0) >> 0x20);
  fVar13 = _UNK_0116c190;
  if (fVar10 * fVar10 + fVar14 * fVar14 + *(float *)(param_4 + 0x1d8) * *(float *)(param_4 + 0x1d8)
      <= _UNK_0116c190) {
    Cat_SmoothStop_0x600074e(param_4);
  }
  else {
    Cat_ApplySeparationDrift_0x600074f(_UNK_0116c21c,param_4);
  }
  uVar8 = *(undefined8 *)(param_4 + 0x1e0);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Equality_0x6000dec(uVar8,0,0);
  puVar2 = PTR_DAT_05e631d8;
  if ((uVar3 & 1) != 0) {
    return;
  }
  lVar4 = *(long *)PTR_DAT_05e631d8;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar4 = *(long *)puVar2;
  }
  if (*(long *)(param_4 + 0x1e0) != 0) {
    lVar4 = *(long *)(lVar4 + 0xb8);
    uVar15 = *(undefined4 *)(lVar4 + 0x44);
    uVar16 = *(undefined4 *)(lVar4 + 0x48);
    uVar17 = *(undefined4 *)(lVar4 + 0x4c);
    uVar18 = *(undefined4 *)(lVar4 + 0x50);
    lVar4 = Component_get_transform_0x6000c82(*(long *)(param_4 + 0x1e0),0);
    if (lVar4 != 0) {
      fVar11 = (float)Transform_get_position_0x6000f4d(lVar4,0);
      fVar10 = fVar13;
      fVar14 = param_3;
      lVar4 = Component_get_transform_0x6000c82(param_4,0);
      if (lVar4 != 0) {
        fVar12 = (float)Transform_get_position_0x6000f4d(lVar4,0);
        fVar13 = (float)Quaternion_op_Multiply_0x6000a54
                                  (uVar15,uVar16,uVar17,uVar18,fVar11 - fVar12,fVar13 - fVar10,
                                   param_3 - fVar14,0);
        lVar4 = *(long *)puVar2;
        lVar9 = *(long *)(param_4 + 0xb8);
        iVar1 = *(int *)(lVar4 + 0xe4);
        *(bool *)(param_4 + 0x1f8) = 0.0 > fVar13 || fVar13 == 0.0;
        if (0.0 <= fVar13 && fVar13 != 0.0) {
          if (iVar1 == 0) {
            func_0x029f5bd0();
            lVar4 = *(long *)puVar2;
          }
          lVar4 = *(long *)(lVar4 + 0xb8);
          puVar5 = (undefined4 *)(lVar4 + 0x2c);
          puVar6 = (undefined4 *)(lVar4 + 0x30);
          puVar7 = (undefined4 *)(lVar4 + 0x34);
        }
        else {
          if (iVar1 == 0) {
            func_0x029f5bd0();
            lVar4 = *(long *)puVar2;
          }
          lVar4 = *(long *)(lVar4 + 0xb8);
          puVar5 = (undefined4 *)(lVar4 + 0x20);
          puVar6 = (undefined4 *)(lVar4 + 0x24);
          puVar7 = (undefined4 *)(lVar4 + 0x28);
        }
        if (lVar9 != 0) {
          Transform_set_localEulerAngles_0x6000f54(*puVar5,*puVar6,*puVar7,lVar9,0);
          return;
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

