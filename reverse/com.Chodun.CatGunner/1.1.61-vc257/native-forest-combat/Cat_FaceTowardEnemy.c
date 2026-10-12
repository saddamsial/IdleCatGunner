/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b419d0, Ghidra VA 02c419d0. */

void Cat_FaceTowardEnemy(undefined1 param_1 [16],float param_2,float param_3,long param_4,
                        long param_5)

{
  int iVar1;
  undefined *puVar2;
  ulong uVar3;
  long lVar4;
  undefined4 *puVar5;
  undefined4 *puVar6;
  undefined4 *puVar7;
  long lVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  undefined4 uVar13;
  undefined4 uVar14;
  undefined4 uVar15;
  undefined4 uVar16;
  
  puVar2 = PTR_DAT_05e591c0;
  if ((bRam000000000625c0b2 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e631d8);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c0b2 = 1;
  }
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Equality_0x6000dec(param_5,0,0);
  puVar2 = PTR_DAT_05e631d8;
  if ((uVar3 & 1) != 0) {
    return;
  }
  lVar4 = *(long *)PTR_DAT_05e631d8;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar4 = *(long *)puVar2;
  }
  if (param_5 != 0) {
    lVar4 = *(long *)(lVar4 + 0xb8);
    uVar13 = *(undefined4 *)(lVar4 + 0x44);
    uVar14 = *(undefined4 *)(lVar4 + 0x48);
    uVar15 = *(undefined4 *)(lVar4 + 0x4c);
    uVar16 = *(undefined4 *)(lVar4 + 0x50);
    lVar4 = Component_get_transform_0x6000c82(param_5,0);
    if (lVar4 != 0) {
      fVar9 = (float)Transform_get_position_0x6000f4d(lVar4,0);
      fVar11 = param_2;
      fVar12 = param_3;
      lVar4 = Component_get_transform_0x6000c82(param_4,0);
      if (lVar4 != 0) {
        fVar10 = (float)Transform_get_position_0x6000f4d(lVar4,0);
        fVar11 = (float)Quaternion_op_Multiply_0x6000a54
                                  (uVar13,uVar14,uVar15,uVar16,fVar9 - fVar10,param_2 - fVar11,
                                   param_3 - fVar12,0);
        lVar4 = *(long *)puVar2;
        lVar8 = *(long *)(param_4 + 0xb8);
        iVar1 = *(int *)(lVar4 + 0xe4);
        *(bool *)(param_4 + 0x1f8) = 0.0 > fVar11 || fVar11 == 0.0;
        if (0.0 <= fVar11 && fVar11 != 0.0) {
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
        if (lVar8 != 0) {
          Transform_set_localEulerAngles_0x6000f54(*puVar5,*puVar6,*puVar7,lVar8,0);
          return;
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

