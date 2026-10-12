/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b5d358, Ghidra VA 02c5d358. */

void Fish_manager_OnDisable(undefined8 param_1)

{
  undefined *puVar1;
  undefined *puVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined *puVar5;
  undefined8 uVar6;
  
  puVar4 = PTR_DAT_05e637e8;
  puVar3 = PTR_DAT_05e5e0b8;
  puVar1 = PTR_DAT_05e59288;
  if ((bRam000000000625c1f8 & 1) == 0) {
    func_0x029f5a50(PTR_DAT_05e59288);
    func_0x029f5a50(PTR_DAT_05e637e8);
    func_0x029f5a50(PTR_DAT_05e637f0);
    func_0x029f5a50(PTR_DAT_05e637f8);
    func_0x029f5a50(PTR_DAT_05e5e0b8);
    func_0x029f5a50(PTR_DAT_05e5d3c0);
    bRam000000000625c1f8 = 1;
  }
  puVar5 = PTR_DAT_05e637f8;
  puVar2 = PTR_DAT_05e5d3c0;
  uVar6 = func_0x029f5cec(*(undefined8 *)puVar1);
  Action__ctor_0x60003a5(uVar6,param_1,*(undefined8 *)puVar4,0);
  if (*(int *)(*(long *)puVar3 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  puVar3 = PTR_DAT_05e637f0;
  PlusPack_remove_OnPlusPackChanged_0x6000d30(uVar6,0);
  uVar6 = func_0x029f5cec(*(undefined8 *)puVar1);
  Action__ctor_0x60003a5(uVar6,param_1,*(undefined8 *)puVar5,0);
  if (*(int *)(*(long *)puVar2 + 0xe4) == 0) {
    func_0x029f5bd0();
  }
  Time_manager_remove_OnSynced_0x600055d(uVar6,0);
  uVar6 = func_0x029f5cec(*(undefined8 *)puVar1);
  Action__ctor_0x60003a5(uVar6,param_1,*(undefined8 *)puVar3,0);
  Time_manager_remove_OnCheckSettled_0x6000563(uVar6,0);
  return;
}

