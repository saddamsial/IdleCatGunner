/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2aa6620, Ghidra VA 02ba6620. */

undefined8 Mission_manager_Reward_Get_Value(undefined8 param_1,long param_2)

{
  undefined4 uVar1;
  undefined *puVar2;
  uint uVar3;
  undefined8 uVar4;
  long lVar5;
  long lVar6;
  
  if ((bRam000000000625ba4e & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5dd28);
    func_0x029f5a50(PTR_DAT_05e5d338);
    func_0x029f5a50(PTR_DAT_05e5dd40);
    func_0x029f5a50(PTR_DAT_05e5e528);
    func_0x029f5a50(PTR_DAT_05e5e7a0);
    bRam000000000625ba4e = 1;
  }
  puVar2 = PTR_DAT_05e5dd40;
  if (param_2 == 0) {
LAB_02ba682c:
                    /* WARNING: Subroutine does not return */
    Throw_NullReference_Wrapper();
  }
  if (*(int *)(param_2 + 0x14) == 2) {
    uVar1 = *(undefined4 *)(param_2 + 0x18);
    if (*(int *)(*(long *)PTR_DAT_05e5dd28 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    Adventure_manager_Core_Get_0x600062d(3,uVar1,0);
  }
  else {
    if (*(int *)(param_2 + 0x14) != 0) {
      if (**(long **)(*(long *)PTR_DAT_05e5dd40 + 0xb8) != 0) {
        uVar3 = Gun_manager_FindFirstEmptyOwned(**(long **)(*(long *)PTR_DAT_05e5dd40 + 0xb8),0);
        if (uVar3 == 0xffffffff) {
          if (*(int *)(*(long *)PTR_DAT_05e5e528 + 0xe4) == 0) {
            func_0x029f5bd0();
          }
          uVar4 = LocalizationManager_GetTranslation_0x60011b3
                            (*(undefined8 *)PTR_DAT_05e5e7a0,1,0,1,0,0,0,1,0);
          UI_manager_Alert_0x6000602(uVar4,0);
          if (cRam000000000625ba57 == '\0') {
            func_0x029f5a50(PTR_DAT_05e5dd70);
            cRam000000000625ba57 = '\x01';
          }
          if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
            Sound_manager_PlaySfx_0x600054a
                      (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),5,0,0);
            return 0;
          }
        }
        else {
          lVar5 = **(long **)(*(long *)puVar2 + 0xb8);
          if ((lVar5 != 0) && (lVar6 = *(long *)(lVar5 + 0x40), lVar6 != 0)) {
            if (*(uint *)(lVar6 + 0x18) <= uVar3) {
                    /* WARNING: Subroutine does not return */
              Throw_Index_Wrapper();
            }
            *(undefined4 *)(lVar6 + (long)(int)uVar3 * 4 + 0x20) = *(undefined4 *)(param_2 + 0x18);
            Gun_manager_OnWeaponAcquired(lVar5,*(undefined4 *)(param_2 + 0x18),0);
            lVar5 = **(long **)(*(long *)puVar2 + 0xb8);
            if (lVar5 != 0) {
              Gun_manager_NewGun_UI_Reload_0x6000a70(lVar5,*(undefined4 *)(param_2 + 0x18),0);
              return 1;
            }
          }
        }
      }
      goto LAB_02ba682c;
    }
    uVar1 = *(undefined4 *)(param_2 + 0x18);
    if (*(int *)(*(long *)PTR_DAT_05e5d338 + 0xe4) == 0) {
      func_0x029f5bd0();
    }
    Gamemanager_Get_Dia_0x6000078(uVar1,0);
  }
  return 1;
}

