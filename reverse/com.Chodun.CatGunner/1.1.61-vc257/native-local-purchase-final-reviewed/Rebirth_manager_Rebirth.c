/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b87c10, Ghidra VA 02c87c10. */

void Rebirth_manager_Rebirth(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  uint uVar3;
  long lVar4;
  undefined8 uVar5;
  ulong uVar6;
  int iVar7;
  int iVar8;
  undefined8 uStack_e0;
  undefined8 uStack_d8;
  undefined8 uStack_d0;
  undefined8 uStack_c8;
  undefined8 uStack_c0;
  undefined8 uStack_b8;
  undefined8 uStack_b0;
  undefined8 uStack_a8;
  undefined8 uStack_a0;
  undefined8 uStack_98;
  undefined8 uStack_90;
  undefined8 uStack_88;
  undefined4 uStack_78;
  undefined8 uStack_70;
  undefined8 uStack_68;
  undefined8 uStack_60;
  undefined8 uStack_58;
  undefined8 uStack_50;
  undefined8 uStack_48;
  undefined8 uStack_40;
  undefined8 uStack_38;
  
  if ((bRam000000000625c386 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d910);
    func_0x029f5a50(PTR_DAT_05e5d540);
    func_0x029f5a50(PTR_DAT_05e5d5b0);
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e5dd50);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e625c8);
    func_0x029f5a50(PTR_DAT_05e5d920);
    func_0x029f5a50(PTR_DAT_05e5dc20);
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    bRam000000000625c386 = 1;
  }
  puVar1 = PTR_DAT_05e5d540;
  uStack_48 = 0;
  uStack_50 = 0;
  uStack_38 = 0;
  uStack_40 = 0;
  uStack_58 = 0;
  uStack_60 = 0;
  uStack_68 = 0;
  uStack_70 = 0;
  uStack_78 = 0;
  Rebirth_manager_Rebirth_Reward_return(&uStack_a0);
  uStack_48 = uStack_98;
  uStack_50 = uStack_a0;
  uStack_38 = uStack_88;
  uStack_40 = uStack_90;
  if (*(char *)(param_1 + 0x48) == '\0') {
LAB_02c87d34:
    iVar8 = 0;
    iVar7 = 0;
  }
  else {
    InfVal_op_Implicit_0x600003f(&uStack_a0,3,0);
    uStack_68 = uStack_98;
    uStack_70 = uStack_a0;
    uStack_58 = uStack_88;
    uStack_60 = uStack_90;
    InfVal_op_Multiply_0x6000074(&uStack_c0,&uStack_50,&uStack_70,0);
    puVar2 = PTR_DAT_05e5d920;
    uStack_48 = uStack_b8;
    uStack_50 = uStack_c0;
    uStack_38 = uStack_a8;
    uStack_40 = uStack_b0;
    if (*(char *)(param_1 + 0x48) == '\0') goto LAB_02c87d34;
    if (*(char *)(param_1 + 0x49) == '\0') {
      lVar4 = *(long *)PTR_DAT_05e5d920;
      if (*(int *)(lVar4 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar4 = *(long *)puVar2;
      }
      iVar8 = 1;
      iVar7 = iVar8;
      if (*(char *)(*(long *)(lVar4 + 0xb8) + 9) != '\0') {
        iVar7 = 2;
      }
    }
    else {
      iVar8 = 1;
      iVar7 = 3;
    }
  }
  lVar4 = *(long *)puVar1;
  *(int *)(param_1 + 0x30) = *(int *)(param_1 + 0x30) + 1;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  AppsFlyerInit_SendLog_Rebirth_0x6000228(iVar7,0);
  puVar1 = PTR_DAT_05e5d4e8;
  uStack_98 = uStack_48;
  uStack_a0 = uStack_50;
  uStack_88 = uStack_38;
  uStack_90 = uStack_40;
  if (*(int *)(*(long *)PTR_DAT_05e5d338 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uStack_d8 = uStack_98;
  uStack_e0 = uStack_a0;
  uStack_c8 = uStack_88;
  uStack_d0 = uStack_90;
  Gamemanager_Get_Ruby_0x600007a(&uStack_e0,0);
  Gamemanager_Money_Reset_0x6000077(0);
  lVar4 = *(long *)puVar1;
  if (*(int *)(lVar4 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar4 = *(long *)puVar1;
  }
  puVar1 = PTR_DAT_05e5dc20;
  if (**(long **)(lVar4 + 0xb8) != 0) {
    Upgrade_manager_Reset_Upgrade_0x6000f8f(**(long **)(lVar4 + 0xb8),0);
    lVar4 = *(long *)puVar1;
    if (*(int *)(lVar4 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar4 = *(long *)puVar1;
    }
    puVar1 = PTR_DAT_05e5d5b0;
    lVar4 = *(long *)(*(long *)(lVar4 + 0xb8) + 0x10);
    if (lVar4 != 0) {
      Tree_manager_Rebirth_Reset_0x6000f0d(lVar4,0);
      lVar4 = *(long *)(*(long *)(*(long *)puVar1 + 0xb8) + 8);
      if (lVar4 != 0) {
        Cat_manager_Balance_Reload_0x6000779(lVar4,0);
        if ((*(long *)(param_1 + 0x38) != 0) &&
           (lVar4 = Component_get_gameObject_0x6000c83(*(long *)(param_1 + 0x38),0),
           puVar1 = PTR_DAT_05e625c8, lVar4 != 0)) {
          GameObject_SetActive_0x6000cfe(lVar4,0,0);
          puVar2 = PTR_DAT_05e5dd50;
          if (**(long **)(*(long *)puVar1 + 0xb8) != 0) {
            uVar3 = Review_manager_Review_Panel_Open_0x6000470
                              (**(long **)(*(long *)puVar1 + 0xb8),0);
            lVar4 = *(long *)puVar2;
            if (*(int *)(lVar4 + 0xe4) == 0) {
              func_0x029f5bd0(lVar4);
              lVar4 = *(long *)puVar2;
            }
            lVar4 = *(long *)(*(long *)(lVar4 + 0xb8) + 8);
            if (lVar4 != 0) {
              Mission_manager_MissionValue_Increase_0x600035e(lVar4,2,0);
              if (*(char *)(param_1 + 0x48) != '\0') {
                if (*(char *)(param_1 + 0x49) == '\0') {
                  *(int *)(param_1 + 0x4c) = *(int *)(param_1 + 0x4c) + 1;
                  uVar5 = Rebirth_manager_Today_str_return_0x6000c91();
                  *(undefined8 *)(param_1 + 0x58) = uVar5;
                  Managed_WriteBarrier();
                }
                *(undefined2 *)(param_1 + 0x48) = 0;
              }
              SaveSystem_Save_0x600048a(0);
              puVar1 = PTR_DAT_05e5d910;
              if (iVar8 == 0 && (uVar3 & 1) == 0) {
                uVar5 = **(undefined8 **)(*(long *)PTR_DAT_05e5d910 + 0xb8);
                if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
                  func_0x029f5bd0();
                }
                uVar6 = Object_op_Inequality_0x6000ded(uVar5,0,0);
                if ((uVar6 & 1) != 0) {
                  if (**(long **)(*(long *)puVar1 + 0xb8) == 0) goto LAB_02c87f88;
                  Admob_ShowPlacementInterstitial_0x60001a4
                            (**(long **)(*(long *)puVar1 + 0xb8),0,0,0);
                }
              }
              return;
            }
          }
        }
      }
    }
  }
LAB_02c87f88:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

