/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b88d7c, Ghidra VA 02c88d7c. */

void Rebirth_Panel_UI_Rebirth_Popup_Open(long param_1)

{
  undefined *puVar1;
  long lVar2;
  undefined8 uVar3;
  long *plVar4;
  undefined8 uStack_40;
  undefined8 uStack_38;
  undefined8 uStack_30;
  undefined8 uStack_28;
  
  puVar1 = PTR_DAT_05e5dc20;
  if ((bRam000000000625c393 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e528);
    func_0x029f5a50(PTR_DAT_05e5dd60);
    func_0x029f5a50(PTR_DAT_05e5dc20);
    func_0x029f5a50(PTR_DAT_05e63eb8);
    bRam000000000625c393 = 1;
  }
  lVar2 = *(long *)puVar1;
  uStack_38 = 0;
  uStack_40 = 0;
  uStack_28 = 0;
  uStack_30 = 0;
  if (*(int *)(lVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar2 = *(long *)puVar1;
  }
  lVar2 = *(long *)(*(long *)(lVar2 + 0xb8) + 0x10);
  if (lVar2 != 0) {
    if (*(int *)(lVar2 + 0x28) < 2) {
      if (*(int *)(*(long *)PTR_DAT_05e5e528 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar3 = LocalizationManager_GetTranslation_0x60011b3
                        (*(undefined8 *)PTR_DAT_05e63eb8,1,0,1,0,0,0,1,0);
      UI_manager_Alert_0x6000602(uVar3,0);
      return;
    }
    if (**(long **)(*(long *)PTR_DAT_05e5dd60 + 0xb8) != 0) {
      *(undefined1 *)(**(long **)(*(long *)PTR_DAT_05e5dd60 + 0xb8) + 0x48) = 0;
      Rebirth_manager_Rebirth_Reward_return_0x6000c90(&uStack_40);
      if (*(long *)(param_1 + 0x58) != 0) {
        GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x58),1,0);
        plVar4 = *(long **)(param_1 + 0x60);
        uVar3 = InfVal_InfVal_change_0x60000a8(&uStack_40,0);
        if (plVar4 != (long *)0x0) {
          (**(code **)(*plVar4 + 0x558))(plVar4,uVar3,*(undefined8 *)(*plVar4 + 0x560));
          return;
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

