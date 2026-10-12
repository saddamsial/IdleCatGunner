/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2aa6494, Ghidra VA 02ba6494. */

void Mission_manager_Reward_Grant(long param_1,int param_2,uint param_3)

{
  uint uVar1;
  int iVar2;
  ulong uVar3;
  long lVar4;
  long lVar5;
  
  if (param_2 == 0) {
    lVar4 = *(long *)(param_1 + 0x28);
    if (lVar4 == 0) goto LAB_02ba6618;
    if (*(uint *)(lVar4 + 0x18) <= param_3) goto LAB_02ba661c;
    lVar4 = *(long *)(lVar4 + (long)(int)param_3 * 8 + 0x20);
    uVar3 = Mission_manager_Reward_Get_Value(param_1,lVar4);
    if ((uVar3 & 1) == 0) {
      return;
    }
    lVar5 = *(long *)(param_1 + 0x38);
    if (lVar5 == 0) goto LAB_02ba6618;
    uVar1 = *(uint *)(lVar5 + 0x18);
  }
  else {
    lVar4 = *(long *)(param_1 + 0x30);
    if (lVar4 == 0) goto LAB_02ba6618;
    if (*(uint *)(lVar4 + 0x18) <= param_3) goto LAB_02ba661c;
    lVar4 = *(long *)(lVar4 + (long)(int)param_3 * 8 + 0x20);
    uVar3 = Mission_manager_Reward_Get_Value(param_1,lVar4);
    if ((uVar3 & 1) == 0) {
      return;
    }
    lVar5 = *(long *)(param_1 + 0x40);
    if (lVar5 == 0) goto LAB_02ba6618;
    uVar1 = *(uint *)(lVar5 + 0x18);
  }
  if (uVar1 <= param_3) {
LAB_02ba661c:
                    /* WARNING: Subroutine does not return */
    Throw_Index_Wrapper();
  }
  *(undefined1 *)(lVar5 + (int)param_3 + 0x20) = 1;
  Mission_manager_Reward_UI_Reload_0x6000350(param_1);
  if (cRam000000000625ba57 == '\0') {
    func_0x029f5a50(PTR_DAT_05e5dd70);
    cRam000000000625ba57 = '\x01';
  }
  if ((**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) &&
     (Sound_manager_PlaySfx_0x600054a
                (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),7,0,0), lVar4 != 0)) {
    if (*(int *)(lVar4 + 0x14) != 0) {
LAB_02ba65d0:
      Mission_manager_Check_All_Reward_Get_0x600035c(param_1);
      iVar2 = Mission_manager_Next_GetAble_Reward_Lv_return_0x6000369(param_1);
      if (iVar2 == -1) {
        return;
      }
      Mission_manager_ScrollTo_RewardSlot_0x6000355(param_1,iVar2);
      return;
    }
    lVar4 = *(long *)(param_1 + 0x98);
    if (lVar4 != 0) {
      if (*(uint *)(lVar4 + 0x18) <= param_3) goto LAB_02ba661c;
      lVar4 = *(long *)(lVar4 + (long)(int)param_3 * 8 + 0x20);
      if (lVar4 != 0) {
        Mission_Reward_Slot_Dia_Spawn_Play_0x6000392(lVar4,param_2,0);
        goto LAB_02ba65d0;
      }
    }
  }
LAB_02ba6618:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

