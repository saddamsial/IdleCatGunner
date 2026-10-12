/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b624e8, Ghidra VA 02c624e8. */

void Fish_Item_OnEndDrag(long param_1,long param_2)

{
  undefined *puVar1;
  undefined *puVar2;
  ulong uVar3;
  undefined8 uVar4;
  long lVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  
  if ((bRam000000000625c22c & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63850);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c22c = 1;
  }
  puVar2 = PTR_DAT_05e63850;
  puVar1 = PTR_DAT_05e591c0;
  if (*(char *)(param_1 + 0x84) != '\0') {
    *(undefined1 *)(param_1 + 0x84) = 0;
    uVar4 = **(undefined8 **)(*(long *)puVar2 + 0xb8);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar3 = Object_op_Inequality_0x6000ded(uVar4,0,0);
    if ((uVar3 & 1) != 0) {
      if (param_2 == 0) goto LAB_02c62678;
      uVar6 = *(undefined4 *)(param_2 + 0x104);
      uVar7 = *(undefined4 *)(param_2 + 0x108);
      lVar5 = **(long **)(*(long *)puVar2 + 0xb8);
      uVar4 = PointerEventData_get_pressEventCamera_0x600063e(param_2,0);
      if (lVar5 == 0) goto LAB_02c62678;
      uVar3 = Fish_DeleteZone_ContainsScreenPoint(uVar6,uVar7,lVar5,uVar4);
      if ((uVar3 & 1) != 0) {
        if (*(long *)(param_1 + 0x70) != 0) {
          Fish_Tank_ClearAllFusionAlerts();
        }
        lVar5 = **(long **)(*(long *)puVar2 + 0xb8);
        *(undefined1 *)(param_1 + 0x49) = 1;
        if (lVar5 != 0) {
          Fish_DeleteZone_TryDelete(lVar5,param_1);
          return;
        }
        goto LAB_02c62678;
      }
    }
    if (**(long **)(*(long *)puVar2 + 0xb8) != 0) {
      Fish_DeleteZone_Hide();
    }
    Fish_Item_UpdateSortOrder(param_1);
    uVar4 = *(undefined8 *)(param_1 + 0x70);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar3 = Object_op_Inequality_0x6000ded(uVar4,0,0);
    if ((uVar3 & 1) != 0) {
      if (*(long *)(param_1 + 0x70) != 0) {
        Fish_Tank_ClearAllFusionAlerts();
        if (*(long *)(param_1 + 0x70) != 0) {
          Fish_Tank_CheckFusion(*(long *)(param_1 + 0x70),param_1);
          return;
        }
      }
LAB_02c62678:
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
  }
  return;
}

