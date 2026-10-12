/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6a570, Ghidra VA 02c6a570. */

uint Gun_manager_AddSpecificGun(long param_1,undefined4 param_2)

{
  undefined *puVar1;
  uint uVar2;
  ulong uVar3;
  long lVar4;
  undefined8 uVar5;
  
  if ((bRam000000000625c27e & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c27e = 1;
  }
  uVar2 = Gun_manager_FindFirstEmptyOwned(param_1);
  puVar1 = PTR_DAT_05e591c0;
  if (uVar2 != 0xffffffff) {
    lVar4 = *(long *)(param_1 + 0x40);
    if (lVar4 == 0) goto LAB_02c6a654;
    if (*(uint *)(lVar4 + 0x18) <= uVar2) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    *(undefined4 *)(lVar4 + (long)(int)uVar2 * 4 + 0x20) = param_2;
    Gun_manager_Owned_Pause_Set_0x6000a50(param_1,uVar2,0);
    uVar5 = *(undefined8 *)(param_1 + 0x58);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar3 = Object_op_Inequality_0x6000ded(uVar5,0,0);
    if ((uVar3 & 1) != 0) {
      if (*(long *)(param_1 + 0x58) == 0) {
LAB_02c6a654:
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      Gun_Item_List_ReloadList_0x6000b63(*(long *)(param_1 + 0x58),0);
      if (*(long *)(param_1 + 0x58) == 0) goto LAB_02c6a654;
      Gun_Item_List_PlaySpawnBounceAtSlot_0x6000b68(*(long *)(param_1 + 0x58),uVar2,0);
    }
    Gun_manager_TryStartAutoMerge_0x6000a68(param_1);
  }
  return uVar2;
}

