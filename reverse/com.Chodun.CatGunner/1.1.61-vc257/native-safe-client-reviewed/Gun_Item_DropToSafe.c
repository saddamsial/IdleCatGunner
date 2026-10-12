/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b73358, Ghidra VA 02c73358. */

void Gun_Item_DropToSafe(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  int iVar4;
  ulong uVar5;
  undefined8 uVar6;
  
  if ((bRam000000000625c2d7 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e63aa8);
    func_0x029f5a50(PTR_DAT_05e5dd40);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e62648);
    bRam000000000625c2d7 = 1;
  }
  puVar3 = PTR_DAT_05e63aa8;
  puVar2 = PTR_DAT_05e62648;
  puVar1 = PTR_DAT_05e5dd40;
  if (*(char *)(param_1 + 0x70) == '\0') {
    uVar6 = **(undefined8 **)(*(long *)PTR_DAT_05e62648 + 0xb8);
    if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar5 = Object_op_Equality_0x6000dec(uVar6,0,0);
    if ((uVar5 & 1) == 0) {
      if (**(long **)(*(long *)puVar2 + 0xb8) == 0) goto LAB_02c73490;
      iVar4 = Safe_manager_Put_From_Inventory
                        (**(long **)(*(long *)puVar2 + 0xb8),*(undefined4 *)(param_1 + 0x90),0);
      if (iVar4 != -1) {
        return;
      }
    }
    if (**(long **)(*(long *)puVar3 + 0xb8) != 0) {
      Gun_Item_List_ReloadList_0x6000b63();
      return;
    }
  }
  else if (**(long **)(*(long *)PTR_DAT_05e63aa8 + 0xb8) != 0) {
    Gun_Item_List_ReloadList_0x6000b63();
    if (**(long **)(*(long *)puVar1 + 0xb8) != 0) {
      Gun_manager_AdRewardGun_TryWatch_0x6000a87(**(long **)(*(long *)puVar1 + 0xb8),0);
      return;
    }
  }
LAB_02c73490:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

