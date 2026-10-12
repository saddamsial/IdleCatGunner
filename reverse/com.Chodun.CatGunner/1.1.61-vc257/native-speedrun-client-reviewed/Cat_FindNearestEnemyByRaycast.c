/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b4126c, Ghidra VA 02c4126c. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

long Cat_FindNearestEnemyByRaycast
               (undefined1 param_1 [16],undefined4 param_2,undefined4 param_3,long param_4)

{
  int iVar1;
  float fVar2;
  undefined *puVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  ulong uVar6;
  long lVar7;
  long lVar8;
  long lVar9;
  undefined8 uVar10;
  int iVar11;
  undefined4 uVar12;
  float fVar13;
  undefined4 uVar14;
  undefined4 uVar15;
  int iVar16;
  undefined4 uVar17;
  float fStack_c4;
  float fStack_c0;
  undefined4 uStack_b8;
  undefined4 uStack_b4;
  undefined8 uStack_b0;
  undefined8 uStack_a8;
  undefined8 uStack_a0;
  undefined4 uStack_98;
  undefined4 uStack_94;
  undefined4 uStack_90;
  undefined8 uStack_8c;
  
  if ((bRam000000000625c0aa & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5b0a0);
    func_0x029f5a50(PTR_DAT_05e5d368);
    bRam000000000625c0aa = 1;
  }
  puVar3 = PTR_DAT_05e5d368;
  uStack_8c = 0;
  uStack_90 = 0;
  uStack_a8 = 0;
  uStack_b0 = 0;
  uStack_98 = 0;
  uStack_94 = 0;
  uStack_a0 = 0;
  if (*(long *)(param_4 + 0xe8) != 0) {
    iVar16 = *(int *)(param_4 + 0x128);
    uVar12 = Transform_get_position_0x6000f4d(*(long *)(param_4 + 0xe8),0);
    lVar9 = *(long *)puVar3;
    *(undefined1 *)(param_4 + 0x294) = 0;
    puVar3 = PTR_DAT_05e5b0a0;
    fVar2 = _UNK_0116c26c;
    if (**(long **)(lVar9 + 0xb8) != 0) {
      if (*(int *)(param_4 + 0x128) < 1) {
        lVar9 = 0;
      }
      else {
        iVar1 = *(int *)(**(long **)(lVar9 + 0xb8) + 0x20);
        lVar9 = 0;
        iVar11 = 0;
        fStack_c0 = 3.4028235e+38;
        fStack_c4 = 3.4028235e+38;
        do {
          func_0x05afb270((360.0 / (float)iVar16) * (float)iVar11 * fVar2,&uStack_b4,&uStack_b8);
          uVar4 = uStack_b4;
          uVar14 = uStack_b8;
          uVar17 = *(undefined4 *)(param_4 + 0xa4);
          uVar5 = LayerMask_op_Implicit_0x6000d2a(*(undefined4 *)(param_4 + 0xb4),0);
          if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
            func_0x029f5bd0(*(long *)puVar3);
          }
          uVar15 = param_3;
          uVar6 = Physics_Raycast_0x6000029
                            (uVar12,param_2,param_3,uVar4,0,uVar14,uVar17,&uStack_b0,uVar5,0);
          if ((uVar6 & 1) != 0) {
            lVar7 = RaycastHit_get_collider_0x6000091(&uStack_b0,0);
            if ((lVar7 == 0) || (lVar7 = Component_get_transform_0x6000c82(lVar7,0), lVar7 == 0))
            goto LAB_02c415ec;
            Transform_get_position_0x6000f4d(lVar7,0);
            uVar6 = Cat_IsOnScreen_0x600072e(param_4);
            if ((uVar6 & 1) == 0) {
              if ((iVar1 == 4) &&
                 (fVar13 = (float)RaycastHit_get_distance_0x6000094(&uStack_b0,0),
                 fVar13 < fStack_c4)) {
                fVar13 = (float)RaycastHit_get_distance_0x6000094(&uStack_b0,0);
                lVar7 = RaycastHit_get_collider_0x6000091(&uStack_b0,0);
                if ((lVar7 == 0) || (lVar7 = Component_get_transform_0x6000c82(lVar7,0), lVar7 == 0)
                   ) goto LAB_02c415ec;
                uVar14 = Transform_get_position_0x6000f4d(lVar7,0);
                *(undefined4 *)(param_4 + 0x288) = uVar14;
                *(float *)(param_4 + 0x28c) = fStack_c4;
                *(undefined4 *)(param_4 + 0x290) = uVar15;
                *(undefined1 *)(param_4 + 0x294) = 1;
                fStack_c4 = fVar13;
              }
            }
            else {
              fVar13 = (float)RaycastHit_get_distance_0x6000094(&uStack_b0,0);
              if (fVar13 < fStack_c0) {
                fVar13 = (float)RaycastHit_get_distance_0x6000094(&uStack_b0,0);
                lVar9 = RaycastHit_get_collider_0x6000091(&uStack_b0,0);
                uVar14 = RaycastHit_get_point_0x6000092(&uStack_b0,0);
                *(undefined4 *)(param_4 + 0x1e8) = uVar14;
                *(float *)(param_4 + 0x1ec) = fStack_c0;
                *(undefined4 *)(param_4 + 0x1f0) = uVar15;
                fStack_c0 = fVar13;
              }
            }
          }
          iVar11 = iVar11 + 1;
        } while (iVar11 < *(int *)(param_4 + 0x128));
      }
      puVar3 = PTR_DAT_05e591c0;
      uVar10 = *(undefined8 *)(param_4 + 0x110);
      if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar6 = Object_op_Inequality_0x6000ded(uVar10,0,0);
      if ((uVar6 & 1) != 0) {
        if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar6 = Object_op_Inequality_0x6000ded(lVar9,0,0);
        lVar7 = *(long *)(param_4 + 0x110);
        if ((uVar6 & 1) == 0) {
          if (lVar7 == 0) goto LAB_02c415ec;
          uVar6 = GameObject_get_activeSelf_0x6000cff(lVar7,0);
          if ((uVar6 & 1) == 0) {
            return lVar9;
          }
          lVar7 = *(long *)(param_4 + 0x110);
          if (lVar7 == 0) goto LAB_02c415ec;
          uVar10 = 0;
        }
        else {
          if ((((lVar7 == 0) || (lVar7 = GameObject_get_transform_0x6000cfb(lVar7,0), lVar9 == 0))
              || (lVar8 = Component_get_transform_0x6000c82(lVar9,0), lVar8 == 0)) ||
             (Transform_get_position_0x6000f4d(lVar8,0), lVar7 == 0)) goto LAB_02c415ec;
          Transform_set_position_0x6000f4e(lVar7,0);
          if (*(long *)(param_4 + 0x110) == 0) goto LAB_02c415ec;
          uVar6 = GameObject_get_activeSelf_0x6000cff(*(long *)(param_4 + 0x110),0);
          if ((uVar6 & 1) != 0) {
            return lVar9;
          }
          lVar7 = *(long *)(param_4 + 0x110);
          if (lVar7 == 0) goto LAB_02c415ec;
          uVar10 = 1;
        }
        GameObject_SetActive_0x6000cfe(lVar7,uVar10,0);
      }
      return lVar9;
    }
  }
LAB_02c415ec:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

