/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b1d3b0, Ghidra VA 02c1d3b0. */

void AutoUpgrade_UI_OnEnable(undefined8 param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined8 uVar5;
  
  puVar4 = PTR_DAT_05e62958;
  puVar3 = PTR_DAT_05e5d920;
  puVar1 = PTR_DAT_05e59288;
  if ((bRam000000000625bf32 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e59288);
    func_0x029f5a50(PTR_DAT_05e62958);
    func_0x029f5a50(PTR_DAT_05e5d920);
    func_0x029f5a50(PTR_DAT_05e5d4e8);
    bRam000000000625bf32 = 1;
  }
  puVar2 = PTR_DAT_05e5d4e8;
  AutoUpgrade_UI_Reload(param_1);
  uVar5 = func_0x029f5cec(*(undefined8 *)puVar1);
  Action__ctor_0x60003a5(uVar5,param_1,*(undefined8 *)puVar4,0);
  if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  Shop_manager_add_OnInAppPurchaseChanged_0x6000d5f(uVar5,0);
  uVar5 = func_0x029f5cec(*(undefined8 *)puVar1);
  Action__ctor_0x60003a5(uVar5,param_1,*(undefined8 *)puVar4,0);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  Upgrade_manager_add_OnAutoUpgradeAdChanged_0x6000f9d(uVar5,0);
  return;
}

