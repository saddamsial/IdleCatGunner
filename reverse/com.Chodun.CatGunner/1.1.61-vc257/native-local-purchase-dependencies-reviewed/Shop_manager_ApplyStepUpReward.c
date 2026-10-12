/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b93c80, Ghidra VA 02c93c80. */

undefined8 Shop_manager_ApplyStepUpReward(undefined8 param_1,undefined8 param_2)

{
  undefined4 uVar1;
  undefined *puVar2;
  undefined *puVar3;
  int iVar4;
  ulong uVar5;
  long lVar6;
  long *plVar7;
  long lVar8;
  undefined8 uVar9;
  uint uStack_28;
  uint uStack_24;
  
  puVar2 = PTR_DAT_05e5d920;
  if ((bRam000000000625c412 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e58f08);
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e5dd40);
    func_0x029f5a50(PTR_DAT_05e5e528);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5d920);
    func_0x029f5a50(PTR_DAT_05e5e4b8);
    func_0x029f5a50(PTR_DAT_05e642e8);
    func_0x029f5a50(PTR_DAT_05e642f0);
    func_0x029f5a50(PTR_DAT_05e5e7a0);
    bRam000000000625c412 = 1;
  }
  uStack_24 = 0;
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar5 = Shop_manager_TryGetStepUpStep_0x6000d68(param_2,&uStack_24);
  puVar3 = PTR_DAT_05e5e4b8;
  puVar2 = PTR_DAT_05e591c0;
  if ((uVar5 & 1) != 0) {
    lVar6 = *(long *)PTR_DAT_05e5e4b8;
    if (*(int *)(lVar6 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar6 = *(long *)puVar3;
    }
    uVar9 = **(undefined8 **)(lVar6 + 0xb8);
    if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
      func_0x029f5bd0(*(long *)puVar2);
    }
    uVar5 = Object_op_Equality_0x6000dec(uVar9,0,0);
    if ((uVar5 & 1) == 0) {
      lVar6 = *(long *)puVar3;
      if (*(int *)(lVar6 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar6 = *(long *)puVar3;
      }
      plVar7 = *(long **)(lVar6 + 0xb8);
      if ((*plVar7 != 0) && (lVar8 = *(long *)(*plVar7 + 0x38), lVar8 != 0)) {
        if (*(uint *)(lVar8 + 0x18) <= uStack_24) {
LAB_02c94014:
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        if (*(char *)(lVar8 + (int)uStack_24 + 0x20) != '\0') {
          return 1;
        }
        if (*(int *)(lVar6 + 0xe4) == 0) {
          func_0x029f5bd0();
          plVar7 = *(long **)(*(long *)puVar3 + 0xb8);
        }
        puVar2 = PTR_DAT_05e5dd40;
        lVar6 = plVar7[1];
        if (lVar6 != 0) {
          if (*(uint *)(lVar6 + 0x18) <= uStack_24) goto LAB_02c94014;
          if (**(long **)(*(long *)PTR_DAT_05e5dd40 + 0xb8) != 0) {
            uVar1 = *(undefined4 *)(lVar6 + (long)(int)uStack_24 * 4 + 0x20);
            iVar4 = Gun_manager_AddSpecificGun_0x6000a81
                              (**(long **)(*(long *)PTR_DAT_05e5dd40 + 0xb8),uVar1,0);
            if (iVar4 == -1) {
              uStack_28 = uStack_24;
              uVar9 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&uStack_28);
              uVar9 = String_Format_0x600029c(*(undefined8 *)PTR_DAT_05e642e8,uVar9,0);
              if (*(int *)(*(long *)PTR_DAT_05e58f08 + 0xe4) == 0) {
                func_0x029f5bd0(*(long *)PTR_DAT_05e58f08);
              }
              Debug_LogWarning_0x6000346(uVar9,0);
              if (*(int *)(*(long *)PTR_DAT_05e5e528 + 0xe4) == 0) {
                func_0x029f5bd0();
              }
              uVar9 = LocalizationManager_GetTranslation_0x60011b3
                                (*(undefined8 *)PTR_DAT_05e5e7a0,1,0,1,0,0,0,1,0);
              UI_manager_Alert_0x6000602(uVar9,0);
              return 0;
            }
            lVar6 = **(long **)(*(long *)puVar2 + 0xb8);
            if (lVar6 != 0) {
              Gun_manager_NewGun_UI_ForceShow_0x6000a71(lVar6,uVar1,0);
              lVar6 = **(long **)(*(long *)puVar2 + 0xb8);
              if (lVar6 != 0) {
                Gun_manager_OnWeaponAcquired_0x6000a79(lVar6,uVar1,0);
                lVar6 = *(long *)puVar3;
                if (*(int *)(lVar6 + 0xe4) == 0) {
                  func_0x029f5bd0();
                  lVar6 = *(long *)puVar3;
                }
                lVar8 = *(long *)(*(long *)(lVar6 + 0xb8) + 0x10);
                if (lVar8 != 0) {
                  if (*(uint *)(lVar8 + 0x18) <= uStack_24) goto LAB_02c94014;
                  iVar4 = *(int *)(lVar8 + (long)(int)uStack_24 * 4 + 0x20);
                  if (0 < iVar4) {
                    if (*(int *)(*(long *)PTR_DAT_05e5d338 + 0xe4) == 0) {
                      func_0x029f5bd0();
                    }
                    Gamemanager_Get_Dia_0x6000078(iVar4,0);
                    lVar6 = *(long *)puVar3;
                  }
                  if (*(int *)(lVar6 + 0xe4) == 0) {
                    func_0x029f5bd0();
                    lVar6 = *(long *)puVar3;
                  }
                  if (**(long **)(lVar6 + 0xb8) != 0) {
                    StepUp_OnPurchased(**(long **)(lVar6 + 0xb8),uStack_24,0);
                    SaveSystem_Save_0x600048a(0);
                    return 1;
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
    if (*(int *)(*(long *)PTR_DAT_05e58f08 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    Debug_LogWarning_0x6000346(*(undefined8 *)PTR_DAT_05e642f0,0);
  }
  return 0;
}

