/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b88ee0, Ghidra VA 02c88ee0. */

void Rebirth_Panel_UI_UpgradeRebirth_Popup_Open(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined8 uVar3;
  long *plVar4;
  long lVar5;
  undefined8 uStack_c0;
  undefined8 uStack_b8;
  undefined8 uStack_b0;
  undefined8 uStack_a8;
  undefined8 uStack_a0;
  undefined8 uStack_98;
  undefined8 uStack_90;
  undefined8 uStack_88;
  undefined8 uStack_80;
  undefined8 uStack_78;
  undefined8 uStack_70;
  undefined8 uStack_68;
  undefined8 uStack_60;
  undefined8 uStack_58;
  undefined8 uStack_50;
  undefined8 uStack_48;
  undefined8 uStack_40;
  undefined8 uStack_38;
  undefined8 uStack_30;
  undefined8 uStack_28;
  
  puVar2 = PTR_DAT_05e5dd60;
  if ((bRam000000000625c394 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e528);
    func_0x029f5a50(PTR_DAT_05e5dd60);
    func_0x029f5a50(PTR_DAT_05e5dc20);
    func_0x029f5a50(PTR_DAT_05e63eb8);
    bRam000000000625c394 = 1;
  }
  uStack_78 = 0;
  uStack_80 = 0;
  uStack_68 = 0;
  uStack_70 = 0;
  uStack_58 = 0;
  uStack_60 = 0;
  uStack_48 = 0;
  uStack_50 = 0;
  uStack_38 = 0;
  uStack_40 = 0;
  uStack_28 = 0;
  uStack_30 = 0;
  lVar5 = **(long **)(*(long *)puVar2 + 0xb8);
  if (lVar5 != 0) {
    Rebirth_manager_UpgradeRebirth_DayCheck(lVar5);
    puVar1 = PTR_DAT_05e5dc20;
    if (0 < *(int *)(lVar5 + 0x4c)) {
      Rebirth_Panel_UI_Reload(param_1);
      return;
    }
    lVar5 = *(long *)PTR_DAT_05e5dc20;
    if (*(int *)(lVar5 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar5 = *(long *)puVar1;
    }
    lVar5 = *(long *)(*(long *)(lVar5 + 0xb8) + 0x10);
    if (lVar5 != 0) {
      if (*(int *)(lVar5 + 0x28) < 2) {
        if (*(int *)(*(long *)PTR_DAT_05e5e528 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar3 = LocalizationManager_GetTranslation_0x60011b3
                          (*(undefined8 *)PTR_DAT_05e63eb8,1,0,1,0,0,0,1,0);
        UI_manager_Alert_0x6000602(uVar3,0);
        return;
      }
      lVar5 = **(long **)(*(long *)puVar2 + 0xb8);
      if (lVar5 != 0) {
        *(undefined1 *)(lVar5 + 0x48) = 1;
        Rebirth_manager_Rebirth_Reward_return_0x6000c90(&uStack_60);
        InfVal_op_Implicit_0x600003f(&uStack_a0,3,0);
        uStack_78 = uStack_98;
        uStack_80 = uStack_a0;
        uStack_68 = uStack_88;
        uStack_70 = uStack_90;
        InfVal_op_Multiply_0x6000074(&uStack_c0,&uStack_60,&uStack_80,0);
        uStack_38 = uStack_b8;
        uStack_40 = uStack_c0;
        uStack_28 = uStack_a8;
        uStack_30 = uStack_b0;
        if (*(long *)(param_1 + 0x68) != 0) {
          GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x68),1,0);
          plVar4 = *(long **)(param_1 + 0x70);
          uVar3 = InfVal_InfVal_change_0x60000a8(&uStack_40,0);
          if (plVar4 != (long *)0x0) {
            (**(code **)(*plVar4 + 0x558))(plVar4,uVar3,*(undefined8 *)(*plVar4 + 0x560));
            return;
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

