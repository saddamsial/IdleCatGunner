/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b890bc, Ghidra VA 02c890bc. */

void Rebirth_Panel_UI_UpgradeRebirth_IAP_Popup_Open(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  ulong uVar3;
  long lVar4;
  undefined8 uVar5;
  long *plVar6;
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
  if ((bRam000000000625c395 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e528);
    func_0x029f5a50(PTR_DAT_05e5dd60);
    func_0x029f5a50(PTR_DAT_05e5dc20);
    func_0x029f5a50(PTR_DAT_05e63eb8);
    bRam000000000625c395 = 1;
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
  if (**(long **)(*(long *)puVar2 + 0xb8) != 0) {
    uVar3 = Rebirth_manager_UpgradeRebirth_IAP_Able_return_0x6000c95();
    puVar1 = PTR_DAT_05e5dc20;
    if ((uVar3 & 1) == 0) {
      Rebirth_Panel_UI_Reload(param_1);
      return;
    }
    lVar4 = *(long *)PTR_DAT_05e5dc20;
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar4 = *(long *)puVar1;
    }
    lVar4 = *(long *)(*(long *)(lVar4 + 0xb8) + 0x10);
    if (lVar4 != 0) {
      if (*(int *)(lVar4 + 0x28) < 2) {
        if (*(int *)(*(long *)PTR_DAT_05e5e528 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar5 = LocalizationManager_GetTranslation_0x60011b3
                          (*(undefined8 *)PTR_DAT_05e63eb8,1,0,1,0,0,0,1,0);
        UI_manager_Alert_0x6000602(uVar5,0);
        return;
      }
      if (**(long **)(*(long *)puVar2 + 0xb8) != 0) {
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
        if (*(long *)(param_1 + 0x78) != 0) {
          GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x78),1,0);
          plVar6 = *(long **)(param_1 + 0x80);
          uVar5 = InfVal_InfVal_change_0x60000a8(&uStack_40,0);
          if (plVar6 != (long *)0x0) {
            (**(code **)(*plVar6 + 0x558))(plVar6,uVar5,*(undefined8 *)(*plVar6 + 0x560));
            return;
          }
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

