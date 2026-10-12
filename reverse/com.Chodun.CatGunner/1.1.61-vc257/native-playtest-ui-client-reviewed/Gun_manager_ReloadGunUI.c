/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6841c, Ghidra VA 02c6841c. */

void Gun_manager_ReloadGunUI(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  ulong uVar3;
  long lVar4;
  undefined8 uVar5;
  
  puVar1 = PTR_DAT_05e591c0;
  if ((bRam000000000625c26f & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e62648);
    func_0x029f5a50(PTR_DAT_05e5e4b8);
    bRam000000000625c26f = 1;
  }
  uVar5 = *(undefined8 *)(param_1 + 0x58);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Inequality_0x6000ded(uVar5,0,0);
  if ((uVar3 & 1) != 0) {
    if (*(long *)(param_1 + 0x58) == 0) goto LAB_02c685d4;
    Gun_Item_List_ReloadList_0x6000b63(*(long *)(param_1 + 0x58),0);
  }
  puVar2 = PTR_DAT_05e5e4b8;
  Gun_manager_ReloadAllSlots_0x6000a6a(param_1);
  lVar4 = *(long *)puVar2;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar4 = *(long *)puVar2;
  }
  uVar5 = **(undefined8 **)(lVar4 + 0xb8);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar1);
  }
  uVar3 = Object_op_Inequality_0x6000ded(uVar5,0,0);
  if ((uVar3 & 1) != 0) {
    lVar4 = *(long *)puVar2;
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar4 = *(long *)puVar2;
    }
    if (**(long **)(lVar4 + 0xb8) == 0) goto LAB_02c685d4;
    StepUp_Banner_Reload_0x6000e15(**(long **)(lVar4 + 0xb8),0);
  }
  uVar5 = *(undefined8 *)(param_1 + 0xe0);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Inequality_0x6000ded(uVar5,0,0);
  if ((uVar3 & 1) != 0) {
    if (*(long *)(param_1 + 0xe0) == 0) goto LAB_02c685d4;
    Gun_Merge_Tutorial_Reload_0x6000a99();
  }
  puVar2 = PTR_DAT_05e62648;
  Gun_manager_AutoMerge_UI_Reload_0x6000a69(param_1);
  Gun_manager_TryStartAutoMerge_0x6000a68(param_1);
  Gun_manager_AD_Draw_Btn_Reload_0x6000a76(param_1);
  uVar5 = **(undefined8 **)(*(long *)puVar2 + 0xb8);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = Object_op_Inequality_0x6000ded(uVar5,0,0);
  if ((uVar3 & 1) == 0) {
    return;
  }
  if (**(long **)(*(long *)puVar2 + 0xb8) != 0) {
    Safe_manager_UI_Reload_0x6000ac2();
    return;
  }
LAB_02c685d4:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

