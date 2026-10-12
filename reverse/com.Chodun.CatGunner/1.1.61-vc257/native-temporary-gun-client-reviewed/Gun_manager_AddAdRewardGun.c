/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b6a7b4, Ghidra VA 02c6a7b4. */

uint Gun_manager_AddAdRewardGun(float param_1,long param_2,undefined4 param_3)

{
  undefined *puVar1;
  uint uVar2;
  undefined8 uVar3;
  ulong uVar4;
  long lVar5;
  undefined8 uVar6;
  undefined8 uStack_28;
  
  if ((bRam000000000625c280 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e597d0);
    func_0x029f5a50(PTR_DAT_05e591c0);
    bRam000000000625c280 = 1;
  }
  uStack_28 = 0;
  if (*(int *)(param_2 + 0xc0) == -1) {
    uVar2 = Gun_manager_FindFirstEmptyOwned_0x6000a49(param_2);
    if (uVar2 != 0xffffffff) {
      lVar5 = *(long *)(param_2 + 0x40);
      if (lVar5 != 0) {
        if (*(uint *)(lVar5 + 0x18) <= uVar2) {
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        *(undefined4 *)(lVar5 + (long)(int)uVar2 * 4 + 0x20) = param_3;
        Gun_manager_Owned_Pause_Set_0x6000a50(param_2,uVar2,0);
        puVar1 = PTR_DAT_05e597d0;
        *(uint *)(param_2 + 0xc0) = uVar2;
        *(undefined4 *)(param_2 + 0xc4) = param_3;
        if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uStack_28 = DateTime_get_UtcNow_0x6000652(0);
        uStack_28 = DateTime_AddSeconds_0x6000600((double)param_1,&uStack_28,0);
        uVar3 = DateTime_get_Ticks_0x600061f(&uStack_28,0);
        puVar1 = PTR_DAT_05e591c0;
        uVar6 = *(undefined8 *)(param_2 + 0x58);
        *(undefined8 *)(param_2 + 200) = uVar3;
        if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar4 = Object_op_Inequality_0x6000ded(uVar6,0,0);
        if ((uVar4 & 1) == 0) {
          return uVar2;
        }
        if (*(long *)(param_2 + 0x58) != 0) {
          Gun_Item_List_ReloadList_0x6000b63(*(long *)(param_2 + 0x58),0);
          if (*(long *)(param_2 + 0x58) != 0) {
            Gun_Item_List_PlaySpawnBounceAtSlot_0x6000b68(*(long *)(param_2 + 0x58),uVar2,0);
            return uVar2;
          }
        }
      }
                    /* WARNING: Subroutine does not return */
      Throw_NullReference_Wrapper();
    }
  }
  else {
    uVar2 = 0xffffffff;
  }
  return uVar2;
}

