/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2f2dc, Ghidra VA 02c2f2dc. */

void Adventure_manager_AD_Reduce_RewardGet(long param_1)

{
  int iVar1;
  undefined4 uVar2;
  ulong uVar3;
  long lVar4;
  undefined8 uVar5;
  
  if ((bRam000000000625c01b & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e597d0);
    bRam000000000625c01b = 1;
  }
  iVar1 = *(int *)(param_1 + 0x88);
  if (-1 < iVar1) {
    uVar2 = *(undefined4 *)(param_1 + 0x8c);
    *(undefined4 *)(param_1 + 0x88) = 0xffffffff;
    uVar3 = Adventure_manager_is_Entered_return_0x6000641(param_1,uVar2,iVar1);
    if ((uVar3 & 1) != 0) {
      Adventure_manager_AD_Reduce_DayCheck_0x6000653(param_1);
      if (*(int *)(param_1 + 0x78) < 2) {
        lVar4 = Adventure_manager_Map_info_return_0x600063e(param_1,uVar2,iVar1);
        if (lVar4 != 0) {
          if (*(int *)(*(long *)PTR_DAT_05e597d0 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          uVar5 = DateTime_AddMinutes_0x60005fe(0xc03e000000000000,lVar4 + 0x18,0);
          *(undefined8 *)(lVar4 + 0x18) = uVar5;
          *(int *)(param_1 + 0x78) = *(int *)(param_1 + 0x78) + 1;
          if (*(long *)(param_1 + 0x40) != 0) {
            Adventure_Panel_Map_Info_List_Reload_0x60006d8(*(long *)(param_1 + 0x40),uVar2,0);
            Adventure_manager_Alert_Reload_0x600062a(param_1);
            if (*(long *)(param_1 + 0x40) != 0) {
              Adventure_Panel_Alert_Reload_0x60006d4(*(long *)(param_1 + 0x40),0);
              SaveSystem_Save_0x600048a(0);
              return;
            }
          }
        }
                    /* WARNING: Subroutine does not return */
        Throw_NullReference_Wrapper();
      }
    }
  }
  return;
}

