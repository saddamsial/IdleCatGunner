/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b7d16c, Ghidra VA 02c7d16c. */

undefined4 Pet_manager_DrawPet(long param_1,undefined4 param_2)

{
  uint uVar1;
  ulong uVar2;
  long lVar3;
  long lVar4;
  undefined8 uVar5;
  
  if ((bRam000000000625c326 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e58f08);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e63d58);
    bRam000000000625c326 = 1;
  }
  uVar1 = Pet_manager_FindFirstEmptyOwned_0x6000bef(param_1);
  if (uVar1 == 0xffffffff) {
    if (*(int *)(*(long *)PTR_DAT_05e58f08 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    Debug_LogWarning_0x6000346(*(undefined8 *)PTR_DAT_05e63d58,0);
    param_2 = 0xffffffff;
  }
  else {
    lVar3 = *(long *)(param_1 + 0x38);
    if (lVar3 == 0) goto LAB_02c7d2b0;
    if (*(uint *)(lVar3 + 0x18) <= uVar1) {
LAB_02c7d2b4:
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    lVar4 = *(long *)(param_1 + 0x40);
    *(undefined4 *)(lVar3 + (long)(int)uVar1 * 4 + 0x20) = param_2;
    if (lVar4 != 0) {
      if (*(uint *)(lVar4 + 0x18) <= uVar1) goto LAB_02c7d2b4;
      *(undefined4 *)(lVar4 + (long)(int)uVar1 * 4 + 0x20) = 0xffffffff;
    }
    uVar5 = *(undefined8 *)(param_1 + 0x88);
    if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar2 = Object_op_Inequality_0x6000ded(uVar5,0,0);
    if ((uVar2 & 1) != 0) {
      if (*(long *)(param_1 + 0x88) == 0) {
LAB_02c7d2b0:
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      Pet_Item_List_ReloadList_0x6000c46(*(long *)(param_1 + 0x88),0);
      if (*(long *)(param_1 + 0x88) == 0) goto LAB_02c7d2b0;
      Pet_Item_List_PlaySpawnBounceAtSlot_0x6000c4b(*(long *)(param_1 + 0x88),uVar1,0);
    }
    Pet_manager_TryStartAutoMerge_0x6000be1(param_1);
  }
  return param_2;
}

