/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b78830, Ghidra VA 02c78830. */

void Gun_Slot_OnEndDrag(long param_1,undefined8 param_2)

{
  undefined *puVar1;
  int iVar2;
  undefined8 uVar3;
  ulong uVar4;
  
  if ((bRam000000000625c306 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c306 = 1;
  }
  if (*(char *)(param_1 + 0xf8) != '\0') {
    *(undefined1 *)(param_1 + 0xf8) = 0;
    puVar1 = PTR_DAT_05e591c0;
    if (*(long *)(param_1 + 0xe0) == 0) {
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
    CanvasGroup_set_blocksRaycasts_0x6000007(*(long *)(param_1 + 0xe0),1,0);
    Gun_Slot_ClearDragHighlight_0x6000b8f(param_1);
    uVar3 = Gun_Slot_FindOtherSlotUnderPointer_0x6000b90(param_1,param_2);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)puVar1);
    }
    uVar4 = Object_op_Inequality_0x6000ded(uVar3,0,0);
    if ((uVar4 & 1) == 0) {
      uVar4 = Gun_Slot_IsOverItemListArea_0x6000b91(param_1,param_2);
      if ((uVar4 & 1) != 0) {
        iVar2 = Gun_Slot_GetEquippedCount();
        if (1 < iVar2) {
          Gun_Slot_RevertPosition_0x6000b8d(param_1);
          Gun_Slot_Unequip(param_1);
          return;
        }
        uVar3 = Alarm_get_UnSelectError_0x60012f9(0);
        UI_manager_Alert_0x6000602(uVar3,0);
      }
    }
    else {
      Gun_Slot_PerformSlotSwap(param_1,uVar3);
    }
    Gun_Slot_RevertPosition_0x6000b8d(param_1);
    return;
  }
  return;
}

