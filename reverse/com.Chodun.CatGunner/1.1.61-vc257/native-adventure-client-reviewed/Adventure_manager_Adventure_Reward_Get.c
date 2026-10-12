/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2dc3c, Ghidra VA 02c2dc3c. */

void Adventure_manager_Adventure_Reward_Get(long param_1,int param_2,int param_3)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined *puVar3;
  uint uVar4;
  uint uVar5;
  undefined4 uVar6;
  int iVar7;
  undefined8 uVar8;
  long lVar9;
  long lVar10;
  
  puVar3 = PTR_DAT_05e5a180;
  if ((bRam000000000625c008 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd28);
    func_0x029f5a50(PTR_DAT_05e5d540);
    func_0x029f5a50(PTR_DAT_05e62fe8);
    func_0x029f5a50(PTR_DAT_05e5d4d0);
    func_0x029f5a50(PTR_DAT_05e5a180);
    bRam000000000625c008 = 1;
  }
  uVar4 = Adventure_manager_is_Entered_return(param_1,param_2,param_3);
  uVar8 = Adventure_manager_Adventure_Remain_Duration_return(param_1,param_2,param_3);
  lVar10 = *(long *)puVar3;
  if (*(int *)(lVar10 + 0xe4) == 0) {
    func_0x029f5bd0(lVar10);
    lVar10 = *(long *)puVar3;
  }
  uVar5 = TimeSpan_op_LessThanOrEqual_0x6000a96(uVar8,**(undefined8 **)(lVar10 + 0xb8),0);
  puVar3 = PTR_DAT_05e5dd28;
  if ((uVar4 & uVar5 & 1) != 0) {
    lVar10 = Adventure_manager_Map_info_return(param_1,param_2,param_3);
    lVar9 = Adventure_manager_Dispatched_Grades_return(lVar10,param_2,param_3);
    uVar6 = Adventure_manager_Adventure_Reward_Core_return(param_1,lVar9,param_3);
    if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)puVar3);
    }
    Adventure_manager_Core_Get(param_2,uVar6);
    iVar7 = Adventure_manager_Adventure_Duration_return(param_1,param_3);
    if (lVar9 != 0) {
      uVar1 = *(undefined4 *)(param_1 + 0x30);
      uVar2 = *(undefined4 *)(param_1 + 0x34);
      iVar7 = iVar7 * *(int *)(lVar9 + 0x18) * 10;
      Adventure_manager_Exp_Get(param_1,iVar7);
      puVar3 = PTR_DAT_05e5d4d0;
      lVar9 = *(long *)PTR_DAT_05e5d4d0;
      if (*(int *)(lVar9 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar9 = *(long *)puVar3;
      }
      lVar9 = *(long *)(*(long *)(lVar9 + 0xb8) + 0x28);
      if ((lVar9 != 0) && (Pet_manager_UnlockGroup(lVar9,param_3 + param_2 * 100,0), lVar10 != 0)) {
        *(undefined1 *)(lVar10 + 0x10) = 0;
        if (cRam000000000625ba57 == '\0') {
          func_0x029f5a50(PTR_DAT_05e5dd70);
          cRam000000000625ba57 = '\x01';
        }
        if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
          Sound_manager_PlaySfx_0x600054a
                    (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),7,0);
          if (*(long *)(param_1 + 0x40) != 0) {
            Adventure_Panel_Map_Info_List_Reload(*(long *)(param_1 + 0x40),param_2,0);
            if (*(long *)(param_1 + 0x40) != 0) {
              Adventure_Panel_RenderTexture_Map_Reload(*(long *)(param_1 + 0x40),0);
              if (*(long *)(param_1 + 0x40) != 0) {
                Adventure_Panel_Map_List_Reload(*(long *)(param_1 + 0x40),0);
                if (*(long *)(param_1 + 0x40) != 0) {
                  Adventure_Panel_Exp_Reload(*(long *)(param_1 + 0x40),0);
                  if (*(long *)(param_1 + 0x40) != 0) {
                    Adventure_Panel_Alert_Reload(*(long *)(param_1 + 0x40),0);
                    if (*(int *)(*(long *)PTR_DAT_05e5d540 + 0xe4) == 0) {
                      func_0x029f5bd0();
                    }
                    AppsFlyerInit_SendLog_ExplorationResult_0x600022d(param_2,param_3,1,0);
                    if (*(long *)(param_1 + 0x40) != 0) {
                      Adventure_Panel_Reward_Popup_Open
                                (*(long *)(param_1 + 0x40),param_2,uVar6,iVar7,uVar1,uVar2,0);
                      SaveSystem_Save_0x600048a(0);
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
  return;
}

