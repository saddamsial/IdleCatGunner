/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7feb0, Ghidra VA 02c7feb0. */

void Pet_Item_OnEndDrag(long param_1,undefined8 param_2)

{
  uint uVar1;
  undefined *puVar2;
  bool bVar3;
  bool bVar4;
  undefined8 uVar5;
  ulong uVar6;
  long lVar7;
  long lVar8;
  long lVar9;
  
  if ((bRam000000000625c34d & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e58f08);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e63d98);
    func_0x029f5a50(PTR_DAT_05e5d4d0);
    func_0x029f5a50(PTR_DAT_05e63be8);
    bRam000000000625c34d = 1;
  }
  if (*(char *)(param_1 + 0x90) == '\0') {
    return;
  }
  *(undefined1 *)(param_1 + 0x90) = 0;
  puVar2 = PTR_DAT_05e591c0;
  if (*(long *)(param_1 + 0x80) == 0) goto LAB_02c801cc;
  CanvasGroup_set_blocksRaycasts_0x6000007(*(long *)(param_1 + 0x80),1,0);
  Pet_Item_ClearAllFusionIndicators_0x6000c22();
  Pet_Item_ClearAllFusionScales_0x6000c23();
  Pet_Item_ClearSlotHighlight_0x6000c1b(param_1);
  uVar5 = Pet_Item_FindSlotUnderPointer_0x6000c19(param_1,param_2);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar2);
  }
  uVar6 = Object_op_Inequality_0x6000ded(uVar5,0,0);
  if ((uVar6 & 1) != 0) {
    Pet_Item_RevertSwap_0x6000c20(param_1);
    if (**(long **)(*(long *)PTR_DAT_05e63d98 + 0xb8) != 0) {
      Pet_Item_List_EquipToSlot_0x6000c4c
                (**(long **)(*(long *)PTR_DAT_05e63d98 + 0xb8),param_1,uVar5,0);
      *(undefined8 *)(param_1 + 0x98) = 0;
      Managed_WriteBarrier((undefined8 *)(param_1 + 0x98),0);
      *(undefined8 *)(param_1 + 0xa0) = 0;
      Managed_WriteBarrier((undefined8 *)(param_1 + 0xa0),0);
      return;
    }
    goto LAB_02c801cc;
  }
  uVar5 = *(undefined8 *)(param_1 + 0x98);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar6 = Object_op_Inequality_0x6000ded(uVar5,0,0);
  if ((uVar6 & 1) == 0) {
    uVar5 = *(undefined8 *)(param_1 + 0xa0);
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar6 = Object_op_Inequality_0x6000ded(uVar5,0,0);
    if ((uVar6 & 1) == 0) {
      Pet_Item_RevertSwap_0x6000c20(param_1);
      Pet_Item_MoveToClosestSlot_0x6000c18(param_1);
    }
    else {
      Pet_Item_FinalizeSwap_0x6000c1f(param_1);
    }
    goto LAB_02c801a4;
  }
  lVar9 = *(long *)(param_1 + 0x98);
  *(undefined8 *)(param_1 + 0x98) = 0;
  Managed_WriteBarrier((undefined8 *)(param_1 + 0x98),0);
  Pet_Item_RevertSwap_0x6000c20(param_1);
  puVar2 = PTR_DAT_05e5d4d0;
  lVar7 = *(long *)PTR_DAT_05e5d4d0;
  if (*(int *)(lVar7 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar7 = *(long *)puVar2;
  }
  lVar7 = *(long *)(*(long *)(lVar7 + 0xb8) + 0x28);
  if (lVar7 == 0) goto LAB_02c801cc;
  uVar1 = *(uint *)(param_1 + 0x68);
  lVar7 = *(long *)(lVar7 + 0x38);
  if ((int)uVar1 < 0) {
LAB_02c800b8:
    bVar3 = false;
  }
  else {
    if (lVar7 == 0) goto LAB_02c801cc;
    if (*(int *)(lVar7 + 0x18) <= (int)uVar1) goto LAB_02c800b8;
    bVar3 = *(int *)(lVar7 + (ulong)uVar1 * 4 + 0x20) == *(int *)(param_1 + 100);
  }
  if ((lVar9 == 0) || (lVar8 = Component_get_gameObject_0x6000c83(lVar9,0), lVar8 == 0))
  goto LAB_02c801cc;
  uVar6 = GameObject_get_activeSelf_0x6000cff(lVar8,0);
  if ((uVar6 & 1) == 0) {
LAB_02c8010c:
    bVar4 = false;
  }
  else {
    uVar1 = *(uint *)(lVar9 + 0x68);
    if ((int)uVar1 < 0) goto LAB_02c8010c;
    if (lVar7 == 0) goto LAB_02c801cc;
    if (*(int *)(lVar7 + 0x18) <= (int)uVar1) goto LAB_02c8010c;
    bVar4 = *(int *)(lVar7 + (ulong)uVar1 * 4 + 0x20) == *(int *)(lVar9 + 100);
  }
  if ((bool)(bVar4 & bVar3)) {
    if (**(long **)(*(long *)PTR_DAT_05e63d98 + 0xb8) == 0) {
LAB_02c801cc:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    Pet_Item_List_FuseItems_0x6000c4a(**(long **)(*(long *)PTR_DAT_05e63d98 + 0xb8),param_1,lVar9,0)
    ;
  }
  else {
    if (*(int *)(*(long *)PTR_DAT_05e58f08 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    Debug_LogWarning_0x6000346(*(undefined8 *)PTR_DAT_05e63be8,0);
    if (**(long **)(*(long *)PTR_DAT_05e63d98 + 0xb8) == 0) goto LAB_02c801cc;
    Pet_Item_List_ReloadList_0x6000c46(**(long **)(*(long *)PTR_DAT_05e63d98 + 0xb8),0);
  }
LAB_02c801a4:
  *(undefined8 *)(param_1 + 0xa0) = 0;
  Managed_WriteBarrier((undefined8 *)(param_1 + 0xa0),0);
  *(undefined4 *)(param_1 + 0xa8) = 0xffffffff;
  return;
}

