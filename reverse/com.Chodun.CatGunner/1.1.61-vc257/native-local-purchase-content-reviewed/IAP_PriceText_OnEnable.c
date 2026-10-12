/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2ba549c, Ghidra VA 02ca549c. */

void IAP_PriceText_OnEnable(undefined8 param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined8 uVar4;
  
  puVar3 = PTR_DAT_05e64980;
  puVar2 = PTR_DAT_05e5d920;
  puVar1 = PTR_DAT_05e59288;
  if ((bRam000000000625c4bc & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e59288);
    func_0x029f5a50(PTR_DAT_05e64980);
    func_0x029f5a50(PTR_DAT_05e5d920);
    bRam000000000625c4bc = 1;
  }
  uVar4 = func_0x029f5cec(*(undefined8 *)puVar1);
  Action__ctor_0x60003a5(uVar4,param_1,*(undefined8 *)puVar3,0);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  Shop_manager_add_OnProductsReady_0x6000dba(uVar4,0);
  IAP_PriceText_Refresh(param_1);
  return;
}

