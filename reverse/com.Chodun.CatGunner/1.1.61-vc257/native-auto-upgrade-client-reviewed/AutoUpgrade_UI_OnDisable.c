/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b1d6a8, Ghidra VA 02c1d6a8. */

void AutoUpgrade_UI_OnDisable(undefined8 param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined8 uVar5;
  
  puVar4 = PTR_DAT_05e62958;
  puVar3 = PTR_DAT_05e5d920;
  puVar1 = PTR_DAT_05e59288;
  if ((bRam000000000625bf33 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e59288);
    func_0x029f5a50(PTR_DAT_05e62958);
    func_0x029f5a50(PTR_DAT_05e5d920);
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    bRam000000000625bf33 = 1;
  }
  puVar2 = PTR_DAT_05e5d4e8;
  uVar5 = func_0x029f5cec(*(undefined8 *)puVar1);
  Action__ctor_0x60003a5(uVar5,param_1,*(undefined8 *)puVar4,0);
  if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  Shop_manager_remove_OnInAppPurchaseChanged_0x6000d60(uVar5,0);
  uVar5 = func_0x029f5cec(*(undefined8 *)puVar1);
  Action__ctor_0x60003a5(uVar5,param_1,*(undefined8 *)puVar4,0);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  Upgrade_manager_remove_OnAutoUpgradeAdChanged_0x6000f9e(uVar5,0);
  return;
}

