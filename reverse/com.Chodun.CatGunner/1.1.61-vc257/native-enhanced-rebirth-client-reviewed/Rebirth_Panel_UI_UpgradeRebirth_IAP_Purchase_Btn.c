/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b89284, Ghidra VA 02c89284. */

void Rebirth_Panel_UI_UpgradeRebirth_IAP_Purchase_Btn(undefined8 param_1)

{
  undefined *puVar1;
  ulong uVar2;
  long lVar3;
  undefined8 uVar4;
  
  puVar1 = PTR_DAT_05e5dd60;
  if ((bRam000000000625c396 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e5e528);
    func_0x029f5a50(PTR_DAT_05e5dd60);
    func_0x029f5a50(PTR_DAT_05e5d920);
    func_0x029f5a50(PTR_DAT_05e5dc20);
    func_0x029f5a50(PTR_DAT_05e63eb8);
    func_0x029f5a50(PTR_DAT_05e5c070);
    bRam000000000625c396 = 1;
  }
  if (**(long **)(*(long *)puVar1 + 0xb8) != 0) {
    uVar2 = Rebirth_manager_UpgradeRebirth_IAP_Able_return_0x6000c95();
    puVar1 = PTR_DAT_05e5dc20;
    if ((uVar2 & 1) == 0) {
      Rebirth_Panel_UI_Reload(param_1);
      return;
    }
    lVar3 = *(long *)PTR_DAT_05e5dc20;
    if (*(int *)(lVar3 + 0xe4) == 0) {
      func_0x029f5bd0();
      lVar3 = *(long *)puVar1;
    }
    puVar1 = PTR_DAT_05e5d920;
    lVar3 = *(long *)(*(long *)(lVar3 + 0xb8) + 0x10);
    if (lVar3 != 0) {
      if (*(int *)(lVar3 + 0x28) < 2) {
        if (*(int *)(*(long *)PTR_DAT_05e5e528 + 0xe4) == 0) {
          func_0x029f5bd0();
        }
        uVar4 = LocalizationManager_GetTranslation_0x60011b3
                          (*(undefined8 *)PTR_DAT_05e63eb8,1,0,1,0,0,0,1,0);
        UI_manager_Alert_0x6000602(uVar4,0);
        return;
      }
      if (*(int *)(*(long *)PTR_DAT_05e5d920 + 0xe4) == 0) {
        func_0x029f5bd0();
      }
      if (cRam000000000625b960 == '\0') {
        func_0x029f5a50(PTR_DAT_05e5d920);
        cRam000000000625b960 = '\x01';
      }
      lVar3 = *(long *)puVar1;
      if (*(int *)(lVar3 + 0xe4) == 0) {
        func_0x029f5bd0();
        lVar3 = *(long *)puVar1;
      }
      if (**(long **)(lVar3 + 0xb8) != 0) {
        Shop_manager_Purchase_RebirthSingle_0x6000d7c
                  (**(long **)(lVar3 + 0xb8),*(undefined8 *)PTR_DAT_05e5c070);
        return;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

