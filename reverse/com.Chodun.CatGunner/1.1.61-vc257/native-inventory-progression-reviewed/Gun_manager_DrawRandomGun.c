/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b686ac, Ghidra VA 02c686ac. */

undefined4 Gun_manager_DrawRandomGun(long param_1,int param_2)

{
  undefined *puVar1;
  uint uVar2;
  undefined4 uVar3;
  ulong uVar4;
  long lVar5;
  undefined8 uVar6;
  
  if ((bRam000000000625c263 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c263 = 1;
  }
  uVar2 = Gun_manager_FindFirstEmptyOwned(param_1);
  if (uVar2 == 0xffffffff) {
    uVar3 = 0xffffffff;
  }
  else {
    uVar3 = Random_Range_0x6000ba7(param_2 * 5,param_2 * 5 + 5,0);
    puVar1 = PTR_DAT_05e591c0;
    lVar5 = *(long *)(param_1 + 0x40);
    if (lVar5 == 0) goto LAB_02c687ac;
    if (*(uint *)(lVar5 + 0x18) <= uVar2) {
                    /* WARNING: Subroutine does not return */
      Throw_Index_Wrapper();
    }
    *(undefined4 *)(lVar5 + (long)(int)uVar2 * 4 + 0x20) = uVar3;
    Gun_manager_Owned_Pause_Set_0x6000a50(param_1,uVar2,0);
    uVar6 = *(undefined8 *)(param_1 + 0x58);
    if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    uVar4 = Object_op_Inequality_0x6000ded(uVar6,0,0);
    if ((uVar4 & 1) != 0) {
      if (*(long *)(param_1 + 0x58) == 0) {
LAB_02c687ac:
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
      Gun_Item_List_ReloadList_0x6000b63(*(long *)(param_1 + 0x58),0);
      if (*(long *)(param_1 + 0x58) == 0) goto LAB_02c687ac;
      Gun_Item_List_PlaySpawnBounceAtSlot_0x6000b68(*(long *)(param_1 + 0x58),uVar2,0);
    }
    Gun_manager_TryStartAutoMerge_0x6000a68(param_1);
  }
  return uVar3;
}

