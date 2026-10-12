/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b3f6fc, Ghidra VA 02c3f6fc. */

undefined8
Cat_FindNearestOreFallback
          (undefined1 param_1 [16],undefined1 param_2 [16],float param_3,undefined8 param_4,
          long param_5)

{
  undefined *puVar1;
  long lVar2;
  long lVar3;
  ulong uVar4;
  float fVar5;
  undefined8 uVar6;
  long lVar7;
  ulong uVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  
  if ((bRam000000000625c098 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c098 = 1;
  }
  if (param_5 != 0) {
    lVar7 = *(long *)(param_5 + 0x20);
    if ((lVar7 != 0) && (*(long *)(lVar7 + 0x18) != 0)) {
      lVar2 = Component_get_transform_0x6000c82(param_4,0);
      if (lVar2 == 0) goto LAB_02c3f86c;
      fVar9 = (float)Transform_get_position_0x6000f4d(lVar2,0);
      puVar1 = PTR_DAT_05e591c0;
      if (0 < (int)*(ulong *)(lVar7 + 0x18)) {
        fVar5 = 3.4028235e+38;
        uVar8 = 0;
        uVar6 = 0;
        uVar4 = *(ulong *)(lVar7 + 0x18) & 0xffffffff;
        fVar11 = param_3;
        do {
          if (uVar4 <= uVar8) {
                    /* WARNING: Subroutine does not return */
            Throw_Index_Wrapper();
          }
          lVar2 = *(long *)(lVar7 + 0x20 + uVar8 * 8);
          if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          uVar4 = Object_op_Equality_0x6000dec(lVar2,0,0);
          if ((uVar4 & 1) == 0) {
            if ((lVar2 == 0) || (lVar3 = Component_get_gameObject_0x6000c83(lVar2,0), lVar3 == 0))
            goto LAB_02c3f86c;
            uVar4 = GameObject_get_activeInHierarchy_0x6000d00(lVar3,0);
            if ((uVar4 & 1) != 0) {
              lVar3 = Component_get_transform_0x6000c82(lVar2,0);
              if (lVar3 == 0) goto LAB_02c3f86c;
              fVar10 = (float)Transform_get_position_0x6000f4d(lVar3,0);
              fVar10 = (fVar10 - fVar9) * (fVar10 - fVar9) + (fVar11 - param_3) * (fVar11 - param_3)
              ;
              if (fVar10 < fVar5) {
                uVar6 = Component_get_transform_0x6000c82(lVar2,0);
                fVar5 = fVar10;
              }
            }
          }
          uVar4 = (ulong)*(uint *)(lVar7 + 0x18);
          uVar8 = uVar8 + 1;
          if ((long)(int)*(uint *)(lVar7 + 0x18) <= (long)uVar8) {
            return uVar6;
          }
        } while( true );
      }
    }
    return 0;
  }
LAB_02c3f86c:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

