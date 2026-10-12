/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b8b528, Ghidra VA 02c8b528. */

undefined8 DailyGun_ApplyReward(long param_1,uint param_2)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined4 uVar3;
  int iVar4;
  long lVar5;
  ulong uVar6;
  undefined8 uVar7;
  uint uStack_34;
  
  uVar6 = (ulong)param_2;
  if ((bRam000000000625c3ac & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62660);
    func_0x029f5a50(PTR_DAT_05e58f08);
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e5dd40);
    func_0x029f5a50(PTR_DAT_05e5e528);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e63f18);
    func_0x029f5a50(PTR_DAT_05e5e7a0);
    bRam000000000625c3ac = 1;
  }
  puVar2 = PTR_DAT_05e62660;
  puVar1 = PTR_DAT_05e5dd40;
  if (2 < param_2) {
    return 0;
  }
  DailyGun_Week_Refresh(param_1);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  uVar3 = DailyGun_GunNum_return(uVar6);
  if (**(long **)(*(long *)puVar1 + 0xb8) != 0) {
    iVar4 = Gun_manager_AddSpecificGun_0x6000a81(**(long **)(*(long *)puVar1 + 0xb8),uVar3,0);
    if (iVar4 == -1) {
      uStack_34 = param_2;
      uVar7 = func_0x029f5bd8(*(undefined8 *)(PTR_DAT_05e58a10 + 0x48),&uStack_34);
      uVar7 = String_Format_0x600029c(*(undefined8 *)PTR_DAT_05e63f18,uVar7,0);
      if (*(int *)(*(long *)PTR_DAT_05e58f08 + 0xe4) == 0) {
        func_0x029f5bd0(*(long *)PTR_DAT_05e58f08);
      }
      Debug_LogWarning_0x6000346(uVar7,0);
      if (*(int *)(*(long *)PTR_DAT_05e5e528 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      uVar7 = LocalizationManager_GetTranslation_0x60011b3
                        (*(undefined8 *)PTR_DAT_05e5e7a0,1,0,1,0,0,0,1,0);
      UI_manager_Alert_0x6000602(uVar7,0);
      return 0;
    }
    if (**(long **)(*(long *)puVar1 + 0xb8) != 0) {
      Gun_manager_NewGun_UI_ForceShow_0x6000a71(**(long **)(*(long *)puVar1 + 0xb8),uVar3,0);
      if (**(long **)(*(long *)puVar1 + 0xb8) != 0) {
        Gun_manager_OnWeaponAcquired_0x6000a79(**(long **)(*(long *)puVar1 + 0xb8),uVar3,0);
        lVar5 = *(long *)puVar2;
        if (*(int *)(lVar5 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar5 = *(long *)puVar2;
        }
        lVar5 = *(long *)(*(long *)(lVar5 + 0xb8) + 0x10);
        if (lVar5 != 0) {
          if (param_2 < *(uint *)(lVar5 + 0x18)) {
            uVar3 = *(undefined4 *)(lVar5 + uVar6 * 4 + 0x20);
            if (*(int *)(*(long *)PTR_DAT_05e5d338 + 0xe4) == 0) {
              func_0x029f5bd0();
            }
            Gamemanager_Get_PetCoin_0x600007b(uVar3,0);
            lVar5 = *(long *)(param_1 + 0x20);
            if (lVar5 == 0) goto LAB_02c8b804;
            if (param_2 < *(uint *)(lVar5 + 0x18)) {
              lVar5 = lVar5 + uVar6 * 4;
              *(int *)(lVar5 + 0x20) = *(int *)(lVar5 + 0x20) + 1;
              SaveSystem_Save_0x600048a(0);
              uVar7 = *(undefined8 *)(param_1 + 0x30);
              if (*(int *)(*(long *)PTR_DAT_05e591c0 + 0xe4) == 0) {
                func_0x029f5bd0();
              }
              uVar6 = Object_op_Inequality_0x6000ded(uVar7,0,0);
              if ((uVar6 & 1) != 0) {
                if ((*(long *)(param_1 + 0x30) == 0) ||
                   (lVar5 = Component_get_gameObject_0x6000c83(*(long *)(param_1 + 0x30),0),
                   lVar5 == 0)) goto LAB_02c8b804;
                uVar6 = GameObject_get_activeInHierarchy_0x6000d00(lVar5,0);
                if ((uVar6 & 1) != 0) {
                  if (*(long *)(param_1 + 0x30) == 0) goto LAB_02c8b804;
                  DailyGun_popup_Panel_Reload_0x6000cdd();
                }
              }
              return 1;
            }
          }
                    /* WARNING: Subroutine does not return */
          Throw_Index_Wrapper();
        }
      }
    }
  }
LAB_02c8b804:
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

