/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b8785c, Ghidra VA 02c8785c. */

void Rebirth_Panel_UI_Reload(long param_1)

{
  int iVar1;
  undefined *puVar2;
  undefined *puVar3;
  byte bVar4;
  undefined8 uVar5;
  long lVar6;
  long lVar7;
  long *plVar8;
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
  
  puVar3 = PTR_DAT_05e5dd60;
  if ((bRam000000000625c392 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e5dd60);
    bRam000000000625c392 = 1;
  }
  uStack_88 = 0;
  uStack_90 = 0;
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
  if (**(long **)(*(long *)puVar3 + 0xb8) != 0) {
    Rebirth_manager_Rebirth_Reward_return_0x6000c90(&uStack_50);
    puVar2 = PTR_DAT_05e5d338;
    lVar6 = *(long *)(param_1 + 0x38);
    if (lVar6 != 0) {
      lVar7 = 0;
      do {
        if ((int)*(uint *)(lVar6 + 0x18) <= (int)(uint)lVar7) {
          plVar8 = *(long **)(param_1 + 0x28);
          uVar5 = InfVal_InfVal_change_0x60000a8(&uStack_50,0);
          if (plVar8 != (long *)0x0) {
            (**(code **)(*plVar8 + 0x558))(plVar8,uVar5,*(undefined8 *)(*plVar8 + 0x560));
            plVar8 = *(long **)(param_1 + 0x30);
            InfVal_op_Implicit_0x600003f(&uStack_b0,3,0);
            uStack_68 = uStack_a8;
            uStack_70 = uStack_b0;
            uStack_58 = uStack_98;
            uStack_60 = uStack_a0;
            InfVal_op_Multiply_0x6000074(&uStack_d0,&uStack_50,&uStack_70,0);
            uStack_88 = uStack_c8;
            uStack_90 = uStack_d0;
            uStack_78 = uStack_b8;
            uStack_80 = uStack_c0;
            uVar5 = InfVal_InfVal_change_0x60000a8(&uStack_90,0);
            if (plVar8 != (long *)0x0) {
              (**(code **)(*plVar8 + 0x558))(plVar8,uVar5,*(undefined8 *)(*plVar8 + 0x560));
              lVar6 = *(long *)puVar2;
              plVar8 = *(long **)(param_1 + 0x20);
              if (*(int *)(lVar6 + 0xe4) == 0) {
                func_0x029f5bd0();
                lVar6 = *(long *)puVar2;
              }
              uVar5 = InfVal_InfVal_change_0x60000a8(*(long *)(lVar6 + 0xb8) + 0x70,0);
              if (plVar8 != (long *)0x0) {
                (**(code **)(*plVar8 + 0x558))(plVar8,uVar5,*(undefined8 *)(*plVar8 + 0x560));
                lVar6 = **(long **)(*(long *)puVar3 + 0xb8);
                if (lVar6 != 0) {
                  Rebirth_manager_UpgradeRebirth_DayCheck_0x6000c92(lVar6);
                  if (**(long **)(*(long *)puVar3 + 0xb8) != 0) {
                    iVar1 = *(int *)(lVar6 + 0x4c);
                    bVar4 = Rebirth_manager_UpgradeRebirth_IAP_Able_return_0x6000c95();
                    if (*(long *)(param_1 + 0x40) != 0) {
                      GameObject_SetActive_0x6000cfe(*(long *)(param_1 + 0x40),iVar1 < 1,0);
                      if (*(long *)(param_1 + 0x48) != 0) {
                        GameObject_SetActive_0x6000cfe
                                  (*(long *)(param_1 + 0x48),bVar4 & 0 < iVar1,0);
                        if (*(long *)(param_1 + 0x50) != 0) {
                          GameObject_SetActive_0x6000cfe
                                    (*(long *)(param_1 + 0x50),0 < iVar1 & (bVar4 ^ 1),0);
                          lVar6 = Component_get_gameObject_0x6000c83(param_1,0);
                          if (lVar6 != 0) {
                            GameObject_SetActive_0x6000cfe(lVar6,1,0);
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
          break;
        }
        if (*(uint *)(lVar6 + 0x18) <= (uint)lVar7) {
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
        if (*(long *)(lVar6 + lVar7 * 8 + 0x20) == 0) break;
        Rebirth_Upgrade_Item_Reload_0x6000caa();
        lVar6 = *(long *)(param_1 + 0x38);
        lVar7 = lVar7 + 1;
      } while (lVar6 != 0);
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

