/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b8446c, Ghidra VA 02c8446c. */

ulong _AutoMergeRoutine_d__37_MoveNext_0x6000c5b(undefined1 param_1 [16],ulong param_2,long param_3)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined *puVar5;
  undefined *puVar6;
  int iVar7;
  ulong uVar8;
  long lVar9;
  ulong uVar10;
  long lVar11;
  undefined8 uVar12;
  undefined4 uVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  undefined8 uStack_b8;
  undefined8 uStack_b0;
  long lStack_a8;
  undefined8 uStack_a0;
  undefined8 uStack_98;
  long lStack_90;
  long lStack_88;
  ulong uStack_58;
  
  if ((bRam000000000625c36d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5be98);
    func_0x029f5a50(PTR_DAT_05e63da0);
    func_0x029f5a50(PTR_DAT_05e63da8);
    func_0x029f5a50(PTR_DAT_05e63db0);
    func_0x029f5a50(PTR_DAT_05e63db8);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5d4d0);
    func_0x029f5a50(PTR_DAT_05e5bed0);
    bRam000000000625c36d = 1;
  }
  puVar6 = PTR_DAT_05e63db8;
  puVar5 = PTR_DAT_05e63da8;
  puVar4 = PTR_DAT_05e63da0;
  puVar3 = PTR_DAT_05e5d4d0;
  puVar2 = PTR_DAT_05e5be98;
  puVar1 = PTR_DAT_05e591c0;
  uStack_58 = 0;
  iVar7 = *(int *)(param_3 + 0x10);
  lStack_88 = 0;
  uVar8 = 0;
  lVar11 = *(long *)(param_3 + 0x20);
  uStack_a0 = 0;
  uStack_98 = 0;
  lStack_90 = 0;
  if (iVar7 < 2) {
    if (iVar7 == 0) {
      *(undefined8 *)(param_3 + 0x18) = 0;
      *(undefined4 *)(param_3 + 0x10) = 0xffffffff;
      Managed_WriteBarrier((undefined8 *)(param_3 + 0x18),0);
      uVar8 = 1;
      *(undefined4 *)(param_3 + 0x10) = 1;
    }
    else if (iVar7 == 1) {
      *(undefined4 *)(param_3 + 0x10) = 0xffffffff;
      goto LAB_02c845c8;
    }
  }
  else {
    if (iVar7 - 2U < 2) {
      *(undefined4 *)(param_3 + 0x10) = 0xffffffff;
      if (lVar11 != 0) goto LAB_02c846cc;
LAB_02c84988:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper(uVar8);
    }
    if (iVar7 == 4) {
      *(undefined4 *)(param_3 + 0x10) = 0xffffffff;
      do {
        *(undefined8 *)(param_3 + 0x38) = 0;
        *(undefined8 *)(param_3 + 0x40) = 0;
LAB_02c845c8:
        lVar9 = *(long *)puVar3;
        if (*(int *)(lVar9 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar9 = *(long *)puVar3;
        }
        uVar12 = *(undefined8 *)(*(long *)(lVar9 + 0xb8) + 0x28);
        if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
          func_0x029f5bd0(*(long *)puVar1);
        }
        uVar8 = Object_op_Inequality_0x6000ded(uVar12,0,0);
        if ((uVar8 & 1) == 0) {
LAB_02c8492c:
          if (lVar11 != 0) {
LAB_02c84930:
            *(undefined8 *)(lVar11 + 0x48) = 0;
            Managed_WriteBarrier((undefined8 *)(lVar11 + 0x48),0);
            return 0;
          }
          goto LAB_02c84988;
        }
        lVar9 = *(long *)puVar3;
        if (*(int *)(lVar9 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar9 = *(long *)puVar3;
        }
        lVar9 = *(long *)(*(long *)(lVar9 + 0xb8) + 0x28);
        uVar8 = 0;
        if (lVar9 == 0) goto LAB_02c84988;
        uVar8 = Pet_manager_get_AutoMerge_Active_0x6000bdb(lVar9,0);
        if ((uVar8 & 1) == 0) goto LAB_02c8492c;
        if (lVar11 == 0) goto LAB_02c84988;
        uVar8 = Pet_Item_List_FindAutoMergePair_0x6000c57(lVar11,&uStack_58,&lStack_88);
        if ((uVar8 & 1) == 0) goto LAB_02c84930;
        Pet_Item_List_SetAutoMergePair_0x6000c51(lVar11,uStack_58,lStack_88);
        uVar12 = *(undefined8 *)(lVar11 + 0x50);
        *(undefined8 *)(param_3 + 0x30) = *(undefined8 *)(lVar11 + 0x58);
        *(undefined8 *)(param_3 + 0x28) = uVar12;
        uVar8 = uStack_58;
        if (uStack_58 == 0) goto LAB_02c84988;
        Pet_Item_BeginAutoMerge_0x6000c07(uStack_58,0);
        uVar8 = 0;
        if ((lStack_88 == 0) ||
           (Pet_Item_BeginAutoMerge_0x6000c07(lStack_88,0), uVar8 = uStack_58, uStack_58 == 0))
        goto LAB_02c84988;
        lVar9 = Component_get_transform_0x6000c82(uStack_58,0);
        uVar8 = 0;
        if (lVar9 == 0) goto LAB_02c84988;
        Transform_SetAsLastSibling_0x6000f7e(lVar9,0);
        uVar13 = Pet_Item_List_GetSlotPosition_0x6000c48(lVar11,*(undefined4 *)(param_3 + 0x28));
        *(undefined4 *)(param_3 + 0x38) = uVar13;
        *(int *)(param_3 + 0x3c) = (int)param_2;
        uVar13 = Pet_Item_List_GetSlotPosition_0x6000c48(lVar11,*(undefined4 *)(param_3 + 0x30));
        *(undefined4 *)(param_3 + 0x48) = 0;
        *(undefined4 *)(param_3 + 0x40) = uVar13;
        *(int *)(param_3 + 0x44) = (int)param_2;
        *(undefined1 *)(param_3 + 0x4c) = 0;
LAB_02c846cc:
        uVar8 = Pet_Item_List_TryAcquireAutoMergeItem_0x6000c53
                          (lVar11,*(undefined4 *)(param_3 + 0x28),*(undefined4 *)(param_3 + 0x2c),
                           &uStack_58);
        if (((uVar8 & 1) != 0) &&
           (uVar8 = Pet_Item_List_TryAcquireAutoMergeItem_0x6000c53
                              (lVar11,*(undefined4 *)(param_3 + 0x30),
                               *(undefined4 *)(param_3 + 0x34),&lStack_88), (uVar8 & 1) != 0)) {
          uVar8 = uStack_58;
          if (uStack_58 == 0) goto LAB_02c84988;
          lVar9 = Component_get_transform_0x6000c82(uStack_58,0);
          uVar8 = 0;
          if ((lVar9 == 0) ||
             (uVar10 = Transform_GetSiblingIndex_0x6000f80(lVar9,0), uVar8 = uVar10, uStack_58 == 0)
             ) goto LAB_02c84988;
          lVar9 = Component_get_transform_0x6000c82(uStack_58,0);
          uVar8 = 0;
          if (lVar9 == 0) goto LAB_02c84988;
          lVar9 = Transform_get_parent_0x6000f5f(lVar9,0);
          uVar8 = 0;
          if (lVar9 == 0) goto LAB_02c84988;
          iVar7 = Transform_get_childCount_0x6000f7c(lVar9,0);
          if ((int)uVar10 != iVar7 + -1) {
            uVar8 = uStack_58;
            if (uStack_58 == 0) goto LAB_02c84988;
            lVar9 = Component_get_transform_0x6000c82(uStack_58,0);
            uVar8 = 0;
            if (lVar9 == 0) goto LAB_02c84988;
            Transform_SetAsLastSibling_0x6000f7e(lVar9,0);
          }
          fVar16 = *(float *)(param_3 + 0x48);
          fVar14 = (float)Time_get_unscaledDeltaTime_0x6000ee8(0);
          fVar16 = fVar16 + fVar14;
          fVar15 = fVar16 / *(float *)(lVar11 + 0x30);
          *(float *)(param_3 + 0x48) = fVar16;
          fVar14 = 1.0;
          if (fVar15 <= 1.0) {
            fVar14 = fVar15;
          }
          fVar16 = 0.0;
          if (0.0 <= fVar15) {
            fVar16 = fVar14;
          }
          fVar14 = 0.0;
          if (0.0 <= fVar16) {
            fVar14 = fVar16;
          }
          uVar8 = uStack_58;
          if (uStack_58 == 0) goto LAB_02c84988;
          lVar9 = func_0x02fe5f2c(uStack_58,*(undefined8 *)puVar2);
          uVar8 = 0;
          if (lVar9 == 0) goto LAB_02c84988;
          fVar16 = fVar14 * fVar14 * 3.0 - fVar14 * fVar14 * (fVar14 + fVar14);
          fVar16 = fVar16 + (1.0 - fVar16) * 0.0;
          fVar14 = 1.0;
          if (fVar16 <= 1.0) {
            fVar14 = fVar16;
          }
          fVar15 = 0.0;
          if (0.0 <= fVar16) {
            fVar15 = fVar14;
          }
          fVar14 = (float)((ulong)*(undefined8 *)(param_3 + 0x38) >> 0x20);
          param_2 = (ulong)(uint)(fVar14 + ((float)((ulong)*(undefined8 *)(param_3 + 0x40) >> 0x20)
                                           - fVar14) * fVar15);
          RectTransform_set_anchoredPosition_0x6000f2c(lVar9,0);
          fVar14 = (float)param_2;
          if (fVar16 < 1.0) {
            fVar16 = (float)RectTransform_get_anchoredPosition_0x6000f2b(lVar9,0);
            fVar15 = *(float *)(param_3 + 0x40);
            fVar17 = *(float *)(param_3 + 0x44);
            if (cRam000000000625c2a2 == '\0') {
              func_0x029f5a50(PTR_DAT_05e59000);
              cRam000000000625c2a2 = '\x01';
            }
            if (*(int *)(*(long *)PTR_DAT_05e59000 + 0xe4) == 0) {
              func_0x029f5bd0();
            }
            fVar14 = fVar14 - fVar17;
            fVar16 = fVar16 - fVar15;
            param_2 = (ulong)(uint)*(float *)(lVar11 + 0x34);
            if (*(float *)(lVar11 + 0x34) < SQRT(fVar16 * fVar16 + fVar14 * fVar14)) {
              *(undefined8 *)(param_3 + 0x18) = 0;
              Managed_WriteBarrier((undefined8 *)(param_3 + 0x18),0);
              uVar13 = 3;
              goto LAB_02c84a10;
            }
          }
          uVar8 = Pet_Item_List_IsAnyItemDragging_0x6000c56(lVar11);
          if ((uVar8 & 1) != 0) {
            RectTransform_set_anchoredPosition_0x6000f2c
                      (*(undefined4 *)(param_3 + 0x40),*(undefined4 *)(param_3 + 0x44),lVar9,0);
            *(undefined8 *)(param_3 + 0x18) = 0;
            Managed_WriteBarrier((undefined8 *)(param_3 + 0x18),0);
            uVar13 = 2;
            goto LAB_02c84a10;
          }
          Pet_Item_List_FuseItems_0x6000c4a(lVar11,uStack_58,lStack_88);
          *(undefined1 *)(param_3 + 0x4c) = 1;
        }
        *(undefined8 *)(lVar11 + 0x50) = 0xffffffffffffffff;
        *(undefined8 *)(lVar11 + 0x58) = 0xffffffffffffffff;
        if (*(char *)(param_3 + 0x4c) == '\0') {
          uVar8 = 0;
          if (*(long *)(lVar11 + 0x40) == 0) goto LAB_02c84988;
          func_0x0452d690(&uStack_b8,*(long *)(lVar11 + 0x40),*(undefined8 *)puVar6);
          uStack_98 = uStack_b0;
          uStack_a0 = uStack_b8;
          lStack_90 = lStack_a8;
          while (uVar8 = func_0x03fa4e10(&uStack_a0,*(undefined8 *)puVar5), (uVar8 & 1) != 0) {
            if (lStack_90 == 0) {
                    /* WARNING: Subroutine does not return */
              Throw_NullReference_Wrapper();
            }
            if (*(char *)(lStack_90 + 0x6d) != '\0') {
              Pet_Item_EndAutoMerge_0x6000c08(lStack_90,0);
            }
          }
          func_0x03fa4e0c(&uStack_a0,*(undefined8 *)puVar4);
          Pet_Item_List_AlignGrid_0x6000c47(lVar11);
        }
        fVar14 = *(float *)(lVar11 + 0x38);
      } while (fVar14 <= 0.0);
      uVar12 = func_0x029f5cec(*(undefined8 *)PTR_DAT_05e5bed0);
      WaitForSecondsRealtime__ctor_0x6000e2a(fVar14,uVar12,0);
      *(undefined8 *)(param_3 + 0x18) = uVar12;
      Managed_WriteBarrier((undefined8 *)(param_3 + 0x18),uVar12);
      uVar13 = 4;
LAB_02c84a10:
      *(undefined4 *)(param_3 + 0x10) = uVar13;
      uVar8 = 1;
    }
  }
  return uVar8;
}

