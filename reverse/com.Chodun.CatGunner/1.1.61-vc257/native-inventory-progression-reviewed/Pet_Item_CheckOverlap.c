/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7f9e4, Ghidra VA 02c7f9e4. */

void Pet_Item_CheckOverlap(undefined1 param_1 [16],float param_2,long param_3)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined *puVar5;
  long lVar6;
  ulong uVar7;
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
  
  puVar3 = PTR_DAT_05e63d98;
  if ((bRam000000000625c353 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63da0);
    func_0x029f5a50(PTR_DAT_05e63da8);
    func_0x029f5a50(PTR_DAT_05e63db0);
    func_0x029f5a50(PTR_DAT_05e63db8);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e63d98);
    bRam000000000625c353 = 1;
  }
  puVar5 = PTR_DAT_05e63da8;
  puVar4 = PTR_DAT_05e63da0;
  puVar2 = PTR_DAT_05e591c0;
  uStack_a0 = 0;
  puStack_98 = (undefined8 *)0x0;
  lStack_90 = 0;
  lVar9 = **(long **)(*(long *)puVar3 + 0xb8);
  if ((lVar9 == 0) || (lVar9 = *(long *)(lVar9 + 0x40), lVar9 == 0)) {
LAB_02c7fcbc:
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  func_0x0452d690(&uStack_b8,lVar9,*(undefined8 *)PTR_DAT_05e63db8);
  uStack_a0 = uStack_b8;
  puVar1 = PTR_DAT_05e59000;
  uStack_b8 = 0;
  puStack_98 = puStack_b0;
  lStack_90 = lStack_a8;
  puStack_b0 = &uStack_a0;
  fVar10 = 3.4028235e+38;
  lVar9 = 0;
  while (uVar7 = func_0x03fa4e10(&uStack_a0,*(undefined8 *)puVar5), lVar6 = lStack_90,
        (uVar7 & 1) != 0) {
    fVar13 = param_2;
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
      fVar13 = param_2;
    }
    uVar7 = Object_op_Equality_0x6000dec(lVar6,param_3,0);
    param_2 = fVar13;
    if ((uVar7 & 1) == 0) {
      if (lVar6 == 0) {
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      lVar8 = Component_get_gameObject_0x6000c83(lVar6,0);
      if (lVar8 == 0) {
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      uVar7 = GameObject_get_activeSelf_0x6000cff(lVar8,0);
      param_2 = fVar13;
      if (((uVar7 & 1) != 0) && (*(char *)(lVar6 + 0x6d) == '\0')) {
        lVar8 = **(long **)(*(long *)puVar3 + 0xb8);
        if (lVar8 == 0) {
                    /* WARNING: Subroutine does not return */
          Throw_NullReference_Wrapper();
        }
        fVar11 = (float)Pet_Item_List_GetSlotPosition_0x6000c48
                                  (lVar8,*(undefined4 *)(lVar6 + 0x68),0);
        param_2 = fVar13;
        uVar7 = Pet_Item_IsOverlappingSlot_0x6000c21(param_3,*(undefined8 *)(param_3 + 0x70));
        if ((uVar7 & 1) != 0) {
          if (*(long *)(param_3 + 0x70) == 0) {
                    /* WARNING: Subroutine does not return */
            Throw_NullReference_Wrapper();
          }
          fVar12 = (float)RectTransform_get_anchoredPosition_0x6000f2b(*(long *)(param_3 + 0x70),0);
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
            lVar9 = lVar6;
          }
        }
      }
    }
  }
  func_0x03fa4e0c(&uStack_a0,*(undefined8 *)puVar4);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar7 = Object_op_Inequality_0x6000ded(lVar9,0,0);
  if ((uVar7 & 1) == 0) {
    lVar9 = 0;
  }
  else {
    if (lVar9 == 0) goto LAB_02c7fcbc;
    if (((*(int *)(lVar9 + 100) != *(int *)(param_3 + 100)) || (*(char *)(param_3 + 0x6c) != '\0'))
       || (*(char *)(lVar9 + 0x6c) != '\0')) {
      Pet_Item_SetFusionTarget_0x6000c1d(param_3,0);
      goto LAB_02c7fc74;
    }
  }
  Pet_Item_SetFusionTarget_0x6000c1d(param_3,lVar9);
  lVar9 = 0;
LAB_02c7fc74:
  Pet_Item_SetSwapTarget_0x6000c1e(param_3,lVar9);
  return;
}

