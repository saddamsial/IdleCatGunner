/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b2e384, Ghidra VA 02c2e384. */

void Adventure_manager_Adventure_Cancel(long param_1,int param_2,int param_3)

{
  undefined *puVar1;
  ulong uVar2;
  long lVar3;
  long lVar4;
  
  if ((bRam000000000625c009 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d540);
    func_0x029f5a50(PTR_DAT_05e5d4d0);
    bRam000000000625c009 = 1;
  }
  uVar2 = Adventure_manager_is_Entered_return(param_1,param_2,param_3);
  puVar1 = PTR_DAT_05e5d4d0;
  if ((uVar2 & 1) == 0) {
    return;
  }
  lVar3 = Adventure_manager_Map_info_return(param_1,param_2,param_3);
  lVar4 = *(long *)puVar1;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0(lVar4);
    lVar4 = *(long *)puVar1;
  }
  lVar4 = *(long *)(*(long *)(lVar4 + 0xb8) + 0x28);
  if ((lVar4 != 0) && (Pet_manager_UnlockGroup(lVar4,param_3 + param_2 * 100,0), lVar3 != 0)) {
    lVar4 = *(long *)puVar1;
    *(undefined1 *)(lVar3 + 0x10) = 0;
    lVar3 = *(long *)(*(long *)(lVar4 + 0xb8) + 0x28);
    if (lVar3 != 0) {
      Pet_manager_ReloadAfterLockChange(lVar3,0);
      if (*(long *)(param_1 + 0x40) != 0) {
        Adventure_Panel_Map_Info_List_Reload(*(long *)(param_1 + 0x40),param_2,0);
        if (*(long *)(param_1 + 0x40) != 0) {
          Adventure_Panel_RenderTexture_Map_Reload(*(long *)(param_1 + 0x40),0);
          if (*(int *)(*(long *)PTR_DAT_05e5d540 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          AppsFlyerInit_SendLog_ExplorationResult_0x600022d(param_2,param_3,2,0);
          return;
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

