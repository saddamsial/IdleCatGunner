/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b3e910, Ghidra VA 02c3e910. */

undefined8
Cat_FindNearestTreeSpeedRun
          (undefined1 param_1 [16],undefined1 param_2 [16],float param_3,undefined8 param_4)

{
  undefined *puVar1;
  undefined *puVar2;
  long lVar3;
  ulong uVar4;
  long lVar5;
  long lVar6;
  float fVar7;
  undefined8 uVar8;
  int iVar9;
  undefined8 uVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  
  puVar2 = PTR_DAT_05e5dd68;
  if ((bRam000000000625c094 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63230);
    func_0x029f5a50(PTR_DAT_05e63238);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5dd68);
    bRam000000000625c094 = 1;
  }
  puVar1 = PTR_DAT_05e591c0;
  lVar3 = *(long *)puVar2;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar2;
  }
  lVar3 = *(long *)(*(long *)(lVar3 + 0xb8) + 8);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar1);
  }
  uVar4 = Object_op_Equality_0x6000dec(lVar3,0,0);
  if ((uVar4 & 1) == 0) {
    if (lVar3 == 0) {
LAB_02c3eb44:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    lVar3 = *(long *)(lVar3 + 0x28);
    if ((lVar3 != 0) && (*(int *)(lVar3 + 0x18) != 0)) {
      lVar5 = Component_get_transform_0x6000c82(param_4,0);
      if (lVar5 == 0) goto LAB_02c3eb44;
      fVar11 = (float)Transform_get_position_0x6000f4d(lVar5,0);
      puVar2 = PTR_DAT_05e63238;
      if (0 < *(int *)(lVar3 + 0x18)) {
        fVar7 = 3.4028235e+38;
        uVar8 = 0;
        iVar9 = 0;
        fVar13 = param_3;
        do {
          lVar5 = func_0x0452c8d8(lVar3,iVar9,*(undefined8 *)puVar2);
          if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
            func_0x029f5bd0(*(long *)puVar1);
          }
          uVar4 = Object_op_Equality_0x6000dec(lVar5,0,0);
          if ((uVar4 & 1) == 0) {
            if ((lVar5 == 0) || (lVar6 = Component_get_gameObject_0x6000c83(lVar5,0), lVar6 == 0))
            goto LAB_02c3eb44;
            uVar4 = GameObject_get_activeInHierarchy_0x6000d00(lVar6,0);
            if ((uVar4 & 1) != 0) {
              uVar10 = *(undefined8 *)(lVar5 + 0x20);
              if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
                func_0x029f5bd0();
              }
              uVar4 = Object_op_Equality_0x6000dec(uVar10,0,0);
              if ((uVar4 & 1) == 0) {
                if ((*(long *)(lVar5 + 0x20) == 0) ||
                   (lVar6 = Component_get_gameObject_0x6000c83(*(long *)(lVar5 + 0x20),0),
                   lVar6 == 0)) goto LAB_02c3eb44;
                uVar4 = GameObject_get_activeInHierarchy_0x6000d00(lVar6,0);
                if ((uVar4 & 1) != 0) {
                  lVar6 = Component_get_transform_0x6000c82(lVar5,0);
                  if (lVar6 == 0) goto LAB_02c3eb44;
                  fVar12 = (float)Transform_get_position_0x6000f4d(lVar6,0);
                  fVar12 = (fVar12 - fVar11) * (fVar12 - fVar11) +
                           (fVar13 - param_3) * (fVar13 - param_3);
                  if (fVar12 < fVar7) {
                    uVar8 = Component_get_transform_0x6000c82(lVar5,0);
                    fVar7 = fVar12;
                  }
                }
              }
            }
          }
          iVar9 = iVar9 + 1;
          if (*(int *)(lVar3 + 0x18) <= iVar9) {
            return uVar8;
          }
        } while( true );
      }
    }
  }
  return 0;
}

