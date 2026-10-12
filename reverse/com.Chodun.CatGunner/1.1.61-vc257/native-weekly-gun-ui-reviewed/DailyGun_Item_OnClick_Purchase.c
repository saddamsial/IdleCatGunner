/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b8bf38, Ghidra VA 02c8bf38. */

void DailyGun_Item_OnClick_Purchase(long param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  long lVar3;
  ulong uVar4;
  undefined8 uVar5;
  
  puVar2 = PTR_DAT_05e62660;
  if ((bRam000000000625c3b3 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e62660);
    func_0x029f5a50(PTR_DAT_05e5dd40);
    func_0x029f5a50(PTR_DAT_05e5e528);
    func_0x029f5a50(PTR_DAT_05e591c0);
    func_0x029f5a50(PTR_DAT_05e5d920);
    func_0x029f5a50(PTR_DAT_05e5e7a0);
    func_0x029f5a50(PTR_DAT_05e5d958);
    bRam000000000625c3b3 = 1;
  }
  puVar1 = PTR_DAT_05e591c0;
  lVar3 = *(long *)puVar2;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar2;
  }
  uVar5 = **(undefined8 **)(lVar3 + 0xb8);
  if (*(int *)(*(long *)puVar1 + 0xe4) == 0) {
    func_0x029f5bd0(*(long *)puVar1);
  }
  uVar4 = Object_op_Equality_0x6000dec(uVar5,0,0);
  if ((uVar4 & 1) != 0) {
    return;
  }
  lVar3 = *(long *)puVar2;
  if (*(int *)(lVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
    lVar3 = *(long *)puVar2;
  }
  if (**(long **)(lVar3 + 0xb8) != 0) {
    uVar4 = DailyGun_Is_Purchasable(**(long **)(lVar3 + 0xb8),*(undefined4 *)(param_1 + 0x20));
    if ((uVar4 & 1) == 0) {
      if (cRam000000000625ba57 == '\0') {
        func_0x029f5a50(PTR_DAT_05e5dd70);
        cRam000000000625ba57 = '\x01';
      }
      if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
        Sound_manager_PlaySfx_0x600054a
                  (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),5,0,0);
        DailyGun_Item_Reload(param_1);
        return;
      }
    }
    else if (**(long **)(*(long *)PTR_DAT_05e5dd40 + 0xb8) != 0) {
      uVar4 = Gun_manager_is_EmptySlot_Exist_0x6000a7e
                        (**(long **)(*(long *)PTR_DAT_05e5dd40 + 0xb8),0);
      puVar2 = PTR_DAT_05e5d920;
      if ((uVar4 & 1) == 0) {
        if (*(int *)(*(long *)PTR_DAT_05e5e528 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar5 = LocalizationManager_GetTranslation_0x60011b3
                          (*(undefined8 *)PTR_DAT_05e5e7a0,1,0,1,0,0,0,1,0);
        UI_manager_Alert_0x6000602(uVar5,0);
        if (cRam000000000625ba57 == '\0') {
          func_0x029f5a50(PTR_DAT_05e5dd70);
          cRam000000000625ba57 = '\x01';
        }
        if (**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8) != 0) {
          Sound_manager_PlaySfx_0x600054a
                    (0x3f800000,**(long **)(*(long *)PTR_DAT_05e5dd70 + 0xb8),5,0,0);
          return;
        }
      }
      else {
        if (*(int *)(*(long *)PTR_DAT_05e5d920 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        if (cRam000000000625b960 == '\0') {
          func_0x029f5a50(PTR_DAT_05e5d920);
          cRam000000000625b960 = '\x01';
        }
        lVar3 = *(long *)puVar2;
        if (*(int *)(lVar3 + 0xe4) == 0) {
          func_0x029f5bd0();
          lVar3 = *(long *)puVar2;
        }
        if (**(long **)(lVar3 + 0xb8) != 0) {
          Shop_manager_Purchase_DailyGun_0x6000d6d
                    (**(long **)(lVar3 + 0xb8),*(undefined4 *)(param_1 + 0x20),
                     *(undefined8 *)PTR_DAT_05e5d958);
          return;
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

