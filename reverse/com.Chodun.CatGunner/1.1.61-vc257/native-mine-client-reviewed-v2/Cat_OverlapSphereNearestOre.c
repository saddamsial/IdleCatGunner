/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b3f530, Ghidra VA 02c3f530. */

undefined8
Cat_OverlapSphereNearestOre(undefined4 param_1,undefined4 param_2,float param_3,long param_4)

{
  undefined *puVar1;
  undefined4 uVar2;
  uint uVar3;
  long lVar4;
  ulong uVar5;
  long lVar6;
  float fVar7;
  undefined8 uVar8;
  ulong uVar9;
  undefined4 uVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  
  if ((bRam000000000625c097 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5b0a0);
    bRam000000000625c097 = 1;
  }
  lVar4 = Component_get_transform_0x6000c82(param_4,0);
  puVar1 = PTR_DAT_05e5b0a0;
  if (lVar4 != 0) {
    uVar10 = Transform_get_position_0x6000f4d(lVar4,0);
    uVar8 = *(undefined8 *)(param_4 + 0x1a8);
    uVar2 = LayerMask_op_Implicit_0x6000d2a(*(undefined4 *)(param_4 + 0x1a0),0);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)puVar1);
    }
    uVar3 = Physics_OverlapSphereNonAlloc_0x6000050(uVar10,param_2,param_3,param_1,uVar8,uVar2,0);
    puVar1 = PTR_DAT_05e591c0;
    if ((int)uVar3 < 1) {
      uVar8 = 0;
    }
    else {
      uVar9 = 0;
      fVar7 = 3.4028235e+38;
      uVar8 = 0;
      do {
        lVar4 = *(long *)(param_4 + 0x1a8);
        if (lVar4 == 0) goto LAB_02c3f6f4;
        if (*(uint *)(lVar4 + 0x18) <= uVar9) {
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        lVar4 = *(long *)(lVar4 + uVar9 * 8 + 0x20);
        fVar13 = param_3;
        if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
          func_0x029f5bd0();
          fVar13 = param_3;
        }
        uVar5 = Object_op_Equality_0x6000dec(lVar4,0,0);
        param_3 = fVar13;
        if ((uVar5 & 1) == 0) {
          if ((lVar4 == 0) || (lVar6 = Component_get_transform_0x6000c82(lVar4,0), lVar6 == 0))
          goto LAB_02c3f6f4;
          fVar11 = (float)Transform_get_position_0x6000f4d(lVar6,0);
          param_3 = fVar13;
          lVar6 = Component_get_transform_0x6000c82(param_4,0);
          if (lVar6 == 0) goto LAB_02c3f6f4;
          fVar12 = (float)Transform_get_position_0x6000f4d(lVar6,0);
          fVar13 = (fVar11 - fVar12) * (fVar11 - fVar12) + (fVar13 - param_3) * (fVar13 - param_3);
          if (fVar13 < fVar7) {
            uVar8 = Component_get_transform_0x6000c82(lVar4,0);
            fVar7 = fVar13;
          }
        }
        uVar9 = uVar9 + 1;
      } while (uVar3 != uVar9);
    }
    return uVar8;
  }
LAB_02c3f6f4:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

