/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b72ab8, Ghidra VA 02c72ab8. */

void Gun_Item_OnEndDrag(long param_1,undefined8 param_2)

{
  uint uVar1;
  undefined *puVar2;
  bool bVar3;
  bool bVar4;
  ulong uVar5;
  long lVar6;
  undefined8 uVar7;
  long lVar8;
  long lVar9;
  undefined8 uStack_38;
  undefined8 uStack_28;
  
  if ((bRam000000000625c2d3 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e58f08);
    func_0x029f5a50(PTR_DAT_05e63aa8);
    func_0x029f5a50(PTR_DAT_05e5dd40);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e63be8);
    func_0x029f5a50(PTR_DAT_05e63bf0);
    bRam000000000625c2d3 = 1;
  }
  uStack_28 = 0;
  uStack_38 = 0;
  if (*(char *)(param_1 + 0xb8) == '\0') {
    return;
  }
  *(undefined1 *)(param_1 + 0xb8) = 0;
  puVar2 = PTR_DAT_05e591c0;
  if (*(long *)(param_1 + 0xa8) == 0) goto LAB_02c72ec8;
  CanvasGroup_set_blocksRaycasts_0x6000007(*(long *)(param_1 + 0xa8),1,0);
  Gun_Item_ClearAllFusionIndicators_0x6000b3a();
  Gun_Item_ClearAllFusionScales_0x6000b3b();
  Gun_Item_ClearSlotHighlight_0x6000b33(param_1);
  Gun_Item_Safe_HUD_Dragging_0x6000b2c(param_1,0);
  Gun_Item_RaycastDropTargets_0x6000b31(param_1,param_2,&uStack_28,&uStack_38);
  uVar7 = uStack_28;
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar5 = Object_op_Inequality_0x6000ded(uVar7,0,0);
  uVar7 = uStack_38;
  if ((uVar5 & 1) != 0) {
    Gun_Item_RevertSwap_0x6000b38(param_1);
    if (**(long **)(*(long *)PTR_DAT_05e63aa8 + 0xb8) != 0) {
      Gun_Item_List_EquipToSlot_0x6000b69
                (**(long **)(*(long *)PTR_DAT_05e63aa8 + 0xb8),param_1,uStack_28);
      *(undefined8 *)(param_1 + 0xc0) = 0;
      Managed_WriteBarrier((undefined8 *)(param_1 + 0xc0),0);
      *(undefined8 *)(param_1 + 0xd0) = 0;
      *(undefined1 *)(param_1 + 200) = 0;
      Managed_WriteBarrier((undefined8 *)(param_1 + 0xd0),0);
      return;
    }
    goto LAB_02c72ec8;
  }
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar5 = Object_op_Inequality_0x6000ded(uVar7,0,0);
  if ((uVar5 & 1) != 0) {
    Gun_Item_RevertSwap_0x6000b38(param_1);
    *(undefined8 *)(param_1 + 0xc0) = 0;
    Managed_WriteBarrier((undefined8 *)(param_1 + 0xc0),0);
    *(undefined1 *)(param_1 + 200) = 0;
    *(undefined8 *)(param_1 + 0xd0) = 0;
    Managed_WriteBarrier((undefined8 *)(param_1 + 0xd0),0);
    *(undefined4 *)(param_1 + 0xd8) = 0xffffffff;
    Gun_Item_DropToSafe_0x6000b2e(param_1);
    return;
  }
  uVar7 = *(undefined8 *)(param_1 + 0xc0);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar5 = Object_op_Inequality_0x6000ded(uVar7,0,0);
  if ((uVar5 & 1) == 0) {
    uVar7 = *(undefined8 *)(param_1 + 0xd0);
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar5 = Object_op_Inequality_0x6000ded(uVar7,0,0);
    if ((uVar5 & 1) != 0) {
      Gun_Item_FinalizeSwap(param_1);
      goto LAB_02c72e9c;
    }
    if (*(char *)(param_1 + 200) == '\0') {
      Gun_Item_RevertSwap_0x6000b38(param_1);
      Gun_Item_MoveToClosestSlot(param_1);
      goto LAB_02c72e9c;
    }
    *(undefined1 *)(param_1 + 200) = 0;
    Gun_Item_RevertSwap_0x6000b38(param_1);
    uVar7 = Gun_manager_Loc_0x6000a7a(*(undefined8 *)PTR_DAT_05e63bf0,0);
    UI_manager_Alert_0x6000602(uVar7,0);
    if (cRam000000000625ba57 == '\0') {
      func_0x029f5a50(PTR_DAT_05e5dd70);
      cRam000000000625ba57 = '\x01';
    }
    if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) == 0) goto LAB_02c72ec8;
    Sound_manager_PlaySfx_0x600054a(0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),5,0,0);
  }
  else {
    lVar8 = *(long *)(param_1 + 0xc0);
    *(undefined8 *)(param_1 + 0xc0) = 0;
    Managed_WriteBarrier((undefined8 *)(param_1 + 0xc0),0);
    Gun_Item_RevertSwap_0x6000b38(param_1);
    if (**(long **)(*(long *)PTR_DAT_05e5dd40 + 0xb8) == 0) goto LAB_02c72ec8;
    uVar1 = *(uint *)(param_1 + 0x90);
    lVar9 = *(long *)(**(long **)(*(long *)PTR_DAT_05e5dd40 + 0xb8) + 0x40);
    if ((int)uVar1 < 0) {
LAB_02c72d38:
      bVar3 = false;
    }
    else {
      if (lVar9 == 0) goto LAB_02c72ec8;
      if (*(int *)(lVar9 + 0x18) <= (int)uVar1) goto LAB_02c72d38;
      bVar3 = *(int *)(lVar9 + (ulong)uVar1 * 4 + 0x20) == *(int *)(param_1 + 0x8c);
    }
    if ((lVar8 == 0) || (lVar6 = Component_get_gameObject_0x6000c83(lVar8,0), lVar6 == 0))
    goto LAB_02c72ec8;
    uVar5 = GameObject_get_activeSelf_0x6000cff(lVar6,0);
    if ((uVar5 & 1) == 0) {
LAB_02c72d8c:
      bVar4 = false;
    }
    else {
      uVar1 = *(uint *)(lVar8 + 0x90);
      if ((int)uVar1 < 0) goto LAB_02c72d8c;
      if (lVar9 == 0) goto LAB_02c72ec8;
      if (*(int *)(lVar9 + 0x18) <= (int)uVar1) goto LAB_02c72d8c;
      bVar4 = *(int *)(lVar9 + (ulong)uVar1 * 4 + 0x20) == *(int *)(lVar8 + 0x8c);
    }
    if ((bool)(bVar4 & bVar3)) {
      if (**(long **)(*(long *)PTR_DAT_05e63aa8 + 0xb8) == 0) goto LAB_02c72ec8;
      Gun_Item_List_FuseItems_0x6000b67(**(long **)(*(long *)PTR_DAT_05e63aa8 + 0xb8),param_1,lVar8)
      ;
      goto LAB_02c72e9c;
    }
    if (*(int *)(*(long *)PTR_DAT_05e58f08 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    Debug_LogWarning_0x6000346(*(undefined8 *)PTR_DAT_05e63be8,0);
  }
  if (**(long **)(*(long *)PTR_DAT_05e63aa8 + 0xb8) == 0) {
LAB_02c72ec8:
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  Gun_Item_List_ReloadList_0x6000b63();
LAB_02c72e9c:
  *(undefined8 *)(param_1 + 0xd0) = 0;
  Managed_WriteBarrier((undefined8 *)(param_1 + 0xd0),0);
  *(undefined4 *)(param_1 + 0xd8) = 0xffffffff;
  return;
}

