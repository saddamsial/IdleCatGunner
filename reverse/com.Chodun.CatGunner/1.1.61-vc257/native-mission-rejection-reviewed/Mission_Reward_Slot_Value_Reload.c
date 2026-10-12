/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b0478c, Ghidra VA 02c0478c. */

void Mission_Reward_Slot_Value_Reload(long param_1)

{
  undefined *puVar1;
  undefined4 uVar2;
  uint uVar3;
  long lVar4;
  float fVar5;
  
  puVar1 = PTR_DAT_05e5dd50;
  if ((bRam000000000625be61 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd50);
    bRam000000000625be61 = 1;
  }
  lVar4 = *(long *)puVar1;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar4 = *(long *)puVar1;
  }
  lVar4 = *(long *)(*(long *)(lVar4 + 0xb8) + 8);
  if (lVar4 != 0) {
    uVar2 = Mission_manager_Reward_Status_return(lVar4,0,*(undefined4 *)(param_1 + 0x20),0);
    lVar4 = *(long *)(*(long *)(*(long *)puVar1 + 0xb8) + 8);
    if (lVar4 != 0) {
      uVar3 = Mission_manager_is_Reward_SequenceLocked(lVar4,0,*(undefined4 *)(param_1 + 0x20),0);
      if (*(long *)(param_1 + 0x28) != 0) {
        Mission_Reward_Item_Value_Reload(*(long *)(param_1 + 0x28),uVar2,uVar3 & 1,0);
        lVar4 = *(long *)(*(long *)(*(long *)puVar1 + 0xb8) + 8);
        if (lVar4 != 0) {
          uVar2 = Mission_manager_Reward_Status_return(lVar4,1,*(undefined4 *)(param_1 + 0x20),0);
          lVar4 = *(long *)(*(long *)(*(long *)puVar1 + 0xb8) + 8);
          if (lVar4 != 0) {
            uVar3 = Mission_manager_is_Reward_SequenceLocked
                              (lVar4,1,*(undefined4 *)(param_1 + 0x20),0);
            if (*(long *)(param_1 + 0x30) != 0) {
              Mission_Reward_Item_Value_Reload
                        (*(long *)(param_1 + 0x30),uVar2,uVar3 & 1,
                         **(char **)(*(long *)puVar1 + 0xb8) == '\0');
              lVar4 = *(long *)(*(long *)(*(long *)puVar1 + 0xb8) + 8);
              if (lVar4 != 0) {
                fVar5 = (float)Mission_manager_Reward_Slot_fillValue_return_0x6000361
                                         (lVar4,*(undefined4 *)(param_1 + 0x20),0);
                if (*(long *)(param_1 + 0x38) != 0) {
                  SlicedFilledImage_set_fillAmount_0x60005d0(*(long *)(param_1 + 0x38),0);
                  if (*(long *)(param_1 + 0x48) != 0) {
                    GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x48),fVar5 < 1.0,0);
                    return;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

