/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b8d98c, Ghidra VA 02c8d98c. */

void DiaPig_UI_OnDisable(undefined8 param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined8 uVar4;
  
  puVar3 = PTR_DAT_05e63f68;
  puVar2 = PTR_DAT_05e5d920;
  puVar1 = PTR_DAT_05e59288;
  if ((bRam000000000625c3c0 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e59288);
    func_0x029f5a50(PTR_DAT_05e63f68);
    func_0x029f5a50(PTR_DAT_05e5d920);
    bRam000000000625c3c0 = 1;
  }
  uVar4 = func_0x029f5cec(*(undefined8 *)puVar1);
  Action__ctor_0x60003a5(uVar4,param_1,*(undefined8 *)puVar3,0);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  Shop_manager_remove_OnInAppPurchaseChanged_0x6000d60(uVar4);
  return;
}

