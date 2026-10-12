/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b71ff8, Ghidra VA 02c71ff8. */

void Gun_Item_CheckOverlap(undefined1 param_1 [16],float param_2,long param_3)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined *puVar5;
  ulong uVar6;
  long lVar7;
  long lVar8;
  long lVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  undefined8 uStack_b8;
  undefined8 *puStack_b0;
  long lStack_a8;
  undefined8 uStack_a0;
  undefined8 *puStack_98;
  long lStack_90;
  
  puVar5 = PTR_DAT_05e63aa8;
  if ((bRam000000000625c2dd & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63a90);
    func_0x029f5a50(PTR_DAT_05e63a98);
    func_0x029f5a50(PTR_DAT_05e63aa0);
    func_0x029f5a50(PTR_DAT_05e63aa8);
    func_0x029f5a50(PTR_DAT_05e63ab0);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c2dd = 1;
  }
  puVar4 = PTR_DAT_05e63a98;
  puVar3 = PTR_DAT_05e63a90;
  puVar2 = PTR_DAT_05e591c0;
  uStack_a0 = 0;
  puStack_98 = (undefined8 *)0x0;
  lStack_90 = 0;
  lVar9 = **(long **)(*(long *)puVar5 + 0xb8);
  if ((lVar9 == 0) || (lVar9 = *(long *)(lVar9 + 0x40), lVar9 == 0)) goto LAB_02c72364;
  func_0x0452d690(&uStack_b8,lVar9,*(undefined8 *)PTR_DAT_05e63ab0);
  uStack_a0 = uStack_b8;
  puVar1 = PTR_DAT_05e59000;
  uStack_b8 = 0;
  puStack_98 = puStack_b0;
  lStack_90 = lStack_a8;
  puStack_b0 = &uStack_a0;
  fVar10 = 3.4028235e+38;
  lVar9 = 0;
  while (uVar6 = func_0x03fa4e10(&uStack_a0,*(undefined8 *)puVar4), lVar8 = lStack_90,
        (uVar6 & 1) != 0) {
    fVar13 = param_2;
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
      fVar13 = param_2;
    }
    uVar6 = Object_op_Equality_0x6000dec(lVar8,param_3,0);
    param_2 = fVar13;
    if ((uVar6 & 1) == 0) {
      if (lVar8 == 0) {
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      lVar7 = Component_get_gameObject_0x6000c83(lVar8,0);
      if (lVar7 == 0) {
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      uVar6 = GameObject_get_activeSelf_0x6000cff(lVar7,0);
      param_2 = fVar13;
      if (((uVar6 & 1) != 0) && (*(char *)(lVar8 + 0x79) == '\0')) {
        lVar7 = **(long **)(*(long *)puVar5 + 0xb8);
        if (lVar7 == 0) {
                    /* WARNING: Subroutine does not return */
          Throw_NullReference_Wrapper();
        }
        fVar11 = (float)Gun_Item_List_GetSlotPosition_0x6000b65(lVar7,*(undefined4 *)(lVar8 + 0x90))
        ;
        param_2 = fVar13;
        uVar6 = Gun_Item_IsOverlappingSlot_0x6000b39(param_3,*(undefined8 *)(param_3 + 0x98));
        if ((uVar6 & 1) != 0) {
          if (*(long *)(param_3 + 0x98) == 0) {
                    /* WARNING: Subroutine does not return */
            Throw_NullReference_Wrapper();
          }
          fVar12 = (float)RectTransform_get_anchoredPosition_0x6000f2b(*(long *)(param_3 + 0x98),0);
          if (cRam000000000625c2a2 == '\0') {
            func_0x029f5a50(puVar1);
            cRam000000000625c2a2 = '\x01';
          }
          if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          fVar13 = param_2 - fVar13;
          param_2 = (fVar12 - fVar11) * (fVar12 - fVar11);
          fVar13 = SQRT(param_2 + fVar13 * fVar13);
          if (fVar13 < fVar10) {
            fVar10 = fVar13;
            lVar9 = lVar8;
          }
        }
      }
    }
  }
  func_0x03fa4e0c(&uStack_a0,*(undefined8 *)puVar3);
  lVar8 = *(long *)puVar2;
  *(undefined1 *)(param_3 + 200) = 0;
  if (*(int *)(lVar8 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar6 = Object_op_Inequality_0x6000ded(lVar9,0,0);
  if ((uVar6 & 1) == 0) {
LAB_02c72290:
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar6 = Object_op_Inequality_0x6000ded(lVar9,0,0);
    if ((uVar6 & 1) != 0) {
      if (lVar9 == 0) {
LAB_02c72364:
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      if (*(int *)(lVar9 + 0x8c) / 5 != *(int *)(param_3 + 0x8c) / 5) {
        Gun_Item_SetFusionTarget_0x6000b35(param_3,0);
        goto LAB_02c72304;
      }
    }
LAB_02c722f0:
    lVar9 = 0;
  }
  else {
    if (lVar9 == 0) goto LAB_02c72364;
    if (*(int *)(lVar9 + 0x8c) / 5 != *(int *)(param_3 + 0x8c) / 5) goto LAB_02c72290;
    if ((*(char *)(param_3 + 0x78) != '\0') || (*(char *)(lVar9 + 0x78) != '\0')) {
      *(undefined1 *)(param_3 + 200) = 1;
      goto LAB_02c722f0;
    }
  }
  Gun_Item_SetFusionTarget_0x6000b35(param_3,lVar9);
  lVar9 = 0;
LAB_02c72304:
  Gun_Item_SetSwapTarget_0x6000b36(param_3,lVar9);
  return;
}

